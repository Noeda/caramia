-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.TextureCubeMap (
	-- * Extension Support
	  gl_OES_texture_cube_map

	-- * GL_OES_texture_cube_map
	, glGetTexGenfvOES
	, glGetTexGenivOES
	, glGetTexGenxvOES
	, glTexGenfOES
	, glTexGenfvOES
	, glTexGeniOES
	, glTexGenivOES
	, glTexGenxOES
	, glTexGenxvOES
	, gl_MAX_CUBE_MAP_TEXTURE_SIZE_OES
	, gl_NORMAL_MAP_OES
	, gl_REFLECTION_MAP_OES
	, gl_TEXTURE_BINDING_CUBE_MAP_OES
	, gl_TEXTURE_CUBE_MAP_NEGATIVE_X_OES
	, gl_TEXTURE_CUBE_MAP_NEGATIVE_Y_OES
	, gl_TEXTURE_CUBE_MAP_NEGATIVE_Z_OES
	, gl_TEXTURE_CUBE_MAP_OES
	, gl_TEXTURE_CUBE_MAP_POSITIVE_X_OES
	, gl_TEXTURE_CUBE_MAP_POSITIVE_Y_OES
	, gl_TEXTURE_CUBE_MAP_POSITIVE_Z_OES
	, gl_TEXTURE_GEN_MODE_OES
	, gl_TEXTURE_GEN_STR_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_OES_texture_cube_map :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_texture_cube_map = extGL 585

glGetTexGenfvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetTexGenfvOES v0 v1 v2 = funGL 2170 >>= \f -> liftIO $ f v0 v1 v2

glGetTexGenivOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetTexGenivOES v0 v1 v2 = funGL 2171 >>= \f -> liftIO $ f v0 v1 v2

glTexGenfOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glTexGenfOES v0 v1 v2 = funGL 2172 >>= \f -> liftIO $ f v0 v1 v2

glTexGenfvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glTexGenfvOES v0 v1 v2 = funGL 2173 >>= \f -> liftIO $ f v0 v1 v2

glTexGeniOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glTexGeniOES v0 v1 v2 = funGL 2174 >>= \f -> liftIO $ f v0 v1 v2

glTexGenivOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glTexGenivOES v0 v1 v2 = funGL 2175 >>= \f -> liftIO $ f v0 v1 v2

gl_MAX_CUBE_MAP_TEXTURE_SIZE_OES :: GLenum
gl_MAX_CUBE_MAP_TEXTURE_SIZE_OES = 0x851C

gl_NORMAL_MAP_OES :: GLenum
gl_NORMAL_MAP_OES = 0x8511

gl_REFLECTION_MAP_OES :: GLenum
gl_REFLECTION_MAP_OES = 0x8512

gl_TEXTURE_BINDING_CUBE_MAP_OES :: GLenum
gl_TEXTURE_BINDING_CUBE_MAP_OES = 0x8514

gl_TEXTURE_CUBE_MAP_NEGATIVE_X_OES :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_X_OES = 0x8516

gl_TEXTURE_CUBE_MAP_NEGATIVE_Y_OES :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_Y_OES = 0x8518

gl_TEXTURE_CUBE_MAP_NEGATIVE_Z_OES :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_Z_OES = 0x851A

gl_TEXTURE_CUBE_MAP_OES :: GLenum
gl_TEXTURE_CUBE_MAP_OES = 0x8513

gl_TEXTURE_CUBE_MAP_POSITIVE_X_OES :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_X_OES = 0x8515

gl_TEXTURE_CUBE_MAP_POSITIVE_Y_OES :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_Y_OES = 0x8517

gl_TEXTURE_CUBE_MAP_POSITIVE_Z_OES :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_Z_OES = 0x8519

gl_TEXTURE_GEN_MODE_OES :: GLenum
gl_TEXTURE_GEN_MODE_OES = 0x2500

gl_TEXTURE_GEN_STR_OES :: GLenum
gl_TEXTURE_GEN_STR_OES = 0x8D60