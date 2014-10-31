-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureLodBias (
	-- * Extension Support
	  gl_EXT_texture_lod_bias

	-- * GL_EXT_texture_lod_bias
	, gl_MAX_TEXTURE_LOD_BIAS_EXT
	, gl_TEXTURE_FILTER_CONTROL_EXT
	, gl_TEXTURE_LOD_BIAS_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_lod_bias :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_lod_bias = extGL 363

gl_MAX_TEXTURE_LOD_BIAS_EXT :: GLenum
gl_MAX_TEXTURE_LOD_BIAS_EXT = 0x84FD

gl_TEXTURE_FILTER_CONTROL_EXT :: GLenum
gl_TEXTURE_FILTER_CONTROL_EXT = 0x8500

gl_TEXTURE_LOD_BIAS_EXT :: GLenum
gl_TEXTURE_LOD_BIAS_EXT = 0x8501