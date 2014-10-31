-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.MapBufferRange (
	-- * Extension Support
	  gl_EXT_map_buffer_range

	-- * GL_EXT_map_buffer_range
	, glFlushMappedBufferRangeEXT
	, glMapBufferRangeEXT
	, gl_MAP_FLUSH_EXPLICIT_BIT_EXT
	, gl_MAP_INVALIDATE_BUFFER_BIT_EXT
	, gl_MAP_INVALIDATE_RANGE_BIT_EXT
	, gl_MAP_READ_BIT_EXT
	, gl_MAP_UNSYNCHRONIZED_BIT_EXT
	, gl_MAP_WRITE_BIT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_map_buffer_range :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_map_buffer_range = extGL 296

glFlushMappedBufferRangeEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLsizeiptr -> m ()
glFlushMappedBufferRangeEXT v0 v1 v2 = funGL 1296 >>= \f -> liftIO $ f v0 v1 v2

glMapBufferRangeEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLsizeiptr -> GLbitfield -> m (Ptr ())
glMapBufferRangeEXT v0 v1 v2 v3 = funGL 1297 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_MAP_FLUSH_EXPLICIT_BIT_EXT :: GLenum
gl_MAP_FLUSH_EXPLICIT_BIT_EXT = 0x0010

gl_MAP_INVALIDATE_BUFFER_BIT_EXT :: GLenum
gl_MAP_INVALIDATE_BUFFER_BIT_EXT = 0x0008

gl_MAP_INVALIDATE_RANGE_BIT_EXT :: GLenum
gl_MAP_INVALIDATE_RANGE_BIT_EXT = 0x0004

gl_MAP_READ_BIT_EXT :: GLenum
gl_MAP_READ_BIT_EXT = 0x0001

gl_MAP_UNSYNCHRONIZED_BIT_EXT :: GLenum
gl_MAP_UNSYNCHRONIZED_BIT_EXT = 0x0020

gl_MAP_WRITE_BIT_EXT :: GLenum
gl_MAP_WRITE_BIT_EXT = 0x0002