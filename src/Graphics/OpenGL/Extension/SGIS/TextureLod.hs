-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.TextureLod (
	-- * Extension Support
	  gl_SGIS_texture_lod

	-- * GL_SGIS_texture_lod
	, gl_TEXTURE_BASE_LEVEL_SGIS
	, gl_TEXTURE_MAX_LEVEL_SGIS
	, gl_TEXTURE_MAX_LOD_SGIS
	, gl_TEXTURE_MIN_LOD_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_texture_lod :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_texture_lod = extGL 626

gl_TEXTURE_BASE_LEVEL_SGIS :: GLenum
gl_TEXTURE_BASE_LEVEL_SGIS = 0x813C

gl_TEXTURE_MAX_LEVEL_SGIS :: GLenum
gl_TEXTURE_MAX_LEVEL_SGIS = 0x813D

gl_TEXTURE_MAX_LOD_SGIS :: GLenum
gl_TEXTURE_MAX_LOD_SGIS = 0x813B

gl_TEXTURE_MIN_LOD_SGIS :: GLenum
gl_TEXTURE_MIN_LOD_SGIS = 0x813A