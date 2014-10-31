-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.BindlessMultiDrawIndirect (
	-- * Extension Support
	  gl_NV_bindless_multi_draw_indirect

	-- * GL_NV_bindless_multi_draw_indirect
	, glMultiDrawArraysIndirectBindlessNV
	, glMultiDrawElementsIndirectBindlessNV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_bindless_multi_draw_indirect :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_bindless_multi_draw_indirect = extGL 428

glMultiDrawArraysIndirectBindlessNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> GLsizei -> GLsizei -> GLint -> m ()
glMultiDrawArraysIndirectBindlessNV v0 v1 v2 v3 v4 = funGL 1561 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiDrawElementsIndirectBindlessNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> GLint -> m ()
glMultiDrawElementsIndirectBindlessNV v0 v1 v2 v3 v4 v5 = funGL 1562 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5