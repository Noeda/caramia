-- This file was automatically generated.
module Graphics.OpenGL.Extension.IMG.TextureCompressionPvrtc (
	-- * Extension Support
	  gl_IMG_texture_compression_pvrtc

	-- * GL_IMG_texture_compression_pvrtc
	, gl_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG
	, gl_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG
	, gl_COMPRESSED_RGB_PVRTC_2BPPV1_IMG
	, gl_COMPRESSED_RGB_PVRTC_4BPPV1_IMG
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IMG_texture_compression_pvrtc :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IMG_texture_compression_pvrtc = extGL 402

gl_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG :: GLenum
gl_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG = 0x8C03

gl_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG :: GLenum
gl_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 0x8C02

gl_COMPRESSED_RGB_PVRTC_2BPPV1_IMG :: GLenum
gl_COMPRESSED_RGB_PVRTC_2BPPV1_IMG = 0x8C01

gl_COMPRESSED_RGB_PVRTC_4BPPV1_IMG :: GLenum
gl_COMPRESSED_RGB_PVRTC_4BPPV1_IMG = 0x8C00