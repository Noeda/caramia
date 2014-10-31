-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.CullDistance (
	-- * Extension Support
	  gl_ARB_cull_distance

	-- * GL_ARB_cull_distance
	, gl_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
	, gl_MAX_CULL_DISTANCES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_cull_distance :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_cull_distance = extGL 90