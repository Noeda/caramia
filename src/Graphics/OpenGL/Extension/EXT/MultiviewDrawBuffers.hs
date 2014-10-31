-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.MultiviewDrawBuffers (
	-- * Extension Support
	  gl_EXT_multiview_draw_buffers

	-- * GL_EXT_multiview_draw_buffers
	, glDrawBuffersIndexedEXT
	, glGetIntegeri_vEXT
	, glReadBufferIndexedEXT
	, gl_COLOR_ATTACHMENT_EXT
	, gl_DRAW_BUFFER_EXT
	, gl_MAX_MULTIVIEW_BUFFERS_EXT
	, gl_MULTIVIEW_EXT
	, gl_READ_BUFFER_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_multiview_draw_buffers :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_multiview_draw_buffers = extGL 301

glDrawBuffersIndexedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLenum -> Ptr GLint -> m ()
glDrawBuffersIndexedEXT v0 v1 v2 = funGL 1303 >>= \f -> liftIO $ f v0 v1 v2

glGetIntegeri_vEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLint -> m ()
glGetIntegeri_vEXT v0 v1 v2 = funGL 1304 >>= \f -> liftIO $ f v0 v1 v2

glReadBufferIndexedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glReadBufferIndexedEXT v0 v1 = funGL 1305 >>= \f -> liftIO $ f v0 v1

gl_COLOR_ATTACHMENT_EXT :: GLenum
gl_COLOR_ATTACHMENT_EXT = 0x90F0

gl_DRAW_BUFFER_EXT :: GLenum
gl_DRAW_BUFFER_EXT = 0x0C01

gl_MAX_MULTIVIEW_BUFFERS_EXT :: GLenum
gl_MAX_MULTIVIEW_BUFFERS_EXT = 0x90F2

gl_MULTIVIEW_EXT :: GLenum
gl_MULTIVIEW_EXT = 0x90F1

gl_READ_BUFFER_EXT :: GLenum
gl_READ_BUFFER_EXT = 0x0C02