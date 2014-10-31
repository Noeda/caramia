-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureSRGBDecode (
	-- * Extension Support
	  gl_EXT_texture_sRGB_decode

	-- * GL_EXT_texture_sRGB_decode
	, gl_DECODE_EXT
	, gl_SKIP_DECODE_EXT
	, gl_TEXTURE_SRGB_DECODE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_sRGB_decode :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_sRGB_decode = extGL 369

gl_DECODE_EXT :: GLenum
gl_DECODE_EXT = 0x8A49

gl_SKIP_DECODE_EXT :: GLenum
gl_SKIP_DECODE_EXT = 0x8A4A

gl_TEXTURE_SRGB_DECODE_EXT :: GLenum
gl_TEXTURE_SRGB_DECODE_EXT = 0x8A48