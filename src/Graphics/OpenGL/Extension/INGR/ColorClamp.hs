-- This file was automatically generated.
module Graphics.OpenGL.Extension.INGR.ColorClamp (
	-- * Extension Support
	  gl_INGR_color_clamp

	-- * GL_INGR_color_clamp
	, gl_ALPHA_MAX_CLAMP_INGR
	, gl_ALPHA_MIN_CLAMP_INGR
	, gl_BLUE_MAX_CLAMP_INGR
	, gl_BLUE_MIN_CLAMP_INGR
	, gl_GREEN_MAX_CLAMP_INGR
	, gl_GREEN_MIN_CLAMP_INGR
	, gl_RED_MAX_CLAMP_INGR
	, gl_RED_MIN_CLAMP_INGR
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_INGR_color_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_INGR_color_clamp = extGL 407

gl_ALPHA_MAX_CLAMP_INGR :: GLenum
gl_ALPHA_MAX_CLAMP_INGR = 0x8567

gl_ALPHA_MIN_CLAMP_INGR :: GLenum
gl_ALPHA_MIN_CLAMP_INGR = 0x8563

gl_BLUE_MAX_CLAMP_INGR :: GLenum
gl_BLUE_MAX_CLAMP_INGR = 0x8566

gl_BLUE_MIN_CLAMP_INGR :: GLenum
gl_BLUE_MIN_CLAMP_INGR = 0x8562

gl_GREEN_MAX_CLAMP_INGR :: GLenum
gl_GREEN_MAX_CLAMP_INGR = 0x8565

gl_GREEN_MIN_CLAMP_INGR :: GLenum
gl_GREEN_MIN_CLAMP_INGR = 0x8561

gl_RED_MAX_CLAMP_INGR :: GLenum
gl_RED_MAX_CLAMP_INGR = 0x8564

gl_RED_MIN_CLAMP_INGR :: GLenum
gl_RED_MIN_CLAMP_INGR = 0x8560