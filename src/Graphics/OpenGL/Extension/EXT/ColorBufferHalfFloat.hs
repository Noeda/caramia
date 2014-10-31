-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.ColorBufferHalfFloat (
	-- * Extension Support
	  gl_EXT_color_buffer_half_float

	-- * GL_EXT_color_buffer_half_float
	, gl_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT
	, gl_R16F_EXT
	, gl_RG16F_EXT
	, gl_RGB16F_EXT
	, gl_RGBA16F_EXT
	, gl_UNSIGNED_NORMALIZED_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_color_buffer_half_float :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_color_buffer_half_float = extGL 258

gl_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT = 0x8211

gl_UNSIGNED_NORMALIZED_EXT :: GLenum
gl_UNSIGNED_NORMALIZED_EXT = 0x8C17