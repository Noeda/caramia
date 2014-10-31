-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FramebufferMultisampleCoverage (
	-- * Extension Support
	  gl_NV_framebuffer_multisample_coverage

	-- * GL_NV_framebuffer_multisample_coverage
	, glRenderbufferStorageMultisampleCoverageNV
	, gl_MAX_MULTISAMPLE_COVERAGE_MODES_NV
	, gl_MULTISAMPLE_COVERAGE_MODES_NV
	, gl_RENDERBUFFER_COLOR_SAMPLES_NV
	, gl_RENDERBUFFER_COVERAGE_SAMPLES_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_framebuffer_multisample_coverage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_framebuffer_multisample_coverage = extGL 465

glRenderbufferStorageMultisampleCoverageNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageMultisampleCoverageNV v0 v1 v2 v3 v4 v5 = funGL 1625 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_MAX_MULTISAMPLE_COVERAGE_MODES_NV :: GLenum
gl_MAX_MULTISAMPLE_COVERAGE_MODES_NV = 0x8E11

gl_MULTISAMPLE_COVERAGE_MODES_NV :: GLenum
gl_MULTISAMPLE_COVERAGE_MODES_NV = 0x8E12

gl_RENDERBUFFER_COLOR_SAMPLES_NV :: GLenum
gl_RENDERBUFFER_COLOR_SAMPLES_NV = 0x8E10

gl_RENDERBUFFER_COVERAGE_SAMPLES_NV :: GLenum
gl_RENDERBUFFER_COVERAGE_SAMPLES_NV = 0x8CAB