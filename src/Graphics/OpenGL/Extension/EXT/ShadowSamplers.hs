-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.ShadowSamplers (
	-- * Extension Support
	  gl_EXT_shadow_samplers

	-- * GL_EXT_shadow_samplers
	, gl_COMPARE_REF_TO_TEXTURE_EXT
	, gl_SAMPLER_2D_SHADOW_EXT
	, gl_TEXTURE_COMPARE_FUNC_EXT
	, gl_TEXTURE_COMPARE_MODE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_shadow_samplers :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_shadow_samplers = extGL 335

gl_COMPARE_REF_TO_TEXTURE_EXT :: GLenum
gl_COMPARE_REF_TO_TEXTURE_EXT = 0x884E

gl_SAMPLER_2D_SHADOW_EXT :: GLenum
gl_SAMPLER_2D_SHADOW_EXT = 0x8B62

gl_TEXTURE_COMPARE_FUNC_EXT :: GLenum
gl_TEXTURE_COMPARE_FUNC_EXT = 0x884D

gl_TEXTURE_COMPARE_MODE_EXT :: GLenum
gl_TEXTURE_COMPARE_MODE_EXT = 0x884C