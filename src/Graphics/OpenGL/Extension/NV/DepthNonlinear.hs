-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.DepthNonlinear (
	-- * Extension Support
	  gl_NV_depth_nonlinear

	-- * GL_NV_depth_nonlinear
	, gl_DEPTH_COMPONENT16_NONLINEAR_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_depth_nonlinear :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_depth_nonlinear = extGL 444

gl_DEPTH_COMPONENT16_NONLINEAR_NV :: GLenum
gl_DEPTH_COMPONENT16_NONLINEAR_NV = 0x8E2C