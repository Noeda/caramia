-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.SampleShading (
	-- * Extension Support
	  gl_ARB_sample_shading

	-- * GL_ARB_sample_shading
	, glMinSampleShadingARB
	, gl_MIN_SAMPLE_SHADING_VALUE_ARB
	, gl_SAMPLE_SHADING_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_sample_shading :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_sample_shading = extGL 145

glMinSampleShadingARB :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glMinSampleShadingARB v0 = funGL 470 >>= \f -> liftIO $ f v0

gl_MIN_SAMPLE_SHADING_VALUE_ARB :: GLenum
gl_MIN_SAMPLE_SHADING_VALUE_ARB = 0x8C37

gl_SAMPLE_SHADING_ARB :: GLenum
gl_SAMPLE_SHADING_ARB = 0x8C36