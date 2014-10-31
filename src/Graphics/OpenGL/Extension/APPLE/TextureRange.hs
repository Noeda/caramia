-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.TextureRange (
	-- * Extension Support
	  gl_APPLE_texture_range

	-- * GL_APPLE_texture_range
	, glGetTexParameterPointervAPPLE
	, glTextureRangeAPPLE
	, gl_STORAGE_CACHED_APPLE
	, gl_STORAGE_PRIVATE_APPLE
	, gl_STORAGE_SHARED_APPLE
	, gl_TEXTURE_RANGE_LENGTH_APPLE
	, gl_TEXTURE_RANGE_POINTER_APPLE
	, gl_TEXTURE_STORAGE_HINT_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_APPLE_texture_range :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_texture_range = extGL 63

glGetTexParameterPointervAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> m ()
glGetTexParameterPointervAPPLE v0 v1 v2 = funGL 100 >>= \f -> liftIO $ f v0 v1 v2

glTextureRangeAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glTextureRangeAPPLE v0 v1 v2 = funGL 101 >>= \f -> liftIO $ f v0 v1 v2

gl_STORAGE_PRIVATE_APPLE :: GLenum
gl_STORAGE_PRIVATE_APPLE = 0x85BD

gl_TEXTURE_RANGE_LENGTH_APPLE :: GLenum
gl_TEXTURE_RANGE_LENGTH_APPLE = 0x85B7

gl_TEXTURE_RANGE_POINTER_APPLE :: GLenum
gl_TEXTURE_RANGE_POINTER_APPLE = 0x85B8

gl_TEXTURE_STORAGE_HINT_APPLE :: GLenum
gl_TEXTURE_STORAGE_HINT_APPLE = 0x85BC