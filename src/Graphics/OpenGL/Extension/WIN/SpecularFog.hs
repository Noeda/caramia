-- This file was automatically generated.
module Graphics.OpenGL.Extension.WIN.SpecularFog (
	-- * Extension Support
	  gl_WIN_specular_fog

	-- * GL_WIN_specular_fog
	, gl_FOG_SPECULAR_TEXTURE_WIN
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_WIN_specular_fog :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_WIN_specular_fog = extGL 678

gl_FOG_SPECULAR_TEXTURE_WIN :: GLenum
gl_FOG_SPECULAR_TEXTURE_WIN = 0x80EC