-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ShadowAmbient (
	-- * Extension Support
	  gl_ARB_shadow_ambient

	-- * GL_ARB_shadow_ambient
	, gl_TEXTURE_COMPARE_FAIL_VALUE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_shadow_ambient :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_shadow_ambient = extGL 168

gl_TEXTURE_COMPARE_FAIL_VALUE_ARB :: GLenum
gl_TEXTURE_COMPARE_FAIL_VALUE_ARB = 0x80BF