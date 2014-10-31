-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.DepthClampSeparate (
	-- * Extension Support
	  gl_AMD_depth_clamp_separate

	-- * GL_AMD_depth_clamp_separate
	, gl_DEPTH_CLAMP_FAR_AMD
	, gl_DEPTH_CLAMP_NEAR_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_depth_clamp_separate :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_depth_clamp_separate = extGL 8

gl_DEPTH_CLAMP_FAR_AMD :: GLenum
gl_DEPTH_CLAMP_FAR_AMD = 0x901F

gl_DEPTH_CLAMP_NEAR_AMD :: GLenum
gl_DEPTH_CLAMP_NEAR_AMD = 0x901E