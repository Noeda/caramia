-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FillRectangle (
	-- * Extension Support
	  gl_NV_fill_rectangle

	-- * GL_NV_fill_rectangle
	, gl_FILL_RECTANGLE_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_fill_rectangle :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_fill_rectangle = extGL 453

gl_FILL_RECTANGLE_NV :: GLenum
gl_FILL_RECTANGLE_NV = 0x933C