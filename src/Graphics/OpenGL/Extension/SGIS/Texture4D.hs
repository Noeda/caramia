-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.Texture4D (
	-- * Extension Support
	  gl_SGIS_texture4D

	-- * GL_SGIS_texture4D
	, glTexImage4DSGIS
	, glTexSubImage4DSGIS
	, gl_MAX_4D_TEXTURE_SIZE_SGIS
	, gl_PACK_IMAGE_DEPTH_SGIS
	, gl_PACK_SKIP_VOLUMES_SGIS
	, gl_PROXY_TEXTURE_4D_SGIS
	, gl_TEXTURE_4DSIZE_SGIS
	, gl_TEXTURE_4D_BINDING_SGIS
	, gl_TEXTURE_4D_SGIS
	, gl_TEXTURE_WRAP_Q_SGIS
	, gl_UNPACK_IMAGE_DEPTH_SGIS
	, gl_UNPACK_SKIP_VOLUMES_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_texture4D :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_texture4D = extGL 621

glTexImage4DSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTexImage4DSGIS v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 2224 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glTexSubImage4DSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTexSubImage4DSGIS v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = funGL 2225 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12

gl_MAX_4D_TEXTURE_SIZE_SGIS :: GLenum
gl_MAX_4D_TEXTURE_SIZE_SGIS = 0x8138

gl_PACK_IMAGE_DEPTH_SGIS :: GLenum
gl_PACK_IMAGE_DEPTH_SGIS = 0x8131

gl_PACK_SKIP_VOLUMES_SGIS :: GLenum
gl_PACK_SKIP_VOLUMES_SGIS = 0x8130

gl_PROXY_TEXTURE_4D_SGIS :: GLenum
gl_PROXY_TEXTURE_4D_SGIS = 0x8135

gl_TEXTURE_4DSIZE_SGIS :: GLenum
gl_TEXTURE_4DSIZE_SGIS = 0x8136

gl_TEXTURE_4D_BINDING_SGIS :: GLenum
gl_TEXTURE_4D_BINDING_SGIS = 0x814F

gl_TEXTURE_4D_SGIS :: GLenum
gl_TEXTURE_4D_SGIS = 0x8134

gl_TEXTURE_WRAP_Q_SGIS :: GLenum
gl_TEXTURE_WRAP_Q_SGIS = 0x8137

gl_UNPACK_IMAGE_DEPTH_SGIS :: GLenum
gl_UNPACK_IMAGE_DEPTH_SGIS = 0x8133

gl_UNPACK_SKIP_VOLUMES_SGIS :: GLenum
gl_UNPACK_SKIP_VOLUMES_SGIS = 0x8132