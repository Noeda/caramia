-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.VertexArrayObject (
	-- * Extension Support
	  gl_OES_vertex_array_object

	-- * GL_OES_vertex_array_object
	, glBindVertexArrayOES
	, glDeleteVertexArraysOES
	, glGenVertexArraysOES
	, glIsVertexArrayOES
	, gl_VERTEX_ARRAY_BINDING_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_vertex_array_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_vertex_array_object = extGL 595

glBindVertexArrayOES :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBindVertexArrayOES v0 = funGL 2177 >>= \f -> liftIO $ f v0

glDeleteVertexArraysOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteVertexArraysOES v0 v1 = funGL 2178 >>= \f -> liftIO $ f v0 v1

glGenVertexArraysOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenVertexArraysOES v0 v1 = funGL 2179 >>= \f -> liftIO $ f v0 v1

glIsVertexArrayOES :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsVertexArrayOES v0 = funGL 2180 >>= \f -> liftIO $ f v0

gl_VERTEX_ARRAY_BINDING_OES :: GLenum
gl_VERTEX_ARRAY_BINDING_OES = 0x85B5