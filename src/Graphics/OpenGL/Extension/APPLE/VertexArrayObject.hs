-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.VertexArrayObject (
	-- * Extension Support
	  gl_APPLE_vertex_array_object

	-- * GL_APPLE_vertex_array_object
	, glBindVertexArrayAPPLE
	, glDeleteVertexArraysAPPLE
	, glGenVertexArraysAPPLE
	, glIsVertexArrayAPPLE
	, gl_VERTEX_ARRAY_BINDING_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_vertex_array_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_vertex_array_object = extGL 65

glBindVertexArrayAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBindVertexArrayAPPLE v0 = funGL 102 >>= \f -> liftIO $ f v0

glDeleteVertexArraysAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteVertexArraysAPPLE v0 v1 = funGL 103 >>= \f -> liftIO $ f v0 v1

glGenVertexArraysAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenVertexArraysAPPLE v0 v1 = funGL 104 >>= \f -> liftIO $ f v0 v1

glIsVertexArrayAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsVertexArrayAPPLE v0 = funGL 105 >>= \f -> liftIO $ f v0

gl_VERTEX_ARRAY_BINDING_APPLE :: GLenum
gl_VERTEX_ARRAY_BINDING_APPLE = 0x85B5