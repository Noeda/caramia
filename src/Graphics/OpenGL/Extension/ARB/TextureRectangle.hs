-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureRectangle (
	-- * Extension Support
	  gl_ARB_texture_rectangle

	-- * GL_ARB_texture_rectangle
	, gl_MAX_RECTANGLE_TEXTURE_SIZE_ARB
	, gl_PROXY_TEXTURE_RECTANGLE_ARB
	, gl_TEXTURE_BINDING_RECTANGLE_ARB
	, gl_TEXTURE_RECTANGLE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_texture_rectangle :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_rectangle = extGL 196

gl_MAX_RECTANGLE_TEXTURE_SIZE_ARB :: GLenum
gl_MAX_RECTANGLE_TEXTURE_SIZE_ARB = 0x84F8

gl_PROXY_TEXTURE_RECTANGLE_ARB :: GLenum
gl_PROXY_TEXTURE_RECTANGLE_ARB = 0x84F7

gl_TEXTURE_BINDING_RECTANGLE_ARB :: GLenum
gl_TEXTURE_BINDING_RECTANGLE_ARB = 0x84F6

gl_TEXTURE_RECTANGLE_ARB :: GLenum
gl_TEXTURE_RECTANGLE_ARB = 0x84F5