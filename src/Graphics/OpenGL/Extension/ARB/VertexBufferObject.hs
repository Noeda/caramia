-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.VertexBufferObject (
	-- * Extension Support
	  gl_ARB_vertex_buffer_object

	-- * GL_ARB_vertex_buffer_object
	, glBindBufferARB
	, glBufferDataARB
	, glBufferSubDataARB
	, glDeleteBuffersARB
	, glGenBuffersARB
	, glGetBufferParameterivARB
	, glGetBufferPointervARB
	, glGetBufferSubDataARB
	, glIsBufferARB
	, glMapBufferARB
	, glUnmapBufferARB
	, gl_ARRAY_BUFFER_ARB
	, gl_ARRAY_BUFFER_BINDING_ARB
	, gl_BUFFER_ACCESS_ARB
	, gl_BUFFER_MAPPED_ARB
	, gl_BUFFER_MAP_POINTER_ARB
	, gl_BUFFER_SIZE_ARB
	, gl_BUFFER_USAGE_ARB
	, gl_COLOR_ARRAY_BUFFER_BINDING_ARB
	, gl_DYNAMIC_COPY_ARB
	, gl_DYNAMIC_DRAW_ARB
	, gl_DYNAMIC_READ_ARB
	, gl_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB
	, gl_ELEMENT_ARRAY_BUFFER_ARB
	, gl_ELEMENT_ARRAY_BUFFER_BINDING_ARB
	, gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB
	, gl_INDEX_ARRAY_BUFFER_BINDING_ARB
	, gl_NORMAL_ARRAY_BUFFER_BINDING_ARB
	, gl_READ_ONLY_ARB
	, gl_READ_WRITE_ARB
	, gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB
	, gl_STATIC_COPY_ARB
	, gl_STATIC_DRAW_ARB
	, gl_STATIC_READ_ARB
	, gl_STREAM_COPY_ARB
	, gl_STREAM_DRAW_ARB
	, gl_STREAM_READ_ARB
	, gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB
	, gl_VERTEX_ARRAY_BUFFER_BINDING_ARB
	, gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB
	, gl_WEIGHT_ARRAY_BUFFER_BINDING_ARB
	, gl_WRITE_ONLY_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_vertex_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_vertex_buffer_object = extGL 216

glBindBufferARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindBufferARB v0 v1 = funGL 692 >>= \f -> liftIO $ f v0 v1

glBufferDataARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizeiptrARB -> Ptr () -> GLenum -> m ()
glBufferDataARB v0 v1 v2 v3 = funGL 693 >>= \f -> liftIO $ f v0 v1 v2 v3

glBufferSubDataARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptrARB -> GLsizeiptrARB -> Ptr () -> m ()
glBufferSubDataARB v0 v1 v2 v3 = funGL 694 >>= \f -> liftIO $ f v0 v1 v2 v3

glDeleteBuffersARB :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteBuffersARB v0 v1 = funGL 695 >>= \f -> liftIO $ f v0 v1

glGenBuffersARB :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenBuffersARB v0 v1 = funGL 696 >>= \f -> liftIO $ f v0 v1

glGetBufferParameterivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetBufferParameterivARB v0 v1 v2 = funGL 697 >>= \f -> liftIO $ f v0 v1 v2

glGetBufferPointervARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> m ()
glGetBufferPointervARB v0 v1 v2 = funGL 698 >>= \f -> liftIO $ f v0 v1 v2

glGetBufferSubDataARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptrARB -> GLsizeiptrARB -> Ptr () -> m ()
glGetBufferSubDataARB v0 v1 v2 v3 = funGL 699 >>= \f -> liftIO $ f v0 v1 v2 v3

glIsBufferARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsBufferARB v0 = funGL 700 >>= \f -> liftIO $ f v0

glMapBufferARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m (Ptr ())
glMapBufferARB v0 v1 = funGL 701 >>= \f -> liftIO $ f v0 v1

glUnmapBufferARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLboolean
glUnmapBufferARB v0 = funGL 702 >>= \f -> liftIO $ f v0

gl_ARRAY_BUFFER_ARB :: GLenum
gl_ARRAY_BUFFER_ARB = 0x8892

gl_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_ARRAY_BUFFER_BINDING_ARB = 0x8894

gl_BUFFER_ACCESS_ARB :: GLenum
gl_BUFFER_ACCESS_ARB = 0x88BB

gl_BUFFER_MAPPED_ARB :: GLenum
gl_BUFFER_MAPPED_ARB = 0x88BC

gl_BUFFER_MAP_POINTER_ARB :: GLenum
gl_BUFFER_MAP_POINTER_ARB = 0x88BD

gl_BUFFER_SIZE_ARB :: GLenum
gl_BUFFER_SIZE_ARB = 0x8764

gl_BUFFER_USAGE_ARB :: GLenum
gl_BUFFER_USAGE_ARB = 0x8765

gl_COLOR_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x8898

gl_DYNAMIC_COPY_ARB :: GLenum
gl_DYNAMIC_COPY_ARB = 0x88EA

gl_DYNAMIC_DRAW_ARB :: GLenum
gl_DYNAMIC_DRAW_ARB = 0x88E8

gl_DYNAMIC_READ_ARB :: GLenum
gl_DYNAMIC_READ_ARB = 0x88E9

gl_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB = 0x889B

gl_ELEMENT_ARRAY_BUFFER_ARB :: GLenum
gl_ELEMENT_ARRAY_BUFFER_ARB = 0x8893

gl_ELEMENT_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_ELEMENT_ARRAY_BUFFER_BINDING_ARB = 0x8895

gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB = 0x889D

gl_INDEX_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_INDEX_ARRAY_BUFFER_BINDING_ARB = 0x8899

gl_NORMAL_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_NORMAL_ARRAY_BUFFER_BINDING_ARB = 0x8897

gl_READ_ONLY_ARB :: GLenum
gl_READ_ONLY_ARB = 0x88B8

gl_READ_WRITE_ARB :: GLenum
gl_READ_WRITE_ARB = 0x88BA

gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB = 0x889C

gl_STATIC_COPY_ARB :: GLenum
gl_STATIC_COPY_ARB = 0x88E6

gl_STATIC_DRAW_ARB :: GLenum
gl_STATIC_DRAW_ARB = 0x88E4

gl_STATIC_READ_ARB :: GLenum
gl_STATIC_READ_ARB = 0x88E5

gl_STREAM_COPY_ARB :: GLenum
gl_STREAM_COPY_ARB = 0x88E2

gl_STREAM_DRAW_ARB :: GLenum
gl_STREAM_DRAW_ARB = 0x88E0

gl_STREAM_READ_ARB :: GLenum
gl_STREAM_READ_ARB = 0x88E1

gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB = 0x889A

gl_VERTEX_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_VERTEX_ARRAY_BUFFER_BINDING_ARB = 0x8896

gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB = 0x889F

gl_WEIGHT_ARRAY_BUFFER_BINDING_ARB :: GLenum
gl_WEIGHT_ARRAY_BUFFER_BINDING_ARB = 0x889E

gl_WRITE_ONLY_ARB :: GLenum
gl_WRITE_ONLY_ARB = 0x88B9