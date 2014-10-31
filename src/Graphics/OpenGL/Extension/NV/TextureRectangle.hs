-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TextureRectangle (
	-- * Extension Support
	  gl_NV_texture_rectangle

	-- * GL_NV_texture_rectangle
	, gl_MAX_RECTANGLE_TEXTURE_SIZE_NV
	, gl_PROXY_TEXTURE_RECTANGLE_NV
	, gl_TEXTURE_BINDING_RECTANGLE_NV
	, gl_TEXTURE_RECTANGLE_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texture_rectangle :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texture_rectangle = extGL 523

gl_MAX_RECTANGLE_TEXTURE_SIZE_NV :: GLenum
gl_MAX_RECTANGLE_TEXTURE_SIZE_NV = 0x84F8

gl_PROXY_TEXTURE_RECTANGLE_NV :: GLenum
gl_PROXY_TEXTURE_RECTANGLE_NV = 0x84F7

gl_TEXTURE_BINDING_RECTANGLE_NV :: GLenum
gl_TEXTURE_BINDING_RECTANGLE_NV = 0x84F6

gl_TEXTURE_RECTANGLE_NV :: GLenum
gl_TEXTURE_RECTANGLE_NV = 0x84F5