-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ClearTexture (
	-- * Extension Support
	  gl_ARB_clear_texture

	-- * GL_ARB_clear_texture
	, glClearTexImage
	, glClearTexSubImage
	, gl_CLEAR_TEXTURE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_clear_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_clear_texture = extGL 79