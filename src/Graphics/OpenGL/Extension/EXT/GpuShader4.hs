-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.GpuShader4 (
	-- * Extension Support
	  gl_EXT_gpu_shader4

	-- * GL_EXT_gpu_shader4
	, glBindFragDataLocationEXT
	, glGetFragDataLocationEXT
	, glGetUniformuivEXT
	, glUniform1uiEXT
	, glUniform1uivEXT
	, glUniform2uiEXT
	, glUniform2uivEXT
	, glUniform3uiEXT
	, glUniform3uivEXT
	, glUniform4uiEXT
	, glUniform4uivEXT
	, gl_INT_SAMPLER_1D_ARRAY_EXT
	, gl_INT_SAMPLER_1D_EXT
	, gl_INT_SAMPLER_2D_ARRAY_EXT
	, gl_INT_SAMPLER_2D_EXT
	, gl_INT_SAMPLER_2D_RECT_EXT
	, gl_INT_SAMPLER_3D_EXT
	, gl_INT_SAMPLER_BUFFER_EXT
	, gl_INT_SAMPLER_CUBE_EXT
	, gl_MAX_PROGRAM_TEXEL_OFFSET_EXT
	, gl_MIN_PROGRAM_TEXEL_OFFSET_EXT
	, gl_SAMPLER_1D_ARRAY_EXT
	, gl_SAMPLER_1D_ARRAY_SHADOW_EXT
	, gl_SAMPLER_2D_ARRAY_EXT
	, gl_SAMPLER_2D_ARRAY_SHADOW_EXT
	, gl_SAMPLER_BUFFER_EXT
	, gl_SAMPLER_CUBE_SHADOW_EXT
	, gl_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT
	, gl_UNSIGNED_INT_SAMPLER_1D_EXT
	, gl_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT
	, gl_UNSIGNED_INT_SAMPLER_2D_EXT
	, gl_UNSIGNED_INT_SAMPLER_2D_RECT_EXT
	, gl_UNSIGNED_INT_SAMPLER_3D_EXT
	, gl_UNSIGNED_INT_SAMPLER_BUFFER_EXT
	, gl_UNSIGNED_INT_SAMPLER_CUBE_EXT
	, gl_UNSIGNED_INT_VEC2_EXT
	, gl_UNSIGNED_INT_VEC3_EXT
	, gl_UNSIGNED_INT_VEC4_EXT
	, gl_VERTEX_ATTRIB_ARRAY_INTEGER_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_gpu_shader4 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_gpu_shader4 = extGL 287

glBindFragDataLocationEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> Ptr GLchar -> m ()
glBindFragDataLocationEXT v0 v1 v2 = funGL 1269 >>= \f -> liftIO $ f v0 v1 v2

glGetFragDataLocationEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLchar -> m GLint
glGetFragDataLocationEXT v0 v1 = funGL 1270 >>= \f -> liftIO $ f v0 v1

glGetUniformuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> Ptr GLuint -> m ()
glGetUniformuivEXT v0 v1 v2 = funGL 1271 >>= \f -> liftIO $ f v0 v1 v2

glUniform1uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint -> m ()
glUniform1uiEXT v0 v1 = funGL 1272 >>= \f -> liftIO $ f v0 v1

glUniform1uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint -> m ()
glUniform1uivEXT v0 v1 v2 = funGL 1273 >>= \f -> liftIO $ f v0 v1 v2

glUniform2uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint -> GLuint -> m ()
glUniform2uiEXT v0 v1 v2 = funGL 1274 >>= \f -> liftIO $ f v0 v1 v2

glUniform2uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint -> m ()
glUniform2uivEXT v0 v1 v2 = funGL 1275 >>= \f -> liftIO $ f v0 v1 v2

glUniform3uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint -> GLuint -> GLuint -> m ()
glUniform3uiEXT v0 v1 v2 v3 = funGL 1276 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint -> m ()
glUniform3uivEXT v0 v1 v2 = funGL 1277 >>= \f -> liftIO $ f v0 v1 v2

glUniform4uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glUniform4uiEXT v0 v1 v2 v3 v4 = funGL 1278 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint -> m ()
glUniform4uivEXT v0 v1 v2 = funGL 1279 >>= \f -> liftIO $ f v0 v1 v2

gl_INT_SAMPLER_1D_ARRAY_EXT :: GLenum
gl_INT_SAMPLER_1D_ARRAY_EXT = 0x8DCE

gl_INT_SAMPLER_1D_EXT :: GLenum
gl_INT_SAMPLER_1D_EXT = 0x8DC9

gl_INT_SAMPLER_2D_ARRAY_EXT :: GLenum
gl_INT_SAMPLER_2D_ARRAY_EXT = 0x8DCF

gl_INT_SAMPLER_2D_EXT :: GLenum
gl_INT_SAMPLER_2D_EXT = 0x8DCA

gl_INT_SAMPLER_2D_RECT_EXT :: GLenum
gl_INT_SAMPLER_2D_RECT_EXT = 0x8DCD

gl_INT_SAMPLER_3D_EXT :: GLenum
gl_INT_SAMPLER_3D_EXT = 0x8DCB

gl_INT_SAMPLER_CUBE_EXT :: GLenum
gl_INT_SAMPLER_CUBE_EXT = 0x8DCC

gl_MAX_PROGRAM_TEXEL_OFFSET_EXT :: GLenum
gl_MAX_PROGRAM_TEXEL_OFFSET_EXT = 0x8905

gl_MIN_PROGRAM_TEXEL_OFFSET_EXT :: GLenum
gl_MIN_PROGRAM_TEXEL_OFFSET_EXT = 0x8904

gl_SAMPLER_1D_ARRAY_EXT :: GLenum
gl_SAMPLER_1D_ARRAY_EXT = 0x8DC0

gl_SAMPLER_1D_ARRAY_SHADOW_EXT :: GLenum
gl_SAMPLER_1D_ARRAY_SHADOW_EXT = 0x8DC3

gl_SAMPLER_2D_ARRAY_EXT :: GLenum
gl_SAMPLER_2D_ARRAY_EXT = 0x8DC1

gl_SAMPLER_2D_ARRAY_SHADOW_EXT :: GLenum
gl_SAMPLER_2D_ARRAY_SHADOW_EXT = 0x8DC4

gl_SAMPLER_CUBE_SHADOW_EXT :: GLenum
gl_SAMPLER_CUBE_SHADOW_EXT = 0x8DC5

gl_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT = 0x8DD6

gl_UNSIGNED_INT_SAMPLER_1D_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D_EXT = 0x8DD1

gl_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT = 0x8DD7

gl_UNSIGNED_INT_SAMPLER_2D_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_EXT = 0x8DD2

gl_UNSIGNED_INT_SAMPLER_2D_RECT_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_RECT_EXT = 0x8DD5

gl_UNSIGNED_INT_SAMPLER_3D_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_3D_EXT = 0x8DD3

gl_UNSIGNED_INT_SAMPLER_CUBE_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_CUBE_EXT = 0x8DD4

gl_UNSIGNED_INT_VEC2_EXT :: GLenum
gl_UNSIGNED_INT_VEC2_EXT = 0x8DC6

gl_UNSIGNED_INT_VEC3_EXT :: GLenum
gl_UNSIGNED_INT_VEC3_EXT = 0x8DC7

gl_UNSIGNED_INT_VEC4_EXT :: GLenum
gl_UNSIGNED_INT_VEC4_EXT = 0x8DC8

gl_VERTEX_ATTRIB_ARRAY_INTEGER_EXT :: GLenum
gl_VERTEX_ATTRIB_ARRAY_INTEGER_EXT = 0x88FD