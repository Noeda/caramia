-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TransformFeedback (
	-- * Extension Support
	  gl_NV_transform_feedback

	-- * GL_NV_transform_feedback
	, glActiveVaryingNV
	, glBeginTransformFeedbackNV
	, glBindBufferBaseNV
	, glBindBufferOffsetNV
	, glBindBufferRangeNV
	, glEndTransformFeedbackNV
	, glGetActiveVaryingNV
	, glGetTransformFeedbackVaryingNV
	, glGetVaryingLocationNV
	, glTransformFeedbackAttribsNV
	, glTransformFeedbackStreamAttribsNV
	, glTransformFeedbackVaryingsNV
	, gl_ACTIVE_VARYINGS_NV
	, gl_ACTIVE_VARYING_MAX_LENGTH_NV
	, gl_BACK_PRIMARY_COLOR_NV
	, gl_BACK_SECONDARY_COLOR_NV
	, gl_CLIP_DISTANCE_NV
	, gl_GENERIC_ATTRIB_NV
	, gl_INTERLEAVED_ATTRIBS_NV
	, gl_LAYER_NV
	, gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV
	, gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV
	, gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV
	, gl_NEXT_BUFFER_NV
	, gl_PRIMITIVES_GENERATED_NV
	, gl_PRIMITIVE_ID_NV
	, gl_RASTERIZER_DISCARD_NV
	, gl_SEPARATE_ATTRIBS_NV
	, gl_SKIP_COMPONENTS1_NV
	, gl_SKIP_COMPONENTS2_NV
	, gl_SKIP_COMPONENTS3_NV
	, gl_SKIP_COMPONENTS4_NV
	, gl_TEXTURE_COORD_NV
	, gl_TRANSFORM_FEEDBACK_ATTRIBS_NV
	, gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV
	, gl_TRANSFORM_FEEDBACK_BUFFER_MODE_NV
	, gl_TRANSFORM_FEEDBACK_BUFFER_NV
	, gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV
	, gl_TRANSFORM_FEEDBACK_BUFFER_START_NV
	, gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV
	, gl_TRANSFORM_FEEDBACK_RECORD_NV
	, gl_TRANSFORM_FEEDBACK_VARYINGS_NV
	, gl_VERTEX_ID_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_transform_feedback :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_transform_feedback = extGL 527

glActiveVaryingNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLchar -> m ()
glActiveVaryingNV v0 v1 = funGL 1825 >>= \f -> liftIO $ f v0 v1

glBeginTransformFeedbackNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glBeginTransformFeedbackNV v0 = funGL 1826 >>= \f -> liftIO $ f v0

glBindBufferBaseNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> m ()
glBindBufferBaseNV v0 v1 v2 = funGL 1827 >>= \f -> liftIO $ f v0 v1 v2

glBindBufferOffsetNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLintptr -> m ()
glBindBufferOffsetNV v0 v1 v2 v3 = funGL 1828 >>= \f -> liftIO $ f v0 v1 v2 v3

glBindBufferRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> m ()
glBindBufferRangeNV v0 v1 v2 v3 v4 = funGL 1829 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glEndTransformFeedbackNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndTransformFeedbackNV = funGL 1830 >>= \f -> liftIO $ f

glGetActiveVaryingNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> m ()
glGetActiveVaryingNV v0 v1 v2 v3 v4 v5 v6 = funGL 1831 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glGetTransformFeedbackVaryingNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> Ptr GLint -> m ()
glGetTransformFeedbackVaryingNV v0 v1 v2 = funGL 1832 >>= \f -> liftIO $ f v0 v1 v2

glGetVaryingLocationNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLchar -> m GLint
glGetVaryingLocationNV v0 v1 = funGL 1833 >>= \f -> liftIO $ f v0 v1

glTransformFeedbackAttribsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLint -> GLenum -> m ()
glTransformFeedbackAttribsNV v0 v1 v2 = funGL 1834 >>= \f -> liftIO $ f v0 v1 v2

glTransformFeedbackStreamAttribsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLint -> GLsizei -> Ptr GLint -> GLenum -> m ()
glTransformFeedbackStreamAttribsNV v0 v1 v2 v3 v4 = funGL 1835 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTransformFeedbackVaryingsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLint -> GLenum -> m ()
glTransformFeedbackVaryingsNV v0 v1 v2 v3 = funGL 1836 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_ACTIVE_VARYINGS_NV :: GLenum
gl_ACTIVE_VARYINGS_NV = 0x8C81

gl_ACTIVE_VARYING_MAX_LENGTH_NV :: GLenum
gl_ACTIVE_VARYING_MAX_LENGTH_NV = 0x8C82

gl_BACK_PRIMARY_COLOR_NV :: GLenum
gl_BACK_PRIMARY_COLOR_NV = 0x8C77

gl_BACK_SECONDARY_COLOR_NV :: GLenum
gl_BACK_SECONDARY_COLOR_NV = 0x8C78

gl_CLIP_DISTANCE_NV :: GLenum
gl_CLIP_DISTANCE_NV = 0x8C7A

gl_GENERIC_ATTRIB_NV :: GLenum
gl_GENERIC_ATTRIB_NV = 0x8C7D

gl_INTERLEAVED_ATTRIBS_NV :: GLenum
gl_INTERLEAVED_ATTRIBS_NV = 0x8C8C

gl_LAYER_NV :: GLenum
gl_LAYER_NV = 0x8DAA

gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV = 0x8C8A

gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV = 0x8C8B

gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV = 0x8C80

gl_NEXT_BUFFER_NV :: GLenum
gl_NEXT_BUFFER_NV = -2

gl_PRIMITIVES_GENERATED_NV :: GLenum
gl_PRIMITIVES_GENERATED_NV = 0x8C87

gl_PRIMITIVE_ID_NV :: GLenum
gl_PRIMITIVE_ID_NV = 0x8C7C

gl_RASTERIZER_DISCARD_NV :: GLenum
gl_RASTERIZER_DISCARD_NV = 0x8C89

gl_SEPARATE_ATTRIBS_NV :: GLenum
gl_SEPARATE_ATTRIBS_NV = 0x8C8D

gl_SKIP_COMPONENTS1_NV :: GLenum
gl_SKIP_COMPONENTS1_NV = -6

gl_SKIP_COMPONENTS2_NV :: GLenum
gl_SKIP_COMPONENTS2_NV = -5

gl_SKIP_COMPONENTS3_NV :: GLenum
gl_SKIP_COMPONENTS3_NV = -4

gl_SKIP_COMPONENTS4_NV :: GLenum
gl_SKIP_COMPONENTS4_NV = -3

gl_TEXTURE_COORD_NV :: GLenum
gl_TEXTURE_COORD_NV = 0x8C79

gl_TRANSFORM_FEEDBACK_ATTRIBS_NV :: GLenum
gl_TRANSFORM_FEEDBACK_ATTRIBS_NV = 0x8C7E

gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV = 0x8C8F

gl_TRANSFORM_FEEDBACK_BUFFER_MODE_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_MODE_NV = 0x8C7F

gl_TRANSFORM_FEEDBACK_BUFFER_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_NV = 0x8C8E

gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV = 0x8C85

gl_TRANSFORM_FEEDBACK_BUFFER_START_NV :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_START_NV = 0x8C84

gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV :: GLenum
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV = 0x8C88

gl_TRANSFORM_FEEDBACK_RECORD_NV :: GLenum
gl_TRANSFORM_FEEDBACK_RECORD_NV = 0x8C86

gl_TRANSFORM_FEEDBACK_VARYINGS_NV :: GLenum
gl_TRANSFORM_FEEDBACK_VARYINGS_NV = 0x8C83

gl_VERTEX_ID_NV :: GLenum
gl_VERTEX_ID_NV = 0x8C7B