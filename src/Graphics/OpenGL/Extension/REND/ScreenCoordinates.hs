-- This file was automatically generated.
module Graphics.OpenGL.Extension.REND.ScreenCoordinates (
	-- * Extension Support
	  gl_REND_screen_coordinates

	-- * GL_REND_screen_coordinates
	, gl_INVERTED_SCREEN_W_REND
	, gl_SCREEN_COORDINATES_REND
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_REND_screen_coordinates :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_REND_screen_coordinates = extGL 611

gl_INVERTED_SCREEN_W_REND :: GLenum
gl_INVERTED_SCREEN_W_REND = 0x8491

gl_SCREEN_COORDINATES_REND :: GLenum
gl_SCREEN_COORDINATES_REND = 0x8490