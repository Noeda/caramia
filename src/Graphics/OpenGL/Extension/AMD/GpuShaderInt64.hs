-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.GpuShaderInt64 (
	-- * Extension Support
	  gl_AMD_gpu_shader_int64

	-- * GL_AMD_gpu_shader_int64
	, glGetUniformi64vNV
	, glGetUniformui64vNV
	, glProgramUniform1i64NV
	, glProgramUniform1i64vNV
	, glProgramUniform1ui64NV
	, glProgramUniform1ui64vNV
	, glProgramUniform2i64NV
	, glProgramUniform2i64vNV
	, glProgramUniform2ui64NV
	, glProgramUniform2ui64vNV
	, glProgramUniform3i64NV
	, glProgramUniform3i64vNV
	, glProgramUniform3ui64NV
	, glProgramUniform3ui64vNV
	, glProgramUniform4i64NV
	, glProgramUniform4i64vNV
	, glProgramUniform4ui64NV
	, glProgramUniform4ui64vNV
	, glUniform1i64NV
	, glUniform1i64vNV
	, glUniform1ui64NV
	, glUniform1ui64vNV
	, glUniform2i64NV
	, glUniform2i64vNV
	, glUniform2ui64NV
	, glUniform2ui64vNV
	, glUniform3i64NV
	, glUniform3i64vNV
	, glUniform3ui64NV
	, glUniform3ui64vNV
	, glUniform4i64NV
	, glUniform4i64vNV
	, glUniform4ui64NV
	, glUniform4ui64vNV
	, gl_FLOAT16_NV
	, gl_FLOAT16_VEC2_NV
	, gl_FLOAT16_VEC3_NV
	, gl_FLOAT16_VEC4_NV
	, gl_INT16_NV
	, gl_INT16_VEC2_NV
	, gl_INT16_VEC3_NV
	, gl_INT16_VEC4_NV
	, gl_INT64_NV
	, gl_INT64_VEC2_NV
	, gl_INT64_VEC3_NV
	, gl_INT64_VEC4_NV
	, gl_INT8_NV
	, gl_INT8_VEC2_NV
	, gl_INT8_VEC3_NV
	, gl_INT8_VEC4_NV
	, gl_UNSIGNED_INT16_NV
	, gl_UNSIGNED_INT16_VEC2_NV
	, gl_UNSIGNED_INT16_VEC3_NV
	, gl_UNSIGNED_INT16_VEC4_NV
	, gl_UNSIGNED_INT64_NV
	, gl_UNSIGNED_INT64_VEC2_NV
	, gl_UNSIGNED_INT64_VEC3_NV
	, gl_UNSIGNED_INT64_VEC4_NV
	, gl_UNSIGNED_INT8_NV
	, gl_UNSIGNED_INT8_VEC2_NV
	, gl_UNSIGNED_INT8_VEC3_NV
	, gl_UNSIGNED_INT8_VEC4_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_AMD_gpu_shader_int64 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_gpu_shader_int64 = extGL 11