-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureCompressionBptc (
	-- * Extension Support
	  gl_ARB_texture_compression_bptc

	-- * GL_ARB_texture_compression_bptc
	, gl_COMPRESSED_RGBA_BPTC_UNORM_ARB
	, gl_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
	, gl_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB
	, gl_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_texture_compression_bptc :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_compression_bptc = extGL 180

gl_COMPRESSED_RGBA_BPTC_UNORM_ARB :: GLenum
gl_COMPRESSED_RGBA_BPTC_UNORM_ARB = 0x8E8C

gl_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB :: GLenum
gl_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB = 0x8E8E

gl_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB :: GLenum
gl_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB = 0x8E8F

gl_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB :: GLenum
gl_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB = 0x8E8D