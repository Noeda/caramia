-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureBuffer (
	-- * Extension Support
	  gl_EXT_texture_buffer

	-- * GL_EXT_texture_buffer
	, glTexBufferEXT
	, glTexBufferRangeEXT
	, gl_IMAGE_BUFFER_EXT
	, gl_INT_IMAGE_BUFFER_EXT
	, gl_INT_SAMPLER_BUFFER_EXT
	, gl_MAX_TEXTURE_BUFFER_SIZE_EXT
	, gl_SAMPLER_BUFFER_EXT
	, gl_TEXTURE_BINDING_BUFFER_EXT
	, gl_TEXTURE_BUFFER_BINDING_EXT
	, gl_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT
	, gl_TEXTURE_BUFFER_EXT
	, gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT_EXT
	, gl_TEXTURE_BUFFER_OFFSET_EXT
	, gl_TEXTURE_BUFFER_SIZE_EXT
	, gl_UNSIGNED_INT_IMAGE_BUFFER_EXT
	, gl_UNSIGNED_INT_SAMPLER_BUFFER_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_buffer = extGL 348

glTexBufferRangeEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> m ()
glTexBufferRangeEXT v0 v1 v2 v3 v4 = funGL 1376 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_TEXTURE_BUFFER_BINDING_EXT :: GLenum
gl_TEXTURE_BUFFER_BINDING_EXT = 0x8C2A

gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT_EXT :: GLenum
gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT_EXT = 0x919F

gl_TEXTURE_BUFFER_OFFSET_EXT :: GLenum
gl_TEXTURE_BUFFER_OFFSET_EXT = 0x919D

gl_TEXTURE_BUFFER_SIZE_EXT :: GLenum
gl_TEXTURE_BUFFER_SIZE_EXT = 0x919E