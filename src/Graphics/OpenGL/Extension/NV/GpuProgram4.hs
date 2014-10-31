-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.GpuProgram4 (
	-- * Extension Support
	  gl_NV_gpu_program4

	-- * GL_NV_gpu_program4
	, glGetProgramEnvParameterIivNV
	, glGetProgramEnvParameterIuivNV
	, glGetProgramLocalParameterIivNV
	, glGetProgramLocalParameterIuivNV
	, glProgramEnvParameterI4iNV
	, glProgramEnvParameterI4ivNV
	, glProgramEnvParameterI4uiNV
	, glProgramEnvParameterI4uivNV
	, glProgramEnvParametersI4ivNV
	, glProgramEnvParametersI4uivNV
	, glProgramLocalParameterI4iNV
	, glProgramLocalParameterI4ivNV
	, glProgramLocalParameterI4uiNV
	, glProgramLocalParameterI4uivNV
	, glProgramLocalParametersI4ivNV
	, glProgramLocalParametersI4uivNV
	, gl_MAX_PROGRAM_ATTRIB_COMPONENTS_NV
	, gl_MAX_PROGRAM_GENERIC_ATTRIBS_NV
	, gl_MAX_PROGRAM_GENERIC_RESULTS_NV
	, gl_MAX_PROGRAM_RESULT_COMPONENTS_NV
	, gl_MAX_PROGRAM_TEXEL_OFFSET_NV
	, gl_MIN_PROGRAM_TEXEL_OFFSET_NV
	, gl_PROGRAM_ATTRIB_COMPONENTS_NV
	, gl_PROGRAM_RESULT_COMPONENTS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_gpu_program4 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_gpu_program4 = extGL 470

glGetProgramEnvParameterIivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLint -> m ()
glGetProgramEnvParameterIivNV v0 v1 v2 = funGL 1628 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramEnvParameterIuivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLuint -> m ()
glGetProgramEnvParameterIuivNV v0 v1 v2 = funGL 1629 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramLocalParameterIivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLint -> m ()
glGetProgramLocalParameterIivNV v0 v1 v2 = funGL 1630 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramLocalParameterIuivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLuint -> m ()
glGetProgramLocalParameterIuivNV v0 v1 v2 = funGL 1631 >>= \f -> liftIO $ f v0 v1 v2

glProgramEnvParameterI4iNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
glProgramEnvParameterI4iNV v0 v1 v2 v3 v4 v5 = funGL 1632 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramEnvParameterI4ivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLint -> m ()
glProgramEnvParameterI4ivNV v0 v1 v2 = funGL 1633 >>= \f -> liftIO $ f v0 v1 v2

glProgramEnvParameterI4uiNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glProgramEnvParameterI4uiNV v0 v1 v2 v3 v4 v5 = funGL 1634 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramEnvParameterI4uivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLuint -> m ()
glProgramEnvParameterI4uivNV v0 v1 v2 = funGL 1635 >>= \f -> liftIO $ f v0 v1 v2

glProgramEnvParametersI4ivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLint -> m ()
glProgramEnvParametersI4ivNV v0 v1 v2 v3 = funGL 1636 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramEnvParametersI4uivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLuint -> m ()
glProgramEnvParametersI4uivNV v0 v1 v2 v3 = funGL 1637 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramLocalParameterI4iNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
glProgramLocalParameterI4iNV v0 v1 v2 v3 v4 v5 = funGL 1638 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramLocalParameterI4ivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLint -> m ()
glProgramLocalParameterI4ivNV v0 v1 v2 = funGL 1639 >>= \f -> liftIO $ f v0 v1 v2

glProgramLocalParameterI4uiNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glProgramLocalParameterI4uiNV v0 v1 v2 v3 v4 v5 = funGL 1640 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramLocalParameterI4uivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLuint -> m ()
glProgramLocalParameterI4uivNV v0 v1 v2 = funGL 1641 >>= \f -> liftIO $ f v0 v1 v2

glProgramLocalParametersI4ivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLint -> m ()
glProgramLocalParametersI4ivNV v0 v1 v2 v3 = funGL 1642 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramLocalParametersI4uivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLuint -> m ()
glProgramLocalParametersI4uivNV v0 v1 v2 v3 = funGL 1643 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_MAX_PROGRAM_ATTRIB_COMPONENTS_NV :: GLenum
gl_MAX_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8908

gl_MAX_PROGRAM_GENERIC_ATTRIBS_NV :: GLenum
gl_MAX_PROGRAM_GENERIC_ATTRIBS_NV = 0x8DA5

gl_MAX_PROGRAM_GENERIC_RESULTS_NV :: GLenum
gl_MAX_PROGRAM_GENERIC_RESULTS_NV = 0x8DA6

gl_MAX_PROGRAM_RESULT_COMPONENTS_NV :: GLenum
gl_MAX_PROGRAM_RESULT_COMPONENTS_NV = 0x8909

gl_MAX_PROGRAM_TEXEL_OFFSET_NV :: GLenum
gl_MAX_PROGRAM_TEXEL_OFFSET_NV = 0x8905

gl_MIN_PROGRAM_TEXEL_OFFSET_NV :: GLenum
gl_MIN_PROGRAM_TEXEL_OFFSET_NV = 0x8904

gl_PROGRAM_ATTRIB_COMPONENTS_NV :: GLenum
gl_PROGRAM_ATTRIB_COMPONENTS_NV = 0x8906

gl_PROGRAM_RESULT_COMPONENTS_NV :: GLenum
gl_PROGRAM_RESULT_COMPONENTS_NV = 0x8907