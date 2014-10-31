-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.SeamlessCubeMap (
	-- * Extension Support
	  gl_ARB_seamless_cube_map

	-- * GL_ARB_seamless_cube_map
	, gl_TEXTURE_CUBE_MAP_SEAMLESS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_seamless_cube_map :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_seamless_cube_map = extGL 147