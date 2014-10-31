-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.DrawBuffersBlend (
	-- * Extension Support
	  gl_ARB_draw_buffers_blend

	-- * GL_ARB_draw_buffers_blend
	, glBlendEquationSeparateiARB
	, glBlendEquationiARB
	, glBlendFuncSeparateiARB
	, glBlendFunciARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_draw_buffers_blend :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_draw_buffers_blend = extGL 98

glBlendEquationSeparateiARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> m ()
glBlendEquationSeparateiARB v0 v1 v2 = funGL 252 >>= \f -> liftIO $ f v0 v1 v2

glBlendEquationiARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glBlendEquationiARB v0 v1 = funGL 253 >>= \f -> liftIO $ f v0 v1

glBlendFuncSeparateiARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
glBlendFuncSeparateiARB v0 v1 v2 v3 v4 = funGL 254 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glBlendFunciARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> m ()
glBlendFunciARB v0 v1 v2 = funGL 255 >>= \f -> liftIO $ f v0 v1 v2