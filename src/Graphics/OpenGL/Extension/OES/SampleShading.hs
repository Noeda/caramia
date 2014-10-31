-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.SampleShading (
	-- * Extension Support
	  gl_OES_sample_shading

	-- * GL_OES_sample_shading
	, glMinSampleShadingOES
	, gl_MIN_SAMPLE_SHADING_VALUE_OES
	, gl_SAMPLE_SHADING_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_sample_shading :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_sample_shading = extGL 572

glMinSampleShadingOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glMinSampleShadingOES v0 = funGL 2157 >>= \f -> liftIO $ f v0

gl_MIN_SAMPLE_SHADING_VALUE_OES :: GLenum
gl_MIN_SAMPLE_SHADING_VALUE_OES = 0x8C37

gl_SAMPLE_SHADING_OES :: GLenum
gl_SAMPLE_SHADING_OES = 0x8C36