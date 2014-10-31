-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.BindlessTexture (
	-- * Extension Support
	  gl_NV_bindless_texture

	-- * GL_NV_bindless_texture
	, glGetImageHandleNV
	, glGetTextureHandleNV
	, glGetTextureSamplerHandleNV
	, glIsImageHandleResidentNV
	, glIsTextureHandleResidentNV
	, glMakeImageHandleNonResidentNV
	, glMakeImageHandleResidentNV
	, glMakeTextureHandleNonResidentNV
	, glMakeTextureHandleResidentNV
	, glProgramUniformHandleui64NV
	, glProgramUniformHandleui64vNV
	, glUniformHandleui64NV
	, glUniformHandleui64vNV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_bindless_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_bindless_texture = extGL 430

glGetImageHandleNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLboolean -> GLint -> GLenum -> m GLuint64
glGetImageHandleNV v0 v1 v2 v3 v4 = funGL 1565 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetTextureHandleNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLuint64
glGetTextureHandleNV v0 = funGL 1566 >>= \f -> liftIO $ f v0

glGetTextureSamplerHandleNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m GLuint64
glGetTextureSamplerHandleNV v0 v1 = funGL 1567 >>= \f -> liftIO $ f v0 v1

glIsImageHandleResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m GLboolean
glIsImageHandleResidentNV v0 = funGL 1568 >>= \f -> liftIO $ f v0

glIsTextureHandleResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m GLboolean
glIsTextureHandleResidentNV v0 = funGL 1569 >>= \f -> liftIO $ f v0

glMakeImageHandleNonResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m ()
glMakeImageHandleNonResidentNV v0 = funGL 1570 >>= \f -> liftIO $ f v0

glMakeImageHandleResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> GLenum -> m ()
glMakeImageHandleResidentNV v0 v1 = funGL 1571 >>= \f -> liftIO $ f v0 v1

glMakeTextureHandleNonResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m ()
glMakeTextureHandleNonResidentNV v0 = funGL 1572 >>= \f -> liftIO $ f v0

glMakeTextureHandleResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m ()
glMakeTextureHandleResidentNV v0 = funGL 1573 >>= \f -> liftIO $ f v0

glProgramUniformHandleui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint64 -> m ()
glProgramUniformHandleui64NV v0 v1 v2 = funGL 1574 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniformHandleui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> m ()
glProgramUniformHandleui64vNV v0 v1 v2 v3 = funGL 1575 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformHandleui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint64 -> m ()
glUniformHandleui64NV v0 v1 = funGL 1576 >>= \f -> liftIO $ f v0 v1

glUniformHandleui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint64 -> m ()
glUniformHandleui64vNV v0 v1 v2 = funGL 1577 >>= \f -> liftIO $ f v0 v1 v2