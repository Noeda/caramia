-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureFilterMinmax (
	-- * Extension Support
	  gl_EXT_texture_filter_minmax

	-- * GL_EXT_texture_filter_minmax
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

gl_EXT_texture_filter_minmax :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_filter_minmax = extGL 360