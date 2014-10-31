-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.DrawIndirect (
	-- * Extension Support
	  gl_ARB_draw_indirect

	-- * GL_ARB_draw_indirect
	, glDrawArraysIndirect
	, glDrawElementsIndirect
	, gl_DRAW_INDIRECT_BUFFER
	, gl_DRAW_INDIRECT_BUFFER_BINDING
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_draw_indirect :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_draw_indirect = extGL 100