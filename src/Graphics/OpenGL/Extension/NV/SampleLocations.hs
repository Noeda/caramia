-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.SampleLocations (
	-- * Extension Support
	  gl_NV_sample_locations

	-- * GL_NV_sample_locations
	, glFramebufferSampleLocationsfvNV
	, glNamedFramebufferSampleLocationsfvNV
	, glResolveDepthValuesNV
	, gl_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV
	, gl_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV
	, gl_PROGRAMMABLE_SAMPLE_LOCATION_NV
	, gl_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV
	, gl_SAMPLE_LOCATION_NV
	, gl_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV
	, gl_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV
	, gl_SAMPLE_LOCATION_SUBPIXEL_BITS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_sample_locations :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_sample_locations = extGL 499

glFramebufferSampleLocationsfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> m ()
glFramebufferSampleLocationsfvNV v0 v1 v2 v3 = funGL 1802 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedFramebufferSampleLocationsfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLfloat -> m ()
glNamedFramebufferSampleLocationsfvNV v0 v1 v2 v3 = funGL 1803 >>= \f -> liftIO $ f v0 v1 v2 v3

glResolveDepthValuesNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glResolveDepthValuesNV = funGL 1804 >>= \f -> liftIO $ f

gl_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV :: GLenum
gl_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV = 0x9342

gl_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV :: GLenum
gl_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV = 0x9343

gl_PROGRAMMABLE_SAMPLE_LOCATION_NV :: GLenum
gl_PROGRAMMABLE_SAMPLE_LOCATION_NV = 0x9341

gl_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV :: GLenum
gl_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV = 0x9340

gl_SAMPLE_LOCATION_NV :: GLenum
gl_SAMPLE_LOCATION_NV = 0x8E50

gl_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV :: GLenum
gl_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV = 0x933F

gl_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV :: GLenum
gl_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV = 0x933E

gl_SAMPLE_LOCATION_SUBPIXEL_BITS_NV :: GLenum
gl_SAMPLE_LOCATION_SUBPIXEL_BITS_NV = 0x933D