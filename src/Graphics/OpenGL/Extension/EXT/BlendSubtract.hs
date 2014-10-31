-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.BlendSubtract (
	-- * Extension Support
	  gl_EXT_blend_subtract

	-- * GL_EXT_blend_subtract
	, gl_FUNC_REVERSE_SUBTRACT_EXT
	, gl_FUNC_SUBTRACT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_blend_subtract :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_blend_subtract = extGL 255

gl_FUNC_REVERSE_SUBTRACT_EXT :: GLenum
gl_FUNC_REVERSE_SUBTRACT_EXT = 0x800B

gl_FUNC_SUBTRACT_EXT :: GLenum
gl_FUNC_SUBTRACT_EXT = 0x800A