-- | Synchronization primitives.
--
-- This module implements fence synchronization objects. They can be used to
-- check when a GPU operation has been done.
--
-- At the moment, the only place where these objects are useful in Caramia is
-- unsynchronized buffer mapping.
--

{-# LANGUAGE NoImplicitPrelude, DeriveDataTypeable, MultiWayIf #-}

module Caramia.Sync
    (
    -- * Operations
      fence
    , waitFence
    , isFenceSignalled
    -- * Types
    , Fence() )
    where

import Caramia.Internal.OpenGLCApi
import Caramia.Prelude
import Caramia.Resource
import Control.Exception

newtype Fence = Fence (Resource GLsync)
                deriving ( Eq, Typeable )

-- | Create a fence.
fence :: IO Fence
fence = mask_ $ do
    resource <-
        newResource createFence
                    (\fencesync -> glDeleteSync fencesync)
                    (return ())
    return $ Fence resource
  where
    createFence = glFenceSync gl_SYNC_GPU_COMMANDS_COMPLETE 0

-- | Waits for a fence to signal.
--
-- IMPORTANT: this is not interruptible by asynchronous exceptions.
waitFence :: Int           -- ^ Number of microseconds to wait.
          -> Fence
          -> IO Bool       -- ^ `True` if the fence was signalled,
                           --   `False` if waiting timed out.
waitFence useconds (Fence resource) =
    withResource resource $ \fencesync -> do
        ret <- glClientWaitSync fencesync gl_SYNC_FLUSH_COMMANDS_BIT
                                (fromIntegral actual_seconds)
        if | ret == gl_ALREADY_SIGNALED -> return True
           | ret == gl_TIMEOUT_EXPIRED -> return False
           | ret == gl_CONDITION_SATISFIED -> return True
           | ret == gl_WAIT_FAILED -> return True -- should we throw an error?
  where
    actual_seconds :: Word64
    actual_seconds =
        if useconds * 1000 < useconds
          then maxBound
          else safeFromIntegral $ useconds * 1000

-- | Checks if a fence has been signalled.
--
-- @ isFenceSignalled = waitFence 0 @
isFenceSignalled :: Fence -> IO Bool
isFenceSignalled = waitFence 0

