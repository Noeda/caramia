-- | Synchronization primitives.
--
-- This module implements fence synchronization objects. They can be used to
-- check when a GPU operation has been done.
--
-- At the moment, the only place where these objects are useful in Caramia is
-- unsynchronized buffer mapping.
--
-- Operations in this module require @ GL_ARB_sync @ extension or OpenGL 3.2.
--

{-# LANGUAGE NoImplicitPrelude, DeriveDataTypeable, MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}

module Graphics.Caramia.Sync
    (
    -- * Operations
      fence
    , waitFence
    , isFenceSignalled
    -- * Types
    , Fence() )
    where

import Control.Monad.Catch
import Control.Monad.IO.Class
import Graphics.Caramia.Internal.Exception
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource
import Graphics.GL.Ext.ARB.Sync ( gl_ARB_sync )

data Fence = Fence { resource :: !(Resource GLsync)
                   , ordIndex :: !Unique }
                   deriving ( Eq, Typeable )

instance Ord Fence where
    (ordIndex -> o1) `compare` (ordIndex -> o2) = o1 `compare` o2

-- | Create a fence.
fence :: MonadIO m => m Fence
fence = liftIO $ mask_ $ do
    checkOpenGLOrExtensionM (OpenGLVersion 3 2)
                            "GL_ARB_sync"
                            gl_ARB_sync $ do
        resource <- newResource createFence glDeleteSync (return ())
        unique <- liftIO newUnique
        return $ Fence { resource = resource
                       , ordIndex = unique }
  where
    createFence = glFenceSync GL_SYNC_GPU_COMMANDS_COMPLETE 0

-- | Waits for a fence to signal.
--
-- IMPORTANT: this is not interruptible by asynchronous exceptions.
waitFence :: MonadIO m
          => Int           -- ^ Number of microseconds to wait.
          -> Fence
          -> m Bool       -- ^ `True` if the fence was signalled,
                          --   `False` if waiting timed out.
waitFence useconds (Fence{ resource = resource }) =
    withResource resource $ \fencesync -> do
        ret <- glClientWaitSync fencesync GL_SYNC_FLUSH_COMMANDS_BIT
                                (fromIntegral actual_seconds)
        if | ret == GL_ALREADY_SIGNALED -> return True
           | ret == GL_TIMEOUT_EXPIRED -> return False
           | ret == GL_CONDITION_SATISFIED -> return True
           | ret == GL_WAIT_FAILED -> return True -- should we throw an error?
  where
    actual_seconds :: Word64
    actual_seconds =
        if useconds * 1000 < useconds
          then maxBound
          else safeFromIntegral $ useconds * 1000

-- | Checks if a fence has been signalled.
--
-- @ isFenceSignalled = waitFence 0 @
isFenceSignalled :: MonadIO m => Fence -> m Bool
isFenceSignalled = waitFence 0

