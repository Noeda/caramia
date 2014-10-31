-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.UnpackSubimage (
	-- * Extension Support
	  gl_EXT_unpack_subimage

	-- * GL_EXT_unpack_subimage
	, gl_UNPACK_ROW_LENGTH_EXT
	, gl_UNPACK_SKIP_PIXELS_EXT
	, gl_UNPACK_SKIP_ROWS_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_unpack_subimage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_unpack_subimage = extGL 378

gl_UNPACK_ROW_LENGTH_EXT :: GLenum
gl_UNPACK_ROW_LENGTH_EXT = 0x0CF2

gl_UNPACK_SKIP_PIXELS_EXT :: GLenum
gl_UNPACK_SKIP_PIXELS_EXT = 0x0CF4

gl_UNPACK_SKIP_ROWS_EXT :: GLenum
gl_UNPACK_SKIP_ROWS_EXT = 0x0CF3