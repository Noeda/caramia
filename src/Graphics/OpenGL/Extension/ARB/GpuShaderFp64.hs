-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.GpuShaderFp64 (
	-- * Extension Support
	  gl_ARB_gpu_shader_fp64

	-- * GL_ARB_gpu_shader_fp64
	, glGetUniformdv
	, glUniform1d
	, glUniform1dv
	, glUniform2d
	, glUniform2dv
	, glUniform3d
	, glUniform3dv
	, glUniform4d
	, glUniform4dv
	, glUniformMatrix2dv
	, glUniformMatrix2x3dv
	, glUniformMatrix2x4dv
	, glUniformMatrix3dv
	, glUniformMatrix3x2dv
	, glUniformMatrix3x4dv
	, glUniformMatrix4dv
	, glUniformMatrix4x2dv
	, glUniformMatrix4x3dv
	, gl_DOUBLE
	, gl_DOUBLE_MAT2
	, gl_DOUBLE_MAT2x3
	, gl_DOUBLE_MAT2x4
	, gl_DOUBLE_MAT3
	, gl_DOUBLE_MAT3x2
	, gl_DOUBLE_MAT3x4
	, gl_DOUBLE_MAT4
	, gl_DOUBLE_MAT4x2
	, gl_DOUBLE_MAT4x3
	, gl_DOUBLE_VEC2
	, gl_DOUBLE_VEC3
	, gl_DOUBLE_VEC4
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_gpu_shader_fp64 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_gpu_shader_fp64 = extGL 117