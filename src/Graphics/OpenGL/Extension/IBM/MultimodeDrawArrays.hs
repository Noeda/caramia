-- This file was automatically generated.
module Graphics.OpenGL.Extension.IBM.MultimodeDrawArrays (
	-- * Extension Support
	  gl_IBM_multimode_draw_arrays

	-- * GL_IBM_multimode_draw_arrays
	, glMultiModeDrawArraysIBM
	, glMultiModeDrawElementsIBM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IBM_multimode_draw_arrays :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IBM_multimode_draw_arrays = extGL 393

glMultiModeDrawArraysIBM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> GLint -> m ()
glMultiModeDrawArraysIBM v0 v1 v2 v3 v4 = funGL 1470 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiModeDrawElementsIBM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> m ()
glMultiModeDrawElementsIBM v0 v1 v2 v3 v4 v5 = funGL 1471 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5