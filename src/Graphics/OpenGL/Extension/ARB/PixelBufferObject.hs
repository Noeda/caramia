-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.PixelBufferObject (
	-- * Extension Support
	  gl_ARB_pixel_buffer_object

	-- * GL_ARB_pixel_buffer_object
	, gl_PIXEL_PACK_BUFFER_ARB
	, gl_PIXEL_PACK_BUFFER_BINDING_ARB
	, gl_PIXEL_UNPACK_BUFFER_ARB
	, gl_PIXEL_UNPACK_BUFFER_BINDING_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_pixel_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_pixel_buffer_object = extGL 136

gl_PIXEL_PACK_BUFFER_ARB :: GLenum
gl_PIXEL_PACK_BUFFER_ARB = 0x88EB

gl_PIXEL_PACK_BUFFER_BINDING_ARB :: GLenum
gl_PIXEL_PACK_BUFFER_BINDING_ARB = 0x88ED

gl_PIXEL_UNPACK_BUFFER_ARB :: GLenum
gl_PIXEL_UNPACK_BUFFER_ARB = 0x88EC

gl_PIXEL_UNPACK_BUFFER_BINDING_ARB :: GLenum
gl_PIXEL_UNPACK_BUFFER_BINDING_ARB = 0x88EF