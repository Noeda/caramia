-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureView (
	-- * Extension Support
	  gl_EXT_texture_view

	-- * GL_EXT_texture_view
	, glTextureViewEXT
	, gl_TEXTURE_IMMUTABLE_LEVELS
	, gl_TEXTURE_VIEW_MIN_LAYER_EXT
	, gl_TEXTURE_VIEW_MIN_LEVEL_EXT
	, gl_TEXTURE_VIEW_NUM_LAYERS_EXT
	, gl_TEXTURE_VIEW_NUM_LEVELS_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_view :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_view = extGL 375

glTextureViewEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glTextureViewEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1389 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_TEXTURE_VIEW_MIN_LAYER_EXT :: GLenum
gl_TEXTURE_VIEW_MIN_LAYER_EXT = 0x82DD

gl_TEXTURE_VIEW_MIN_LEVEL_EXT :: GLenum
gl_TEXTURE_VIEW_MIN_LEVEL_EXT = 0x82DB

gl_TEXTURE_VIEW_NUM_LAYERS_EXT :: GLenum
gl_TEXTURE_VIEW_NUM_LAYERS_EXT = 0x82DE

gl_TEXTURE_VIEW_NUM_LEVELS_EXT :: GLenum
gl_TEXTURE_VIEW_NUM_LEVELS_EXT = 0x82DC