-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.ColorSubtable (
	-- * Extension Support
	  gl_EXT_color_subtable

	-- * GL_EXT_color_subtable
	, glColorSubTableEXT
	, glCopyColorSubTableEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_color_subtable :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_color_subtable = extGL 259

glColorSubTableEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glColorSubTableEXT v0 v1 v2 v3 v4 v5 = funGL 908 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glCopyColorSubTableEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> m ()
glCopyColorSubTableEXT v0 v1 v2 v3 v4 = funGL 909 >>= \f -> liftIO $ f v0 v1 v2 v3 v4