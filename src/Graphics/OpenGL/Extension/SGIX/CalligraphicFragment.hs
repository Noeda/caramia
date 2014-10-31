-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.CalligraphicFragment (
	-- * Extension Support
	  gl_SGIX_calligraphic_fragment

	-- * GL_SGIX_calligraphic_fragment
	, gl_CALLIGRAPHIC_FRAGMENT_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_calligraphic_fragment :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_calligraphic_fragment = extGL 632

gl_CALLIGRAPHIC_FRAGMENT_SGIX :: GLenum
gl_CALLIGRAPHIC_FRAGMENT_SGIX = 0x8183