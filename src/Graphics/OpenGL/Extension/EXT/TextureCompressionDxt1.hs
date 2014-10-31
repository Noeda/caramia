-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureCompressionDxt1 (
	-- * Extension Support
	  gl_EXT_texture_compression_dxt1

	-- * GL_EXT_texture_compression_dxt1
	, gl_COMPRESSED_RGBA_S3TC_DXT1_EXT
	, gl_COMPRESSED_RGB_S3TC_DXT1_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_compression_dxt1 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_compression_dxt1 = extGL 350