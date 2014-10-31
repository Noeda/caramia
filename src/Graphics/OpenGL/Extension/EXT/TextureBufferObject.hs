-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureBufferObject (
	-- * Extension Support
	  gl_EXT_texture_buffer_object

	-- * GL_EXT_texture_buffer_object
	, glTexBufferEXT
	, gl_MAX_TEXTURE_BUFFER_SIZE_EXT
	, gl_TEXTURE_BINDING_BUFFER_EXT
	, gl_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT
	, gl_TEXTURE_BUFFER_EXT
	, gl_TEXTURE_BUFFER_FORMAT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_buffer_object = extGL 349

gl_TEXTURE_BUFFER_FORMAT_EXT :: GLenum
gl_TEXTURE_BUFFER_FORMAT_EXT = 0x8C2E