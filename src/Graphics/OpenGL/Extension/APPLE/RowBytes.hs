-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.RowBytes (
	-- * Extension Support
	  gl_APPLE_row_bytes

	-- * GL_APPLE_row_bytes
	, gl_PACK_ROW_BYTES_APPLE
	, gl_UNPACK_ROW_BYTES_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_row_bytes :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_row_bytes = extGL 56

gl_PACK_ROW_BYTES_APPLE :: GLenum
gl_PACK_ROW_BYTES_APPLE = 0x8A15

gl_UNPACK_ROW_BYTES_APPLE :: GLenum
gl_UNPACK_ROW_BYTES_APPLE = 0x8A16