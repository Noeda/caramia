-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.CopyTexture (
	-- * Extension Support
	  gl_EXT_copy_texture

	-- * GL_EXT_copy_texture
	, glCopyTexImage1DEXT
	, glCopyTexImage2DEXT
	, glCopyTexSubImage1DEXT
	, glCopyTexSubImage2DEXT
	, glCopyTexSubImage3DEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_copy_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_copy_texture = extGL 264

glCopyTexImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> m ()
glCopyTexImage1DEXT v0 v1 v2 v3 v4 v5 v6 = funGL 948 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCopyTexImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> m ()
glCopyTexImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 949 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCopyTexSubImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> m ()
glCopyTexSubImage1DEXT v0 v1 v2 v3 v4 v5 = funGL 950 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glCopyTexSubImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTexSubImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 951 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCopyTexSubImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTexSubImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 952 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8