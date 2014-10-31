-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ProvokingVertex (
	-- * Extension Support
	  gl_ARB_provoking_vertex

	-- * GL_ARB_provoking_vertex
	, glProvokingVertex
	, gl_FIRST_VERTEX_CONVENTION
	, gl_LAST_VERTEX_CONVENTION
	, gl_PROVOKING_VERTEX
	, gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_provoking_vertex :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_provoking_vertex = extGL 140