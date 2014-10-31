-- This file was automatically generated.
module Graphics.OpenGL.Extension.IBM.RasterposClip (
	-- * Extension Support
	  gl_IBM_rasterpos_clip

	-- * GL_IBM_rasterpos_clip
	, gl_RASTER_POSITION_UNCLIPPED_IBM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IBM_rasterpos_clip :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IBM_rasterpos_clip = extGL 394

gl_RASTER_POSITION_UNCLIPPED_IBM :: GLenum
gl_RASTER_POSITION_UNCLIPPED_IBM = 0x19262