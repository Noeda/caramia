-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ComputeShader (
	-- * Extension Support
	  gl_ARB_compute_shader

	-- * GL_ARB_compute_shader
	, glDispatchCompute
	, glDispatchComputeIndirect
	, gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
	, gl_COMPUTE_SHADER
	, gl_COMPUTE_SHADER_BIT
	, gl_COMPUTE_WORK_GROUP_SIZE
	, gl_DISPATCH_INDIRECT_BUFFER
	, gl_DISPATCH_INDIRECT_BUFFER_BINDING
	, gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
	, gl_MAX_COMPUTE_ATOMIC_COUNTERS
	, gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
	, gl_MAX_COMPUTE_IMAGE_UNIFORMS
	, gl_MAX_COMPUTE_SHARED_MEMORY_SIZE
	, gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
	, gl_MAX_COMPUTE_UNIFORM_BLOCKS
	, gl_MAX_COMPUTE_UNIFORM_COMPONENTS
	, gl_MAX_COMPUTE_WORK_GROUP_COUNT
	, gl_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
	, gl_MAX_COMPUTE_WORK_GROUP_SIZE
	, gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_compute_shader :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_compute_shader = extGL 84