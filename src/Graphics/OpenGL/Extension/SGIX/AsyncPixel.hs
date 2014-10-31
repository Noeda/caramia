-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.AsyncPixel (
	-- * Extension Support
	  gl_SGIX_async_pixel

	-- * GL_SGIX_async_pixel
	, gl_ASYNC_DRAW_PIXELS_SGIX
	, gl_ASYNC_READ_PIXELS_SGIX
	, gl_ASYNC_TEX_IMAGE_SGIX
	, gl_MAX_ASYNC_DRAW_PIXELS_SGIX
	, gl_MAX_ASYNC_READ_PIXELS_SGIX
	, gl_MAX_ASYNC_TEX_IMAGE_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_async_pixel :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_async_pixel = extGL 630

gl_ASYNC_DRAW_PIXELS_SGIX :: GLenum
gl_ASYNC_DRAW_PIXELS_SGIX = 0x835D

gl_ASYNC_READ_PIXELS_SGIX :: GLenum
gl_ASYNC_READ_PIXELS_SGIX = 0x835E

gl_ASYNC_TEX_IMAGE_SGIX :: GLenum
gl_ASYNC_TEX_IMAGE_SGIX = 0x835C

gl_MAX_ASYNC_DRAW_PIXELS_SGIX :: GLenum
gl_MAX_ASYNC_DRAW_PIXELS_SGIX = 0x8360

gl_MAX_ASYNC_READ_PIXELS_SGIX :: GLenum
gl_MAX_ASYNC_READ_PIXELS_SGIX = 0x8361

gl_MAX_ASYNC_TEX_IMAGE_SGIX :: GLenum
gl_MAX_ASYNC_TEX_IMAGE_SGIX = 0x835F