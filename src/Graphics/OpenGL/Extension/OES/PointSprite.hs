-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.PointSprite (
	-- * Extension Support
	  gl_OES_point_sprite

	-- * GL_OES_point_sprite
	, gl_COORD_REPLACE_OES
	, gl_POINT_SPRITE_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_point_sprite :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_point_sprite = extGL 567

gl_COORD_REPLACE_OES :: GLenum
gl_COORD_REPLACE_OES = 0x8862

gl_POINT_SPRITE_OES :: GLenum
gl_POINT_SPRITE_OES = 0x8861