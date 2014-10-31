-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.FramebufferMultisample (
	-- * Extension Support
	  gl_APPLE_framebuffer_multisample

	-- * GL_APPLE_framebuffer_multisample
	, glRenderbufferStorageMultisampleAPPLE
	, glResolveMultisampleFramebufferAPPLE
	, gl_DRAW_FRAMEBUFFER_APPLE
	, gl_DRAW_FRAMEBUFFER_BINDING_APPLE
	, gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_APPLE
	, gl_MAX_SAMPLES_APPLE
	, gl_READ_FRAMEBUFFER_APPLE
	, gl_READ_FRAMEBUFFER_BINDING_APPLE
	, gl_RENDERBUFFER_SAMPLES_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_framebuffer_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_framebuffer_multisample = extGL 53

glRenderbufferStorageMultisampleAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageMultisampleAPPLE v0 v1 v2 v3 v4 = funGL 88 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glResolveMultisampleFramebufferAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glResolveMultisampleFramebufferAPPLE = funGL 89 >>= \f -> liftIO $ f

gl_DRAW_FRAMEBUFFER_APPLE :: GLenum
gl_DRAW_FRAMEBUFFER_APPLE = 0x8CA9

gl_DRAW_FRAMEBUFFER_BINDING_APPLE :: GLenum
gl_DRAW_FRAMEBUFFER_BINDING_APPLE = 0x8CA6

gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_APPLE :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_APPLE = 0x8D56

gl_MAX_SAMPLES_APPLE :: GLenum
gl_MAX_SAMPLES_APPLE = 0x8D57

gl_READ_FRAMEBUFFER_APPLE :: GLenum
gl_READ_FRAMEBUFFER_APPLE = 0x8CA8

gl_READ_FRAMEBUFFER_BINDING_APPLE :: GLenum
gl_READ_FRAMEBUFFER_BINDING_APPLE = 0x8CAA

gl_RENDERBUFFER_SAMPLES_APPLE :: GLenum
gl_RENDERBUFFER_SAMPLES_APPLE = 0x8CAB