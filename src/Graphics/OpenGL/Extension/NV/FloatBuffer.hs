-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FloatBuffer (
	-- * Extension Support
	  gl_NV_float_buffer

	-- * GL_NV_float_buffer
	, gl_FLOAT_CLEAR_COLOR_VALUE_NV
	, gl_FLOAT_R16_NV
	, gl_FLOAT_R32_NV
	, gl_FLOAT_RG16_NV
	, gl_FLOAT_RG32_NV
	, gl_FLOAT_RGB16_NV
	, gl_FLOAT_RGB32_NV
	, gl_FLOAT_RGBA16_NV
	, gl_FLOAT_RGBA32_NV
	, gl_FLOAT_RGBA_MODE_NV
	, gl_FLOAT_RGBA_NV
	, gl_FLOAT_RGB_NV
	, gl_FLOAT_RG_NV
	, gl_FLOAT_R_NV
	, gl_TEXTURE_FLOAT_COMPONENTS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_float_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_float_buffer = extGL 454

gl_FLOAT_CLEAR_COLOR_VALUE_NV :: GLenum
gl_FLOAT_CLEAR_COLOR_VALUE_NV = 0x888D

gl_FLOAT_R16_NV :: GLenum
gl_FLOAT_R16_NV = 0x8884

gl_FLOAT_R32_NV :: GLenum
gl_FLOAT_R32_NV = 0x8885

gl_FLOAT_RG16_NV :: GLenum
gl_FLOAT_RG16_NV = 0x8886

gl_FLOAT_RG32_NV :: GLenum
gl_FLOAT_RG32_NV = 0x8887

gl_FLOAT_RGB16_NV :: GLenum
gl_FLOAT_RGB16_NV = 0x8888

gl_FLOAT_RGB32_NV :: GLenum
gl_FLOAT_RGB32_NV = 0x8889

gl_FLOAT_RGBA16_NV :: GLenum
gl_FLOAT_RGBA16_NV = 0x888A

gl_FLOAT_RGBA32_NV :: GLenum
gl_FLOAT_RGBA32_NV = 0x888B

gl_FLOAT_RGBA_MODE_NV :: GLenum
gl_FLOAT_RGBA_MODE_NV = 0x888E

gl_FLOAT_RGBA_NV :: GLenum
gl_FLOAT_RGBA_NV = 0x8883

gl_FLOAT_RGB_NV :: GLenum
gl_FLOAT_RGB_NV = 0x8882

gl_FLOAT_RG_NV :: GLenum
gl_FLOAT_RG_NV = 0x8881

gl_FLOAT_R_NV :: GLenum
gl_FLOAT_R_NV = 0x8880

gl_TEXTURE_FLOAT_COMPONENTS_NV :: GLenum
gl_TEXTURE_FLOAT_COMPONENTS_NV = 0x888C