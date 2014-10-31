-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.SamplePositions (
	-- * Extension Support
	  gl_AMD_sample_positions

	-- * GL_AMD_sample_positions
	, glSetMultisamplefvAMD
	, gl_SUBSAMPLE_DISTANCE_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_sample_positions :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_sample_positions = extGL 20

glSetMultisamplefvAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glSetMultisamplefvAMD v0 v1 v2 = funGL 60 >>= \f -> liftIO $ f v0 v1 v2

gl_SUBSAMPLE_DISTANCE_AMD :: GLenum
gl_SUBSAMPLE_DISTANCE_AMD = 0x883F