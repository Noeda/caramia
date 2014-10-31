-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.TextureAddEnv (
	-- * Extension Support
	  gl_SGIX_texture_add_env

	-- * GL_SGIX_texture_add_env
	, gl_TEXTURE_ENV_BIAS_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_texture_add_env :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_texture_add_env = extGL 657

gl_TEXTURE_ENV_BIAS_SGIX :: GLenum
gl_TEXTURE_ENV_BIAS_SGIX = 0x80BE