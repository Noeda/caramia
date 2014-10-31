-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.PackReverseRowOrder (
	-- * Extension Support
	  gl_ANGLE_pack_reverse_row_order

	-- * GL_ANGLE_pack_reverse_row_order
	, gl_PACK_REVERSE_ROW_ORDER_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_pack_reverse_row_order :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_pack_reverse_row_order = extGL 38

gl_PACK_REVERSE_ROW_ORDER_ANGLE :: GLenum
gl_PACK_REVERSE_ROW_ORDER_ANGLE = 0x93A4