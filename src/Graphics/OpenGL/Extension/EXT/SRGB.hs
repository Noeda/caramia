-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.SRGB (
	-- * Extension Support
	  gl_EXT_sRGB

	-- * GL_EXT_sRGB
	, gl_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT
	, gl_SRGB8_ALPHA8_EXT
	, gl_SRGB_ALPHA_EXT
	, gl_SRGB_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_sRGB :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_sRGB = extGL 321

gl_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = 0x8210