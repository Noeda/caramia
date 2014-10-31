-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.SeparateShaderObjects (
	-- * Extension Support
	  gl_EXT_separate_shader_objects

	-- * GL_EXT_separate_shader_objects
	, glActiveProgramEXT
	, glActiveShaderProgramEXT
	, glBindProgramPipelineEXT
	, glCreateShaderProgramEXT
	, glCreateShaderProgramvEXT
	, glDeleteProgramPipelinesEXT
	, glGenProgramPipelinesEXT
	, glGetProgramPipelineInfoLogEXT
	, glGetProgramPipelineivEXT
	, glIsProgramPipelineEXT
	, glProgramParameteriEXT
	, glProgramUniform1fEXT
	, glProgramUniform1fvEXT
	, glProgramUniform1iEXT
	, glProgramUniform1ivEXT
	, glProgramUniform1uiEXT
	, glProgramUniform1uivEXT
	, glProgramUniform2fEXT
	, glProgramUniform2fvEXT
	, glProgramUniform2iEXT
	, glProgramUniform2ivEXT
	, glProgramUniform2uiEXT
	, glProgramUniform2uivEXT
	, glProgramUniform3fEXT
	, glProgramUniform3fvEXT
	, glProgramUniform3iEXT
	, glProgramUniform3ivEXT
	, glProgramUniform3uiEXT
	, glProgramUniform3uivEXT
	, glProgramUniform4fEXT
	, glProgramUniform4fvEXT
	, glProgramUniform4iEXT
	, glProgramUniform4ivEXT
	, glProgramUniform4uiEXT
	, glProgramUniform4uivEXT
	, glProgramUniformMatrix2fvEXT
	, glProgramUniformMatrix2x3fvEXT
	, glProgramUniformMatrix2x4fvEXT
	, glProgramUniformMatrix3fvEXT
	, glProgramUniformMatrix3x2fvEXT
	, glProgramUniformMatrix3x4fvEXT
	, glProgramUniformMatrix4fvEXT
	, glProgramUniformMatrix4x2fvEXT
	, glProgramUniformMatrix4x3fvEXT
	, glUseProgramStagesEXT
	, glUseShaderProgramEXT
	, glValidateProgramPipelineEXT
	, gl_ACTIVE_PROGRAM_EXT
	, gl_ALL_SHADER_BITS_EXT
	, gl_FRAGMENT_SHADER_BIT_EXT
	, gl_PROGRAM_PIPELINE_BINDING_EXT
	, gl_PROGRAM_SEPARABLE_EXT
	, gl_VERTEX_SHADER_BIT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_separate_shader_objects :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_separate_shader_objects = extGL 324

glActiveProgramEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glActiveProgramEXT v0 = funGL 1344 >>= \f -> liftIO $ f v0

glActiveShaderProgramEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glActiveShaderProgramEXT v0 v1 = funGL 1345 >>= \f -> liftIO $ f v0 v1

glBindProgramPipelineEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBindProgramPipelineEXT v0 = funGL 1346 >>= \f -> liftIO $ f v0

glCreateShaderProgramEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLchar -> m GLuint
glCreateShaderProgramEXT v0 v1 = funGL 1347 >>= \f -> liftIO $ f v0 v1

glCreateShaderProgramvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLchar -> m GLuint
glCreateShaderProgramvEXT v0 v1 v2 = funGL 1348 >>= \f -> liftIO $ f v0 v1 v2

glDeleteProgramPipelinesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteProgramPipelinesEXT v0 v1 = funGL 1349 >>= \f -> liftIO $ f v0 v1

glGenProgramPipelinesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenProgramPipelinesEXT v0 v1 = funGL 1350 >>= \f -> liftIO $ f v0 v1

glGetProgramPipelineInfoLogEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetProgramPipelineInfoLogEXT v0 v1 v2 v3 = funGL 1351 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetProgramPipelineivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetProgramPipelineivEXT v0 v1 v2 = funGL 1352 >>= \f -> liftIO $ f v0 v1 v2

glIsProgramPipelineEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsProgramPipelineEXT v0 = funGL 1353 >>= \f -> liftIO $ f v0

glUseProgramStagesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLbitfield -> GLuint -> m ()
glUseProgramStagesEXT v0 v1 v2 = funGL 1354 >>= \f -> liftIO $ f v0 v1 v2

glUseShaderProgramEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glUseShaderProgramEXT v0 v1 = funGL 1355 >>= \f -> liftIO $ f v0 v1

glValidateProgramPipelineEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glValidateProgramPipelineEXT v0 = funGL 1356 >>= \f -> liftIO $ f v0

gl_ACTIVE_PROGRAM_EXT :: GLenum
gl_ACTIVE_PROGRAM_EXT = 0x8B8D

gl_ALL_SHADER_BITS_EXT :: GLenum
gl_ALL_SHADER_BITS_EXT = 0xFFFFFFFF

gl_FRAGMENT_SHADER_BIT_EXT :: GLenum
gl_FRAGMENT_SHADER_BIT_EXT = 0x00000002

gl_PROGRAM_PIPELINE_BINDING_EXT :: GLenum
gl_PROGRAM_PIPELINE_BINDING_EXT = 0x825A

gl_PROGRAM_SEPARABLE_EXT :: GLenum
gl_PROGRAM_SEPARABLE_EXT = 0x8258

gl_VERTEX_SHADER_BIT_EXT :: GLenum
gl_VERTEX_SHADER_BIT_EXT = 0x00000001