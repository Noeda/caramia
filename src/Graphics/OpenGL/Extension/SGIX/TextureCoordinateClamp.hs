-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.TextureCoordinateClamp (
	-- * Extension Support
	  gl_SGIX_texture_coordinate_clamp

	-- * GL_SGIX_texture_coordinate_clamp
	, gl_TEXTURE_MAX_CLAMP_R_SGIX
	, gl_TEXTURE_MAX_CLAMP_S_SGIX
	, gl_TEXTURE_MAX_CLAMP_T_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_texture_coordinate_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_texture_coordinate_clamp = extGL 658

gl_TEXTURE_MAX_CLAMP_R_SGIX :: GLenum
gl_TEXTURE_MAX_CLAMP_R_SGIX = 0x836B

gl_TEXTURE_MAX_CLAMP_S_SGIX :: GLenum
gl_TEXTURE_MAX_CLAMP_S_SGIX = 0x8369

gl_TEXTURE_MAX_CLAMP_T_SGIX :: GLenum
gl_TEXTURE_MAX_CLAMP_T_SGIX = 0x836A