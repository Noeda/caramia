-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureEnvDot3 (
	-- * Extension Support
	  gl_EXT_texture_env_dot3

	-- * GL_EXT_texture_env_dot3
	, gl_DOT3_RGBA_EXT
	, gl_DOT3_RGB_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_env_dot3 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_env_dot3 = extGL 358

gl_DOT3_RGBA_EXT :: GLenum
gl_DOT3_RGBA_EXT = 0x8741

gl_DOT3_RGB_EXT :: GLenum
gl_DOT3_RGB_EXT = 0x8740