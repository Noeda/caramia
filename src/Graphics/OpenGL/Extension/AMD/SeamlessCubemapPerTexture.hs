-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.SeamlessCubemapPerTexture (
	-- * Extension Support
	  gl_AMD_seamless_cubemap_per_texture

	-- * GL_AMD_seamless_cubemap_per_texture
	, gl_TEXTURE_CUBE_MAP_SEAMLESS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_AMD_seamless_cubemap_per_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_seamless_cubemap_per_texture = extGL 21