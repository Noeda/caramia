-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.VertexAttrib64bit (
	-- * Extension Support
	  gl_EXT_vertex_attrib_64bit

	-- * GL_EXT_vertex_attrib_64bit
	, glGetVertexAttribLdvEXT
	, glVertexAttribL1dEXT
	, glVertexAttribL1dvEXT
	, glVertexAttribL2dEXT
	, glVertexAttribL2dvEXT
	, glVertexAttribL3dEXT
	, glVertexAttribL3dvEXT
	, glVertexAttribL4dEXT
	, glVertexAttribL4dvEXT
	, glVertexAttribLPointerEXT
	, gl_DOUBLE
	, gl_DOUBLE_MAT2_EXT
	, gl_DOUBLE_MAT2x3_EXT
	, gl_DOUBLE_MAT2x4_EXT
	, gl_DOUBLE_MAT3_EXT
	, gl_DOUBLE_MAT3x2_EXT
	, gl_DOUBLE_MAT3x4_EXT
	, gl_DOUBLE_MAT4_EXT
	, gl_DOUBLE_MAT4x2_EXT
	, gl_DOUBLE_MAT4x3_EXT
	, gl_DOUBLE_VEC2_EXT
	, gl_DOUBLE_VEC3_EXT
	, gl_DOUBLE_VEC4_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_vertex_attrib_64bit :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_vertex_attrib_64bit = extGL 381

glGetVertexAttribLdvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLdouble -> m ()
glGetVertexAttribLdvEXT v0 v1 v2 = funGL 1406 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribL1dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> m ()
glVertexAttribL1dEXT v0 v1 = funGL 1407 >>= \f -> liftIO $ f v0 v1

glVertexAttribL1dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttribL1dvEXT v0 v1 = funGL 1408 >>= \f -> liftIO $ f v0 v1

glVertexAttribL2dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> m ()
glVertexAttribL2dEXT v0 v1 v2 = funGL 1409 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribL2dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttribL2dvEXT v0 v1 = funGL 1410 >>= \f -> liftIO $ f v0 v1

glVertexAttribL3dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttribL3dEXT v0 v1 v2 v3 = funGL 1411 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribL3dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttribL3dvEXT v0 v1 = funGL 1412 >>= \f -> liftIO $ f v0 v1

glVertexAttribL4dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttribL4dEXT v0 v1 v2 v3 v4 = funGL 1413 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribL4dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttribL4dvEXT v0 v1 = funGL 1414 >>= \f -> liftIO $ f v0 v1

glVertexAttribLPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glVertexAttribLPointerEXT v0 v1 v2 v3 v4 = funGL 1415 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_DOUBLE_MAT2_EXT :: GLenum
gl_DOUBLE_MAT2_EXT = 0x8F46

gl_DOUBLE_MAT2x3_EXT :: GLenum
gl_DOUBLE_MAT2x3_EXT = 0x8F49

gl_DOUBLE_MAT2x4_EXT :: GLenum
gl_DOUBLE_MAT2x4_EXT = 0x8F4A

gl_DOUBLE_MAT3_EXT :: GLenum
gl_DOUBLE_MAT3_EXT = 0x8F47

gl_DOUBLE_MAT3x2_EXT :: GLenum
gl_DOUBLE_MAT3x2_EXT = 0x8F4B

gl_DOUBLE_MAT3x4_EXT :: GLenum
gl_DOUBLE_MAT3x4_EXT = 0x8F4C

gl_DOUBLE_MAT4_EXT :: GLenum
gl_DOUBLE_MAT4_EXT = 0x8F48

gl_DOUBLE_MAT4x2_EXT :: GLenum
gl_DOUBLE_MAT4x2_EXT = 0x8F4D

gl_DOUBLE_MAT4x3_EXT :: GLenum
gl_DOUBLE_MAT4x3_EXT = 0x8F4E

gl_DOUBLE_VEC2_EXT :: GLenum
gl_DOUBLE_VEC2_EXT = 0x8FFC

gl_DOUBLE_VEC3_EXT :: GLenum
gl_DOUBLE_VEC3_EXT = 0x8FFD

gl_DOUBLE_VEC4_EXT :: GLenum
gl_DOUBLE_VEC4_EXT = 0x8FFE