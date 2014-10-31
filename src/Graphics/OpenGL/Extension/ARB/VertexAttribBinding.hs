-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.VertexAttribBinding (
	-- * Extension Support
	  gl_ARB_vertex_attrib_binding

	-- * GL_ARB_vertex_attrib_binding
	, glBindVertexBuffer
	, glVertexAttribBinding
	, glVertexAttribFormat
	, glVertexAttribIFormat
	, glVertexAttribLFormat
	, glVertexBindingDivisor
	, gl_MAX_VERTEX_ATTRIB_BINDINGS
	, gl_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
	, gl_VERTEX_ATTRIB_BINDING
	, gl_VERTEX_ATTRIB_RELATIVE_OFFSET
	, gl_VERTEX_BINDING_DIVISOR
	, gl_VERTEX_BINDING_OFFSET
	, gl_VERTEX_BINDING_STRIDE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_vertex_attrib_binding :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_vertex_attrib_binding = extGL 214