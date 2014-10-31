-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.DrawInstanced (
	-- * Extension Support
	  gl_NV_draw_instanced

	-- * GL_NV_draw_instanced
	, glDrawArraysInstancedNV
	, glDrawElementsInstancedNV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_draw_instanced :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_draw_instanced = extGL 446

glDrawArraysInstancedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> GLsizei -> m ()
glDrawArraysInstancedNV v0 v1 v2 v3 = funGL 1591 >>= \f -> liftIO $ f v0 v1 v2 v3

glDrawElementsInstancedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> m ()
glDrawElementsInstancedNV v0 v1 v2 v3 v4 = funGL 1592 >>= \f -> liftIO $ f v0 v1 v2 v3 v4