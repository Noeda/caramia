-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.FlushRaster (
	-- * Extension Support
	  gl_SGIX_flush_raster

	-- * GL_SGIX_flush_raster
	, glFlushRasterSGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_flush_raster :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_flush_raster = extGL 637

glFlushRasterSGIX :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glFlushRasterSGIX = funGL 2235 >>= \f -> liftIO $ f