-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Subtexture (
	-- * Extension Support
	  gl_EXT_subtexture

	-- * GL_EXT_subtexture
	, glTexSubImage1DEXT
	, glTexSubImage2DEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_subtexture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_subtexture = extGL 341

glTexSubImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTexSubImage1DEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1361 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTexSubImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTexSubImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1362 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8