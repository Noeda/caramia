-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureBarrier (
	-- * Extension Support
	  gl_ARB_texture_barrier

	-- * GL_ARB_texture_barrier
	, glTextureBarrier
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_barrier :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_barrier = extGL 174