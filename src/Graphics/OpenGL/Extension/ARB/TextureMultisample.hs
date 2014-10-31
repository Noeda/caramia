-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureMultisample (
	-- * Extension Support
	  gl_ARB_texture_multisample

	-- * GL_ARB_texture_multisample
	, glGetMultisamplefv
	, glSampleMaski
	, glTexImage2DMultisample
	, glTexImage3DMultisample
	, gl_INT_SAMPLER_2D_MULTISAMPLE
	, gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
	, gl_MAX_COLOR_TEXTURE_SAMPLES
	, gl_MAX_DEPTH_TEXTURE_SAMPLES
	, gl_MAX_INTEGER_SAMPLES
	, gl_MAX_SAMPLE_MASK_WORDS
	, gl_PROXY_TEXTURE_2D_MULTISAMPLE
	, gl_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
	, gl_SAMPLER_2D_MULTISAMPLE
	, gl_SAMPLER_2D_MULTISAMPLE_ARRAY
	, gl_SAMPLE_MASK
	, gl_SAMPLE_MASK_VALUE
	, gl_SAMPLE_POSITION
	, gl_TEXTURE_2D_MULTISAMPLE
	, gl_TEXTURE_2D_MULTISAMPLE_ARRAY
	, gl_TEXTURE_BINDING_2D_MULTISAMPLE
	, gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
	, gl_TEXTURE_FIXED_SAMPLE_LOCATIONS
	, gl_TEXTURE_SAMPLES
	, gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
	, gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_multisample = extGL 192