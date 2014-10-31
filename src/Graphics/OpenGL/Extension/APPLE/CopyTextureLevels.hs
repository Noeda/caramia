-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.CopyTextureLevels (
	-- * Extension Support
	  gl_APPLE_copy_texture_levels

	-- * GL_APPLE_copy_texture_levels
	, glCopyTextureLevelsAPPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_copy_texture_levels :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_copy_texture_levels = extGL 48

glCopyTextureLevelsAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLsizei -> m ()
glCopyTextureLevelsAPPLE v0 v1 v2 v3 = funGL 72 >>= \f -> liftIO $ f v0 v1 v2 v3