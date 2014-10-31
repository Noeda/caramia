-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.TextureCompressionDxt3 (
	-- * Extension Support
	  gl_ANGLE_texture_compression_dxt3

	-- * GL_ANGLE_texture_compression_dxt3
	, gl_COMPRESSED_RGBA_S3TC_DXT3_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_texture_compression_dxt3 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_texture_compression_dxt3 = extGL 40

gl_COMPRESSED_RGBA_S3TC_DXT3_ANGLE :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT3_ANGLE = 0x83F2