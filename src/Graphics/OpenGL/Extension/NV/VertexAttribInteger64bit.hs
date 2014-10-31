-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.VertexAttribInteger64bit (
	-- * Extension Support
	  gl_NV_vertex_attrib_integer_64bit

	-- * GL_NV_vertex_attrib_integer_64bit
	, glGetVertexAttribLi64vNV
	, glGetVertexAttribLui64vNV
	, glVertexAttribL1i64NV
	, glVertexAttribL1i64vNV
	, glVertexAttribL1ui64NV
	, glVertexAttribL1ui64vNV
	, glVertexAttribL2i64NV
	, glVertexAttribL2i64vNV
	, glVertexAttribL2ui64NV
	, glVertexAttribL2ui64vNV
	, glVertexAttribL3i64NV
	, glVertexAttribL3i64vNV
	, glVertexAttribL3ui64NV
	, glVertexAttribL3ui64vNV
	, glVertexAttribL4i64NV
	, glVertexAttribL4i64vNV
	, glVertexAttribL4ui64NV
	, glVertexAttribL4ui64vNV
	, glVertexAttribLFormatNV
	, gl_INT64_NV
	, gl_UNSIGNED_INT64_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_vertex_attrib_integer_64bit :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_vertex_attrib_integer_64bit = extGL 533

glGetVertexAttribLi64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint64EXT -> m ()
glGetVertexAttribLi64vNV v0 v1 v2 = funGL 1856 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribLui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint64EXT -> m ()
glGetVertexAttribLui64vNV v0 v1 v2 = funGL 1857 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribL1i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint64EXT -> m ()
glVertexAttribL1i64NV v0 v1 = funGL 1858 >>= \f -> liftIO $ f v0 v1

glVertexAttribL1i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint64EXT -> m ()
glVertexAttribL1i64vNV v0 v1 = funGL 1859 >>= \f -> liftIO $ f v0 v1

glVertexAttribL1ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint64EXT -> m ()
glVertexAttribL1ui64NV v0 v1 = funGL 1860 >>= \f -> liftIO $ f v0 v1

glVertexAttribL1ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint64EXT -> m ()
glVertexAttribL1ui64vNV v0 v1 = funGL 1861 >>= \f -> liftIO $ f v0 v1

glVertexAttribL2i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint64EXT -> GLint64EXT -> m ()
glVertexAttribL2i64NV v0 v1 v2 = funGL 1862 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribL2i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint64EXT -> m ()
glVertexAttribL2i64vNV v0 v1 = funGL 1863 >>= \f -> liftIO $ f v0 v1

glVertexAttribL2ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint64EXT -> GLuint64EXT -> m ()
glVertexAttribL2ui64NV v0 v1 v2 = funGL 1864 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribL2ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint64EXT -> m ()
glVertexAttribL2ui64vNV v0 v1 = funGL 1865 >>= \f -> liftIO $ f v0 v1

glVertexAttribL3i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> m ()
glVertexAttribL3i64NV v0 v1 v2 v3 = funGL 1866 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribL3i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint64EXT -> m ()
glVertexAttribL3i64vNV v0 v1 = funGL 1867 >>= \f -> liftIO $ f v0 v1

glVertexAttribL3ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> m ()
glVertexAttribL3ui64NV v0 v1 v2 v3 = funGL 1868 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribL3ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint64EXT -> m ()
glVertexAttribL3ui64vNV v0 v1 = funGL 1869 >>= \f -> liftIO $ f v0 v1

glVertexAttribL4i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> m ()
glVertexAttribL4i64NV v0 v1 v2 v3 v4 = funGL 1870 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribL4i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint64EXT -> m ()
glVertexAttribL4i64vNV v0 v1 = funGL 1871 >>= \f -> liftIO $ f v0 v1

glVertexAttribL4ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> m ()
glVertexAttribL4ui64NV v0 v1 v2 v3 v4 = funGL 1872 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribL4ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint64EXT -> m ()
glVertexAttribL4ui64vNV v0 v1 = funGL 1873 >>= \f -> liftIO $ f v0 v1

glVertexAttribLFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLsizei -> m ()
glVertexAttribLFormatNV v0 v1 v2 v3 = funGL 1874 >>= \f -> liftIO $ f v0 v1 v2 v3