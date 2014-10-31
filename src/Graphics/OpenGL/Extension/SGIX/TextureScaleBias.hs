-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.TextureScaleBias (
	-- * Extension Support
	  gl_SGIX_texture_scale_bias

	-- * GL_SGIX_texture_scale_bias
	, gl_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX
	, gl_POST_TEXTURE_FILTER_BIAS_SGIX
	, gl_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX
	, gl_POST_TEXTURE_FILTER_SCALE_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_texture_scale_bias :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_texture_scale_bias = extGL 661

gl_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX :: GLenum
gl_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = 0x817B

gl_POST_TEXTURE_FILTER_BIAS_SGIX :: GLenum
gl_POST_TEXTURE_FILTER_BIAS_SGIX = 0x8179

gl_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX :: GLenum
gl_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = 0x817C

gl_POST_TEXTURE_FILTER_SCALE_SGIX :: GLenum
gl_POST_TEXTURE_FILTER_SCALE_SGIX = 0x817A