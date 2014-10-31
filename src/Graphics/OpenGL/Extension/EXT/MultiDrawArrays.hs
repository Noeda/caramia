-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.MultiDrawArrays (
	-- * Extension Support
	  gl_EXT_multi_draw_arrays

	-- * GL_EXT_multi_draw_arrays
	, glMultiDrawArraysEXT
	, glMultiDrawElementsEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_multi_draw_arrays :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_multi_draw_arrays = extGL 298

glMultiDrawArraysEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> m ()
glMultiDrawArraysEXT v0 v1 v2 v3 = funGL 1298 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiDrawElementsEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> m ()
glMultiDrawElementsEXT v0 v1 v2 v3 v4 = funGL 1299 >>= \f -> liftIO $ f v0 v1 v2 v3 v4