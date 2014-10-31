-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.ShadowAmbient (
	-- * Extension Support
	  gl_SGIX_shadow_ambient

	-- * GL_SGIX_shadow_ambient
	, gl_SHADOW_AMBIENT_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_shadow_ambient :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_shadow_ambient = extGL 653

gl_SHADOW_AMBIENT_SGIX :: GLenum
gl_SHADOW_AMBIENT_SGIX = 0x80BF