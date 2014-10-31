-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.PixelDataRange (
	-- * Extension Support
	  gl_NV_pixel_data_range

	-- * GL_NV_pixel_data_range
	, glFlushPixelDataRangeNV
	, glPixelDataRangeNV
	, gl_READ_PIXEL_DATA_RANGE_LENGTH_NV
	, gl_READ_PIXEL_DATA_RANGE_NV
	, gl_READ_PIXEL_DATA_RANGE_POINTER_NV
	, gl_WRITE_PIXEL_DATA_RANGE_LENGTH_NV
	, gl_WRITE_PIXEL_DATA_RANGE_NV
	, gl_WRITE_PIXEL_DATA_RANGE_POINTER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_pixel_data_range :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_pixel_data_range = extGL 486

glFlushPixelDataRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glFlushPixelDataRangeNV v0 = funGL 1774 >>= \f -> liftIO $ f v0

glPixelDataRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glPixelDataRangeNV v0 v1 v2 = funGL 1775 >>= \f -> liftIO $ f v0 v1 v2

gl_READ_PIXEL_DATA_RANGE_LENGTH_NV :: GLenum
gl_READ_PIXEL_DATA_RANGE_LENGTH_NV = 0x887B

gl_READ_PIXEL_DATA_RANGE_NV :: GLenum
gl_READ_PIXEL_DATA_RANGE_NV = 0x8879

gl_READ_PIXEL_DATA_RANGE_POINTER_NV :: GLenum
gl_READ_PIXEL_DATA_RANGE_POINTER_NV = 0x887D

gl_WRITE_PIXEL_DATA_RANGE_LENGTH_NV :: GLenum
gl_WRITE_PIXEL_DATA_RANGE_LENGTH_NV = 0x887A

gl_WRITE_PIXEL_DATA_RANGE_NV :: GLenum
gl_WRITE_PIXEL_DATA_RANGE_NV = 0x8878

gl_WRITE_PIXEL_DATA_RANGE_POINTER_NV :: GLenum
gl_WRITE_PIXEL_DATA_RANGE_POINTER_NV = 0x887C