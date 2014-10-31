-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.LightMaxExponent (
	-- * Extension Support
	  gl_NV_light_max_exponent

	-- * GL_NV_light_max_exponent
	, gl_MAX_SHININESS_NV
	, gl_MAX_SPOT_EXPONENT_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_light_max_exponent :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_light_max_exponent = extGL 477

gl_MAX_SHININESS_NV :: GLenum
gl_MAX_SHININESS_NV = 0x8504

gl_MAX_SPOT_EXPONENT_NV :: GLenum
gl_MAX_SPOT_EXPONENT_NV = 0x8505