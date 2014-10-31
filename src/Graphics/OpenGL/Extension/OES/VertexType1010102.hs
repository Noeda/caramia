-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.VertexType1010102 (
	-- * Extension Support
	  gl_OES_vertex_type_10_10_10_2

	-- * GL_OES_vertex_type_10_10_10_2
	, gl_INT_10_10_10_2_OES
	, gl_UNSIGNED_INT_10_10_10_2_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_vertex_type_10_10_10_2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_vertex_type_10_10_10_2 = extGL 597

gl_INT_10_10_10_2_OES :: GLenum
gl_INT_10_10_10_2_OES = 0x8DF7

gl_UNSIGNED_INT_10_10_10_2_OES :: GLenum
gl_UNSIGNED_INT_10_10_10_2_OES = 0x8DF6