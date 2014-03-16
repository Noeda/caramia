-- | This module manages OpenGL contexts in Caramia.
--
-- Caramia does not actually have any functionality about creating OpenGL
-- contexts. You need to tell it about them with this module.
--

module Caramia.Context
    ( giveContext
    , runPendingFinalizers
    , currentContextID
    , scheduleFinalizer
    , ContextID )
    where

import Data.IORef
import Data.Monoid
import Control.Applicative
import Control.Concurrent
import Control.Exception
import Control.Monad
import System.IO.Unsafe

import qualified Data.Map.Strict as M
import qualified Data.IntMap.Strict as IM

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

-- | Tell Caramia the current thread has an OpenGL context active.
--
-- When the given IO action returns, Caramia will think that the OpenGL context
-- is now gone. It is probably best to actually close the context because this
-- also means OpenGL finalizers will not be run (Caramia thinks they were all
-- released when the OpenGL context went away).
--
-- The context in the IO action is referred to as \'Caramia context\' in this
-- documentation to distinguish it from OpenGL context.
giveContext :: IO a -> IO a
giveContext action = mask $ \restore -> do
    is_bound_thread <- isCurrentThreadBound
    unless is_bound_thread $
        error $ "giveContext: current thread is not bound. How can it have " <>
                "an OpenGL context?"

    cid <- atomicModifyIORef' nextContextID $ \old -> ( old+1, old )
    tid <- myThreadId
    atomicModifyIORef' runningContexts $ \old_map ->
        ( M.insert tid cid old_map, () )
    finally (restore action) scrapContext

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
        ( IM.adjust (flip (>>) finalizer) cid old, () )

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

