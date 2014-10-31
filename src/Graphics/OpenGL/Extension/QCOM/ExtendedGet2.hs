-- This file was automatically generated.
module Graphics.OpenGL.Extension.QCOM.ExtendedGet2 (
	-- * Extension Support
	  gl_QCOM_extended_get2

	-- * GL_QCOM_extended_get2
	, glExtGetProgramBinarySourceQCOM
	, glExtGetProgramsQCOM
	, glExtGetShadersQCOM
	, glExtIsProgramBinaryQCOM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_QCOM_extended_get2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_QCOM_extended_get2 = extGL 607

glExtGetProgramBinarySourceQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLchar -> Ptr GLint -> m ()
glExtGetProgramBinarySourceQCOM v0 v1 v2 v3 = funGL 2195 >>= \f -> liftIO $ f v0 v1 v2 v3

glExtGetProgramsQCOM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> GLint -> Ptr GLint -> m ()
glExtGetProgramsQCOM v0 v1 v2 = funGL 2196 >>= \f -> liftIO $ f v0 v1 v2

glExtGetShadersQCOM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> GLint -> Ptr GLint -> m ()
glExtGetShadersQCOM v0 v1 v2 = funGL 2197 >>= \f -> liftIO $ f v0 v1 v2

glExtIsProgramBinaryQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glExtIsProgramBinaryQCOM v0 = funGL 2198 >>= \f -> liftIO $ f v0