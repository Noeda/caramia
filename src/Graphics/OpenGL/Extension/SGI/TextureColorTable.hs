-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGI.TextureColorTable (
	-- * Extension Support
	  gl_SGI_texture_color_table

	-- * GL_SGI_texture_color_table
	, gl_PROXY_TEXTURE_COLOR_TABLE_SGI
	, gl_TEXTURE_COLOR_TABLE_SGI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGI_texture_color_table :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGI_texture_color_table = extGL 668

gl_PROXY_TEXTURE_COLOR_TABLE_SGI :: GLenum
gl_PROXY_TEXTURE_COLOR_TABLE_SGI = 0x80BD

gl_TEXTURE_COLOR_TABLE_SGI :: GLenum
gl_TEXTURE_COLOR_TABLE_SGI = 0x80BC