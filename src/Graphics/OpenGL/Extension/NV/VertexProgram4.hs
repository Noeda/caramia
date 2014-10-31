-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.VertexProgram4 (
	-- * Extension Support
	  gl_NV_vertex_program4

	-- * GL_NV_vertex_program4
	, glGetVertexAttribIivEXT
	, glGetVertexAttribIuivEXT
	, glVertexAttribI1iEXT
	, glVertexAttribI1ivEXT
	, glVertexAttribI1uiEXT
	, glVertexAttribI1uivEXT
	, glVertexAttribI2iEXT
	, glVertexAttribI2ivEXT
	, glVertexAttribI2uiEXT
	, glVertexAttribI2uivEXT
	, glVertexAttribI3iEXT
	, glVertexAttribI3ivEXT
	, glVertexAttribI3uiEXT
	, glVertexAttribI3uivEXT
	, glVertexAttribI4bvEXT
	, glVertexAttribI4iEXT
	, glVertexAttribI4ivEXT
	, glVertexAttribI4svEXT
	, glVertexAttribI4ubvEXT
	, glVertexAttribI4uiEXT
	, glVertexAttribI4uivEXT
	, glVertexAttribI4usvEXT
	, glVertexAttribIPointerEXT
	, gl_VERTEX_ATTRIB_ARRAY_INTEGER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_vertex_program4 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_vertex_program4 = extGL 540

glGetVertexAttribIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexAttribIivEXT v0 v1 v2 = funGL 1951 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetVertexAttribIuivEXT v0 v1 v2 = funGL 1952 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribI1iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> m ()
glVertexAttribI1iEXT v0 v1 = funGL 1953 >>= \f -> liftIO $ f v0 v1

glVertexAttribI1ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttribI1ivEXT v0 v1 = funGL 1954 >>= \f -> liftIO $ f v0 v1

glVertexAttribI1uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexAttribI1uiEXT v0 v1 = funGL 1955 >>= \f -> liftIO $ f v0 v1

glVertexAttribI1uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttribI1uivEXT v0 v1 = funGL 1956 >>= \f -> liftIO $ f v0 v1

glVertexAttribI2iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> m ()
glVertexAttribI2iEXT v0 v1 v2 = funGL 1957 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribI2ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttribI2ivEXT v0 v1 = funGL 1958 >>= \f -> liftIO $ f v0 v1

glVertexAttribI2uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glVertexAttribI2uiEXT v0 v1 v2 = funGL 1959 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribI2uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttribI2uivEXT v0 v1 = funGL 1960 >>= \f -> liftIO $ f v0 v1

glVertexAttribI3iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> m ()
glVertexAttribI3iEXT v0 v1 v2 v3 = funGL 1961 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribI3ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttribI3ivEXT v0 v1 = funGL 1962 >>= \f -> liftIO $ f v0 v1

glVertexAttribI3uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLuint -> m ()
glVertexAttribI3uiEXT v0 v1 v2 v3 = funGL 1963 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribI3uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttribI3uivEXT v0 v1 = funGL 1964 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4bvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLbyte -> m ()
glVertexAttribI4bvEXT v0 v1 = funGL 1965 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
glVertexAttribI4iEXT v0 v1 v2 v3 v4 = funGL 1966 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribI4ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttribI4ivEXT v0 v1 = funGL 1967 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4svEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttribI4svEXT v0 v1 = funGL 1968 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4ubvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glVertexAttribI4ubvEXT v0 v1 = funGL 1969 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glVertexAttribI4uiEXT v0 v1 v2 v3 v4 = funGL 1970 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribI4uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttribI4uivEXT v0 v1 = funGL 1971 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4usvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLushort -> m ()
glVertexAttribI4usvEXT v0 v1 = funGL 1972 >>= \f -> liftIO $ f v0 v1

glVertexAttribIPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glVertexAttribIPointerEXT v0 v1 v2 v3 v4 = funGL 1973 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_VERTEX_ATTRIB_ARRAY_INTEGER_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_INTEGER_NV = 0x88FD