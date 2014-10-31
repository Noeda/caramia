-- This file was automatically generated.
module Graphics.OpenGL.Extension.KHR.Robustness (
	-- * Extension Support
	  gl_KHR_robustness

	-- * GL_KHR_robustness
	, glGetGraphicsResetStatus
	, glGetGraphicsResetStatusKHR
	, glGetnUniformfv
	, glGetnUniformfvKHR
	, glGetnUniformiv
	, glGetnUniformivKHR
	, glGetnUniformuiv
	, glGetnUniformuivKHR
	, glReadnPixels
	, glReadnPixelsKHR
	, gl_CONTEXT_LOST
	, gl_CONTEXT_LOST_KHR
	, gl_CONTEXT_ROBUST_ACCESS
	, gl_CONTEXT_ROBUST_ACCESS_KHR
	, gl_GUILTY_CONTEXT_RESET
	, gl_GUILTY_CONTEXT_RESET_KHR
	, gl_INNOCENT_CONTEXT_RESET
	, gl_INNOCENT_CONTEXT_RESET_KHR
	, gl_LOSE_CONTEXT_ON_RESET
	, gl_LOSE_CONTEXT_ON_RESET_KHR
	, gl_NO_ERROR
	, gl_NO_RESET_NOTIFICATION
	, gl_NO_RESET_NOTIFICATION_KHR
	, gl_RESET_NOTIFICATION_STRATEGY
	, gl_RESET_NOTIFICATION_STRATEGY_KHR
	, gl_UNKNOWN_CONTEXT_RESET
	, gl_UNKNOWN_CONTEXT_RESET_KHR
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_KHR_robustness :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_KHR_robustness = extGL 418

glGetGraphicsResetStatusKHR :: (MonadIO m, MonadReader e m, HasScope e) => m GLenum
glGetGraphicsResetStatusKHR = funGL 1527 >>= \f -> liftIO $ f

glGetnUniformfvKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glGetnUniformfvKHR v0 v1 v2 v3 = funGL 1529 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnUniformivKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glGetnUniformivKHR v0 v1 v2 v3 = funGL 1531 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnUniformuivKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glGetnUniformuivKHR v0 v1 v2 v3 = funGL 1533 >>= \f -> liftIO $ f v0 v1 v2 v3

glReadnPixelsKHR :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glReadnPixelsKHR v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1535 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_CONTEXT_LOST_KHR :: GLenum
gl_CONTEXT_LOST_KHR = 0x0507

gl_CONTEXT_ROBUST_ACCESS :: GLenum
gl_CONTEXT_ROBUST_ACCESS = 0x90F3

gl_CONTEXT_ROBUST_ACCESS_KHR :: GLenum
gl_CONTEXT_ROBUST_ACCESS_KHR = 0x90F3

gl_GUILTY_CONTEXT_RESET_KHR :: GLenum
gl_GUILTY_CONTEXT_RESET_KHR = 0x8253

gl_INNOCENT_CONTEXT_RESET_KHR :: GLenum
gl_INNOCENT_CONTEXT_RESET_KHR = 0x8254

gl_LOSE_CONTEXT_ON_RESET_KHR :: GLenum
gl_LOSE_CONTEXT_ON_RESET_KHR = 0x8252

gl_NO_RESET_NOTIFICATION_KHR :: GLenum
gl_NO_RESET_NOTIFICATION_KHR = 0x8261

gl_RESET_NOTIFICATION_STRATEGY_KHR :: GLenum
gl_RESET_NOTIFICATION_STRATEGY_KHR = 0x8256

gl_UNKNOWN_CONTEXT_RESET_KHR :: GLenum
gl_UNKNOWN_CONTEXT_RESET_KHR = 0x8255