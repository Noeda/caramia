-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ShadowSamplersArray (
	-- * Extension Support
	  gl_NV_shadow_samplers_array

	-- * GL_NV_shadow_samplers_array
	, gl_SAMPLER_2D_ARRAY_SHADOW_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_shadow_samplers_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_shadow_samplers_array = extGL 510

gl_SAMPLER_2D_ARRAY_SHADOW_NV :: GLenum
gl_SAMPLER_2D_ARRAY_SHADOW_NV = 0x8DC4