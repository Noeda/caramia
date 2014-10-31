-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.TextureMaxLevel (
	-- * Extension Support
	  gl_APPLE_texture_max_level

	-- * GL_APPLE_texture_max_level
	, gl_TEXTURE_MAX_LEVEL_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_texture_max_level :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_texture_max_level = extGL 61

gl_TEXTURE_MAX_LEVEL_APPLE :: GLenum
gl_TEXTURE_MAX_LEVEL_APPLE = 0x813D