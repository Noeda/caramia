-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.VertexArrayObject (
	-- * Extension Support
	  gl_ARB_vertex_array_object

	-- * GL_ARB_vertex_array_object
	, glBindVertexArray
	, glDeleteVertexArrays
	, glGenVertexArrays
	, glIsVertexArray
	, gl_VERTEX_ARRAY_BINDING
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_vertex_array_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_vertex_array_object = extGL 212