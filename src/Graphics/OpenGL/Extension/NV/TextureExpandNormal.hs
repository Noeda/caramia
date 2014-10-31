-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TextureExpandNormal (
	-- * Extension Support
	  gl_NV_texture_expand_normal

	-- * GL_NV_texture_expand_normal
	, gl_TEXTURE_UNSIGNED_REMAP_MODE_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texture_expand_normal :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texture_expand_normal = extGL 520

gl_TEXTURE_UNSIGNED_REMAP_MODE_NV :: GLenum
gl_TEXTURE_UNSIGNED_REMAP_MODE_NV = 0x888F