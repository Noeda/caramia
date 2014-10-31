-- This file was automatically generated.
module Graphics.OpenGL.Extension.HP.TextureLighting (
	-- * Extension Support
	  gl_HP_texture_lighting

	-- * GL_HP_texture_lighting
	, gl_TEXTURE_LIGHTING_MODE_HP
	, gl_TEXTURE_POST_SPECULAR_HP
	, gl_TEXTURE_PRE_SPECULAR_HP
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_HP_texture_lighting :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_HP_texture_lighting = extGL 391

gl_TEXTURE_LIGHTING_MODE_HP :: GLenum
gl_TEXTURE_LIGHTING_MODE_HP = 0x8167

gl_TEXTURE_POST_SPECULAR_HP :: GLenum
gl_TEXTURE_POST_SPECULAR_HP = 0x8168

gl_TEXTURE_PRE_SPECULAR_HP :: GLenum
gl_TEXTURE_PRE_SPECULAR_HP = 0x8169