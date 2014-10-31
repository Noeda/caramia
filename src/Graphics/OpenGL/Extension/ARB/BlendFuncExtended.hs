-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.BlendFuncExtended (
	-- * Extension Support
	  gl_ARB_blend_func_extended

	-- * GL_ARB_blend_func_extended
	, glBindFragDataLocationIndexed
	, glGetFragDataIndex
	, gl_MAX_DUAL_SOURCE_DRAW_BUFFERS
	, gl_ONE_MINUS_SRC1_ALPHA
	, gl_ONE_MINUS_SRC1_COLOR
	, gl_SRC1_ALPHA
	, gl_SRC1_COLOR
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_blend_func_extended :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_blend_func_extended = extGL 75