-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ClEvent (
	-- * Extension Support
	  gl_ARB_cl_event

	-- * GL_ARB_cl_event
	, glCreateSyncFromCLeventARB
	, gl_SYNC_CL_EVENT_ARB
	, gl_SYNC_CL_EVENT_COMPLETE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_cl_event :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_cl_event = extGL 77

glCreateSyncFromCLeventARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr () -> Ptr () -> GLbitfield -> m GLsync
glCreateSyncFromCLeventARB v0 v1 v2 = funGL 138 >>= \f -> liftIO $ f v0 v1 v2

gl_SYNC_CL_EVENT_ARB :: GLenum
gl_SYNC_CL_EVENT_ARB = 0x8240

gl_SYNC_CL_EVENT_COMPLETE_ARB :: GLenum
gl_SYNC_CL_EVENT_COMPLETE_ARB = 0x8241