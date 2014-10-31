-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Multisample (
	-- * Extension Support
	  gl_EXT_multisample

	-- * GL_EXT_multisample
	, glSampleMaskEXT
	, glSamplePatternEXT
	, gl_1PASS_EXT
	, gl_2PASS_0_EXT
	, gl_2PASS_1_EXT
	, gl_4PASS_0_EXT
	, gl_4PASS_1_EXT
	, gl_4PASS_2_EXT
	, gl_4PASS_3_EXT
	, gl_MULTISAMPLE_BIT_EXT
	, gl_MULTISAMPLE_EXT
	, gl_SAMPLES_EXT
	, gl_SAMPLE_ALPHA_TO_MASK_EXT
	, gl_SAMPLE_ALPHA_TO_ONE_EXT
	, gl_SAMPLE_BUFFERS_EXT
	, gl_SAMPLE_MASK_EXT
	, gl_SAMPLE_MASK_INVERT_EXT
	, gl_SAMPLE_MASK_VALUE_EXT
	, gl_SAMPLE_PATTERN_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_multisample = extGL 299

glSampleMaskEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLclampf -> GLboolean -> m ()
glSampleMaskEXT v0 v1 = funGL 1300 >>= \f -> liftIO $ f v0 v1

glSamplePatternEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glSamplePatternEXT v0 = funGL 1301 >>= \f -> liftIO $ f v0

gl_1PASS_EXT :: GLenum
gl_1PASS_EXT = 0x80A1

gl_2PASS_0_EXT :: GLenum
gl_2PASS_0_EXT = 0x80A2

gl_2PASS_1_EXT :: GLenum
gl_2PASS_1_EXT = 0x80A3

gl_4PASS_0_EXT :: GLenum
gl_4PASS_0_EXT = 0x80A4

gl_4PASS_1_EXT :: GLenum
gl_4PASS_1_EXT = 0x80A5

gl_4PASS_2_EXT :: GLenum
gl_4PASS_2_EXT = 0x80A6

gl_4PASS_3_EXT :: GLenum
gl_4PASS_3_EXT = 0x80A7

gl_MULTISAMPLE_BIT_EXT :: GLenum
gl_MULTISAMPLE_BIT_EXT = 0x20000000

gl_MULTISAMPLE_EXT :: GLenum
gl_MULTISAMPLE_EXT = 0x809D

gl_SAMPLES_EXT :: GLenum
gl_SAMPLES_EXT = 0x80A9

gl_SAMPLE_ALPHA_TO_MASK_EXT :: GLenum
gl_SAMPLE_ALPHA_TO_MASK_EXT = 0x809E

gl_SAMPLE_ALPHA_TO_ONE_EXT :: GLenum
gl_SAMPLE_ALPHA_TO_ONE_EXT = 0x809F

gl_SAMPLE_BUFFERS_EXT :: GLenum
gl_SAMPLE_BUFFERS_EXT = 0x80A8

gl_SAMPLE_MASK_EXT :: GLenum
gl_SAMPLE_MASK_EXT = 0x80A0

gl_SAMPLE_MASK_INVERT_EXT :: GLenum
gl_SAMPLE_MASK_INVERT_EXT = 0x80AB

gl_SAMPLE_MASK_VALUE_EXT :: GLenum
gl_SAMPLE_MASK_VALUE_EXT = 0x80AA

gl_SAMPLE_PATTERN_EXT :: GLenum
gl_SAMPLE_PATTERN_EXT = 0x80AC