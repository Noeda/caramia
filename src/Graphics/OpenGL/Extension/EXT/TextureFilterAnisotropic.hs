-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureFilterAnisotropic (
	-- * Extension Support
	  gl_EXT_texture_filter_anisotropic

	-- * GL_EXT_texture_filter_anisotropic
	, gl_MAX_TEXTURE_MAX_ANISOTROPY_EXT
	, gl_TEXTURE_MAX_ANISOTROPY_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_filter_anisotropic :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_filter_anisotropic = extGL 359

gl_MAX_TEXTURE_MAX_ANISOTROPY_EXT :: GLenum
gl_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF

gl_TEXTURE_MAX_ANISOTROPY_EXT :: GLenum
gl_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE