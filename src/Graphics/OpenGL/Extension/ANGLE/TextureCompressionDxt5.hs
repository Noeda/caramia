-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.TextureCompressionDxt5 (
	-- * Extension Support
	  gl_ANGLE_texture_compression_dxt5

	-- * GL_ANGLE_texture_compression_dxt5
	, gl_COMPRESSED_RGBA_S3TC_DXT5_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_texture_compression_dxt5 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_texture_compression_dxt5 = extGL 41

gl_COMPRESSED_RGBA_S3TC_DXT5_ANGLE :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT5_ANGLE = 0x83F3