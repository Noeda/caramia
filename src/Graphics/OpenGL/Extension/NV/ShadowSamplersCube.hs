-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ShadowSamplersCube (
	-- * Extension Support
	  gl_NV_shadow_samplers_cube

	-- * GL_NV_shadow_samplers_cube
	, gl_SAMPLER_CUBE_SHADOW_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_shadow_samplers_cube :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_shadow_samplers_cube = extGL 511

gl_SAMPLER_CUBE_SHADOW_NV :: GLenum
gl_SAMPLER_CUBE_SHADOW_NV = 0x8DC5