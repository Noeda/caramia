-- | This module manages OpenGL contexts in Caramia.
--
-- Caramia does not actually have any functionality about creating OpenGL
-- contexts. You need to tell it about them with this module.
--
-- `giveContext` is the most important function in this module. You also want
-- to `runPendingFinalizers` regularly to make sure OpenGL resources are
-- garbage collected.
--

{-# LANGUAGE NoImplicitPrelude, ScopedTypeVariables, DeriveDataTypeable #-}
{-# LANGUAGE CPP, LambdaCase, GeneralizedNewtypeDeriving, RankNTypes #-}

module Graphics.Caramia.Context
    (
    -- * Running with an OpenGL context
      giveContext
    , Context()
    -- * Viewport size
    , setViewportSize
    -- * Context IDs
    , currentContextID
    , currentContextID'
    , ContextID
    -- * Finalization
    , runPendingFinalizers
    , scheduleFinalizer
    -- * Exceptions
    , TooOldOpenGL(..) )
    where

import Graphics.Caramia.Prelude
import Graphics.Caramia.Internal.ContextLocalData
import Graphics.Caramia.Internal.OpenGLDebug
import Graphics.Caramia.Internal.OpenGLCApi
import qualified Graphics.Caramia.Internal.FlextGLFlipped as F
import Graphics.Caramia.Context.Internal

import Control.Concurrent
import Control.Monad.Catch
import Control.Monad.IO.Class
import System.IO.Unsafe
import System.Environment
import Graphics.Rendering.OpenGL.Raw.GetProcAddress
import Foreign.Ptr
import Foreign.Storable
import Foreign.Marshal.Alloc

import qualified Data.Map.Strict as M
import qualified Data.IntMap.Strict as IM

-- | An exception that is thrown when the OpenGL version is too old for this
-- library.
data TooOldOpenGL = TooOldOpenGL
                    { wantedVersion :: (Int, Int) -- ^ The OpenGL version this
                                                  --   library needs.
                    , reportedVersion :: (Int, Int)
                    -- ^ The OpenGL version reported by current OpenGL
                    --   context.
                    }
                    deriving ( Eq, Show, Read, Typeable )

instance Exception TooOldOpenGL

-- | Tell Caramia the current thread has an OpenGL context active.
--
-- When the given IO action returns, Caramia will think that the OpenGL context
-- is now gone. It is probably best to actually close the context because this
-- also means OpenGL finalizers will not be run (Caramia thinks they were all
-- released when the OpenGL context went away).
--
-- The context in the IO action is referred to as \'Caramia context\' in this
-- documentation to distinguish it from OpenGL context.
--
-- If the environment variable \'CARAMIA_OPENGL_DEBUG\' is set, then, if
-- \'GL_KHR_debug\' extension is supported, OpenGL debug output is written.
-- Note that you might need a debug OpenGL context for there to be any
-- messages.
--
-- If the window size changes while the context is active, you should call
-- `setViewportSize` with the new dimensions. There is no mechanism from
-- OpenGL's side to automatically detect if size has changed.
--
-- Throws `TooOldOpenGL` if the code detects a context that does not provide
-- OpenGL 3.3.
giveContext :: forall a. (forall s. Context s a) -> IO a
giveContext action = mask $ \restore -> do
    is_bound_thread <- isCurrentThreadBound
    unless is_bound_thread $
        error $ "giveContext: current thread is not bound. How can it have " <>
                "an OpenGL context?"

    flextGL <- flextInit (\str -> castFunPtrToPtr <$> getProcAddress str) >>= \case
        f@(Failure _) -> throwM f
        Success funs -> return funs

    checkOpenGLVersion33 flextGL

    cid <- atomicModifyIORef' nextContextID $ \old -> ( old+1, old )
    tid <- myThreadId
    atomicModifyIORef' runningContexts $ \old_map ->
        ( M.insert tid cid old_map, () )
    finally (restore $ insides flextGL) scrapContext
  where
    Context startup = do
        should_activate_debug_mode <-
            liftIO $ isJust <$> lookupEnv "CARAMIA_OPENGL_DEBUG"
        when should_activate_debug_mode activateDebugMode
        finally (action :: Context () a) flushDebugMessages

    insides flextGL = runFlextGLM flextGL $ do
        -- Enable sRGB framebuffers
        -- There seems to be no reason not to enable it; you can turn off sRGB
        -- handling in other ways.
        glEnable gl_FRAMEBUFFER_SRGB
        glEnable gl_BLEND

        startup

-- | Sets the new viewport size. You should call this if the display size has
-- changed; otherwise your rendering may look twisted and stretched.
setViewportSize :: Int    -- ^ Width
                -> Int    -- ^ Height
                -> Context s ()
setViewportSize w h =
    glViewport 0 0 (safeFromIntegral w) (safeFromIntegral h)

checkOpenGLVersion33 :: FlextGL -> IO ()
checkOpenGLVersion33 gl =
    -- You cannot trust OS X to report versions correctly :-(
#ifdef MAC_OPENGL
    return ()
#else
    alloca $ \major_ptr -> alloca $ \minor_ptr -> do
        -- in case glGetIntegerv is completely broken, set initial values for
        -- major and minor pointers
        poke major_ptr 0
        poke minor_ptr 0

        F.glGetIntegerv gl_MAJOR_VERSION major_ptr gl
        F.glGetIntegerv gl_MAJOR_VERSION minor_ptr gl
        major <- peek major_ptr
        minor <- peek minor_ptr
        unless (major > 3 ||
                (major == 3 && minor >= 3)) $
            throwM
                TooOldOpenGL { wantedVersion = (3, 3)
                             , reportedVersion = ( fromIntegral major
                                                 , fromIntegral minor )
                             }
#endif

-- | Scraps the current context.
--
-- Not public API.
scrapContext :: IO ()
scrapContext = mask_ $ do
    maybe_cid <- currentContextID'
    tid <- myThreadId
    case maybe_cid of
        Nothing -> return ()
        Just cid -> do
            atomicModifyIORef' runningContexts $ \old_map ->
                ( M.delete tid old_map, () )
            atomicModifyIORef' pendingFinalizers $ \old_map ->
                ( IM.delete cid old_map, () )
            atomicModifyIORef' contextLocalData $ \old_map ->
                ( IM.delete cid old_map, () )

-- | Run any pending finalizers in the current Caramia context.
--
-- Does nothing if current thread does not have a Caramia context or there are
-- no pending finalizers.
--
-- If any finalizer throws an exception (asynchronous or synchronous), the
-- Caramia context dies and that exception is propagated upwards.
-- `runPendingFinalizers` itself runs `mask_` to run the finalizers with
-- exceptions masked but you might still receive asynchronous exceptions with,
-- for example, the `MVar` functions.
--
-- A good place to call this is right after or before swapping buffers.
runPendingFinalizers :: Context s ()
runPendingFinalizers = mask_ $ do
    cid <- currentContextID
    liftIO $ do
        finalizers <- atomicModifyIORef' pendingFinalizers $
            IM.delete cid &&&
            IM.findWithDefault (return ())
                                cid

        -- We scrap the Caramia context if any of these finalizers throw an
        -- exception. The reason is that we cannot expect the OpenGL state
        -- to be consistent anymore.
        result <- try finalizers
        case result of
            Left exc -> scrapContext >> throwM (exc :: SomeException)
            Right () -> return ()
    flushDebugMessages

-- | Schedules a finalizer to be run in a Caramia context.
--
-- Does nothing if given context is not alive anymore.
--
-- This is typically called from Haskell garbage collector finalizers because
-- they cannot do finalization there (Haskell finalizers are running in the
-- wrong operating system thread).
--
-- Can be called from any thread.
scheduleFinalizer :: MonadIO m => ContextID -> IO () -> m ()
scheduleFinalizer cid finalizer =
    liftIO $ atomicModifyIORef' pendingFinalizers $ \old ->
        ( IM.insertWith
            (flip (>>))
            cid
            finalizer
            old, () )

-- these are the pending OpenGL finalizers that wait for a time they can be
-- safely run.
pendingFinalizers :: IORef (IM.IntMap (IO ()))
pendingFinalizers = unsafePerformIO $ newIORef IM.empty
{-# NOINLINE pendingFinalizers #-}

