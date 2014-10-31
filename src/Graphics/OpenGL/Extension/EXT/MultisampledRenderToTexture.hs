-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.MultisampledRenderToTexture (
	-- * Extension Support
	  gl_EXT_multisampled_render_to_texture

	-- * GL_EXT_multisampled_render_to_texture
	, glFramebufferTexture2DMultisampleEXT
	, glRenderbufferStorageMultisampleEXT
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT
	, gl_MAX_SAMPLES_EXT
	, gl_RENDERBUFFER_SAMPLES_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_multisampled_render_to_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_multisampled_render_to_texture = extGL 300

glFramebufferTexture2DMultisampleEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLsizei -> m ()
glFramebufferTexture2DMultisampleEXT v0 v1 v2 v3 v4 v5 = funGL 1302 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT = 0x8D6C