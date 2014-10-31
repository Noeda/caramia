-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.MultisampleCoverage (
	-- * Extension Support
	  gl_NV_multisample_coverage

	-- * GL_NV_multisample_coverage
	, gl_COLOR_SAMPLES_NV
	, gl_SAMPLES_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_multisample_coverage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_multisample_coverage = extGL 478