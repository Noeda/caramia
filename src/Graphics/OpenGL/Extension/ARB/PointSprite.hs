-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.PointSprite (
	-- * Extension Support
	  gl_ARB_point_sprite

	-- * GL_ARB_point_sprite
	, gl_COORD_REPLACE_ARB
	, gl_POINT_SPRITE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_point_sprite :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_point_sprite = extGL 138

gl_COORD_REPLACE_ARB :: GLenum
gl_COORD_REPLACE_ARB = 0x8862

gl_POINT_SPRITE_ARB :: GLenum
gl_POINT_SPRITE_ARB = 0x8861