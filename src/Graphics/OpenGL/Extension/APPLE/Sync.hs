-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.Sync (
	-- * Extension Support
	  gl_APPLE_sync

	-- * GL_APPLE_sync
	, glClientWaitSyncAPPLE
	, glDeleteSyncAPPLE
	, glFenceSyncAPPLE
	, glGetInteger64vAPPLE
	, glGetSyncivAPPLE
	, glIsSyncAPPLE
	, glWaitSyncAPPLE
	, gl_ALREADY_SIGNALED_APPLE
	, gl_CONDITION_SATISFIED_APPLE
	, gl_MAX_SERVER_WAIT_TIMEOUT_APPLE
	, gl_OBJECT_TYPE_APPLE
	, gl_SIGNALED_APPLE
	, gl_SYNC_CONDITION_APPLE
	, gl_SYNC_FENCE_APPLE
	, gl_SYNC_FLAGS_APPLE
	, gl_SYNC_FLUSH_COMMANDS_BIT_APPLE
	, gl_SYNC_GPU_COMMANDS_COMPLETE_APPLE
	, gl_SYNC_OBJECT_APPLE
	, gl_SYNC_STATUS_APPLE
	, gl_TIMEOUT_EXPIRED_APPLE
	, gl_TIMEOUT_IGNORED_APPLE
	, gl_UNSIGNALED_APPLE
	, gl_WAIT_FAILED_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_sync :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_sync = extGL 58

glClientWaitSyncAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> GLbitfield -> GLuint64 -> m GLenum
glClientWaitSyncAPPLE v0 v1 v2 = funGL 93 >>= \f -> liftIO $ f v0 v1 v2

glDeleteSyncAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> m ()
glDeleteSyncAPPLE v0 = funGL 94 >>= \f -> liftIO $ f v0

glFenceSyncAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLbitfield -> m GLsync
glFenceSyncAPPLE v0 v1 = funGL 95 >>= \f -> liftIO $ f v0 v1

glGetInteger64vAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint64 -> m ()
glGetInteger64vAPPLE v0 v1 = funGL 96 >>= \f -> liftIO $ f v0 v1

glGetSyncivAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> m ()
glGetSyncivAPPLE v0 v1 v2 v3 v4 = funGL 97 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glIsSyncAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> m GLboolean
glIsSyncAPPLE v0 = funGL 98 >>= \f -> liftIO $ f v0

glWaitSyncAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> GLbitfield -> GLuint64 -> m ()
glWaitSyncAPPLE v0 v1 v2 = funGL 99 >>= \f -> liftIO $ f v0 v1 v2

gl_ALREADY_SIGNALED_APPLE :: GLenum
gl_ALREADY_SIGNALED_APPLE = 0x911A

gl_CONDITION_SATISFIED_APPLE :: GLenum
gl_CONDITION_SATISFIED_APPLE = 0x911C

gl_MAX_SERVER_WAIT_TIMEOUT_APPLE :: GLenum
gl_MAX_SERVER_WAIT_TIMEOUT_APPLE = 0x9111

gl_OBJECT_TYPE_APPLE :: GLenum
gl_OBJECT_TYPE_APPLE = 0x9112

gl_SIGNALED_APPLE :: GLenum
gl_SIGNALED_APPLE = 0x9119

gl_SYNC_CONDITION_APPLE :: GLenum
gl_SYNC_CONDITION_APPLE = 0x9113

gl_SYNC_FENCE_APPLE :: GLenum
gl_SYNC_FENCE_APPLE = 0x9116

gl_SYNC_FLAGS_APPLE :: GLenum
gl_SYNC_FLAGS_APPLE = 0x9115

gl_SYNC_FLUSH_COMMANDS_BIT_APPLE :: GLenum
gl_SYNC_FLUSH_COMMANDS_BIT_APPLE = 0x00000001

gl_SYNC_GPU_COMMANDS_COMPLETE_APPLE :: GLenum
gl_SYNC_GPU_COMMANDS_COMPLETE_APPLE = 0x9117

gl_SYNC_OBJECT_APPLE :: GLenum
gl_SYNC_OBJECT_APPLE = 0x8A53

gl_SYNC_STATUS_APPLE :: GLenum
gl_SYNC_STATUS_APPLE = 0x9114

gl_TIMEOUT_EXPIRED_APPLE :: GLenum
gl_TIMEOUT_EXPIRED_APPLE = 0x911B

gl_TIMEOUT_IGNORED_APPLE :: GLenum
gl_TIMEOUT_IGNORED_APPLE = 0xFFFFFFFFFFFFFFFF

gl_UNSIGNALED_APPLE :: GLenum
gl_UNSIGNALED_APPLE = 0x9118

gl_WAIT_FAILED_APPLE :: GLenum
gl_WAIT_FAILED_APPLE = 0x911D