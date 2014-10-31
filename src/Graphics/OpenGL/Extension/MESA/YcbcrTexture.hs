-- This file was automatically generated.
module Graphics.OpenGL.Extension.MESA.YcbcrTexture (
	-- * Extension Support
	  gl_MESA_ycbcr_texture

	-- * GL_MESA_ycbcr_texture
	, gl_UNSIGNED_SHORT_8_8_MESA
	, gl_UNSIGNED_SHORT_8_8_REV_MESA
	, gl_YCBCR_MESA
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_MESA_ycbcr_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_MESA_ycbcr_texture = extGL 425

gl_UNSIGNED_SHORT_8_8_MESA :: GLenum
gl_UNSIGNED_SHORT_8_8_MESA = 0x85BA

gl_UNSIGNED_SHORT_8_8_REV_MESA :: GLenum
gl_UNSIGNED_SHORT_8_8_REV_MESA = 0x85BB

gl_YCBCR_MESA :: GLenum
gl_YCBCR_MESA = 0x8757