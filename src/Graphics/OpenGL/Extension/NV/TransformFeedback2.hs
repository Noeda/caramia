-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TransformFeedback2 (
	-- * Extension Support
	  gl_NV_transform_feedback2

	-- * GL_NV_transform_feedback2
	, glBindTransformFeedbackNV
	, glDeleteTransformFeedbacksNV
	, glDrawTransformFeedbackNV
	, glGenTransformFeedbacksNV
	, glIsTransformFeedbackNV
	, glPauseTransformFeedbackNV
	, glResumeTransformFeedbackNV
	, gl_TRANSFORM_FEEDBACK_BINDING_NV
	, gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV
	, gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV
	, gl_TRANSFORM_FEEDBACK_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_transform_feedback2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_transform_feedback2 = extGL 528

glBindTransformFeedbackNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindTransformFeedbackNV v0 v1 = funGL 1837 >>= \f -> liftIO $ f v0 v1

glDeleteTransformFeedbacksNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteTransformFeedbacksNV v0 v1 = funGL 1838 >>= \f -> liftIO $ f v0 v1

glDrawTransformFeedbackNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glDrawTransformFeedbackNV v0 v1 = funGL 1839 >>= \f -> liftIO $ f v0 v1

glGenTransformFeedbacksNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenTransformFeedbacksNV v0 v1 = funGL 1840 >>= \f -> liftIO $ f v0 v1

glIsTransformFeedbackNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsTransformFeedbackNV v0 = funGL 1841 >>= \f -> liftIO $ f v0

glPauseTransformFeedbackNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPauseTransformFeedbackNV = funGL 1842 >>= \f -> liftIO $ f

glResumeTransformFeedbackNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glResumeTransformFeedbackNV = funGL 1843 >>= \f -> liftIO $ f

gl_TRANSFORM_FEEDBACK_BINDING_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BINDING_NV = 0x8E25

gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV = 0x8E24

gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV = 0x8E23

gl_TRANSFORM_FEEDBACK_NV :: GLenum
gl_TRANSFORM_FEEDBACK_NV = 0x8E22