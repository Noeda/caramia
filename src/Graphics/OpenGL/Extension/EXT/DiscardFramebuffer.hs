-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DiscardFramebuffer (
	-- * Extension Support
	  gl_EXT_discard_framebuffer

	-- * GL_EXT_discard_framebuffer
	, glDiscardFramebufferEXT
	, gl_COLOR_EXT
	, gl_DEPTH_EXT
	, gl_STENCIL_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_discard_framebuffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_discard_framebuffer = extGL 270

glDiscardFramebufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLenum -> m ()
glDiscardFramebufferEXT v0 v1 v2 = funGL 1216 >>= \f -> liftIO $ f v0 v1 v2

gl_COLOR_EXT :: GLenum
gl_COLOR_EXT = 0x1800

gl_DEPTH_EXT :: GLenum
gl_DEPTH_EXT = 0x1801

gl_STENCIL_EXT :: GLenum
gl_STENCIL_EXT = 0x1802