-- This file was automatically generated.
module Graphics.OpenGL.Extension.QCOM.ExtendedGet (
	-- * Extension Support
	  gl_QCOM_extended_get

	-- * GL_QCOM_extended_get
	, glExtGetBufferPointervQCOM
	, glExtGetBuffersQCOM
	, glExtGetFramebuffersQCOM
	, glExtGetRenderbuffersQCOM
	, glExtGetTexLevelParameterivQCOM
	, glExtGetTexSubImageQCOM
	, glExtGetTexturesQCOM
	, glExtTexObjectStateOverrideiQCOM
	, gl_STATE_RESTORE
	, gl_TEXTURE_DEPTH_QCOM
	, gl_TEXTURE_FORMAT_QCOM
	, gl_TEXTURE_HEIGHT_QCOM
	, gl_TEXTURE_IMAGE_VALID_QCOM
	, gl_TEXTURE_INTERNAL_FORMAT_QCOM
	, gl_TEXTURE_NUM_LEVELS_QCOM
	, gl_TEXTURE_OBJECT_VALID_QCOM
	, gl_TEXTURE_TARGET_QCOM
	, gl_TEXTURE_TYPE_QCOM
	, gl_TEXTURE_WIDTH_QCOM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_QCOM_extended_get :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_QCOM_extended_get = extGL 606

glExtGetBufferPointervQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glExtGetBufferPointervQCOM v0 v1 = funGL 2187 >>= \f -> liftIO $ f v0 v1

glExtGetBuffersQCOM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> GLint -> Ptr GLint -> m ()
glExtGetBuffersQCOM v0 v1 v2 = funGL 2188 >>= \f -> liftIO $ f v0 v1 v2

glExtGetFramebuffersQCOM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> GLint -> Ptr GLint -> m ()
glExtGetFramebuffersQCOM v0 v1 v2 = funGL 2189 >>= \f -> liftIO $ f v0 v1 v2

glExtGetRenderbuffersQCOM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> GLint -> Ptr GLint -> m ()
glExtGetRenderbuffersQCOM v0 v1 v2 = funGL 2190 >>= \f -> liftIO $ f v0 v1 v2

glExtGetTexLevelParameterivQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> m ()
glExtGetTexLevelParameterivQCOM v0 v1 v2 v3 v4 = funGL 2191 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glExtGetTexSubImageQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glExtGetTexSubImageQCOM v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 2192 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glExtGetTexturesQCOM :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> GLint -> Ptr GLint -> m ()
glExtGetTexturesQCOM v0 v1 v2 = funGL 2193 >>= \f -> liftIO $ f v0 v1 v2

glExtTexObjectStateOverrideiQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glExtTexObjectStateOverrideiQCOM v0 v1 v2 = funGL 2194 >>= \f -> liftIO $ f v0 v1 v2

gl_STATE_RESTORE :: GLenum
gl_STATE_RESTORE = 0x8BDC

gl_TEXTURE_DEPTH_QCOM :: GLenum
gl_TEXTURE_DEPTH_QCOM = 0x8BD4

gl_TEXTURE_FORMAT_QCOM :: GLenum
gl_TEXTURE_FORMAT_QCOM = 0x8BD6

gl_TEXTURE_HEIGHT_QCOM :: GLenum
gl_TEXTURE_HEIGHT_QCOM = 0x8BD3

gl_TEXTURE_IMAGE_VALID_QCOM :: GLenum
gl_TEXTURE_IMAGE_VALID_QCOM = 0x8BD8

gl_TEXTURE_INTERNAL_FORMAT_QCOM :: GLenum
gl_TEXTURE_INTERNAL_FORMAT_QCOM = 0x8BD5

gl_TEXTURE_NUM_LEVELS_QCOM :: GLenum
gl_TEXTURE_NUM_LEVELS_QCOM = 0x8BD9

gl_TEXTURE_OBJECT_VALID_QCOM :: GLenum
gl_TEXTURE_OBJECT_VALID_QCOM = 0x8BDB

gl_TEXTURE_TARGET_QCOM :: GLenum
gl_TEXTURE_TARGET_QCOM = 0x8BDA

gl_TEXTURE_TYPE_QCOM :: GLenum
gl_TEXTURE_TYPE_QCOM = 0x8BD7

gl_TEXTURE_WIDTH_QCOM :: GLenum
gl_TEXTURE_WIDTH_QCOM = 0x8BD2