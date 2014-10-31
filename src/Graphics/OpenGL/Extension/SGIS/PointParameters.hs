-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.PointParameters (
	-- * Extension Support
	  gl_SGIS_point_parameters

	-- * GL_SGIS_point_parameters
	, glPointParameterfSGIS
	, glPointParameterfvSGIS
	, gl_DISTANCE_ATTENUATION_SGIS
	, gl_POINT_FADE_THRESHOLD_SIZE_SGIS
	, gl_POINT_SIZE_MAX_SGIS
	, gl_POINT_SIZE_MIN_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_point_parameters :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_point_parameters = extGL 619

glPointParameterfSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glPointParameterfSGIS v0 v1 = funGL 2220 >>= \f -> liftIO $ f v0 v1

glPointParameterfvSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glPointParameterfvSGIS v0 v1 = funGL 2221 >>= \f -> liftIO $ f v0 v1

gl_DISTANCE_ATTENUATION_SGIS :: GLenum
gl_DISTANCE_ATTENUATION_SGIS = 0x8129

gl_POINT_FADE_THRESHOLD_SIZE_SGIS :: GLenum
gl_POINT_FADE_THRESHOLD_SIZE_SGIS = 0x8128

gl_POINT_SIZE_MAX_SGIS :: GLenum
gl_POINT_SIZE_MAX_SGIS = 0x8127

gl_POINT_SIZE_MIN_SGIS :: GLenum
gl_POINT_SIZE_MIN_SGIS = 0x8126