-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.VertexArrayObject (
	-- * Extension Support
	  gl_ATI_vertex_array_object

	-- * GL_ATI_vertex_array_object
	, glArrayObjectATI
	, glFreeObjectBufferATI
	, glGetArrayObjectfvATI
	, glGetArrayObjectivATI
	, glGetObjectBufferfvATI
	, glGetObjectBufferivATI
	, glGetVariantArrayObjectfvATI
	, glGetVariantArrayObjectivATI
	, glIsObjectBufferATI
	, glNewObjectBufferATI
	, glUpdateObjectBufferATI
	, glVariantArrayObjectATI
	, gl_ARRAY_OBJECT_BUFFER_ATI
	, gl_ARRAY_OBJECT_OFFSET_ATI
	, gl_DISCARD_ATI
	, gl_DYNAMIC_ATI
	, gl_OBJECT_BUFFER_SIZE_ATI
	, gl_OBJECT_BUFFER_USAGE_ATI
	, gl_PRESERVE_ATI
	, gl_STATIC_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_vertex_array_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_vertex_array_object = extGL 241

glArrayObjectATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLuint -> GLuint -> m ()
glArrayObjectATI v0 v1 v2 v3 v4 v5 = funGL 841 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glFreeObjectBufferATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glFreeObjectBufferATI v0 = funGL 842 >>= \f -> liftIO $ f v0

glGetArrayObjectfvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetArrayObjectfvATI v0 v1 v2 = funGL 843 >>= \f -> liftIO $ f v0 v1 v2

glGetArrayObjectivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetArrayObjectivATI v0 v1 v2 = funGL 844 >>= \f -> liftIO $ f v0 v1 v2

glGetObjectBufferfvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetObjectBufferfvATI v0 v1 v2 = funGL 845 >>= \f -> liftIO $ f v0 v1 v2

glGetObjectBufferivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetObjectBufferivATI v0 v1 v2 = funGL 846 >>= \f -> liftIO $ f v0 v1 v2

glGetVariantArrayObjectfvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetVariantArrayObjectfvATI v0 v1 v2 = funGL 847 >>= \f -> liftIO $ f v0 v1 v2

glGetVariantArrayObjectivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVariantArrayObjectivATI v0 v1 v2 = funGL 848 >>= \f -> liftIO $ f v0 v1 v2

glIsObjectBufferATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsObjectBufferATI v0 = funGL 849 >>= \f -> liftIO $ f v0

glNewObjectBufferATI :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr () -> GLenum -> m GLuint
glNewObjectBufferATI v0 v1 v2 = funGL 850 >>= \f -> liftIO $ f v0 v1 v2

glUpdateObjectBufferATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr () -> GLenum -> m ()
glUpdateObjectBufferATI v0 v1 v2 v3 v4 = funGL 851 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVariantArrayObjectATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLuint -> GLuint -> m ()
glVariantArrayObjectATI v0 v1 v2 v3 v4 = funGL 852 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_ARRAY_OBJECT_BUFFER_ATI :: GLenum
gl_ARRAY_OBJECT_BUFFER_ATI = 0x8766

gl_ARRAY_OBJECT_OFFSET_ATI :: GLenum
gl_ARRAY_OBJECT_OFFSET_ATI = 0x8767

gl_DISCARD_ATI :: GLenum
gl_DISCARD_ATI = 0x8763

gl_DYNAMIC_ATI :: GLenum
gl_DYNAMIC_ATI = 0x8761

gl_OBJECT_BUFFER_SIZE_ATI :: GLenum
gl_OBJECT_BUFFER_SIZE_ATI = 0x8764

gl_OBJECT_BUFFER_USAGE_ATI :: GLenum
gl_OBJECT_BUFFER_USAGE_ATI = 0x8765

gl_PRESERVE_ATI :: GLenum
gl_PRESERVE_ATI = 0x8762

gl_STATIC_ATI :: GLenum
gl_STATIC_ATI = 0x8760