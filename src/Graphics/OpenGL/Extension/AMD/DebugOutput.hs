-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.DebugOutput (
	-- * Extension Support
	  gl_AMD_debug_output

	-- * GL_AMD_debug_output
	, glDebugMessageCallbackAMD
	, glDebugMessageEnableAMD
	, glDebugMessageInsertAMD
	, glGetDebugMessageLogAMD
	, gl_DEBUG_CATEGORY_API_ERROR_AMD
	, gl_DEBUG_CATEGORY_APPLICATION_AMD
	, gl_DEBUG_CATEGORY_DEPRECATION_AMD
	, gl_DEBUG_CATEGORY_OTHER_AMD
	, gl_DEBUG_CATEGORY_PERFORMANCE_AMD
	, gl_DEBUG_CATEGORY_SHADER_COMPILER_AMD
	, gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD
	, gl_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD
	, gl_DEBUG_LOGGED_MESSAGES_AMD
	, gl_DEBUG_SEVERITY_HIGH_AMD
	, gl_DEBUG_SEVERITY_LOW_AMD
	, gl_DEBUG_SEVERITY_MEDIUM_AMD
	, gl_MAX_DEBUG_LOGGED_MESSAGES_AMD
	, gl_MAX_DEBUG_MESSAGE_LENGTH_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_debug_output :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_debug_output = extGL 7

glDebugMessageCallbackAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLDEBUGPROCAMD -> Ptr () -> m ()
glDebugMessageCallbackAMD v0 v1 = funGL 0 >>= \f -> liftIO $ f v0 v1

glDebugMessageEnableAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> m ()
glDebugMessageEnableAMD v0 v1 v2 v3 v4 = funGL 1 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDebugMessageInsertAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLsizei -> Ptr GLchar -> m ()
glDebugMessageInsertAMD v0 v1 v2 v3 v4 = funGL 2 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetDebugMessageLogAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLenum -> Ptr GLuint -> Ptr GLuint -> Ptr GLsizei -> Ptr GLchar -> m GLuint
glGetDebugMessageLogAMD v0 v1 v2 v3 v4 v5 v6 = funGL 3 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

gl_DEBUG_CATEGORY_API_ERROR_AMD :: GLenum
gl_DEBUG_CATEGORY_API_ERROR_AMD = 0x9149

gl_DEBUG_CATEGORY_APPLICATION_AMD :: GLenum
gl_DEBUG_CATEGORY_APPLICATION_AMD = 0x914F

gl_DEBUG_CATEGORY_DEPRECATION_AMD :: GLenum
gl_DEBUG_CATEGORY_DEPRECATION_AMD = 0x914B

gl_DEBUG_CATEGORY_OTHER_AMD :: GLenum
gl_DEBUG_CATEGORY_OTHER_AMD = 0x9150

gl_DEBUG_CATEGORY_PERFORMANCE_AMD :: GLenum
gl_DEBUG_CATEGORY_PERFORMANCE_AMD = 0x914D

gl_DEBUG_CATEGORY_SHADER_COMPILER_AMD :: GLenum
gl_DEBUG_CATEGORY_SHADER_COMPILER_AMD = 0x914E

gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD :: GLenum
gl_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = 0x914C

gl_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD :: GLenum
gl_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD = 0x914A

gl_DEBUG_LOGGED_MESSAGES_AMD :: GLenum
gl_DEBUG_LOGGED_MESSAGES_AMD = 0x9145

gl_DEBUG_SEVERITY_HIGH_AMD :: GLenum
gl_DEBUG_SEVERITY_HIGH_AMD = 0x9146

gl_DEBUG_SEVERITY_LOW_AMD :: GLenum
gl_DEBUG_SEVERITY_LOW_AMD = 0x9148

gl_DEBUG_SEVERITY_MEDIUM_AMD :: GLenum
gl_DEBUG_SEVERITY_MEDIUM_AMD = 0x9147

gl_MAX_DEBUG_LOGGED_MESSAGES_AMD :: GLenum
gl_MAX_DEBUG_LOGGED_MESSAGES_AMD = 0x9144

gl_MAX_DEBUG_MESSAGE_LENGTH_AMD :: GLenum
gl_MAX_DEBUG_MESSAGE_LENGTH_AMD = 0x9143