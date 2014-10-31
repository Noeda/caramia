-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.DepthClamp (
	-- * Extension Support
	  gl_ARB_depth_clamp

	-- * GL_ARB_depth_clamp
	, gl_DEPTH_CLAMP
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_depth_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_depth_clamp = extGL 93