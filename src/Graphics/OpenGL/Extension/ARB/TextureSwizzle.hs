-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureSwizzle (
	-- * Extension Support
	  gl_ARB_texture_swizzle

	-- * GL_ARB_texture_swizzle
	, gl_TEXTURE_SWIZZLE_A
	, gl_TEXTURE_SWIZZLE_B
	, gl_TEXTURE_SWIZZLE_G
	, gl_TEXTURE_SWIZZLE_R
	, gl_TEXTURE_SWIZZLE_RGBA
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_swizzle :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_swizzle = extGL 202