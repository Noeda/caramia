-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.GpuProgram5 (
	-- * Extension Support
	  gl_NV_gpu_program5

	-- * GL_NV_gpu_program5
	, glGetProgramSubroutineParameteruivNV
	, glProgramSubroutineParametersuivNV
	, gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV
	, gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV
	, gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV
	, gl_MAX_PROGRAM_SUBROUTINE_NUM_NV
	, gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV
	, gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV
	, gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV
	, gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_gpu_program5 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_gpu_program5 = extGL 471

glGetProgramSubroutineParameteruivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLuint -> m ()
glGetProgramSubroutineParameteruivNV v0 v1 v2 = funGL 1644 >>= \f -> liftIO $ f v0 v1 v2

glProgramSubroutineParametersuivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLuint -> m ()
glProgramSubroutineParametersuivNV v0 v1 v2 = funGL 1645 >>= \f -> liftIO $ f v0 v1 v2

gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV :: GLenum
gl_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV = 0x8E5D

gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV :: GLenum
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV = 0x8E5C

gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV :: GLenum
gl_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV = 0x8E5A

gl_MAX_PROGRAM_SUBROUTINE_NUM_NV :: GLenum
gl_MAX_PROGRAM_SUBROUTINE_NUM_NV = 0x8F45

gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV :: GLenum
gl_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV = 0x8F44

gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 0x8E5F

gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV :: GLenum
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV = 0x8E5B

gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV :: GLenum
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV = 0x8E5E