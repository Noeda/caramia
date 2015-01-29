-- | Caramia resources.
--
-- Resources in Caramia encapsulate OpenGL resources which have some
-- constraints on their use:
--
--     * They are, in the general case, only valid in a specific operating
--       system thread.
--     * They need an implicit OpenGL context active to be used.
--
-- This module helps with the correct finalization of OpenGL resources as
-- according to those constraints.
--
-- Most of the time, Caramia keeps `Resource` objects hidden so you, the user,
-- is unlikely to see these directly.
--

{-# LANGUAGE BangPatterns, DeriveDataTypeable #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}

module Graphics.Caramia.Resource
    ( Resource()
    , newResource
    , withResource
    , WrappedOpenGLResource(..) )
    where

import Control.Monad.Catch
import Control.Monad.IO.Class
import Graphics.Caramia.Context
import Graphics.Caramia.OpenGLResource
import Graphics.Caramia.Prelude

-- | The data type of a Caramia resource.
data Resource a = Resource
    { rawResource  :: !(IORef (Maybe
                          ( a         -- the unmanaged resource
                          , IO ()     -- opengl finalizer
                          , IO ())))  -- normal finalizer
    , nativeCid    :: !ContextID
    }
    deriving ( Typeable )

-- | Wrap a `Resource` to a `WrappedOpenGLResource`. The wrapped resource has
-- `OpenGLResource` implementation.
newtype WrappedOpenGLResource a = WrappedOpenGLResource (Resource a)
                                  deriving ( Eq, Typeable )

instance OpenGLResource a (WrappedOpenGLResource a) where
    getRaw (WrappedOpenGLResource managed) =
        liftIO $ readIORef (rawResource managed) >>= \case
            Nothing -> error "getRaw (WrappedOpenGLResource): resource has been finalized."
            Just (r, _, _) -> return r

    touch (WrappedOpenGLResource managed) =
        liftIO $ touchIORef (rawResource managed)

instance Eq (Resource a) where
    res1 == res2 = rawResource res1 == rawResource res2

-- | Creates a new resource.
--
-- Must be called in a thread that has an OpenGL context active. Otherwise, an
-- error will be thrown.
--
-- If you throw an exception in the OpenGL finalizer, then this will disrupt
-- Caramia context and make it invalid. So try not to throw those exceptions?
newResource :: (MonadIO m, MonadMask m)
            => m a                -- ^ Action that returns the raw, unmanaged
                                  -- resource. Good place to create it.
            -> (a -> IO ())       -- ^ OpenGL finalizer. Will only be called in
                                  -- the same thread as this `newResource` is
                                  -- called, but only if the same OpenGL
                                  -- context is still alive.
            -> IO ()              -- ^ \'Ordinary\' finalizer. This will be
                                  -- called immediately when garbage collector
                                  -- collects the resource which means before
                                  -- the OpenGL finalizer and in a separate
                                  -- thread. If this finalizer throws an
                                  -- exception then the OpenGL finalizer is
                                  -- cancelled and the resource is marked as
                                  -- finalized. This will be run even if the
                                  -- OpenGL context is gone.
            -> m (Resource a)
newResource resource_creator finalizer normal_finalizer = mask_ $
    -- We need the context ID for correct finalization so we cannot take away
    -- this check with NO_RESOURCE_RUNTIME_CHECKS.
    maybe (error "newResource: no OpenGL context active.")
          (\cid -> do
            resource <- resource_creator
            let opengl_finalizer = finalizer resource
            ref <- liftIO $ newIORef (Just ( resource
                                          , opengl_finalizer
                                          , normal_finalizer ))
            let res = Resource { rawResource = ref
                               , nativeCid = cid }
            _ <- liftIO $ mkWeakIORef ref $ finalizeNow res
            return res)
          =<<
          currentContextID

-- | Promptly finalize a resource.
--
-- The ordinary finalizer will be run immediately. The OpenGL finalizer will be
-- run if the current thread is the same OpenGL thread where the resource was
-- created.
--
-- If ordinary finalizer throws an exception, the OpenGL finalizer is not run
-- and the resource is marked as finalized. The exception propagates out from
-- this call to you.
--
-- Does nothing if the resource is already finalized.
--
-- ***********************
-- TODO: this is not actually exported API. Some resources cannot be finalized
-- like this because other resources might refer to them. How do we handle
-- resources that can refer to each other? Right now, we cannot. So we can't
-- allow users to finalize things by themselves.
finalizeNow :: Resource a -> IO ()
finalizeNow resource = mask_ $ do
    maybe_res <- atomicModifyIORef (rawResource resource) $
        \old -> ( Nothing, old )
    case maybe_res of
        Nothing -> return ()
        Just (_, opengl_finalizer, normal_finalizer) -> do
            normal_finalizer
            let schedule = scheduleFinalizer (nativeCid resource)
                                              opengl_finalizer
            maybe schedule
                  (\cid ->
                    if cid == nativeCid resource
                      then opengl_finalizer
                      else schedule)
                  =<<
                  currentContextID

-- | Uses a resource.
--
-- Throws an user error if the resource is used in a wrong or dead context.
withResource :: MonadIO m
             => Resource a
             -> (a -> m b)   -- ^ Use the resource inside this action. Don't
                             -- return the unmanaged resource from this
                             -- because behaviour is then undefined.
             -> m b
withResource resource action =
    maybe (error "withResource: resource has been finalized.")
          (\(res, _, _) -> do
              cid <- liftIO $ currentContextID
              if cid == Just (nativeCid resource)
                then liftIO (touchIORef ref) >> action res
                else error $ "withResource: attempted resource use " <>
                             "in a wrong context.")
          =<<
          liftIO (readIORef ref)
  where
    ref = rawResource resource

touchIORef :: IORef a -> IO ()
touchIORef !_ = return ()

