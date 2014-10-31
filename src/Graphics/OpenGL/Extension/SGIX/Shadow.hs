-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Shadow (
	-- * Extension Support
	  gl_SGIX_shadow

	-- * GL_SGIX_shadow
	, gl_TEXTURE_COMPARE_OPERATOR_SGIX
	, gl_TEXTURE_COMPARE_SGIX
	, gl_TEXTURE_GEQUAL_R_SGIX
	, gl_TEXTURE_LEQUAL_R_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_shadow :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_shadow = extGL 652

gl_TEXTURE_COMPARE_OPERATOR_SGIX :: GLenum
gl_TEXTURE_COMPARE_OPERATOR_SGIX = 0x819B

gl_TEXTURE_COMPARE_SGIX :: GLenum
gl_TEXTURE_COMPARE_SGIX = 0x819A

gl_TEXTURE_GEQUAL_R_SGIX :: GLenum
gl_TEXTURE_GEQUAL_R_SGIX = 0x819D

gl_TEXTURE_LEQUAL_R_SGIX :: GLenum
gl_TEXTURE_LEQUAL_R_SGIX = 0x819C