-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.SharedTexturePalette (
	-- * Extension Support
	  gl_EXT_shared_texture_palette

	-- * GL_EXT_shared_texture_palette
	, gl_SHARED_TEXTURE_PALETTE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_shared_texture_palette :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_shared_texture_palette = extGL 336

gl_SHARED_TEXTURE_PALETTE_EXT :: GLenum
gl_SHARED_TEXTURE_PALETTE_EXT = 0x81FB