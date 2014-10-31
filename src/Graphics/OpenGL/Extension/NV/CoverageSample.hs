-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.CoverageSample (
	-- * Extension Support
	  gl_NV_coverage_sample

	-- * GL_NV_coverage_sample
	, glCoverageMaskNV
	, glCoverageOperationNV
	, gl_COVERAGE_ALL_FRAGMENTS_NV
	, gl_COVERAGE_ATTACHMENT_NV
	, gl_COVERAGE_AUTOMATIC_NV
	, gl_COVERAGE_BUFFERS_NV
	, gl_COVERAGE_BUFFER_BIT_NV
	, gl_COVERAGE_COMPONENT4_NV
	, gl_COVERAGE_COMPONENT_NV
	, gl_COVERAGE_EDGE_FRAGMENTS_NV
	, gl_COVERAGE_SAMPLES_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_coverage_sample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_coverage_sample = extGL 440

glCoverageMaskNV :: (MonadIO m, MonadReader e m, HasScope e) => GLboolean -> m ()
glCoverageMaskNV v0 = funGL 1585 >>= \f -> liftIO $ f v0

glCoverageOperationNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glCoverageOperationNV v0 = funGL 1586 >>= \f -> liftIO $ f v0

gl_COVERAGE_ALL_FRAGMENTS_NV :: GLenum
gl_COVERAGE_ALL_FRAGMENTS_NV = 0x8ED5

gl_COVERAGE_ATTACHMENT_NV :: GLenum
gl_COVERAGE_ATTACHMENT_NV = 0x8ED2

gl_COVERAGE_AUTOMATIC_NV :: GLenum
gl_COVERAGE_AUTOMATIC_NV = 0x8ED7

gl_COVERAGE_BUFFERS_NV :: GLenum
gl_COVERAGE_BUFFERS_NV = 0x8ED3

gl_COVERAGE_BUFFER_BIT_NV :: GLenum
gl_COVERAGE_BUFFER_BIT_NV = 0x00008000

gl_COVERAGE_COMPONENT4_NV :: GLenum
gl_COVERAGE_COMPONENT4_NV = 0x8ED1

gl_COVERAGE_COMPONENT_NV :: GLenum
gl_COVERAGE_COMPONENT_NV = 0x8ED0

gl_COVERAGE_EDGE_FRAGMENTS_NV :: GLenum
gl_COVERAGE_EDGE_FRAGMENTS_NV = 0x8ED6

gl_COVERAGE_SAMPLES_NV :: GLenum
gl_COVERAGE_SAMPLES_NV = 0x8ED4