-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.CopyBuffer (
	-- * Extension Support
	  gl_NV_copy_buffer

	-- * GL_NV_copy_buffer
	, glCopyBufferSubDataNV
	, gl_COPY_READ_BUFFER_NV
	, gl_COPY_WRITE_BUFFER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_copy_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_copy_buffer = extGL 437

glCopyBufferSubDataNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizeiptr -> m ()
glCopyBufferSubDataNV v0 v1 v2 v3 v4 = funGL 1583 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_COPY_READ_BUFFER_NV :: GLenum
gl_COPY_READ_BUFFER_NV = 0x8F36

gl_COPY_WRITE_BUFFER_NV :: GLenum
gl_COPY_WRITE_BUFFER_NV = 0x8F37