-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.RegisterCombiners2 (
	-- * Extension Support
	  gl_NV_register_combiners2

	-- * GL_NV_register_combiners2
	, glCombinerStageParameterfvNV
	, glGetCombinerStageParameterfvNV
	, gl_PER_STAGE_CONSTANTS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_register_combiners2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_register_combiners2 = extGL 497

glCombinerStageParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glCombinerStageParameterfvNV v0 v1 v2 = funGL 1800 >>= \f -> liftIO $ f v0 v1 v2

glGetCombinerStageParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetCombinerStageParameterfvNV v0 v1 v2 = funGL 1801 >>= \f -> liftIO $ f v0 v1 v2

gl_PER_STAGE_CONSTANTS_NV :: GLenum
gl_PER_STAGE_CONSTANTS_NV = 0x8535