-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.SinglePrecision (
	-- * Extension Support
	  gl_OES_single_precision

	-- * GL_OES_single_precision
	, glClearDepthfOES
	, glClipPlanefOES
	, glDepthRangefOES
	, glFrustumfOES
	, glGetClipPlanefOES
	, glOrthofOES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_single_precision :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_single_precision = extGL 576

glClearDepthfOES :: (MonadIO m, MonadReader e m, HasScope e) => GLclampf -> m ()
glClearDepthfOES v0 = funGL 2158 >>= \f -> liftIO $ f v0

glClipPlanefOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glClipPlanefOES v0 v1 = funGL 2159 >>= \f -> liftIO $ f v0 v1

glDepthRangefOES :: (MonadIO m, MonadReader e m, HasScope e) => GLclampf -> GLclampf -> m ()
glDepthRangefOES v0 v1 = funGL 2160 >>= \f -> liftIO $ f v0 v1

glFrustumfOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glFrustumfOES v0 v1 v2 v3 v4 v5 = funGL 2161 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetClipPlanefOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glGetClipPlanefOES v0 v1 = funGL 2162 >>= \f -> liftIO $ f v0 v1

glOrthofOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glOrthofOES v0 v1 v2 v3 v4 v5 = funGL 2163 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5