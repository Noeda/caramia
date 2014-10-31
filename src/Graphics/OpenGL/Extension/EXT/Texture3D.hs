-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Texture3D (
	-- * Extension Support
	  gl_EXT_texture3D

	-- * GL_EXT_texture3D
	, glTexImage3DEXT
	, glTexSubImage3DEXT
	, gl_MAX_3D_TEXTURE_SIZE_EXT
	, gl_PACK_IMAGE_HEIGHT_EXT
	, gl_PACK_SKIP_IMAGES_EXT
	, gl_PROXY_TEXTURE_3D_EXT
	, gl_TEXTURE_3D_EXT
	, gl_TEXTURE_DEPTH_EXT
	, gl_TEXTURE_WRAP_R_EXT
	, gl_UNPACK_IMAGE_HEIGHT_EXT
	, gl_UNPACK_SKIP_IMAGES_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture3D :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture3D = extGL 345

glTexImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTexImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1364 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glTexSubImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTexSubImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 1365 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

gl_MAX_3D_TEXTURE_SIZE_EXT :: GLenum
gl_MAX_3D_TEXTURE_SIZE_EXT = 0x8073

gl_PACK_IMAGE_HEIGHT_EXT :: GLenum
gl_PACK_IMAGE_HEIGHT_EXT = 0x806C

gl_PACK_SKIP_IMAGES_EXT :: GLenum
gl_PACK_SKIP_IMAGES_EXT = 0x806B

gl_PROXY_TEXTURE_3D_EXT :: GLenum
gl_PROXY_TEXTURE_3D_EXT = 0x8070

gl_TEXTURE_3D_EXT :: GLenum
gl_TEXTURE_3D_EXT = 0x806F

gl_TEXTURE_DEPTH_EXT :: GLenum
gl_TEXTURE_DEPTH_EXT = 0x8071

gl_TEXTURE_WRAP_R_EXT :: GLenum
gl_TEXTURE_WRAP_R_EXT = 0x8072

gl_UNPACK_IMAGE_HEIGHT_EXT :: GLenum
gl_UNPACK_IMAGE_HEIGHT_EXT = 0x806E

gl_UNPACK_SKIP_IMAGES_EXT :: GLenum
gl_UNPACK_SKIP_IMAGES_EXT = 0x806D