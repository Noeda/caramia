-- This file was automatically generated.
module Graphics.OpenGL.Extension.QCOM.DriverControl (
	-- * Extension Support
	  gl_QCOM_driver_control

	-- * GL_QCOM_driver_control
	, glDisableDriverControlQCOM
	, glEnableDriverControlQCOM
	, glGetDriverControlStringQCOM
	, glGetDriverControlsQCOM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_QCOM_driver_control :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_QCOM_driver_control = extGL 605

glDisableDriverControlQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDisableDriverControlQCOM v0 = funGL 2183 >>= \f -> liftIO $ f v0

glEnableDriverControlQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glEnableDriverControlQCOM v0 = funGL 2184 >>= \f -> liftIO $ f v0

glGetDriverControlStringQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetDriverControlStringQCOM v0 v1 v2 v3 = funGL 2185 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetDriverControlsQCOM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> GLsizei -> Ptr GLuint -> m ()
glGetDriverControlsQCOM v0 v1 v2 = funGL 2186 >>= \f -> liftIO $ f v0 v1 v2