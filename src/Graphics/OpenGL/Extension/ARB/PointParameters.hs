-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.PointParameters (
	-- * Extension Support
	  gl_ARB_point_parameters

	-- * GL_ARB_point_parameters
	, glPointParameterfARB
	, glPointParameterfvARB
	, gl_POINT_DISTANCE_ATTENUATION_ARB
	, gl_POINT_FADE_THRESHOLD_SIZE_ARB
	, gl_POINT_SIZE_MAX_ARB
	, gl_POINT_SIZE_MIN_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_point_parameters :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_point_parameters = extGL 137

glPointParameterfARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glPointParameterfARB v0 v1 = funGL 441 >>= \f -> liftIO $ f v0 v1

glPointParameterfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glPointParameterfvARB v0 v1 = funGL 442 >>= \f -> liftIO $ f v0 v1

gl_POINT_DISTANCE_ATTENUATION_ARB :: GLenum
gl_POINT_DISTANCE_ATTENUATION_ARB = 0x8129

gl_POINT_FADE_THRESHOLD_SIZE_ARB :: GLenum
gl_POINT_FADE_THRESHOLD_SIZE_ARB = 0x8128

gl_POINT_SIZE_MAX_ARB :: GLenum
gl_POINT_SIZE_MAX_ARB = 0x8127

gl_POINT_SIZE_MIN_ARB :: GLenum
gl_POINT_SIZE_MIN_ARB = 0x8126