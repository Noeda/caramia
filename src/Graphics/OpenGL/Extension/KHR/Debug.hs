-- This file was automatically generated.
module Graphics.OpenGL.Extension.KHR.Debug (
	-- * Extension Support
	  gl_KHR_debug

	-- * GL_KHR_debug
	, glDebugMessageCallback
	, glDebugMessageCallbackKHR
	, glDebugMessageControl
	, glDebugMessageControlKHR
	, glDebugMessageInsert
	, glDebugMessageInsertKHR
	, glGetDebugMessageLog
	, glGetDebugMessageLogKHR
	, glGetObjectLabel
	, glGetObjectLabelKHR
	, glGetObjectPtrLabel
	, glGetObjectPtrLabelKHR
	, glGetPointerv
	, glGetPointervKHR
	, glObjectLabel
	, glObjectLabelKHR
	, glObjectPtrLabel
	, glObjectPtrLabelKHR
	, glPopDebugGroup
	, glPopDebugGroupKHR
	, glPushDebugGroup
	, glPushDebugGroupKHR
	, gl_BUFFER
	, gl_BUFFER_KHR
	, gl_CONTEXT_FLAG_DEBUG_BIT
	, gl_CONTEXT_FLAG_DEBUG_BIT_KHR
	, gl_DEBUG_CALLBACK_FUNCTION
	, gl_DEBUG_CALLBACK_FUNCTION_KHR
	, gl_DEBUG_CALLBACK_USER_PARAM
	, gl_DEBUG_CALLBACK_USER_PARAM_KHR
	, gl_DEBUG_GROUP_STACK_DEPTH
	, gl_DEBUG_GROUP_STACK_DEPTH_KHR
	, gl_DEBUG_LOGGED_MESSAGES
	, gl_DEBUG_LOGGED_MESSAGES_KHR
	, gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
	, gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_KHR
	, gl_DEBUG_OUTPUT
	, gl_DEBUG_OUTPUT_KHR
	, gl_DEBUG_OUTPUT_SYNCHRONOUS
	, gl_DEBUG_OUTPUT_SYNCHRONOUS_KHR
	, gl_DEBUG_SEVERITY_HIGH
	, gl_DEBUG_SEVERITY_HIGH_KHR
	, gl_DEBUG_SEVERITY_LOW
	, gl_DEBUG_SEVERITY_LOW_KHR
	, gl_DEBUG_SEVERITY_MEDIUM
	, gl_DEBUG_SEVERITY_MEDIUM_KHR
	, gl_DEBUG_SEVERITY_NOTIFICATION
	, gl_DEBUG_SEVERITY_NOTIFICATION_KHR
	, gl_DEBUG_SOURCE_API
	, gl_DEBUG_SOURCE_API_KHR
	, gl_DEBUG_SOURCE_APPLICATION
	, gl_DEBUG_SOURCE_APPLICATION_KHR
	, gl_DEBUG_SOURCE_OTHER
	, gl_DEBUG_SOURCE_OTHER_KHR
	, gl_DEBUG_SOURCE_SHADER_COMPILER
	, gl_DEBUG_SOURCE_SHADER_COMPILER_KHR
	, gl_DEBUG_SOURCE_THIRD_PARTY
	, gl_DEBUG_SOURCE_THIRD_PARTY_KHR
	, gl_DEBUG_SOURCE_WINDOW_SYSTEM
	, gl_DEBUG_SOURCE_WINDOW_SYSTEM_KHR
	, gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR
	, gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR_KHR
	, gl_DEBUG_TYPE_ERROR
	, gl_DEBUG_TYPE_ERROR_KHR
	, gl_DEBUG_TYPE_MARKER
	, gl_DEBUG_TYPE_MARKER_KHR
	, gl_DEBUG_TYPE_OTHER
	, gl_DEBUG_TYPE_OTHER_KHR
	, gl_DEBUG_TYPE_PERFORMANCE
	, gl_DEBUG_TYPE_PERFORMANCE_KHR
	, gl_DEBUG_TYPE_POP_GROUP
	, gl_DEBUG_TYPE_POP_GROUP_KHR
	, gl_DEBUG_TYPE_PORTABILITY
	, gl_DEBUG_TYPE_PORTABILITY_KHR
	, gl_DEBUG_TYPE_PUSH_GROUP
	, gl_DEBUG_TYPE_PUSH_GROUP_KHR
	, gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR
	, gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR_KHR
	, gl_DISPLAY_LIST
	, gl_MAX_DEBUG_GROUP_STACK_DEPTH
	, gl_MAX_DEBUG_GROUP_STACK_DEPTH_KHR
	, gl_MAX_DEBUG_LOGGED_MESSAGES
	, gl_MAX_DEBUG_LOGGED_MESSAGES_KHR
	, gl_MAX_DEBUG_MESSAGE_LENGTH
	, gl_MAX_DEBUG_MESSAGE_LENGTH_KHR
	, gl_MAX_LABEL_LENGTH
	, gl_MAX_LABEL_LENGTH_KHR
	, gl_PROGRAM
	, gl_PROGRAM_KHR
	, gl_PROGRAM_PIPELINE
	, gl_QUERY
	, gl_QUERY_KHR
	, gl_SAMPLER
	, gl_SAMPLER_KHR
	, gl_SHADER
	, gl_SHADER_KHR
	, gl_STACK_OVERFLOW
	, gl_STACK_OVERFLOW_KHR
	, gl_STACK_UNDERFLOW
	, gl_STACK_UNDERFLOW_KHR
	, gl_VERTEX_ARRAY
	, gl_VERTEX_ARRAY_KHR
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_KHR_debug :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_KHR_debug = extGL 416

glDebugMessageCallbackKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLDEBUGPROCKHR -> Ptr () -> m ()
glDebugMessageCallbackKHR v0 v1 = funGL 1505 >>= \f -> liftIO $ f v0 v1

glDebugMessageControlKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> m ()
glDebugMessageControlKHR v0 v1 v2 v3 v4 v5 = funGL 1507 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glDebugMessageInsertKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> m ()
glDebugMessageInsertKHR v0 v1 v2 v3 v4 v5 = funGL 1509 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetDebugMessageLogKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLenum -> Ptr GLenum -> Ptr GLuint -> Ptr GLenum -> Ptr GLsizei -> Ptr GLchar -> m GLuint
glGetDebugMessageLogKHR v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1511 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glGetObjectLabelKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetObjectLabelKHR v0 v1 v2 v3 v4 = funGL 1513 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetObjectPtrLabelKHR :: (MonadIO m, MonadReader e m, HasScope e) => Ptr () -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetObjectPtrLabelKHR v0 v1 v2 v3 = funGL 1515 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetPointervKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glGetPointervKHR v0 v1 = funGL 1517 >>= \f -> liftIO $ f v0 v1

glObjectLabelKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLchar -> m ()
glObjectLabelKHR v0 v1 v2 v3 = funGL 1519 >>= \f -> liftIO $ f v0 v1 v2 v3

glObjectPtrLabelKHR :: (MonadIO m, MonadReader e m, HasScope e) => Ptr () -> GLsizei -> Ptr GLchar -> m ()
glObjectPtrLabelKHR v0 v1 v2 = funGL 1521 >>= \f -> liftIO $ f v0 v1 v2

glPopDebugGroupKHR :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPopDebugGroupKHR = funGL 1523 >>= \f -> liftIO $ f

glPushDebugGroupKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLchar -> m ()
glPushDebugGroupKHR v0 v1 v2 v3 = funGL 1525 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_BUFFER_KHR :: GLenum
gl_BUFFER_KHR = 0x82E0

gl_CONTEXT_FLAG_DEBUG_BIT_KHR :: GLenum
gl_CONTEXT_FLAG_DEBUG_BIT_KHR = 0x00000002

gl_DEBUG_CALLBACK_FUNCTION_KHR :: GLenum
gl_DEBUG_CALLBACK_FUNCTION_KHR = 0x8244

gl_DEBUG_CALLBACK_USER_PARAM_KHR :: GLenum
gl_DEBUG_CALLBACK_USER_PARAM_KHR = 0x8245

gl_DEBUG_GROUP_STACK_DEPTH_KHR :: GLenum
gl_DEBUG_GROUP_STACK_DEPTH_KHR = 0x826D

gl_DEBUG_LOGGED_MESSAGES_KHR :: GLenum
gl_DEBUG_LOGGED_MESSAGES_KHR = 0x9145

gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_KHR :: GLenum
gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_KHR = 0x8243

gl_DEBUG_OUTPUT_KHR :: GLenum
gl_DEBUG_OUTPUT_KHR = 0x92E0

gl_DEBUG_OUTPUT_SYNCHRONOUS_KHR :: GLenum
gl_DEBUG_OUTPUT_SYNCHRONOUS_KHR = 0x8242

gl_DEBUG_SEVERITY_HIGH_KHR :: GLenum
gl_DEBUG_SEVERITY_HIGH_KHR = 0x9146

gl_DEBUG_SEVERITY_LOW_KHR :: GLenum
gl_DEBUG_SEVERITY_LOW_KHR = 0x9148

gl_DEBUG_SEVERITY_MEDIUM_KHR :: GLenum
gl_DEBUG_SEVERITY_MEDIUM_KHR = 0x9147

gl_DEBUG_SEVERITY_NOTIFICATION_KHR :: GLenum
gl_DEBUG_SEVERITY_NOTIFICATION_KHR = 0x826B

gl_DEBUG_SOURCE_API_KHR :: GLenum
gl_DEBUG_SOURCE_API_KHR = 0x8246

gl_DEBUG_SOURCE_APPLICATION_KHR :: GLenum
gl_DEBUG_SOURCE_APPLICATION_KHR = 0x824A

gl_DEBUG_SOURCE_OTHER_KHR :: GLenum
gl_DEBUG_SOURCE_OTHER_KHR = 0x824B

gl_DEBUG_SOURCE_SHADER_COMPILER_KHR :: GLenum
gl_DEBUG_SOURCE_SHADER_COMPILER_KHR = 0x8248

gl_DEBUG_SOURCE_THIRD_PARTY_KHR :: GLenum
gl_DEBUG_SOURCE_THIRD_PARTY_KHR = 0x8249

gl_DEBUG_SOURCE_WINDOW_SYSTEM_KHR :: GLenum
gl_DEBUG_SOURCE_WINDOW_SYSTEM_KHR = 0x8247

gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR_KHR :: GLenum
gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR_KHR = 0x824D

gl_DEBUG_TYPE_ERROR_KHR :: GLenum
gl_DEBUG_TYPE_ERROR_KHR = 0x824C

gl_DEBUG_TYPE_MARKER_KHR :: GLenum
gl_DEBUG_TYPE_MARKER_KHR = 0x8268

gl_DEBUG_TYPE_OTHER_KHR :: GLenum
gl_DEBUG_TYPE_OTHER_KHR = 0x8251

gl_DEBUG_TYPE_PERFORMANCE_KHR :: GLenum
gl_DEBUG_TYPE_PERFORMANCE_KHR = 0x8250

gl_DEBUG_TYPE_POP_GROUP_KHR :: GLenum
gl_DEBUG_TYPE_POP_GROUP_KHR = 0x826A

gl_DEBUG_TYPE_PORTABILITY_KHR :: GLenum
gl_DEBUG_TYPE_PORTABILITY_KHR = 0x824F

gl_DEBUG_TYPE_PUSH_GROUP_KHR :: GLenum
gl_DEBUG_TYPE_PUSH_GROUP_KHR = 0x8269

gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR_KHR :: GLenum
gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR_KHR = 0x824E

gl_MAX_DEBUG_GROUP_STACK_DEPTH_KHR :: GLenum
gl_MAX_DEBUG_GROUP_STACK_DEPTH_KHR = 0x826C

gl_MAX_DEBUG_LOGGED_MESSAGES_KHR :: GLenum
gl_MAX_DEBUG_LOGGED_MESSAGES_KHR = 0x9144

gl_MAX_DEBUG_MESSAGE_LENGTH_KHR :: GLenum
gl_MAX_DEBUG_MESSAGE_LENGTH_KHR = 0x9143

gl_MAX_LABEL_LENGTH_KHR :: GLenum
gl_MAX_LABEL_LENGTH_KHR = 0x82E8

gl_PROGRAM_KHR :: GLenum
gl_PROGRAM_KHR = 0x82E2

gl_QUERY_KHR :: GLenum
gl_QUERY_KHR = 0x82E3

gl_SAMPLER_KHR :: GLenum
gl_SAMPLER_KHR = 0x82E6

gl_SHADER_KHR :: GLenum
gl_SHADER_KHR = 0x82E1

gl_STACK_OVERFLOW_KHR :: GLenum
gl_STACK_OVERFLOW_KHR = 0x0503

gl_STACK_UNDERFLOW_KHR :: GLenum
gl_STACK_UNDERFLOW_KHR = 0x0504

gl_VERTEX_ARRAY_KHR :: GLenum
gl_VERTEX_ARRAY_KHR = 0x8074