-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DebugMarker (
	-- * Extension Support
	  gl_EXT_debug_marker

	-- * GL_EXT_debug_marker
	, glInsertEventMarkerEXT
	, glPopGroupMarkerEXT
	, glPushGroupMarkerEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_debug_marker :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_debug_marker = extGL 267

glInsertEventMarkerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLchar -> m ()
glInsertEventMarkerEXT v0 v1 = funGL 957 >>= \f -> liftIO $ f v0 v1

glPopGroupMarkerEXT :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPopGroupMarkerEXT = funGL 958 >>= \f -> liftIO $ f

glPushGroupMarkerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLchar -> m ()
glPushGroupMarkerEXT v0 v1 = funGL 959 >>= \f -> liftIO $ f v0 v1