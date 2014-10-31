-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.Multisample (
	-- * Extension Support
	  gl_ARB_multisample

	-- * GL_ARB_multisample
	, glSampleCoverageARB
	, gl_MULTISAMPLE_ARB
	, gl_MULTISAMPLE_BIT_ARB
	, gl_SAMPLES_ARB
	, gl_SAMPLE_ALPHA_TO_COVERAGE_ARB
	, gl_SAMPLE_ALPHA_TO_ONE_ARB
	, gl_SAMPLE_BUFFERS_ARB
	, gl_SAMPLE_COVERAGE_ARB
	, gl_SAMPLE_COVERAGE_INVERT_ARB
	, gl_SAMPLE_COVERAGE_VALUE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_multisample = extGL 131

glSampleCoverageARB :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLboolean -> m ()
glSampleCoverageARB v0 v1 = funGL 398 >>= \f -> liftIO $ f v0 v1

gl_MULTISAMPLE_ARB :: GLenum
gl_MULTISAMPLE_ARB = 0x809D

gl_MULTISAMPLE_BIT_ARB :: GLenum
gl_MULTISAMPLE_BIT_ARB = 0x20000000

gl_SAMPLE_ALPHA_TO_COVERAGE_ARB :: GLenum
gl_SAMPLE_ALPHA_TO_COVERAGE_ARB = 0x809E

gl_SAMPLE_ALPHA_TO_ONE_ARB :: GLenum
gl_SAMPLE_ALPHA_TO_ONE_ARB = 0x809F

gl_SAMPLE_BUFFERS_ARB :: GLenum
gl_SAMPLE_BUFFERS_ARB = 0x80A8

gl_SAMPLE_COVERAGE_ARB :: GLenum
gl_SAMPLE_COVERAGE_ARB = 0x80A0

gl_SAMPLE_COVERAGE_INVERT_ARB :: GLenum
gl_SAMPLE_COVERAGE_INVERT_ARB = 0x80AB

gl_SAMPLE_COVERAGE_VALUE_ARB :: GLenum
gl_SAMPLE_COVERAGE_VALUE_ARB = 0x80AA