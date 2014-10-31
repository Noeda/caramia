-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureCompressionS3tc (
	-- * Extension Support
	  gl_EXT_texture_compression_s3tc

	-- * GL_EXT_texture_compression_s3tc
	, gl_COMPRESSED_RGBA_S3TC_DXT1_EXT
	, gl_COMPRESSED_RGBA_S3TC_DXT3_EXT
	, gl_COMPRESSED_RGBA_S3TC_DXT5_EXT
	, gl_COMPRESSED_RGB_S3TC_DXT1_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_compression_s3tc :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_compression_s3tc = extGL 353

gl_COMPRESSED_RGBA_S3TC_DXT3_EXT :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83F2

gl_COMPRESSED_RGBA_S3TC_DXT5_EXT :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3