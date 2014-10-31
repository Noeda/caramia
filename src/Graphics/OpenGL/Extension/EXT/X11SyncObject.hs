-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.X11SyncObject (
	-- * Extension Support
	  gl_EXT_x11_sync_object

	-- * GL_EXT_x11_sync_object
	, glImportSyncEXT
	, gl_SYNC_X11_FENCE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_x11_sync_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_x11_sync_object = extGL 384

glImportSyncEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLbitfield -> m GLsync
glImportSyncEXT v0 v1 v2 = funGL 1461 >>= \f -> liftIO $ f v0 v1 v2

gl_SYNC_X11_FENCE_EXT :: GLenum
gl_SYNC_X11_FENCE_EXT = 0x90E1