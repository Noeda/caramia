-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.Texture3D (
	-- * Extension Support
	  gl_OES_texture_3D

	-- * GL_OES_texture_3D
	, glCompressedTexImage3DOES
	, glCompressedTexSubImage3DOES
	, glCopyTexSubImage3DOES
	, glFramebufferTexture3DOES
	, glTexImage3DOES
	, glTexSubImage3DOES
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES
	, gl_MAX_3D_TEXTURE_SIZE_OES
	, gl_SAMPLER_3D_OES
	, gl_TEXTURE_3D_OES
	, gl_TEXTURE_BINDING_3D_OES
	, gl_TEXTURE_WRAP_R_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_texture_3D :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_texture_3D = extGL 583

glCompressedTexImage3DOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTexImage3DOES v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2164 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCompressedTexSubImage3DOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTexSubImage3DOES v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 2165 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glCopyTexSubImage3DOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTexSubImage3DOES v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2166 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glFramebufferTexture3DOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> m ()
glFramebufferTexture3DOES v0 v1 v2 v3 v4 v5 = funGL 2167 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glTexImage3DOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTexImage3DOES v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 2168 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glTexSubImage3DOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTexSubImage3DOES v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 2169 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES = 0x8CD4

gl_MAX_3D_TEXTURE_SIZE_OES :: GLenum
gl_MAX_3D_TEXTURE_SIZE_OES = 0x8073

gl_SAMPLER_3D_OES :: GLenum
gl_SAMPLER_3D_OES = 0x8B5F

gl_TEXTURE_3D_OES :: GLenum
gl_TEXTURE_3D_OES = 0x806F

gl_TEXTURE_BINDING_3D_OES :: GLenum
gl_TEXTURE_BINDING_3D_OES = 0x806A

gl_TEXTURE_WRAP_R_OES :: GLenum
gl_TEXTURE_WRAP_R_OES = 0x8072