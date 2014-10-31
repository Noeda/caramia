-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.MatrixGet (
	-- * Extension Support
	  gl_OES_matrix_get

	-- * GL_OES_matrix_get
	, gl_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES
	, gl_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES
	, gl_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_matrix_get :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_matrix_get = extGL 563

gl_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES :: GLenum
gl_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES = 0x898D

gl_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES :: GLenum
gl_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES = 0x898E

gl_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES :: GLenum
gl_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES = 0x898F