-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ReadBuffer (
	-- * Extension Support
	  gl_NV_read_buffer

	-- * GL_NV_read_buffer
	, glReadBufferNV
	, gl_READ_BUFFER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_read_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_read_buffer = extGL 490

glReadBufferNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glReadBufferNV v0 = funGL 1786 >>= \f -> liftIO $ f v0

gl_READ_BUFFER_NV :: GLenum
gl_READ_BUFFER_NV = 0x0C02