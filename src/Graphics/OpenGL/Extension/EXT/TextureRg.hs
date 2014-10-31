-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureRg (
	-- * Extension Support
	  gl_EXT_texture_rg

	-- * GL_EXT_texture_rg
	, gl_R8_EXT
	, gl_RED_EXT
	, gl_RG8_EXT
	, gl_RG_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_rg :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_rg = extGL 367

gl_RED_EXT :: GLenum
gl_RED_EXT = 0x1903

gl_RG_EXT :: GLenum
gl_RG_EXT = 0x8227