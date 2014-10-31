-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PackedPixels (
	-- * Extension Support
	  gl_EXT_packed_pixels

	-- * GL_EXT_packed_pixels
	, gl_UNSIGNED_BYTE_3_3_2_EXT
	, gl_UNSIGNED_INT_10_10_10_2_EXT
	, gl_UNSIGNED_INT_8_8_8_8_EXT
	, gl_UNSIGNED_SHORT_4_4_4_4_EXT
	, gl_UNSIGNED_SHORT_5_5_5_1_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_packed_pixels :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_packed_pixels = extGL 305

gl_UNSIGNED_BYTE_3_3_2_EXT :: GLenum
gl_UNSIGNED_BYTE_3_3_2_EXT = 0x8032

gl_UNSIGNED_INT_10_10_10_2_EXT :: GLenum
gl_UNSIGNED_INT_10_10_10_2_EXT = 0x8036

gl_UNSIGNED_INT_8_8_8_8_EXT :: GLenum
gl_UNSIGNED_INT_8_8_8_8_EXT = 0x8035

gl_UNSIGNED_SHORT_4_4_4_4_EXT :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4_EXT = 0x8033

gl_UNSIGNED_SHORT_5_5_5_1_EXT :: GLenum
gl_UNSIGNED_SHORT_5_5_5_1_EXT = 0x8034