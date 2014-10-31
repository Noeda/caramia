-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.VertexArray (
	-- * Extension Support
	  gl_EXT_vertex_array

	-- * GL_EXT_vertex_array
	, glArrayElementEXT
	, glColorPointerEXT
	, glDrawArraysEXT
	, glEdgeFlagPointerEXT
	, glGetPointervEXT
	, glIndexPointerEXT
	, glNormalPointerEXT
	, glTexCoordPointerEXT
	, glVertexPointerEXT
	, gl_COLOR_ARRAY_COUNT_EXT
	, gl_COLOR_ARRAY_EXT
	, gl_COLOR_ARRAY_POINTER_EXT
	, gl_COLOR_ARRAY_SIZE_EXT
	, gl_COLOR_ARRAY_STRIDE_EXT
	, gl_COLOR_ARRAY_TYPE_EXT
	, gl_EDGE_FLAG_ARRAY_COUNT_EXT
	, gl_EDGE_FLAG_ARRAY_EXT
	, gl_EDGE_FLAG_ARRAY_POINTER_EXT
	, gl_EDGE_FLAG_ARRAY_STRIDE_EXT
	, gl_INDEX_ARRAY_COUNT_EXT
	, gl_INDEX_ARRAY_EXT
	, gl_INDEX_ARRAY_POINTER_EXT
	, gl_INDEX_ARRAY_STRIDE_EXT
	, gl_INDEX_ARRAY_TYPE_EXT
	, gl_NORMAL_ARRAY_COUNT_EXT
	, gl_NORMAL_ARRAY_EXT
	, gl_NORMAL_ARRAY_POINTER_EXT
	, gl_NORMAL_ARRAY_STRIDE_EXT
	, gl_NORMAL_ARRAY_TYPE_EXT
	, gl_TEXTURE_COORD_ARRAY_COUNT_EXT
	, gl_TEXTURE_COORD_ARRAY_EXT
	, gl_TEXTURE_COORD_ARRAY_POINTER_EXT
	, gl_TEXTURE_COORD_ARRAY_SIZE_EXT
	, gl_TEXTURE_COORD_ARRAY_STRIDE_EXT
	, gl_TEXTURE_COORD_ARRAY_TYPE_EXT
	, gl_VERTEX_ARRAY_COUNT_EXT
	, gl_VERTEX_ARRAY_EXT
	, gl_VERTEX_ARRAY_POINTER_EXT
	, gl_VERTEX_ARRAY_SIZE_EXT
	, gl_VERTEX_ARRAY_STRIDE_EXT
	, gl_VERTEX_ARRAY_TYPE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_vertex_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_vertex_array = extGL 379

glArrayElementEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glArrayElementEXT v0 = funGL 1397 >>= \f -> liftIO $ f v0

glColorPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> GLsizei -> Ptr () -> m ()
glColorPointerEXT v0 v1 v2 v3 v4 = funGL 1398 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDrawArraysEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> m ()
glDrawArraysEXT v0 v1 v2 = funGL 1399 >>= \f -> liftIO $ f v0 v1 v2

glEdgeFlagPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLsizei -> Ptr GLboolean -> m ()
glEdgeFlagPointerEXT v0 v1 v2 = funGL 1400 >>= \f -> liftIO $ f v0 v1 v2

glGetPointervEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glGetPointervEXT v0 v1 = funGL 1401 >>= \f -> liftIO $ f v0 v1

glIndexPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLsizei -> Ptr () -> m ()
glIndexPointerEXT v0 v1 v2 v3 = funGL 1402 >>= \f -> liftIO $ f v0 v1 v2 v3

glNormalPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLsizei -> Ptr () -> m ()
glNormalPointerEXT v0 v1 v2 v3 = funGL 1403 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoordPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> GLsizei -> Ptr () -> m ()
glTexCoordPointerEXT v0 v1 v2 v3 v4 = funGL 1404 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> GLsizei -> Ptr () -> m ()
glVertexPointerEXT v0 v1 v2 v3 v4 = funGL 1405 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_COLOR_ARRAY_COUNT_EXT :: GLenum
gl_COLOR_ARRAY_COUNT_EXT = 0x8084

gl_COLOR_ARRAY_EXT :: GLenum
gl_COLOR_ARRAY_EXT = 0x8076

gl_COLOR_ARRAY_POINTER_EXT :: GLenum
gl_COLOR_ARRAY_POINTER_EXT = 0x8090

gl_COLOR_ARRAY_SIZE_EXT :: GLenum
gl_COLOR_ARRAY_SIZE_EXT = 0x8081

gl_COLOR_ARRAY_STRIDE_EXT :: GLenum
gl_COLOR_ARRAY_STRIDE_EXT = 0x8083

gl_COLOR_ARRAY_TYPE_EXT :: GLenum
gl_COLOR_ARRAY_TYPE_EXT = 0x8082

gl_EDGE_FLAG_ARRAY_COUNT_EXT :: GLenum
gl_EDGE_FLAG_ARRAY_COUNT_EXT = 0x808D

gl_EDGE_FLAG_ARRAY_EXT :: GLenum
gl_EDGE_FLAG_ARRAY_EXT = 0x8079

gl_EDGE_FLAG_ARRAY_POINTER_EXT :: GLenum
gl_EDGE_FLAG_ARRAY_POINTER_EXT = 0x8093

gl_EDGE_FLAG_ARRAY_STRIDE_EXT :: GLenum
gl_EDGE_FLAG_ARRAY_STRIDE_EXT = 0x808C

gl_INDEX_ARRAY_COUNT_EXT :: GLenum
gl_INDEX_ARRAY_COUNT_EXT = 0x8087

gl_INDEX_ARRAY_EXT :: GLenum
gl_INDEX_ARRAY_EXT = 0x8077

gl_INDEX_ARRAY_POINTER_EXT :: GLenum
gl_INDEX_ARRAY_POINTER_EXT = 0x8091

gl_INDEX_ARRAY_STRIDE_EXT :: GLenum
gl_INDEX_ARRAY_STRIDE_EXT = 0x8086

gl_INDEX_ARRAY_TYPE_EXT :: GLenum
gl_INDEX_ARRAY_TYPE_EXT = 0x8085

gl_NORMAL_ARRAY_COUNT_EXT :: GLenum
gl_NORMAL_ARRAY_COUNT_EXT = 0x8080

gl_NORMAL_ARRAY_EXT :: GLenum
gl_NORMAL_ARRAY_EXT = 0x8075

gl_NORMAL_ARRAY_POINTER_EXT :: GLenum
gl_NORMAL_ARRAY_POINTER_EXT = 0x808F

gl_NORMAL_ARRAY_STRIDE_EXT :: GLenum
gl_NORMAL_ARRAY_STRIDE_EXT = 0x807F

gl_NORMAL_ARRAY_TYPE_EXT :: GLenum
gl_NORMAL_ARRAY_TYPE_EXT = 0x807E

gl_TEXTURE_COORD_ARRAY_COUNT_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_COUNT_EXT = 0x808B

gl_TEXTURE_COORD_ARRAY_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_EXT = 0x8078

gl_TEXTURE_COORD_ARRAY_POINTER_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092

gl_TEXTURE_COORD_ARRAY_SIZE_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_SIZE_EXT = 0x8088

gl_TEXTURE_COORD_ARRAY_STRIDE_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A

gl_TEXTURE_COORD_ARRAY_TYPE_EXT :: GLenum
gl_TEXTURE_COORD_ARRAY_TYPE_EXT = 0x8089

gl_VERTEX_ARRAY_COUNT_EXT :: GLenum
gl_VERTEX_ARRAY_COUNT_EXT = 0x807D

gl_VERTEX_ARRAY_EXT :: GLenum
gl_VERTEX_ARRAY_EXT = 0x8074

gl_VERTEX_ARRAY_POINTER_EXT :: GLenum
gl_VERTEX_ARRAY_POINTER_EXT = 0x808E

gl_VERTEX_ARRAY_SIZE_EXT :: GLenum
gl_VERTEX_ARRAY_SIZE_EXT = 0x807A

gl_VERTEX_ARRAY_STRIDE_EXT :: GLenum
gl_VERTEX_ARRAY_STRIDE_EXT = 0x807C

gl_VERTEX_ARRAY_TYPE_EXT :: GLenum
gl_VERTEX_ARRAY_TYPE_EXT = 0x807B