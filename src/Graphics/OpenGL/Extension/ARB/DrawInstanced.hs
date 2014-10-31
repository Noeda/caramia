-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.DrawInstanced (
	-- * Extension Support
	  gl_ARB_draw_instanced

	-- * GL_ARB_draw_instanced
	, glDrawArraysInstancedARB
	, glDrawElementsInstancedARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_draw_instanced :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_draw_instanced = extGL 101

glDrawArraysInstancedARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> GLsizei -> m ()
glDrawArraysInstancedARB v0 v1 v2 v3 = funGL 262 >>= \f -> liftIO $ f v0 v1 v2 v3

glDrawElementsInstancedARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> m ()
glDrawElementsInstancedARB v0 v1 v2 v3 v4 = funGL 263 >>= \f -> liftIO $ f v0 v1 v2 v3 v4