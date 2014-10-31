-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ParameterBufferObject (
	-- * Extension Support
	  gl_NV_parameter_buffer_object

	-- * GL_NV_parameter_buffer_object
	, glProgramBufferParametersIivNV
	, glProgramBufferParametersIuivNV
	, glProgramBufferParametersfvNV
	, gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV
	, gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV
	, gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV
	, gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV
	, gl_VERTEX_PROGRAM_PARAMETER_BUFFER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_parameter_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_parameter_buffer_object = extGL 483

glProgramBufferParametersIivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLint -> m ()
glProgramBufferParametersIivNV v0 v1 v2 v3 v4 = funGL 1707 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramBufferParametersIuivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLuint -> m ()
glProgramBufferParametersIuivNV v0 v1 v2 v3 v4 = funGL 1708 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramBufferParametersfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> m ()
glProgramBufferParametersfvNV v0 v1 v2 v3 v4 = funGL 1709 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA4

gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA3

gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV :: GLenum
gl_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV = 0x8DA0

gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV :: GLenum
gl_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV = 0x8DA1

gl_VERTEX_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_VERTEX_PROGRAM_PARAMETER_BUFFER_NV = 0x8DA2