-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DrawInstanced (
	-- * Extension Support
	  gl_EXT_draw_instanced

	-- * GL_EXT_draw_instanced
	, glDrawArraysInstancedEXT
	, glDrawElementsInstancedEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_draw_instanced :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_draw_instanced = extGL 275