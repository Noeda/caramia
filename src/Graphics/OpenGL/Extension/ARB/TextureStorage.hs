-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureStorage (
	-- * Extension Support
	  gl_ARB_texture_storage

	-- * GL_ARB_texture_storage
	, glTexStorage1D
	, glTexStorage2D
	, glTexStorage3D
	, gl_TEXTURE_IMMUTABLE_FORMAT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_storage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_storage = extGL 200