-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.DepthClamp (
	-- * Extension Support
	  gl_NV_depth_clamp

	-- * GL_NV_depth_clamp
	, gl_DEPTH_CLAMP_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_depth_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_depth_clamp = extGL 443

gl_DEPTH_CLAMP_NV :: GLenum
gl_DEPTH_CLAMP_NV = 0x864F