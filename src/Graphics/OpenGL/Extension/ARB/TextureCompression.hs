-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureCompression (
	-- * Extension Support
	  gl_ARB_texture_compression

	-- * GL_ARB_texture_compression
	, glCompressedTexImage1DARB
	, glCompressedTexImage2DARB
	, glCompressedTexImage3DARB
	, glCompressedTexSubImage1DARB
	, glCompressedTexSubImage2DARB
	, glCompressedTexSubImage3DARB
	, glGetCompressedTexImageARB
	, gl_COMPRESSED_ALPHA_ARB
	, gl_COMPRESSED_INTENSITY_ARB
	, gl_COMPRESSED_LUMINANCE_ALPHA_ARB
	, gl_COMPRESSED_LUMINANCE_ARB
	, gl_COMPRESSED_RGBA_ARB
	, gl_COMPRESSED_RGB_ARB
	, gl_COMPRESSED_TEXTURE_FORMATS_ARB
	, gl_NUM_COMPRESSED_TEXTURE_FORMATS_ARB
	, gl_TEXTURE_COMPRESSED_ARB
	, gl_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB
	, gl_TEXTURE_COMPRESSION_HINT_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_texture_compression :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_compression = extGL 179

glCompressedTexImage1DARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTexImage1DARB v0 v1 v2 v3 v4 v5 v6 = funGL 618 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCompressedTexImage2DARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTexImage2DARB v0 v1 v2 v3 v4 v5 v6 v7 = funGL 619 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCompressedTexImage3DARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTexImage3DARB v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 620 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCompressedTexSubImage1DARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTexSubImage1DARB v0 v1 v2 v3 v4 v5 v6 = funGL 621 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCompressedTexSubImage2DARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTexSubImage2DARB v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 622 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCompressedTexSubImage3DARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTexSubImage3DARB v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 623 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glGetCompressedTexImageARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr () -> m ()
glGetCompressedTexImageARB v0 v1 v2 = funGL 624 >>= \f -> liftIO $ f v0 v1 v2

gl_COMPRESSED_ALPHA_ARB :: GLenum
gl_COMPRESSED_ALPHA_ARB = 0x84E9

gl_COMPRESSED_INTENSITY_ARB :: GLenum
gl_COMPRESSED_INTENSITY_ARB = 0x84EC

gl_COMPRESSED_LUMINANCE_ALPHA_ARB :: GLenum
gl_COMPRESSED_LUMINANCE_ALPHA_ARB = 0x84EB

gl_COMPRESSED_LUMINANCE_ARB :: GLenum
gl_COMPRESSED_LUMINANCE_ARB = 0x84EA

gl_COMPRESSED_RGBA_ARB :: GLenum
gl_COMPRESSED_RGBA_ARB = 0x84EE

gl_COMPRESSED_RGB_ARB :: GLenum
gl_COMPRESSED_RGB_ARB = 0x84ED

gl_COMPRESSED_TEXTURE_FORMATS_ARB :: GLenum
gl_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A3

gl_NUM_COMPRESSED_TEXTURE_FORMATS_ARB :: GLenum
gl_NUM_COMPRESSED_TEXTURE_FORMATS_ARB = 0x86A2

gl_TEXTURE_COMPRESSED_ARB :: GLenum
gl_TEXTURE_COMPRESSED_ARB = 0x86A1

gl_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB :: GLenum
gl_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB = 0x86A0

gl_TEXTURE_COMPRESSION_HINT_ARB :: GLenum
gl_TEXTURE_COMPRESSION_HINT_ARB = 0x84EF