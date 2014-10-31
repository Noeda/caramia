-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FragmentCoverageToColor (
	-- * Extension Support
	  gl_NV_fragment_coverage_to_color

	-- * GL_NV_fragment_coverage_to_color
	, glFragmentCoverageColorNV
	, gl_FRAGMENT_COVERAGE_COLOR_NV
	, gl_FRAGMENT_COVERAGE_TO_COLOR_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_fragment_coverage_to_color :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_fragment_coverage_to_color = extGL 456

glFragmentCoverageColorNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glFragmentCoverageColorNV v0 = funGL 1613 >>= \f -> liftIO $ f v0

gl_FRAGMENT_COVERAGE_COLOR_NV :: GLenum
gl_FRAGMENT_COVERAGE_COLOR_NV = 0x92DE

gl_FRAGMENT_COVERAGE_TO_COLOR_NV :: GLenum
gl_FRAGMENT_COVERAGE_TO_COLOR_NV = 0x92DD