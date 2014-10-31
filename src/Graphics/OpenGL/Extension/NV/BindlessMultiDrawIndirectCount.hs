-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.BindlessMultiDrawIndirectCount (
	-- * Extension Support
	  gl_NV_bindless_multi_draw_indirect_count

	-- * GL_NV_bindless_multi_draw_indirect_count
	, glMultiDrawArraysIndirectBindlessCountNV
	, glMultiDrawElementsIndirectBindlessCountNV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_bindless_multi_draw_indirect_count :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_bindless_multi_draw_indirect_count = extGL 429

glMultiDrawArraysIndirectBindlessCountNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> GLsizei -> GLsizei -> GLsizei -> GLint -> m ()
glMultiDrawArraysIndirectBindlessCountNV v0 v1 v2 v3 v4 v5 = funGL 1563 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glMultiDrawElementsIndirectBindlessCountNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> GLsizei -> GLint -> m ()
glMultiDrawElementsIndirectBindlessCountNV v0 v1 v2 v3 v4 v5 v6 = funGL 1564 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6