-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PixelTransform (
	-- * Extension Support
	  gl_EXT_pixel_transform

	-- * GL_EXT_pixel_transform
	, glGetPixelTransformParameterfvEXT
	, glGetPixelTransformParameterivEXT
	, glPixelTransformParameterfEXT
	, glPixelTransformParameterfvEXT
	, glPixelTransformParameteriEXT
	, glPixelTransformParameterivEXT
	, gl_AVERAGE_EXT
	, gl_CUBIC_EXT
	, gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
	, gl_PIXEL_CUBIC_WEIGHT_EXT
	, gl_PIXEL_MAG_FILTER_EXT
	, gl_PIXEL_MIN_FILTER_EXT
	, gl_PIXEL_TRANSFORM_2D_EXT
	, gl_PIXEL_TRANSFORM_2D_MATRIX_EXT
	, gl_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_pixel_transform :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_pixel_transform = extGL 308

glGetPixelTransformParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetPixelTransformParameterfvEXT v0 v1 v2 = funGL 1310 >>= \f -> liftIO $ f v0 v1 v2

glGetPixelTransformParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetPixelTransformParameterivEXT v0 v1 v2 = funGL 1311 >>= \f -> liftIO $ f v0 v1 v2

glPixelTransformParameterfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glPixelTransformParameterfEXT v0 v1 v2 = funGL 1312 >>= \f -> liftIO $ f v0 v1 v2

glPixelTransformParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glPixelTransformParameterfvEXT v0 v1 v2 = funGL 1313 >>= \f -> liftIO $ f v0 v1 v2

glPixelTransformParameteriEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glPixelTransformParameteriEXT v0 v1 v2 = funGL 1314 >>= \f -> liftIO $ f v0 v1 v2

glPixelTransformParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glPixelTransformParameterivEXT v0 v1 v2 = funGL 1315 >>= \f -> liftIO $ f v0 v1 v2

gl_AVERAGE_EXT :: GLenum
gl_AVERAGE_EXT = 0x8335

gl_CUBIC_EXT :: GLenum
gl_CUBIC_EXT = 0x8334

gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT :: GLenum
gl_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8337

gl_PIXEL_CUBIC_WEIGHT_EXT :: GLenum
gl_PIXEL_CUBIC_WEIGHT_EXT = 0x8333

gl_PIXEL_MAG_FILTER_EXT :: GLenum
gl_PIXEL_MAG_FILTER_EXT = 0x8331

gl_PIXEL_MIN_FILTER_EXT :: GLenum
gl_PIXEL_MIN_FILTER_EXT = 0x8332

gl_PIXEL_TRANSFORM_2D_EXT :: GLenum
gl_PIXEL_TRANSFORM_2D_EXT = 0x8330

gl_PIXEL_TRANSFORM_2D_MATRIX_EXT :: GLenum
gl_PIXEL_TRANSFORM_2D_MATRIX_EXT = 0x8338

gl_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT :: GLenum
gl_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT = 0x8336