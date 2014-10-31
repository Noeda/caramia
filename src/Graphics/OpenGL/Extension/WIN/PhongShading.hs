-- This file was automatically generated.
module Graphics.OpenGL.Extension.WIN.PhongShading (
	-- * Extension Support
	  gl_WIN_phong_shading

	-- * GL_WIN_phong_shading
	, gl_PHONG_HINT_WIN
	, gl_PHONG_WIN
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_WIN_phong_shading :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_WIN_phong_shading = extGL 677

gl_PHONG_HINT_WIN :: GLenum
gl_PHONG_HINT_WIN = 0x80EB

gl_PHONG_WIN :: GLenum
gl_PHONG_WIN = 0x80EA