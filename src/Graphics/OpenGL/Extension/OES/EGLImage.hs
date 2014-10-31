-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.EGLImage (
	-- * Extension Support
	  gl_OES_EGL_image

	-- * GL_OES_EGL_image
	, glEGLImageTargetRenderbufferStorageOES
	, glEGLImageTargetTexture2DOES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_EGL_image :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_EGL_image = extGL 542

glEGLImageTargetRenderbufferStorageOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLeglImageOES -> m ()
glEGLImageTargetRenderbufferStorageOES v0 v1 = funGL 2021 >>= \f -> liftIO $ f v0 v1

glEGLImageTargetTexture2DOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLeglImageOES -> m ()
glEGLImageTargetTexture2DOES v0 v1 = funGL 2022 >>= \f -> liftIO $ f v0 v1