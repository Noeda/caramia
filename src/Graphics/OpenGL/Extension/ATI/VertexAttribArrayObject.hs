-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.VertexAttribArrayObject (
	-- * Extension Support
	  gl_ATI_vertex_attrib_array_object

	-- * GL_ATI_vertex_attrib_array_object
	, glGetVertexAttribArrayObjectfvATI
	, glGetVertexAttribArrayObjectivATI
	, glVertexAttribArrayObjectATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_vertex_attrib_array_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_vertex_attrib_array_object = extGL 242

glGetVertexAttribArrayObjectfvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetVertexAttribArrayObjectfvATI v0 v1 v2 = funGL 853 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribArrayObjectivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexAttribArrayObjectivATI v0 v1 v2 = funGL 854 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribArrayObjectATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLuint -> GLuint -> m ()
glVertexAttribArrayObjectATI v0 v1 v2 v3 v4 v5 v6 = funGL 855 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6