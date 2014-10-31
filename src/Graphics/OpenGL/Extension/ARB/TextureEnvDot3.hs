-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureEnvDot3 (
	-- * Extension Support
	  gl_ARB_texture_env_dot3

	-- * GL_ARB_texture_env_dot3
	, gl_DOT3_RGBA_ARB
	, gl_DOT3_RGB_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_texture_env_dot3 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_env_dot3 = extGL 187

gl_DOT3_RGBA_ARB :: GLenum
gl_DOT3_RGBA_ARB = 0x86AF

gl_DOT3_RGB_ARB :: GLenum
gl_DOT3_RGB_ARB = 0x86AE