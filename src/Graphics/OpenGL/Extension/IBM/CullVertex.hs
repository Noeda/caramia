-- This file was automatically generated.
module Graphics.OpenGL.Extension.IBM.CullVertex (
	-- * Extension Support
	  gl_IBM_cull_vertex

	-- * GL_IBM_cull_vertex
	, gl_CULL_VERTEX_IBM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IBM_cull_vertex :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IBM_cull_vertex = extGL 392

gl_CULL_VERTEX_IBM :: GLenum
gl_CULL_VERTEX_IBM = 103050