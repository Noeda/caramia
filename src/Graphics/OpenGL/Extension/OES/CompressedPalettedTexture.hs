-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.CompressedPalettedTexture (
	-- * Extension Support
	  gl_OES_compressed_paletted_texture

	-- * GL_OES_compressed_paletted_texture
	, gl_PALETTE4_R5_G6_B5_OES
	, gl_PALETTE4_RGB5_A1_OES
	, gl_PALETTE4_RGB8_OES
	, gl_PALETTE4_RGBA4_OES
	, gl_PALETTE4_RGBA8_OES
	, gl_PALETTE8_R5_G6_B5_OES
	, gl_PALETTE8_RGB5_A1_OES
	, gl_PALETTE8_RGB8_OES
	, gl_PALETTE8_RGBA4_OES
	, gl_PALETTE8_RGBA8_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_compressed_paletted_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_compressed_paletted_texture = extGL 550

gl_PALETTE4_R5_G6_B5_OES :: GLenum
gl_PALETTE4_R5_G6_B5_OES = 0x8B92

gl_PALETTE4_RGB5_A1_OES :: GLenum
gl_PALETTE4_RGB5_A1_OES = 0x8B94

gl_PALETTE4_RGB8_OES :: GLenum
gl_PALETTE4_RGB8_OES = 0x8B90

gl_PALETTE4_RGBA4_OES :: GLenum
gl_PALETTE4_RGBA4_OES = 0x8B93

gl_PALETTE4_RGBA8_OES :: GLenum
gl_PALETTE4_RGBA8_OES = 0x8B91

gl_PALETTE8_R5_G6_B5_OES :: GLenum
gl_PALETTE8_R5_G6_B5_OES = 0x8B97

gl_PALETTE8_RGB5_A1_OES :: GLenum
gl_PALETTE8_RGB5_A1_OES = 0x8B99

gl_PALETTE8_RGB8_OES :: GLenum
gl_PALETTE8_RGB8_OES = 0x8B95

gl_PALETTE8_RGBA4_OES :: GLenum
gl_PALETTE8_RGBA4_OES = 0x8B98

gl_PALETTE8_RGBA8_OES :: GLenum
gl_PALETTE8_RGBA8_OES = 0x8B96