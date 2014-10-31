-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.FlushBufferRange (
	-- * Extension Support
	  gl_APPLE_flush_buffer_range

	-- * GL_APPLE_flush_buffer_range
	, glBufferParameteriAPPLE
	, glFlushMappedBufferRangeAPPLE
	, gl_BUFFER_FLUSHING_UNMAP_APPLE
	, gl_BUFFER_SERIALIZED_MODIFY_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_flush_buffer_range :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_flush_buffer_range = extGL 52

glBufferParameteriAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glBufferParameteriAPPLE v0 v1 v2 = funGL 86 >>= \f -> liftIO $ f v0 v1 v2

glFlushMappedBufferRangeAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLsizeiptr -> m ()
glFlushMappedBufferRangeAPPLE v0 v1 v2 = funGL 87 >>= \f -> liftIO $ f v0 v1 v2

gl_BUFFER_FLUSHING_UNMAP_APPLE :: GLenum
gl_BUFFER_FLUSHING_UNMAP_APPLE = 0x8A13

gl_BUFFER_SERIALIZED_MODIFY_APPLE :: GLenum
gl_BUFFER_SERIALIZED_MODIFY_APPLE = 0x8A12