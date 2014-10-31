-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ConservativeRaster (
	-- * Extension Support
	  gl_NV_conservative_raster

	-- * GL_NV_conservative_raster
	, glSubpixelPrecisionBiasNV
	, gl_CONSERVATIVE_RASTERIZATION_NV
	, gl_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV
	, gl_SUBPIXEL_PRECISION_BIAS_X_BITS_NV
	, gl_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_conservative_raster :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_conservative_raster = extGL 436

glSubpixelPrecisionBiasNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glSubpixelPrecisionBiasNV v0 v1 = funGL 1582 >>= \f -> liftIO $ f v0 v1

gl_CONSERVATIVE_RASTERIZATION_NV :: GLenum
gl_CONSERVATIVE_RASTERIZATION_NV = 0x9346

gl_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV :: GLenum
gl_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV = 0x9349

gl_SUBPIXEL_PRECISION_BIAS_X_BITS_NV :: GLenum
gl_SUBPIXEL_PRECISION_BIAS_X_BITS_NV = 0x9347

gl_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV :: GLenum
gl_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV = 0x9348