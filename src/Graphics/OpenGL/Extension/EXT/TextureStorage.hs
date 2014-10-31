-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureStorage (
	-- * Extension Support
	  gl_EXT_texture_storage

	-- * GL_EXT_texture_storage
	, glTexStorage1DEXT
	, glTexStorage2DEXT
	, glTexStorage3DEXT
	, glTextureStorage1DEXT
	, glTextureStorage2DEXT
	, glTextureStorage3DEXT
	, gl_ALPHA16F_EXT
	, gl_ALPHA32F_EXT
	, gl_ALPHA8_EXT
	, gl_BGRA8_EXT
	, gl_LUMINANCE16F_EXT
	, gl_LUMINANCE32F_EXT
	, gl_LUMINANCE8_ALPHA8_EXT
	, gl_LUMINANCE8_EXT
	, gl_LUMINANCE_ALPHA16F_EXT
	, gl_LUMINANCE_ALPHA32F_EXT
	, gl_R16F_EXT
	, gl_R32F_EXT
	, gl_R8_EXT
	, gl_RG16F_EXT
	, gl_RG32F_EXT
	, gl_RG8_EXT
	, gl_RGB10_A2_EXT
	, gl_RGB10_EXT
	, gl_RGB16F_EXT
	, gl_RGB32F_EXT
	, gl_RGBA16F_EXT
	, gl_RGBA32F_EXT
	, gl_TEXTURE_IMMUTABLE_FORMAT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_storage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_storage = extGL 372

glTexStorage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> m ()
glTexStorage1DEXT v0 v1 v2 v3 = funGL 1386 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexStorage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glTexStorage2DEXT v0 v1 v2 v3 v4 = funGL 1387 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTexStorage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> m ()
glTexStorage3DEXT v0 v1 v2 v3 v4 v5 = funGL 1388 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_ALPHA16F_EXT :: GLenum
gl_ALPHA16F_EXT = 0x881C

gl_ALPHA32F_EXT :: GLenum
gl_ALPHA32F_EXT = 0x8816

gl_LUMINANCE16F_EXT :: GLenum
gl_LUMINANCE16F_EXT = 0x881E

gl_LUMINANCE32F_EXT :: GLenum
gl_LUMINANCE32F_EXT = 0x8818

gl_LUMINANCE_ALPHA16F_EXT :: GLenum
gl_LUMINANCE_ALPHA16F_EXT = 0x881F

gl_LUMINANCE_ALPHA32F_EXT :: GLenum
gl_LUMINANCE_ALPHA32F_EXT = 0x8819

gl_R32F_EXT :: GLenum
gl_R32F_EXT = 0x822E

gl_RG32F_EXT :: GLenum
gl_RG32F_EXT = 0x8230

gl_RGB32F_EXT :: GLenum
gl_RGB32F_EXT = 0x8815

gl_RGBA32F_EXT :: GLenum
gl_RGBA32F_EXT = 0x8814

gl_TEXTURE_IMMUTABLE_FORMAT_EXT :: GLenum
gl_TEXTURE_IMMUTABLE_FORMAT_EXT = 0x912F