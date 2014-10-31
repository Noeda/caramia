-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PointParameters (
	-- * Extension Support
	  gl_EXT_point_parameters

	-- * GL_EXT_point_parameters
	, glPointParameterfEXT
	, glPointParameterfvEXT
	, gl_DISTANCE_ATTENUATION_EXT
	, gl_POINT_FADE_THRESHOLD_SIZE_EXT
	, gl_POINT_SIZE_MAX_EXT
	, gl_POINT_SIZE_MIN_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_point_parameters :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_point_parameters = extGL 310

glPointParameterfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glPointParameterfEXT v0 v1 = funGL 1316 >>= \f -> liftIO $ f v0 v1

glPointParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glPointParameterfvEXT v0 v1 = funGL 1317 >>= \f -> liftIO $ f v0 v1

gl_DISTANCE_ATTENUATION_EXT :: GLenum
gl_DISTANCE_ATTENUATION_EXT = 0x8129

gl_POINT_FADE_THRESHOLD_SIZE_EXT :: GLenum
gl_POINT_FADE_THRESHOLD_SIZE_EXT = 0x8128

gl_POINT_SIZE_MAX_EXT :: GLenum
gl_POINT_SIZE_MAX_EXT = 0x8127

gl_POINT_SIZE_MIN_EXT :: GLenum
gl_POINT_SIZE_MIN_EXT = 0x8126