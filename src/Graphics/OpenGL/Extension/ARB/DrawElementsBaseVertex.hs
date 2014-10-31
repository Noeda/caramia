-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.DrawElementsBaseVertex (
	-- * Extension Support
	  gl_ARB_draw_elements_base_vertex

	-- * GL_ARB_draw_elements_base_vertex
	, glDrawElementsBaseVertex
	, glDrawElementsInstancedBaseVertex
	, glDrawRangeElementsBaseVertex
	, glMultiDrawElementsBaseVertex
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_draw_elements_base_vertex :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_draw_elements_base_vertex = extGL 99