-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FramebufferMixedSamples (
	-- * Extension Support
	  gl_NV_framebuffer_mixed_samples

	-- * GL_NV_framebuffer_mixed_samples
	, glCoverageModulationNV
	, glCoverageModulationTableNV
	, glGetCoverageModulationTableNV
	, glRasterSamplesEXT
	, gl_COLOR_SAMPLES_NV
	, gl_COVERAGE_MODULATION_NV
	, gl_COVERAGE_MODULATION_TABLE_NV
	, gl_COVERAGE_MODULATION_TABLE_SIZE_NV
	, gl_DEPTH_SAMPLES_NV
	, gl_EFFECTIVE_RASTER_SAMPLES_EXT
	, gl_MAX_RASTER_SAMPLES_EXT
	, gl_MIXED_DEPTH_SAMPLES_SUPPORTED_NV
	, gl_MIXED_STENCIL_SAMPLES_SUPPORTED_NV
	, gl_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT
	, gl_RASTER_FIXED_SAMPLE_LOCATIONS_EXT
	, gl_RASTER_MULTISAMPLE_EXT
	, gl_RASTER_SAMPLES_EXT
	, gl_STENCIL_SAMPLES_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_framebuffer_mixed_samples :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_framebuffer_mixed_samples = extGL 463

glCoverageModulationNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glCoverageModulationNV v0 = funGL 1621 >>= \f -> liftIO $ f v0

glCoverageModulationTableNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLfloat -> m ()
glCoverageModulationTableNV v0 v1 = funGL 1622 >>= \f -> liftIO $ f v0 v1

glGetCoverageModulationTableNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLfloat -> m ()
glGetCoverageModulationTableNV v0 v1 = funGL 1623 >>= \f -> liftIO $ f v0 v1

gl_COVERAGE_MODULATION_NV :: GLenum
gl_COVERAGE_MODULATION_NV = 0x9332

gl_COVERAGE_MODULATION_TABLE_NV :: GLenum
gl_COVERAGE_MODULATION_TABLE_NV = 0x9331

gl_COVERAGE_MODULATION_TABLE_SIZE_NV :: GLenum
gl_COVERAGE_MODULATION_TABLE_SIZE_NV = 0x9333

gl_DEPTH_SAMPLES_NV :: GLenum
gl_DEPTH_SAMPLES_NV = 0x932D

gl_MIXED_DEPTH_SAMPLES_SUPPORTED_NV :: GLenum
gl_MIXED_DEPTH_SAMPLES_SUPPORTED_NV = 0x932F

gl_MIXED_STENCIL_SAMPLES_SUPPORTED_NV :: GLenum
gl_MIXED_STENCIL_SAMPLES_SUPPORTED_NV = 0x9330

gl_STENCIL_SAMPLES_NV :: GLenum
gl_STENCIL_SAMPLES_NV = 0x932E