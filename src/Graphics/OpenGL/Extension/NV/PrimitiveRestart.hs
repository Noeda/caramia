-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.PrimitiveRestart (
	-- * Extension Support
	  gl_NV_primitive_restart

	-- * GL_NV_primitive_restart
	, glPrimitiveRestartIndexNV
	, glPrimitiveRestartNV
	, gl_PRIMITIVE_RESTART_INDEX_NV
	, gl_PRIMITIVE_RESTART_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_primitive_restart :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_primitive_restart = extGL 489

glPrimitiveRestartIndexNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glPrimitiveRestartIndexNV v0 = funGL 1784 >>= \f -> liftIO $ f v0

glPrimitiveRestartNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPrimitiveRestartNV = funGL 1785 >>= \f -> liftIO $ f

gl_PRIMITIVE_RESTART_INDEX_NV :: GLenum
gl_PRIMITIVE_RESTART_INDEX_NV = 0x8559

gl_PRIMITIVE_RESTART_NV :: GLenum
gl_PRIMITIVE_RESTART_NV = 0x8558