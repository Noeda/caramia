-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.BlendAlphaMinmax (
	-- * Extension Support
	  gl_SGIX_blend_alpha_minmax

	-- * GL_SGIX_blend_alpha_minmax
	, gl_ALPHA_MAX_SGIX
	, gl_ALPHA_MIN_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_blend_alpha_minmax :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_blend_alpha_minmax = extGL 631

gl_ALPHA_MAX_SGIX :: GLenum
gl_ALPHA_MAX_SGIX = 0x8321

gl_ALPHA_MIN_SGIX :: GLenum
gl_ALPHA_MIN_SGIX = 0x8320