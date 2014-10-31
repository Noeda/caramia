-- This file was automatically generated.
module Graphics.OpenGL.Profile.Core40 (
	-- * Graphics.OpenGL.Profile.Core40
	  module Graphics.OpenGL.Profile.Core33
	, glBeginQueryIndexed
	, glBindTransformFeedback
	, glBlendEquationSeparatei
	, glBlendEquationi
	, glBlendFuncSeparatei
	, glBlendFunci
	, glDeleteTransformFeedbacks
	, glDrawArraysIndirect
	, glDrawElementsIndirect
	, glDrawTransformFeedback
	, glDrawTransformFeedbackStream
	, glEndQueryIndexed
	, glGenTransformFeedbacks
	, glGetActiveSubroutineName
	, glGetActiveSubroutineUniformName
	, glGetActiveSubroutineUniformiv
	, glGetProgramStageiv
	, glGetQueryIndexediv
	, glGetSubroutineIndex
	, glGetSubroutineUniformLocation
	, glGetUniformSubroutineuiv
	, glGetUniformdv
	, glIsTransformFeedback
	, glMinSampleShading
	, glPatchParameterfv
	, glPatchParameteri
	, glPauseTransformFeedback
	, glResumeTransformFeedback
	, glUniform1d
	, glUniform1dv
	, glUniform2d
	, glUniform2dv
	, glUniform3d
	, glUniform3dv
	, glUniform4d
	, glUniform4dv
	, glUniformMatrix2dv
	, glUniformMatrix2x3dv
	, glUniformMatrix2x4dv
	, glUniformMatrix3dv
	, glUniformMatrix3x2dv
	, glUniformMatrix3x4dv
	, glUniformMatrix4dv
	, glUniformMatrix4x2dv
	, glUniformMatrix4x3dv
	, glUniformSubroutinesuiv
	, gl_ACTIVE_SUBROUTINES
	, gl_ACTIVE_SUBROUTINE_MAX_LENGTH
	, gl_ACTIVE_SUBROUTINE_UNIFORMS
	, gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
	, gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
	, gl_COMPATIBLE_SUBROUTINES
	, gl_DOUBLE_MAT2
	, gl_DOUBLE_MAT2x3
	, gl_DOUBLE_MAT2x4
	, gl_DOUBLE_MAT3
	, gl_DOUBLE_MAT3x2
	, gl_DOUBLE_MAT3x4
	, gl_DOUBLE_MAT4
	, gl_DOUBLE_MAT4x2
	, gl_DOUBLE_MAT4x3
	, gl_DOUBLE_VEC2
	, gl_DOUBLE_VEC3
	, gl_DOUBLE_VEC4
	, gl_DRAW_INDIRECT_BUFFER
	, gl_DRAW_INDIRECT_BUFFER_BINDING
	, gl_FRACTIONAL_EVEN
	, gl_FRACTIONAL_ODD
	, gl_FRAGMENT_INTERPOLATION_OFFSET_BITS
	, gl_GEOMETRY_SHADER_INVOCATIONS
	, gl_INT_SAMPLER_CUBE_MAP_ARRAY
	, gl_ISOLINES
	, gl_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
	, gl_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
	, gl_MAX_FRAGMENT_INTERPOLATION_OFFSET
	, gl_MAX_GEOMETRY_SHADER_INVOCATIONS
	, gl_MAX_PATCH_VERTICES
	, gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
	, gl_MAX_SUBROUTINES
	, gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS
	, gl_MAX_TESS_CONTROL_INPUT_COMPONENTS
	, gl_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
	, gl_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
	, gl_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
	, gl_MAX_TESS_CONTROL_UNIFORM_BLOCKS
	, gl_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
	, gl_MAX_TESS_EVALUATION_INPUT_COMPONENTS
	, gl_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
	, gl_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
	, gl_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
	, gl_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
	, gl_MAX_TESS_GEN_LEVEL
	, gl_MAX_TESS_PATCH_COMPONENTS
	, gl_MAX_TRANSFORM_FEEDBACK_BUFFERS
	, gl_MAX_VERTEX_STREAMS
	, gl_MIN_FRAGMENT_INTERPOLATION_OFFSET
	, gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
	, gl_MIN_SAMPLE_SHADING_VALUE
	, gl_NUM_COMPATIBLE_SUBROUTINES
	, gl_PATCHES
	, gl_PATCH_DEFAULT_INNER_LEVEL
	, gl_PATCH_DEFAULT_OUTER_LEVEL
	, gl_PATCH_VERTICES
	, gl_PROXY_TEXTURE_CUBE_MAP_ARRAY
	, gl_QUADS
	, gl_SAMPLER_CUBE_MAP_ARRAY
	, gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW
	, gl_SAMPLE_SHADING
	, gl_TESS_CONTROL_OUTPUT_VERTICES
	, gl_TESS_CONTROL_SHADER
	, gl_TESS_EVALUATION_SHADER
	, gl_TESS_GEN_MODE
	, gl_TESS_GEN_POINT_MODE
	, gl_TESS_GEN_SPACING
	, gl_TESS_GEN_VERTEX_ORDER
	, gl_TEXTURE_BINDING_CUBE_MAP_ARRAY
	, gl_TEXTURE_CUBE_MAP_ARRAY
	, gl_TRANSFORM_FEEDBACK
	, gl_TRANSFORM_FEEDBACK_BINDING
	, gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
	, gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED
	, gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
	, gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
	, gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

import Graphics.OpenGL.Profile.Core33

glBlendEquationSeparatei :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> m ()
glBlendEquationSeparatei v0 v1 v2 = funGL 2963 >>= \f -> liftIO $ f v0 v1 v2

glBlendEquationi :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glBlendEquationi v0 v1 = funGL 2964 >>= \f -> liftIO $ f v0 v1

glBlendFuncSeparatei :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
glBlendFuncSeparatei v0 v1 v2 v3 v4 = funGL 2965 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glBlendFunci :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> m ()
glBlendFunci v0 v1 v2 = funGL 2966 >>= \f -> liftIO $ f v0 v1 v2

glMinSampleShading :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glMinSampleShading v0 = funGL 2967 >>= \f -> liftIO $ f v0

gl_INT_SAMPLER_CUBE_MAP_ARRAY :: GLenum
gl_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900E

gl_MIN_SAMPLE_SHADING_VALUE :: GLenum
gl_MIN_SAMPLE_SHADING_VALUE = 0x8C37

gl_PROXY_TEXTURE_CUBE_MAP_ARRAY :: GLenum
gl_PROXY_TEXTURE_CUBE_MAP_ARRAY = 0x900B

gl_SAMPLER_CUBE_MAP_ARRAY :: GLenum
gl_SAMPLER_CUBE_MAP_ARRAY = 0x900C

gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW :: GLenum
gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW = 0x900D

gl_SAMPLE_SHADING :: GLenum
gl_SAMPLE_SHADING = 0x8C36

gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY = 0x900F