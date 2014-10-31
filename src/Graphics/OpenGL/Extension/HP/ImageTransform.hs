-- This file was automatically generated.
module Graphics.OpenGL.Extension.HP.ImageTransform (
	-- * Extension Support
	  gl_HP_image_transform

	-- * GL_HP_image_transform
	, glGetImageTransformParameterfvHP
	, glGetImageTransformParameterivHP
	, glImageTransformParameterfHP
	, glImageTransformParameterfvHP
	, glImageTransformParameteriHP
	, glImageTransformParameterivHP
	, gl_AVERAGE_HP
	, gl_CUBIC_HP
	, gl_IMAGE_CUBIC_WEIGHT_HP
	, gl_IMAGE_MAG_FILTER_HP
	, gl_IMAGE_MIN_FILTER_HP
	, gl_IMAGE_ROTATE_ANGLE_HP
	, gl_IMAGE_ROTATE_ORIGIN_X_HP
	, gl_IMAGE_ROTATE_ORIGIN_Y_HP
	, gl_IMAGE_SCALE_X_HP
	, gl_IMAGE_SCALE_Y_HP
	, gl_IMAGE_TRANSFORM_2D_HP
	, gl_IMAGE_TRANSLATE_X_HP
	, gl_IMAGE_TRANSLATE_Y_HP
	, gl_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP
	, gl_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_HP_image_transform :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_HP_image_transform = extGL 389

glGetImageTransformParameterfvHP :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetImageTransformParameterfvHP v0 v1 v2 = funGL 1464 >>= \f -> liftIO $ f v0 v1 v2

glGetImageTransformParameterivHP :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetImageTransformParameterivHP v0 v1 v2 = funGL 1465 >>= \f -> liftIO $ f v0 v1 v2

glImageTransformParameterfHP :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glImageTransformParameterfHP v0 v1 v2 = funGL 1466 >>= \f -> liftIO $ f v0 v1 v2

glImageTransformParameterfvHP :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glImageTransformParameterfvHP v0 v1 v2 = funGL 1467 >>= \f -> liftIO $ f v0 v1 v2

glImageTransformParameteriHP :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glImageTransformParameteriHP v0 v1 v2 = funGL 1468 >>= \f -> liftIO $ f v0 v1 v2

glImageTransformParameterivHP :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glImageTransformParameterivHP v0 v1 v2 = funGL 1469 >>= \f -> liftIO $ f v0 v1 v2

gl_AVERAGE_HP :: GLenum
gl_AVERAGE_HP = 0x8160

gl_CUBIC_HP :: GLenum
gl_CUBIC_HP = 0x815F

gl_IMAGE_CUBIC_WEIGHT_HP :: GLenum
gl_IMAGE_CUBIC_WEIGHT_HP = 0x815E

gl_IMAGE_MAG_FILTER_HP :: GLenum
gl_IMAGE_MAG_FILTER_HP = 0x815C

gl_IMAGE_MIN_FILTER_HP :: GLenum
gl_IMAGE_MIN_FILTER_HP = 0x815D

gl_IMAGE_ROTATE_ANGLE_HP :: GLenum
gl_IMAGE_ROTATE_ANGLE_HP = 0x8159

gl_IMAGE_ROTATE_ORIGIN_X_HP :: GLenum
gl_IMAGE_ROTATE_ORIGIN_X_HP = 0x815A

gl_IMAGE_ROTATE_ORIGIN_Y_HP :: GLenum
gl_IMAGE_ROTATE_ORIGIN_Y_HP = 0x815B

gl_IMAGE_SCALE_X_HP :: GLenum
gl_IMAGE_SCALE_X_HP = 0x8155

gl_IMAGE_SCALE_Y_HP :: GLenum
gl_IMAGE_SCALE_Y_HP = 0x8156

gl_IMAGE_TRANSFORM_2D_HP :: GLenum
gl_IMAGE_TRANSFORM_2D_HP = 0x8161

gl_IMAGE_TRANSLATE_X_HP :: GLenum
gl_IMAGE_TRANSLATE_X_HP = 0x8157

gl_IMAGE_TRANSLATE_Y_HP :: GLenum
gl_IMAGE_TRANSLATE_Y_HP = 0x8158

gl_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP :: GLenum
gl_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8162

gl_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP :: GLenum
gl_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP = 0x8163