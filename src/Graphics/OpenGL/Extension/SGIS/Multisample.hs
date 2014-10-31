-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.Multisample (
	-- * Extension Support
	  gl_SGIS_multisample

	-- * GL_SGIS_multisample
	, glSampleMaskSGIS
	, glSamplePatternSGIS
	, gl_1PASS_SGIS
	, gl_2PASS_0_SGIS
	, gl_2PASS_1_SGIS
	, gl_4PASS_0_SGIS
	, gl_4PASS_1_SGIS
	, gl_4PASS_2_SGIS
	, gl_4PASS_3_SGIS
	, gl_MULTISAMPLE_SGIS
	, gl_SAMPLES_SGIS
	, gl_SAMPLE_ALPHA_TO_MASK_SGIS
	, gl_SAMPLE_ALPHA_TO_ONE_SGIS
	, gl_SAMPLE_BUFFERS_SGIS
	, gl_SAMPLE_MASK_INVERT_SGIS
	, gl_SAMPLE_MASK_SGIS
	, gl_SAMPLE_MASK_VALUE_SGIS
	, gl_SAMPLE_PATTERN_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_multisample = extGL 616

glSampleMaskSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLclampf -> GLboolean -> m ()
glSampleMaskSGIS v0 v1 = funGL 2212 >>= \f -> liftIO $ f v0 v1

glSamplePatternSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glSamplePatternSGIS v0 = funGL 2213 >>= \f -> liftIO $ f v0

gl_1PASS_SGIS :: GLenum
gl_1PASS_SGIS = 0x80A1

gl_2PASS_0_SGIS :: GLenum
gl_2PASS_0_SGIS = 0x80A2

gl_2PASS_1_SGIS :: GLenum
gl_2PASS_1_SGIS = 0x80A3

gl_4PASS_0_SGIS :: GLenum
gl_4PASS_0_SGIS = 0x80A4

gl_4PASS_1_SGIS :: GLenum
gl_4PASS_1_SGIS = 0x80A5

gl_4PASS_2_SGIS :: GLenum
gl_4PASS_2_SGIS = 0x80A6

gl_4PASS_3_SGIS :: GLenum
gl_4PASS_3_SGIS = 0x80A7

gl_MULTISAMPLE_SGIS :: GLenum
gl_MULTISAMPLE_SGIS = 0x809D

gl_SAMPLES_SGIS :: GLenum
gl_SAMPLES_SGIS = 0x80A9

gl_SAMPLE_ALPHA_TO_MASK_SGIS :: GLenum
gl_SAMPLE_ALPHA_TO_MASK_SGIS = 0x809E

gl_SAMPLE_ALPHA_TO_ONE_SGIS :: GLenum
gl_SAMPLE_ALPHA_TO_ONE_SGIS = 0x809F

gl_SAMPLE_BUFFERS_SGIS :: GLenum
gl_SAMPLE_BUFFERS_SGIS = 0x80A8

gl_SAMPLE_MASK_INVERT_SGIS :: GLenum
gl_SAMPLE_MASK_INVERT_SGIS = 0x80AB

gl_SAMPLE_MASK_SGIS :: GLenum
gl_SAMPLE_MASK_SGIS = 0x80A0

gl_SAMPLE_MASK_VALUE_SGIS :: GLenum
gl_SAMPLE_MASK_VALUE_SGIS = 0x80AA

gl_SAMPLE_PATTERN_SGIS :: GLenum
gl_SAMPLE_PATTERN_SGIS = 0x80AC