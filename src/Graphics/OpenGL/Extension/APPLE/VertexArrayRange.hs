-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.VertexArrayRange (
	-- * Extension Support
	  gl_APPLE_vertex_array_range

	-- * GL_APPLE_vertex_array_range
	, glFlushVertexArrayRangeAPPLE
	, glVertexArrayParameteriAPPLE
	, glVertexArrayRangeAPPLE
	, gl_STORAGE_CACHED_APPLE
	, gl_STORAGE_CLIENT_APPLE
	, gl_STORAGE_SHARED_APPLE
	, gl_VERTEX_ARRAY_RANGE_APPLE
	, gl_VERTEX_ARRAY_RANGE_LENGTH_APPLE
	, gl_VERTEX_ARRAY_RANGE_POINTER_APPLE
	, gl_VERTEX_ARRAY_STORAGE_HINT_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_APPLE_vertex_array_range :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_vertex_array_range = extGL 66

glFlushVertexArrayRangeAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr () -> m ()
glFlushVertexArrayRangeAPPLE v0 v1 = funGL 106 >>= \f -> liftIO $ f v0 v1

glVertexArrayParameteriAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glVertexArrayParameteriAPPLE v0 v1 = funGL 107 >>= \f -> liftIO $ f v0 v1

glVertexArrayRangeAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr () -> m ()
glVertexArrayRangeAPPLE v0 v1 = funGL 108 >>= \f -> liftIO $ f v0 v1

gl_STORAGE_CLIENT_APPLE :: GLenum
gl_STORAGE_CLIENT_APPLE = 0x85B4

gl_VERTEX_ARRAY_RANGE_APPLE :: GLenum
gl_VERTEX_ARRAY_RANGE_APPLE = 0x851D

gl_VERTEX_ARRAY_RANGE_LENGTH_APPLE :: GLenum
gl_VERTEX_ARRAY_RANGE_LENGTH_APPLE = 0x851E

gl_VERTEX_ARRAY_RANGE_POINTER_APPLE :: GLenum
gl_VERTEX_ARRAY_RANGE_POINTER_APPLE = 0x8521

gl_VERTEX_ARRAY_STORAGE_HINT_APPLE :: GLenum
gl_VERTEX_ARRAY_STORAGE_HINT_APPLE = 0x851F