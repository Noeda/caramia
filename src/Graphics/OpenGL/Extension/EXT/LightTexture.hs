-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.LightTexture (
	-- * Extension Support
	  gl_EXT_light_texture

	-- * GL_EXT_light_texture
	, glApplyTextureEXT
	, glTextureLightEXT
	, glTextureMaterialEXT
	, gl_ATTENUATION_EXT
	, gl_FRAGMENT_COLOR_EXT
	, gl_FRAGMENT_DEPTH_EXT
	, gl_FRAGMENT_MATERIAL_EXT
	, gl_FRAGMENT_NORMAL_EXT
	, gl_SHADOW_ATTENUATION_EXT
	, gl_TEXTURE_APPLICATION_MODE_EXT
	, gl_TEXTURE_LIGHT_EXT
	, gl_TEXTURE_MATERIAL_FACE_EXT
	, gl_TEXTURE_MATERIAL_PARAMETER_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_light_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_light_texture = extGL 295

glApplyTextureEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glApplyTextureEXT v0 = funGL 1293 >>= \f -> liftIO $ f v0

glTextureLightEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glTextureLightEXT v0 = funGL 1294 >>= \f -> liftIO $ f v0

glTextureMaterialEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glTextureMaterialEXT v0 v1 = funGL 1295 >>= \f -> liftIO $ f v0 v1

gl_ATTENUATION_EXT :: GLenum
gl_ATTENUATION_EXT = 0x834D

gl_FRAGMENT_COLOR_EXT :: GLenum
gl_FRAGMENT_COLOR_EXT = 0x834C

gl_FRAGMENT_MATERIAL_EXT :: GLenum
gl_FRAGMENT_MATERIAL_EXT = 0x8349

gl_FRAGMENT_NORMAL_EXT :: GLenum
gl_FRAGMENT_NORMAL_EXT = 0x834A

gl_SHADOW_ATTENUATION_EXT :: GLenum
gl_SHADOW_ATTENUATION_EXT = 0x834E

gl_TEXTURE_APPLICATION_MODE_EXT :: GLenum
gl_TEXTURE_APPLICATION_MODE_EXT = 0x834F

gl_TEXTURE_LIGHT_EXT :: GLenum
gl_TEXTURE_LIGHT_EXT = 0x8350

gl_TEXTURE_MATERIAL_FACE_EXT :: GLenum
gl_TEXTURE_MATERIAL_FACE_EXT = 0x8351

gl_TEXTURE_MATERIAL_PARAMETER_EXT :: GLenum
gl_TEXTURE_MATERIAL_PARAMETER_EXT = 0x8352