-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ShaderBufferLoad (
	-- * Extension Support
	  gl_NV_shader_buffer_load

	-- * GL_NV_shader_buffer_load
	, glGetBufferParameterui64vNV
	, glGetIntegerui64vNV
	, glGetNamedBufferParameterui64vNV
	, glGetUniformui64vNV
	, glIsBufferResidentNV
	, glIsNamedBufferResidentNV
	, glMakeBufferNonResidentNV
	, glMakeBufferResidentNV
	, glMakeNamedBufferNonResidentNV
	, glMakeNamedBufferResidentNV
	, glProgramUniformui64NV
	, glProgramUniformui64vNV
	, glUniformui64NV
	, glUniformui64vNV
	, gl_BUFFER_GPU_ADDRESS_NV
	, gl_GPU_ADDRESS_NV
	, gl_MAX_SHADER_BUFFER_ADDRESS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_shader_buffer_load :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_shader_buffer_load = extGL 505

glGetBufferParameterui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint64EXT -> m ()
glGetBufferParameterui64vNV v0 v1 v2 = funGL 1805 >>= \f -> liftIO $ f v0 v1 v2

glGetIntegerui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint64EXT -> m ()
glGetIntegerui64vNV v0 v1 = funGL 1806 >>= \f -> liftIO $ f v0 v1

glGetNamedBufferParameterui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint64EXT -> m ()
glGetNamedBufferParameterui64vNV v0 v1 v2 = funGL 1807 >>= \f -> liftIO $ f v0 v1 v2

glIsBufferResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLboolean
glIsBufferResidentNV v0 = funGL 1808 >>= \f -> liftIO $ f v0

glIsNamedBufferResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsNamedBufferResidentNV v0 = funGL 1809 >>= \f -> liftIO $ f v0

glMakeBufferNonResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glMakeBufferNonResidentNV v0 = funGL 1810 >>= \f -> liftIO $ f v0

glMakeBufferResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glMakeBufferResidentNV v0 v1 = funGL 1811 >>= \f -> liftIO $ f v0 v1

glMakeNamedBufferNonResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glMakeNamedBufferNonResidentNV v0 = funGL 1812 >>= \f -> liftIO $ f v0

glMakeNamedBufferResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glMakeNamedBufferResidentNV v0 v1 = funGL 1813 >>= \f -> liftIO $ f v0 v1

glProgramUniformui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint64EXT -> m ()
glProgramUniformui64NV v0 v1 v2 = funGL 1814 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniformui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glProgramUniformui64vNV v0 v1 v2 v3 = funGL 1815 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint64EXT -> m ()
glUniformui64NV v0 v1 = funGL 1816 >>= \f -> liftIO $ f v0 v1

glUniformui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glUniformui64vNV v0 v1 v2 = funGL 1817 >>= \f -> liftIO $ f v0 v1 v2

gl_BUFFER_GPU_ADDRESS_NV :: GLenum
gl_BUFFER_GPU_ADDRESS_NV = 0x8F1D

gl_GPU_ADDRESS_NV :: GLenum
gl_GPU_ADDRESS_NV = 0x8F34

gl_MAX_SHADER_BUFFER_ADDRESS_NV :: GLenum
gl_MAX_SHADER_BUFFER_ADDRESS_NV = 0x8F35