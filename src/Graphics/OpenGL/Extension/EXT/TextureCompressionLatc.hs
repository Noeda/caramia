-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureCompressionLatc (
	-- * Extension Support
	  gl_EXT_texture_compression_latc

	-- * GL_EXT_texture_compression_latc
	, gl_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT
	, gl_COMPRESSED_LUMINANCE_LATC1_EXT
	, gl_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT
	, gl_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_compression_latc :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_compression_latc = extGL 351

gl_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT :: GLenum
gl_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT = 0x8C72

gl_COMPRESSED_LUMINANCE_LATC1_EXT :: GLenum
gl_COMPRESSED_LUMINANCE_LATC1_EXT = 0x8C70

gl_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT :: GLenum
gl_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT = 0x8C73

gl_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT :: GLenum
gl_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT = 0x8C71