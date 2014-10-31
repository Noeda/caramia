-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FramebufferBlit (
	-- * Extension Support
	  gl_NV_framebuffer_blit

	-- * GL_NV_framebuffer_blit
	, glBlitFramebufferNV
	, gl_DRAW_FRAMEBUFFER_BINDING_NV
	, gl_DRAW_FRAMEBUFFER_NV
	, gl_READ_FRAMEBUFFER_BINDING_NV
	, gl_READ_FRAMEBUFFER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_framebuffer_blit :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_framebuffer_blit = extGL 462

glBlitFramebufferNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> m ()
glBlitFramebufferNV v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1620 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

gl_DRAW_FRAMEBUFFER_BINDING_NV :: GLenum
gl_DRAW_FRAMEBUFFER_BINDING_NV = 0x8CA6

gl_DRAW_FRAMEBUFFER_NV :: GLenum
gl_DRAW_FRAMEBUFFER_NV = 0x8CA9

gl_READ_FRAMEBUFFER_BINDING_NV :: GLenum
gl_READ_FRAMEBUFFER_BINDING_NV = 0x8CAA

gl_READ_FRAMEBUFFER_NV :: GLenum
gl_READ_FRAMEBUFFER_NV = 0x8CA8