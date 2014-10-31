-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TextureMultisample (
	-- * Extension Support
	  gl_NV_texture_multisample

	-- * GL_NV_texture_multisample
	, glTexImage2DMultisampleCoverageNV
	, glTexImage3DMultisampleCoverageNV
	, glTextureImage2DMultisampleCoverageNV
	, glTextureImage2DMultisampleNV
	, glTextureImage3DMultisampleCoverageNV
	, glTextureImage3DMultisampleNV
	, gl_TEXTURE_COLOR_SAMPLES_NV
	, gl_TEXTURE_COVERAGE_SAMPLES_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texture_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texture_multisample = extGL 521

glTexImage2DMultisampleCoverageNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexImage2DMultisampleCoverageNV v0 v1 v2 v3 v4 v5 v6 = funGL 1819 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTexImage3DMultisampleCoverageNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexImage3DMultisampleCoverageNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1820 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glTextureImage2DMultisampleCoverageNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> m ()
glTextureImage2DMultisampleCoverageNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1821 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glTextureImage2DMultisampleNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLboolean -> m ()
glTextureImage2DMultisampleNV v0 v1 v2 v3 v4 v5 v6 = funGL 1822 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTextureImage3DMultisampleCoverageNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTextureImage3DMultisampleCoverageNV v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1823 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glTextureImage3DMultisampleNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTextureImage3DMultisampleNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1824 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_TEXTURE_COLOR_SAMPLES_NV :: GLenum
gl_TEXTURE_COLOR_SAMPLES_NV = 0x9046

gl_TEXTURE_COVERAGE_SAMPLES_NV :: GLenum
gl_TEXTURE_COVERAGE_SAMPLES_NV = 0x9045