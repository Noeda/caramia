-- | This module manages OpenGL contexts in Caramia.
--
-- Caramia does not actually have any functionality about creating OpenGL
-- contexts. You need to tell it about them with this module.
--
-- For user code, you probably only want to use `giveContext`. The functions
-- about `ContextID`s and finalizers are mostly used internally but there may
-- be some rare cases where they are useful for end users as well.
--

{-# LANGUAGE ScopedTypeVariables, ForeignFunctionInterface #-}

module Caramia.Context
    (
    -- * Running with an OpenGL context
      giveContext
    -- * Context IDs
    , currentContextID
    , ContextID
    -- * Finalization
    , runPendingFinalizers
    , scheduleFinalizer
    -- * Context local data
    , storeContextLocalData
    , retrieveContextLocalData
    -- * Exceptions
    , TooOldOpenGL(..) )
    where

import Data.IORef
import Data.Monoid
import Data.Typeable
import Data.Dynamic
import Control.Applicative
import Control.Concurrent
import Control.Exception
import Control.Monad
import System.IO.Unsafe
import System.Environment

import Foreign.Storable
import Foreign.Marshal.Alloc

import Graphics.Rendering.OpenGL.Raw.Core32

import qualified Data.Map.Strict as M
import qualified Data.IntMap.Strict as IM

foreign import ccall unsafe "initialize_my_glstate_tls"
    c_initialize_my_glstate_tls :: IO ()
foreign import ccall unsafe "activate_debug_mode"
    c_activate_debug_mode :: IO ()

-- | The type of a Caramia context ID.
type ContextID = Int

-- | Returns the current Caramia context ID.
--
-- The context ID is unique between different calls to `giveContext`.
--
-- Returns `Nothing` if there is no context active.
currentContextID :: IO (Maybe ContextID)
currentContextID =
    M.lookup <$> myThreadId <*> readIORef runningContexts
{-# INLINE currentContextID #-}

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
-- Throws `TooOldOpenGL` if the code detects a context that does not provide
-- OpenGL 3.3.
giveContext :: IO a -> IO a
giveContext action = mask $ \restore -> do
    is_bound_thread <- isCurrentThreadBound
    unless is_bound_thread $
        error $ "giveContext: current thread is not bound. How can it have " <>
                "an OpenGL context?"

    checkOpenGLVersion33

    c_initialize_my_glstate_tls
    maybe (pure ())
          (\_ -> c_activate_debug_mode)
          =<<
          lookupEnv "CARAMIA_OPENGL_DEBUG"

    cid <- atomicModifyIORef' nextContextID $ \old -> ( old+1, old )
    tid <- myThreadId
    atomicModifyIORef' runningContexts $ \old_map ->
        ( M.insert tid cid old_map, () )
    finally (restore action) scrapContext

checkOpenGLVersion33 :: IO ()
checkOpenGLVersion33 = do
    alloca $ \major_ptr -> alloca $ \minor_ptr -> do
        -- in case glGetIntegerv is completely broken, set initial values for
        -- major and minor pointers
        poke major_ptr 0
        poke minor_ptr 0

        glGetIntegerv gl_MAJOR_VERSION major_ptr
        glGetIntegerv gl_MAJOR_VERSION minor_ptr
        major <- peek major_ptr
        minor <- peek minor_ptr
        unless (major > 3 ||
                (major == 3 && minor >= 3)) $
            throwIO
                TooOldOpenGL { wantedVersion = (3, 3)
                             , reportedVersion = ( fromIntegral major
                                                 , fromIntegral minor )
                             }

-- | Scraps the current context.
--
-- Not public API.
scrapContext :: IO ()
scrapContext = mask_ $ do
    maybe_cid <- currentContextID
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
runPendingFinalizers :: IO ()
runPendingFinalizers = mask_ $ do
    maybe_cid <- currentContextID
    case maybe_cid of
        Nothing -> return ()
        Just cid -> do
            finalizers <- atomicModifyIORef' pendingFinalizers $ \old ->
                ( IM.delete cid old
                , IM.findWithDefault (return ())
                                     cid
                                     old )
            -- We scrap the Caramia context if any of these finalizers throw an
            -- exception. The reason is that we cannot expect the OpenGL state
            -- to be consistent anymore.
            result <- try finalizers
            case result of
                Left exc -> scrapContext >> throwIO (exc :: SomeException)
                Right () -> return ()

-- | Schedules a finalizer to be run in a Caramia context.
--
-- Does nothing if given context is not alive anymore.
--
-- This is typically called from Haskell garbage collector finalizers because
-- they cannot do finalization there (it's the wrong operating system thread).
scheduleFinalizer :: ContextID -> IO () -> IO ()
scheduleFinalizer cid finalizer =
    atomicModifyIORef' pendingFinalizers $ \old ->
        ( IM.insertWith
            (\new old -> old >> new)
            cid
            finalizer
            old, () )

-- used to give out new unique context IDs
nextContextID :: IORef ContextID
nextContextID = unsafePerformIO $ newIORef 0
{-# NOINLINE nextContextID #-}

-- currently running contexts, map from thread IDs to context IDs
runningContexts :: IORef (M.Map ThreadId ContextID)
runningContexts = unsafePerformIO $ newIORef M.empty
{-# NOINLINE runningContexts #-}

-- these are the pending OpenGL finalizers that wait for a time they can be
-- safely run.
pendingFinalizers :: IORef (IM.IntMap (IO ()))
pendingFinalizers = unsafePerformIO $ newIORef IM.empty
{-# NOINLINE pendingFinalizers #-}

-- context local data. This is like poor man's thread local storage but for
-- contexts.
--
-- The `TypeRep` and `Dynamic` lets this module be agnostic to what other
-- modules hang on to thread local data.
--
-- Other modules can specify a type that there should be only one per context.
-- And this type's TypeRep is stored/queried from the map below.
contextLocalData :: IORef (IM.IntMap (M.Map TypeRep Dynamic))
contextLocalData = unsafePerformIO $ newIORef IM.empty
{-# NOINLINE contextLocalData #-}

-- | Stores a context local value.
--
-- The type of the given value is used as a key. This means that if a value of
-- the same type was stored before, that value is thrown away and replaced with
-- this new value you just gave.
--
-- The value is evaluated to WHNF.
--
-- You don't need this function to work with context local data.
-- `retrieveContextLocalData` is sufficient as it also lets you set a default
-- value in case a value was not already set.
--
-- Context local data is wiped to oblivion once `giveContext` ends.
storeContextLocalData :: Typeable a => a -> IO ()
storeContextLocalData value =
    maybe (error "storeContextLocalData: not in a context.")
          (\cid ->
              atomicModifyIORef' contextLocalData $ \old ->
                  ( IM.update (Just .
                               M.insert (typeOf value)
                                        (toDyn value))
                              cid
                              old
                  , () ) )
          =<< currentContextID
{-# INLINE storeContextLocalData #-}

-- | Retrieves a context local value.
--
-- See `storeContextLocalData`.
retrieveContextLocalData :: forall a. Typeable a
                         => IO a  -- ^ Default value generating action; not
                                  -- evaluated if there was already a value
                                  -- stored.
                         -> IO a
retrieveContextLocalData defvalue =
    maybe (error "retrieveContextLocalData: not in a context.")
          (\cid -> do
              -- No need to care about IORef race conditions because all
              -- functions operating on a certain context ID will be
              -- synchronous with each other
              snapshot <- readIORef contextLocalData
              case IM.lookup cid snapshot of
                  Nothing -> do
                      val <- dyndefvalue
                      atomicModifyIORef' contextLocalData $ \old ->
                          ( IM.insert cid (M.singleton typ val) old
                          , fromDyn val undefined )
                  Just old_map ->
                      case M.lookup typ old_map of
                          Nothing -> do
                              val <- dyndefvalue
                              atomicModifyIORef' contextLocalData $ \old ->
                                  ( IM.adjust (M.insert typ val)
                                              cid
                                              old
                                  , fromDyn val undefined )
                          Just value -> return (fromDyn value undefined))
          =<< currentContextID
  where
    typ = typeOf (undefined :: a)
    dyndefvalue = toDyn <$> defvalue
{-# INLINEABLE retrieveContextLocalData #-}

