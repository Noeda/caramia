-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.Sync (
	-- * Extension Support
	  gl_ARB_sync

	-- * GL_ARB_sync
	, glClientWaitSync
	, glDeleteSync
	, glFenceSync
	, glGetInteger64v
	, glGetSynciv
	, glIsSync
	, glWaitSync
	, gl_ALREADY_SIGNALED
	, gl_CONDITION_SATISFIED
	, gl_MAX_SERVER_WAIT_TIMEOUT
	, gl_OBJECT_TYPE
	, gl_SIGNALED
	, gl_SYNC_CONDITION
	, gl_SYNC_FENCE
	, gl_SYNC_FLAGS
	, gl_SYNC_FLUSH_COMMANDS_BIT
	, gl_SYNC_GPU_COMMANDS_COMPLETE
	, gl_SYNC_STATUS
	, gl_TIMEOUT_EXPIRED
	, gl_TIMEOUT_IGNORED
	, gl_UNSIGNALED
	, gl_WAIT_FAILED
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_sync :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_sync = extGL 172