-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ShaderStorageBufferObject (
	-- * Extension Support
	  gl_ARB_shader_storage_buffer_object

	-- * GL_ARB_shader_storage_buffer_object
	, glShaderStorageBlockBinding
	, gl_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
	, gl_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
	, gl_MAX_COMBINED_SHADER_STORAGE_BLOCKS
	, gl_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
	, gl_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
	, gl_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
	, gl_MAX_SHADER_STORAGE_BLOCK_SIZE
	, gl_MAX_SHADER_STORAGE_BUFFER_BINDINGS
	, gl_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
	, gl_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
	, gl_MAX_VERTEX_SHADER_STORAGE_BLOCKS
	, gl_SHADER_STORAGE_BARRIER_BIT
	, gl_SHADER_STORAGE_BUFFER
	, gl_SHADER_STORAGE_BUFFER_BINDING
	, gl_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
	, gl_SHADER_STORAGE_BUFFER_SIZE
	, gl_SHADER_STORAGE_BUFFER_START
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_shader_storage_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_shader_storage_buffer_object = extGL 159