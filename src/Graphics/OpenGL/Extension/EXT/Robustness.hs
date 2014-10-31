-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Robustness (
	-- * Extension Support
	  gl_EXT_robustness

	-- * GL_EXT_robustness
	, glGetGraphicsResetStatusEXT
	, glGetnUniformfvEXT
	, glGetnUniformivEXT
	, glReadnPixelsEXT
	, gl_CONTEXT_ROBUST_ACCESS_EXT
	, gl_GUILTY_CONTEXT_RESET_EXT
	, gl_INNOCENT_CONTEXT_RESET_EXT
	, gl_LOSE_CONTEXT_ON_RESET_EXT
	, gl_NO_ERROR
	, gl_NO_RESET_NOTIFICATION_EXT
	, gl_RESET_NOTIFICATION_STRATEGY_EXT
	, gl_UNKNOWN_CONTEXT_RESET_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_robustness :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_robustness = extGL 320

glGetGraphicsResetStatusEXT :: (MonadIO m, MonadReader e m, HasScope e) => m GLenum
glGetGraphicsResetStatusEXT = funGL 1323 >>= \f -> liftIO $ f

glGetnUniformfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glGetnUniformfvEXT v0 v1 v2 v3 = funGL 1324 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnUniformivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glGetnUniformivEXT v0 v1 v2 v3 = funGL 1325 >>= \f -> liftIO $ f v0 v1 v2 v3

glReadnPixelsEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glReadnPixelsEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1326 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_CONTEXT_ROBUST_ACCESS_EXT :: GLenum
gl_CONTEXT_ROBUST_ACCESS_EXT = 0x90F3

gl_GUILTY_CONTEXT_RESET_EXT :: GLenum
gl_GUILTY_CONTEXT_RESET_EXT = 0x8253

gl_INNOCENT_CONTEXT_RESET_EXT :: GLenum
gl_INNOCENT_CONTEXT_RESET_EXT = 0x8254

gl_LOSE_CONTEXT_ON_RESET_EXT :: GLenum
gl_LOSE_CONTEXT_ON_RESET_EXT = 0x8252

gl_NO_RESET_NOTIFICATION_EXT :: GLenum
gl_NO_RESET_NOTIFICATION_EXT = 0x8261

gl_RESET_NOTIFICATION_STRATEGY_EXT :: GLenum
gl_RESET_NOTIFICATION_STRATEGY_EXT = 0x8256

gl_UNKNOWN_CONTEXT_RESET_EXT :: GLenum
gl_UNKNOWN_CONTEXT_RESET_EXT = 0x8255