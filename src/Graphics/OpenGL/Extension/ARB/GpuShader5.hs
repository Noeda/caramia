-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.GpuShader5 (
	-- * Extension Support
	  gl_ARB_gpu_shader5

	-- * GL_ARB_gpu_shader5
	, gl_FRAGMENT_INTERPOLATION_OFFSET_BITS
	, gl_GEOMETRY_SHADER_INVOCATIONS
	, gl_MAX_FRAGMENT_INTERPOLATION_OFFSET
	, gl_MAX_GEOMETRY_SHADER_INVOCATIONS
	, gl_MAX_VERTEX_STREAMS
	, gl_MIN_FRAGMENT_INTERPOLATION_OFFSET
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_gpu_shader5 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_gpu_shader5 = extGL 116