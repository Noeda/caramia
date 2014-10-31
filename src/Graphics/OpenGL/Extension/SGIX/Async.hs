-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Async (
	-- * Extension Support
	  gl_SGIX_async

	-- * GL_SGIX_async
	, glAsyncMarkerSGIX
	, glDeleteAsyncMarkersSGIX
	, glFinishAsyncSGIX
	, glGenAsyncMarkersSGIX
	, glIsAsyncMarkerSGIX
	, glPollAsyncSGIX
	, gl_ASYNC_MARKER_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_async :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_async = extGL 628

glAsyncMarkerSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glAsyncMarkerSGIX v0 = funGL 2229 >>= \f -> liftIO $ f v0

glDeleteAsyncMarkersSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> m ()
glDeleteAsyncMarkersSGIX v0 v1 = funGL 2230 >>= \f -> liftIO $ f v0 v1

glFinishAsyncSGIX :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> m GLint
glFinishAsyncSGIX v0 = funGL 2231 >>= \f -> liftIO $ f v0

glGenAsyncMarkersSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> m GLuint
glGenAsyncMarkersSGIX v0 = funGL 2232 >>= \f -> liftIO $ f v0

glIsAsyncMarkerSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsAsyncMarkerSGIX v0 = funGL 2233 >>= \f -> liftIO $ f v0

glPollAsyncSGIX :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> m GLint
glPollAsyncSGIX v0 = funGL 2234 >>= \f -> liftIO $ f v0

gl_ASYNC_MARKER_SGIX :: GLenum
gl_ASYNC_MARKER_SGIX = 0x8329