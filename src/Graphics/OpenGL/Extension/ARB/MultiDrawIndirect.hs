-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.MultiDrawIndirect (
	-- * Extension Support
	  gl_ARB_multi_draw_indirect

	-- * GL_ARB_multi_draw_indirect
	, glMultiDrawArraysIndirect
	, glMultiDrawElementsIndirect
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_multi_draw_indirect :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_multi_draw_indirect = extGL 130