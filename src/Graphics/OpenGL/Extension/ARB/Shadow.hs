-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.Shadow (
	-- * Extension Support
	  gl_ARB_shadow

	-- * GL_ARB_shadow
	, gl_COMPARE_R_TO_TEXTURE_ARB
	, gl_TEXTURE_COMPARE_FUNC_ARB
	, gl_TEXTURE_COMPARE_MODE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_shadow :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_shadow = extGL 167

gl_COMPARE_R_TO_TEXTURE_ARB :: GLenum
gl_COMPARE_R_TO_TEXTURE_ARB = 0x884E

gl_TEXTURE_COMPARE_FUNC_ARB :: GLenum
gl_TEXTURE_COMPARE_FUNC_ARB = 0x884D

gl_TEXTURE_COMPARE_MODE_ARB :: GLenum
gl_TEXTURE_COMPARE_MODE_ARB = 0x884C