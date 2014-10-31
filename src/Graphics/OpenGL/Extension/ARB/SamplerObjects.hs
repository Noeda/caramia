-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.SamplerObjects (
	-- * Extension Support
	  gl_ARB_sampler_objects

	-- * GL_ARB_sampler_objects
	, glBindSampler
	, glDeleteSamplers
	, glGenSamplers
	, glGetSamplerParameterIiv
	, glGetSamplerParameterIuiv
	, glGetSamplerParameterfv
	, glGetSamplerParameteriv
	, glIsSampler
	, glSamplerParameterIiv
	, glSamplerParameterIuiv
	, glSamplerParameterf
	, glSamplerParameterfv
	, glSamplerParameteri
	, glSamplerParameteriv
	, gl_SAMPLER_BINDING
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_sampler_objects :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_sampler_objects = extGL 146