-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PixelBufferObject (
	-- * Extension Support
	  gl_EXT_pixel_buffer_object

	-- * GL_EXT_pixel_buffer_object
	, gl_PIXEL_PACK_BUFFER_BINDING_EXT
	, gl_PIXEL_PACK_BUFFER_EXT
	, gl_PIXEL_UNPACK_BUFFER_BINDING_EXT
	, gl_PIXEL_UNPACK_BUFFER_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_pixel_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_pixel_buffer_object = extGL 307

gl_PIXEL_PACK_BUFFER_BINDING_EXT :: GLenum
gl_PIXEL_PACK_BUFFER_BINDING_EXT = 0x88ED

gl_PIXEL_PACK_BUFFER_EXT :: GLenum
gl_PIXEL_PACK_BUFFER_EXT = 0x88EB

gl_PIXEL_UNPACK_BUFFER_BINDING_EXT :: GLenum
gl_PIXEL_UNPACK_BUFFER_BINDING_EXT = 0x88EF

gl_PIXEL_UNPACK_BUFFER_EXT :: GLenum
gl_PIXEL_UNPACK_BUFFER_EXT = 0x88EC