-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.MultiDrawIndirect (
	-- * Extension Support
	  gl_AMD_multi_draw_indirect

	-- * GL_AMD_multi_draw_indirect
	, glMultiDrawArraysIndirectAMD
	, glMultiDrawElementsIndirectAMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_multi_draw_indirect :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_multi_draw_indirect = extGL 13

glMultiDrawArraysIndirectAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> GLsizei -> GLsizei -> m ()
glMultiDrawArraysIndirectAMD v0 v1 v2 v3 = funGL 43 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiDrawElementsIndirectAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> m ()
glMultiDrawElementsIndirectAMD v0 v1 v2 v3 v4 = funGL 44 >>= \f -> liftIO $ f v0 v1 v2 v3 v4