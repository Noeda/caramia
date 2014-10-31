-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TransformFeedback (
	-- * Extension Support
	  gl_EXT_transform_feedback

	-- * GL_EXT_transform_feedback
	, glBeginTransformFeedbackEXT
	, glBindBufferBaseEXT
	, glBindBufferOffsetEXT
	, glBindBufferRangeEXT
	, glEndTransformFeedbackEXT
	, glGetTransformFeedbackVaryingEXT
	, glTransformFeedbackVaryingsEXT
	, gl_INTERLEAVED_ATTRIBS_EXT
	, gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT
	, gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT
	, gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT
	, gl_PRIMITIVES_GENERATED_EXT
	, gl_RASTERIZER_DISCARD_EXT
	, gl_SEPARATE_ATTRIBS_EXT
	, gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT
	, gl_TRANSFORM_FEEDBACK_BUFFER_EXT
	, gl_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT
	, gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT
	, gl_TRANSFORM_FEEDBACK_BUFFER_START_EXT
	, gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT
	, gl_TRANSFORM_FEEDBACK_VARYINGS_EXT
	, gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_transform_feedback :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_transform_feedback = extGL 377

glBeginTransformFeedbackEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glBeginTransformFeedbackEXT v0 = funGL 1390 >>= \f -> liftIO $ f v0

glBindBufferBaseEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> m ()
glBindBufferBaseEXT v0 v1 v2 = funGL 1391 >>= \f -> liftIO $ f v0 v1 v2

glBindBufferOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLintptr -> m ()
glBindBufferOffsetEXT v0 v1 v2 v3 = funGL 1392 >>= \f -> liftIO $ f v0 v1 v2 v3

glBindBufferRangeEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> m ()
glBindBufferRangeEXT v0 v1 v2 v3 v4 = funGL 1393 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glEndTransformFeedbackEXT :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndTransformFeedbackEXT = funGL 1394 >>= \f -> liftIO $ f

glGetTransformFeedbackVaryingEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> m ()
glGetTransformFeedbackVaryingEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1395 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTransformFeedbackVaryingsEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLchar -> GLenum -> m ()
glTransformFeedbackVaryingsEXT v0 v1 v2 v3 = funGL 1396 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_INTERLEAVED_ATTRIBS_EXT :: GLenum
gl_INTERLEAVED_ATTRIBS_EXT = 0x8C8C

gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT = 0x8C8A

gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT = 0x8C8B

gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT = 0x8C80

gl_RASTERIZER_DISCARD_EXT :: GLenum
gl_RASTERIZER_DISCARD_EXT = 0x8C89

gl_SEPARATE_ATTRIBS_EXT :: GLenum
gl_SEPARATE_ATTRIBS_EXT = 0x8C8D

gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT = 0x8C8F

gl_TRANSFORM_FEEDBACK_BUFFER_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_EXT = 0x8C8E

gl_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT = 0x8C7F

gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT = 0x8C85

gl_TRANSFORM_FEEDBACK_BUFFER_START_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_START_EXT = 0x8C84

gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT = 0x8C88

gl_TRANSFORM_FEEDBACK_VARYINGS_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_VARYINGS_EXT = 0x8C83

gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT :: GLenum
gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT = 0x8C76