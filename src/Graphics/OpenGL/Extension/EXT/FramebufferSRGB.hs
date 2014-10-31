-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.FramebufferSRGB (
	-- * Extension Support
	  gl_EXT_framebuffer_sRGB

	-- * GL_EXT_framebuffer_sRGB
	, gl_FRAMEBUFFER_SRGB_CAPABLE_EXT
	, gl_FRAMEBUFFER_SRGB_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_framebuffer_sRGB :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_framebuffer_sRGB = extGL 282

gl_FRAMEBUFFER_SRGB_CAPABLE_EXT :: GLenum
gl_FRAMEBUFFER_SRGB_CAPABLE_EXT = 0x8DBA