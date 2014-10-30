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
{-# LANGUAGE ViewPatterns, ImpredicativeTypes, ExistentialQuantification #-}
{-# LANGUAGE GADTs #-}
-- this is a lot of extensions...

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
    , ContextID()
    -- * Concurrency
    , runWorkMachine
    , runInContext
    , runInContextAsync
    -- * Finalization
    , runPendingFinalizers
    , scheduleFinalizer
    -- * Unsafe escape hatches
    , contextState
    , unsafeResumeContext
    , ContextState()
    -- * Exceptions
    , TooOldOpenGL(..)
    , InvalidContext(..)
    , StopRunPendingWork(..) )
    where

import qualified Data.Map.Strict as M
import qualified Data.IntMap.Strict as IM
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable
import Graphics.Caramia.Internal.ContextLocalData
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Internal.OpenGLDebug
import Graphics.Caramia.Context.Internal
import qualified Graphics.Caramia.Internal.FlextGLFlipped as F
import Graphics.Caramia.Prelude
import Graphics.Rendering.OpenGL.Raw.GetProcAddress
import Control.Concurrent hiding ( newChan, writeChan )
import Control.Concurrent.Chan.Unagi
import Control.Monad.Catch
import Control.Monad.IO.Class
import System.IO.Unsafe
import System.Environment
import Unsafe.Coerce

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

    cid <- atomicModifyIORef' nextContextID $ \old ->
               ( old+1, ContextID old )
    tid <- myThreadId
    atomicModifyIORef_' runningContexts $ M.insert tid cid
    chans <- ContextWorkQueue <$> newContextWorkQueue
    atomicModifyIORef_' workMachineQueues $ IM.insert (unContextID cid) chans

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
        Just (unContextID -> cid) -> do
            atomicModifyIORef_' workMachineQueues $ IM.delete cid
            atomicModifyIORef_' runningContexts $ M.delete tid
            atomicModifyIORef_' pendingFinalizers $ IM.delete cid
            atomicModifyIORef_' contextLocalData $ IM.delete cid

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
    cid <- unContextID <$> currentContextID
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

data Work s where
    Work :: !(Context s a) -> !(MVar (Either SomeException a)) -> Work s
    -- maybe change that MVar to an IO action if needed

newtype ContextWorkQueue s = ContextWorkQueue
    { unQueue :: (InChan (Work s), OutChan (Work s)) }
    deriving ( Typeable )

-- | See `runWorkMachine`. This exception can be used to interrupt that call.
data StopRunPendingWork = StopRunPendingWork
                          deriving ( Eq, Ord, Show, Read, Typeable )

instance Exception StopRunPendingWork

workMachineQueues :: IORef (IM.IntMap (ContextWorkQueue ()))
workMachineQueues = unsafePerformIO $ newIORef IM.empty
{-# NOINLINE workMachineQueues #-}

newContextWorkQueue :: IO (InChan (Work ()), OutChan (Work ()))
newContextWorkQueue = newChan

-- | Runs some work in a `Context`.
--
-- This can be used from any thread that is not the context thread. It works by
-- scheduling the given `Context` action to be run in the thread where
-- `giveContext` was invoked. The action is only run in `runWorkMachine` call.
--
-- If the context is not active, throws `InvalidContext`.
runInContext :: MonadIO m => ContextID -> Context s a -> m a
runInContext cid (coerceContext -> action) = liftIO $ do
    IM.lookup (unContextID cid) <$> readIORef workMachineQueues >>= \case
        Nothing -> throwM $ InvalidContext cid
        Just (ContextWorkQueue (chan, _)) -> do
            mvar <- newEmptyMVar
            writeChan chan (Work action mvar)
            takeMVar mvar >>= \case
                Left exc -> throwM exc
                Right x -> return x

-- | Same as `runInContext` but returns immediately.
--
-- Exceptions thrown in the given `Context` action are lost.
runInContextAsync :: MonadIO m => ContextID -> Context s () -> m ()
runInContextAsync cid (coerceContext -> action) = liftIO $ do
    IM.lookup (unContextID cid) <$> readIORef workMachineQueues >>= \case
        Nothing -> throwM $ InvalidContext cid
        Just (ContextWorkQueue (chan, _)) -> do
            mvar <- newEmptyMVar
            writeChan chan (Work action mvar)
            return ()

-- | Runs work scheduled with `runInContext` or `runInContextAsync`. If there
-- is no work, it blocks and waits.
--
-- This represents an alternative way to use this library; you run a work
-- machine and have separate threads doing the actual work.
--
-- Because we cannot distinguish between asynchronous and synchronous
-- exceptions in work, it is not safe to interrupt this with an exception (the
-- exception could be sent out to the thread that scheduled work).
--
-- As a work-around, a special exception type `StopRunPendingWork` is handled
-- specially by this function and `runPendingWork` will return. You still need
-- to catch `StopRunPendingWork` if you don't want the exception to propagate.
-- `StopRunPendingWork` is also sent back to the thread who scheduled work.
--
-- Will not return until interrupted with `StopRunPendingWork`.
runWorkMachine :: Context s ()
runWorkMachine = coerceContext $ mask $ \restore -> do
    cid <- currentContextID
    chan <- unQueue . fromJust . IM.lookup (unContextID cid) <$>
            liftIO (readIORef workMachineQueues)
    recursiveBegin restore (fst chan) (snd chan)
  where
    recursiveBegin restore inchan outchan = recursive where
        recursive :: Context () ()
        recursive = do
            work <- liftIO $ readChanOnException outchan (\el -> do
                x <- el
                writeChan inchan x)
            doWork work

        doWork :: Work () -> Context () ()
        doWork work = case work of
            Work action result_mvar -> do
                report_action <- try $ restore (action >>= \x -> return $ liftIO $ putMVar result_mvar $ Right x)
                liftIO $ case report_action of
                    Left exc | fromException exc == Just StopRunPendingWork
                            -> do putMVar result_mvar
                                          (Left $
                                           toException StopRunPendingWork)
                                  throwM StopRunPendingWork
                    Left exc -> putMVar result_mvar (Left exc)
                    Right x -> x

    coerceContext :: Context s1 a -> Context s2 a
    coerceContext = unsafeCoerce

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
scheduleFinalizer (unContextID -> cid) finalizer =
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

