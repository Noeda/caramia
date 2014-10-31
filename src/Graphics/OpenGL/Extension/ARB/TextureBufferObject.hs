-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureBufferObject (
	-- * Extension Support
	  gl_ARB_texture_buffer_object

	-- * GL_ARB_texture_buffer_object
	, glTexBufferARB
	, gl_MAX_TEXTURE_BUFFER_SIZE_ARB
	, gl_TEXTURE_BINDING_BUFFER_ARB
	, gl_TEXTURE_BUFFER_ARB
	, gl_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB
	, gl_TEXTURE_BUFFER_FORMAT_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_texture_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_buffer_object = extGL 176

glTexBufferARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glTexBufferARB v0 v1 v2 = funGL 616 >>= \f -> liftIO $ f v0 v1 v2

gl_MAX_TEXTURE_BUFFER_SIZE_ARB :: GLenum
gl_MAX_TEXTURE_BUFFER_SIZE_ARB = 0x8C2B

gl_TEXTURE_BINDING_BUFFER_ARB :: GLenum
gl_TEXTURE_BINDING_BUFFER_ARB = 0x8C2C

gl_TEXTURE_BUFFER_ARB :: GLenum
gl_TEXTURE_BUFFER_ARB = 0x8C2A

gl_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB :: GLenum
gl_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB = 0x8C2D

gl_TEXTURE_BUFFER_FORMAT_ARB :: GLenum
gl_TEXTURE_BUFFER_FORMAT_ARB = 0x8C2E