-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FramebufferMultisample (
	-- * Extension Support
	  gl_NV_framebuffer_multisample

	-- * GL_NV_framebuffer_multisample
	, glRenderbufferStorageMultisampleNV
	, gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_NV
	, gl_MAX_SAMPLES_NV
	, gl_RENDERBUFFER_SAMPLES_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_framebuffer_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_framebuffer_multisample = extGL 464

glRenderbufferStorageMultisampleNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageMultisampleNV v0 v1 v2 v3 v4 = funGL 1624 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_NV :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_NV = 0x8D56

gl_MAX_SAMPLES_NV :: GLenum
gl_MAX_SAMPLES_NV = 0x8D57

gl_RENDERBUFFER_SAMPLES_NV :: GLenum
gl_RENDERBUFFER_SAMPLES_NV = 0x8CAB