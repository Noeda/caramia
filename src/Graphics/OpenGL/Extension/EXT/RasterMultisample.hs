-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.RasterMultisample (
	-- * Extension Support
	  gl_EXT_raster_multisample

	-- * GL_EXT_raster_multisample
	, glRasterSamplesEXT
	, gl_EFFECTIVE_RASTER_SAMPLES_EXT
	, gl_MAX_RASTER_SAMPLES_EXT
	, gl_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT
	, gl_RASTER_FIXED_SAMPLE_LOCATIONS_EXT
	, gl_RASTER_MULTISAMPLE_EXT
	, gl_RASTER_SAMPLES_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_raster_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_raster_multisample = extGL 317