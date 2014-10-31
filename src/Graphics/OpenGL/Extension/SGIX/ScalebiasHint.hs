-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.ScalebiasHint (
	-- * Extension Support
	  gl_SGIX_scalebias_hint

	-- * GL_SGIX_scalebias_hint
	, gl_SCALEBIAS_HINT_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_scalebias_hint :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_scalebias_hint = extGL 651

gl_SCALEBIAS_HINT_SGIX :: GLenum
gl_SCALEBIAS_HINT_SGIX = 0x8322