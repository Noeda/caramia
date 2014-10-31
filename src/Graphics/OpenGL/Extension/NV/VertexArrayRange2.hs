-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.VertexArrayRange2 (
	-- * Extension Support
	  gl_NV_vertex_array_range2

	-- * GL_NV_vertex_array_range2
	, gl_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_vertex_array_range2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_vertex_array_range2 = extGL 532

gl_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV = 0x8533