-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.BindlessTexture (
	-- * Extension Support
	  gl_ARB_bindless_texture

	-- * GL_ARB_bindless_texture
	, glGetImageHandleARB
	, glGetTextureHandleARB
	, glGetTextureSamplerHandleARB
	, glGetVertexAttribLui64vARB
	, glIsImageHandleResidentARB
	, glIsTextureHandleResidentARB
	, glMakeImageHandleNonResidentARB
	, glMakeImageHandleResidentARB
	, glMakeTextureHandleNonResidentARB
	, glMakeTextureHandleResidentARB
	, glProgramUniformHandleui64ARB
	, glProgramUniformHandleui64vARB
	, glUniformHandleui64ARB
	, glUniformHandleui64vARB
	, glVertexAttribL1ui64ARB
	, glVertexAttribL1ui64vARB
	, gl_UNSIGNED_INT64_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_bindless_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_bindless_texture = extGL 74

glGetImageHandleARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLboolean -> GLint -> GLenum -> m GLuint64
glGetImageHandleARB v0 v1 v2 v3 v4 = funGL 119 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetTextureHandleARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLuint64
glGetTextureHandleARB v0 = funGL 120 >>= \f -> liftIO $ f v0

glGetTextureSamplerHandleARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m GLuint64
glGetTextureSamplerHandleARB v0 v1 = funGL 121 >>= \f -> liftIO $ f v0 v1

glGetVertexAttribLui64vARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint64EXT -> m ()
glGetVertexAttribLui64vARB v0 v1 v2 = funGL 122 >>= \f -> liftIO $ f v0 v1 v2

glIsImageHandleResidentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m GLboolean
glIsImageHandleResidentARB v0 = funGL 123 >>= \f -> liftIO $ f v0

glIsTextureHandleResidentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m GLboolean
glIsTextureHandleResidentARB v0 = funGL 124 >>= \f -> liftIO $ f v0

glMakeImageHandleNonResidentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m ()
glMakeImageHandleNonResidentARB v0 = funGL 125 >>= \f -> liftIO $ f v0

glMakeImageHandleResidentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> GLenum -> m ()
glMakeImageHandleResidentARB v0 v1 = funGL 126 >>= \f -> liftIO $ f v0 v1

glMakeTextureHandleNonResidentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m ()
glMakeTextureHandleNonResidentARB v0 = funGL 127 >>= \f -> liftIO $ f v0

glMakeTextureHandleResidentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint64 -> m ()
glMakeTextureHandleResidentARB v0 = funGL 128 >>= \f -> liftIO $ f v0

glProgramUniformHandleui64ARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint64 -> m ()
glProgramUniformHandleui64ARB v0 v1 v2 = funGL 129 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniformHandleui64vARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint64 -> m ()
glProgramUniformHandleui64vARB v0 v1 v2 v3 = funGL 130 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformHandleui64ARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint64 -> m ()
glUniformHandleui64ARB v0 v1 = funGL 131 >>= \f -> liftIO $ f v0 v1

glUniformHandleui64vARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint64 -> m ()
glUniformHandleui64vARB v0 v1 v2 = funGL 132 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribL1ui64ARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint64EXT -> m ()
glVertexAttribL1ui64ARB v0 v1 = funGL 133 >>= \f -> liftIO $ f v0 v1

glVertexAttribL1ui64vARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint64EXT -> m ()
glVertexAttribL1ui64vARB v0 v1 = funGL 134 >>= \f -> liftIO $ f v0 v1

gl_UNSIGNED_INT64_ARB :: GLenum
gl_UNSIGNED_INT64_ARB = 0x140F