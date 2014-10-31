-- This file was automatically generated.
module Graphics.OpenGL.Extension.IMG.TextureEnvEnhancedFixedFunction (
	-- * Extension Support
	  gl_IMG_texture_env_enhanced_fixed_function

	-- * GL_IMG_texture_env_enhanced_fixed_function
	, gl_ADD_BLEND_IMG
	, gl_DOT3_RGBA_IMG
	, gl_FACTOR_ALPHA_MODULATE_IMG
	, gl_FRAGMENT_ALPHA_MODULATE_IMG
	, gl_MODULATE_COLOR_IMG
	, gl_RECIP_ADD_SIGNED_ALPHA_IMG
	, gl_TEXTURE_ALPHA_MODULATE_IMG
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IMG_texture_env_enhanced_fixed_function :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IMG_texture_env_enhanced_fixed_function = extGL 404

gl_ADD_BLEND_IMG :: GLenum
gl_ADD_BLEND_IMG = 0x8C09

gl_DOT3_RGBA_IMG :: GLenum
gl_DOT3_RGBA_IMG = 0x86AF

gl_FACTOR_ALPHA_MODULATE_IMG :: GLenum
gl_FACTOR_ALPHA_MODULATE_IMG = 0x8C07

gl_FRAGMENT_ALPHA_MODULATE_IMG :: GLenum
gl_FRAGMENT_ALPHA_MODULATE_IMG = 0x8C08

gl_MODULATE_COLOR_IMG :: GLenum
gl_MODULATE_COLOR_IMG = 0x8C04

gl_RECIP_ADD_SIGNED_ALPHA_IMG :: GLenum
gl_RECIP_ADD_SIGNED_ALPHA_IMG = 0x8C05

gl_TEXTURE_ALPHA_MODULATE_IMG :: GLenum
gl_TEXTURE_ALPHA_MODULATE_IMG = 0x8C06