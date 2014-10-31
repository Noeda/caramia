-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.VertexAttrib64bit (
	-- * Extension Support
	  gl_ARB_vertex_attrib_64bit

	-- * GL_ARB_vertex_attrib_64bit
	, glGetVertexAttribLdv
	, glVertexAttribL1d
	, glVertexAttribL1dv
	, glVertexAttribL2d
	, glVertexAttribL2dv
	, glVertexAttribL3d
	, glVertexAttribL3dv
	, glVertexAttribL4d
	, glVertexAttribL4dv
	, glVertexAttribLPointer
	, gl_DOUBLE_MAT2
	, gl_DOUBLE_MAT2x3
	, gl_DOUBLE_MAT2x4
	, gl_DOUBLE_MAT3
	, gl_DOUBLE_MAT3x2
	, gl_DOUBLE_MAT3x4
	, gl_DOUBLE_MAT4
	, gl_DOUBLE_MAT4x2
	, gl_DOUBLE_MAT4x3
	, gl_DOUBLE_VEC2
	, gl_DOUBLE_VEC3
	, gl_DOUBLE_VEC4
	, gl_RGB32I
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_vertex_attrib_64bit :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_vertex_attrib_64bit = extGL 213