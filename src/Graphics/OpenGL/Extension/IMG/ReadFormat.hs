-- This file was automatically generated.
module Graphics.OpenGL.Extension.IMG.ReadFormat (
	-- * Extension Support
	  gl_IMG_read_format

	-- * GL_IMG_read_format
	, gl_BGRA_IMG
	, gl_UNSIGNED_SHORT_4_4_4_4_REV_IMG
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IMG_read_format :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IMG_read_format = extGL 400

gl_BGRA_IMG :: GLenum
gl_BGRA_IMG = 0x80E1

gl_UNSIGNED_SHORT_4_4_4_4_REV_IMG :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4_REV_IMG = 0x8365