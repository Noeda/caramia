-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.CompressedTexturePixelStorage (
	-- * Extension Support
	  gl_ARB_compressed_texture_pixel_storage

	-- * GL_ARB_compressed_texture_pixel_storage
	, gl_PACK_COMPRESSED_BLOCK_DEPTH
	, gl_PACK_COMPRESSED_BLOCK_HEIGHT
	, gl_PACK_COMPRESSED_BLOCK_SIZE
	, gl_PACK_COMPRESSED_BLOCK_WIDTH
	, gl_UNPACK_COMPRESSED_BLOCK_DEPTH
	, gl_UNPACK_COMPRESSED_BLOCK_HEIGHT
	, gl_UNPACK_COMPRESSED_BLOCK_SIZE
	, gl_UNPACK_COMPRESSED_BLOCK_WIDTH
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_compressed_texture_pixel_storage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_compressed_texture_pixel_storage = extGL 83