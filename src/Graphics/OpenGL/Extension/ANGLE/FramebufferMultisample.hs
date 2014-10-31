-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.FramebufferMultisample (
	-- * Extension Support
	  gl_ANGLE_framebuffer_multisample

	-- * GL_ANGLE_framebuffer_multisample
	, glRenderbufferStorageMultisampleANGLE
	, gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE
	, gl_MAX_SAMPLES_ANGLE
	, gl_RENDERBUFFER_SAMPLES_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_framebuffer_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_framebuffer_multisample = extGL 36

glRenderbufferStorageMultisampleANGLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageMultisampleANGLE v0 v1 v2 v3 v4 = funGL 67 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE = 0x8D56

gl_MAX_SAMPLES_ANGLE :: GLenum
gl_MAX_SAMPLES_ANGLE = 0x8D57

gl_RENDERBUFFER_SAMPLES_ANGLE :: GLenum
gl_RENDERBUFFER_SAMPLES_ANGLE = 0x8CAB