-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.TextureLodBias (
	-- * Extension Support
	  gl_SGIX_texture_lod_bias

	-- * GL_SGIX_texture_lod_bias
	, gl_TEXTURE_LOD_BIAS_R_SGIX
	, gl_TEXTURE_LOD_BIAS_S_SGIX
	, gl_TEXTURE_LOD_BIAS_T_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_texture_lod_bias :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_texture_lod_bias = extGL 659

gl_TEXTURE_LOD_BIAS_R_SGIX :: GLenum
gl_TEXTURE_LOD_BIAS_R_SGIX = 0x8190

gl_TEXTURE_LOD_BIAS_S_SGIX :: GLenum
gl_TEXTURE_LOD_BIAS_S_SGIX = 0x818E

gl_TEXTURE_LOD_BIAS_T_SGIX :: GLenum
gl_TEXTURE_LOD_BIAS_T_SGIX = 0x818F