-- This file was automatically generated.
module Graphics.OpenGL.Extension.IMG.MultisampledRenderToTexture (
	-- * Extension Support
	  gl_IMG_multisampled_render_to_texture

	-- * GL_IMG_multisampled_render_to_texture
	, glFramebufferTexture2DMultisampleIMG
	, glRenderbufferStorageMultisampleIMG
	, gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_IMG
	, gl_MAX_SAMPLES_IMG
	, gl_RENDERBUFFER_SAMPLES_IMG
	, gl_TEXTURE_SAMPLES_IMG
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IMG_multisampled_render_to_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IMG_multisampled_render_to_texture = extGL 398

glFramebufferTexture2DMultisampleIMG :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLsizei -> m ()
glFramebufferTexture2DMultisampleIMG v0 v1 v2 v3 v4 v5 = funGL 1481 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glRenderbufferStorageMultisampleIMG :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageMultisampleIMG v0 v1 v2 v3 v4 = funGL 1482 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_IMG :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_IMG = 0x9134

gl_MAX_SAMPLES_IMG :: GLenum
gl_MAX_SAMPLES_IMG = 0x9135

gl_RENDERBUFFER_SAMPLES_IMG :: GLenum
gl_RENDERBUFFER_SAMPLES_IMG = 0x9133

gl_TEXTURE_SAMPLES_IMG :: GLenum
gl_TEXTURE_SAMPLES_IMG = 0x9136