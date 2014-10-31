-- This file was automatically generated.
module Graphics.OpenGL.Extension.IMG.TextureCompressionPvrtc2 (
	-- * Extension Support
	  gl_IMG_texture_compression_pvrtc2

	-- * GL_IMG_texture_compression_pvrtc2
	, gl_COMPRESSED_RGBA_PVRTC_2BPPV2_IMG
	, gl_COMPRESSED_RGBA_PVRTC_4BPPV2_IMG
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IMG_texture_compression_pvrtc2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IMG_texture_compression_pvrtc2 = extGL 403

gl_COMPRESSED_RGBA_PVRTC_2BPPV2_IMG :: GLenum
gl_COMPRESSED_RGBA_PVRTC_2BPPV2_IMG = 0x9137

gl_COMPRESSED_RGBA_PVRTC_4BPPV2_IMG :: GLenum
gl_COMPRESSED_RGBA_PVRTC_4BPPV2_IMG = 0x9138