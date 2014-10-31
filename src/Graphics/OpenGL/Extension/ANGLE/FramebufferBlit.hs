-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.FramebufferBlit (
	-- * Extension Support
	  gl_ANGLE_framebuffer_blit

	-- * GL_ANGLE_framebuffer_blit
	, glBlitFramebufferANGLE
	, gl_DRAW_FRAMEBUFFER_ANGLE
	, gl_DRAW_FRAMEBUFFER_BINDING_ANGLE
	, gl_READ_FRAMEBUFFER_ANGLE
	, gl_READ_FRAMEBUFFER_BINDING_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_framebuffer_blit :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_framebuffer_blit = extGL 35

glBlitFramebufferANGLE :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> m ()
glBlitFramebufferANGLE v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 66 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

gl_DRAW_FRAMEBUFFER_ANGLE :: GLenum
gl_DRAW_FRAMEBUFFER_ANGLE = 0x8CA9

gl_DRAW_FRAMEBUFFER_BINDING_ANGLE :: GLenum
gl_DRAW_FRAMEBUFFER_BINDING_ANGLE = 0x8CA6

gl_READ_FRAMEBUFFER_ANGLE :: GLenum
gl_READ_FRAMEBUFFER_ANGLE = 0x8CA8

gl_READ_FRAMEBUFFER_BINDING_ANGLE :: GLenum
gl_READ_FRAMEBUFFER_BINDING_ANGLE = 0x8CAA