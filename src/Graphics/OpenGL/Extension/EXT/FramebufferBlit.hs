-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.FramebufferBlit (
	-- * Extension Support
	  gl_EXT_framebuffer_blit

	-- * GL_EXT_framebuffer_blit
	, glBlitFramebufferEXT
	, gl_DRAW_FRAMEBUFFER_BINDING_EXT
	, gl_DRAW_FRAMEBUFFER_EXT
	, gl_READ_FRAMEBUFFER_BINDING_EXT
	, gl_READ_FRAMEBUFFER_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_framebuffer_blit :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_framebuffer_blit = extGL 278

glBlitFramebufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> m ()
glBlitFramebufferEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1246 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

gl_DRAW_FRAMEBUFFER_BINDING_EXT :: GLenum
gl_DRAW_FRAMEBUFFER_BINDING_EXT = 0x8CA6

gl_DRAW_FRAMEBUFFER_EXT :: GLenum
gl_DRAW_FRAMEBUFFER_EXT = 0x8CA9

gl_READ_FRAMEBUFFER_BINDING_EXT :: GLenum
gl_READ_FRAMEBUFFER_BINDING_EXT = 0x8CAA

gl_READ_FRAMEBUFFER_EXT :: GLenum
gl_READ_FRAMEBUFFER_EXT = 0x8CA8