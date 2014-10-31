-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.StandardDerivatives (
	-- * Extension Support
	  gl_OES_standard_derivatives

	-- * GL_OES_standard_derivatives
	, gl_FRAGMENT_SHADER_DERIVATIVE_HINT_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_standard_derivatives :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_standard_derivatives = extGL 577

gl_FRAGMENT_SHADER_DERIVATIVE_HINT_OES :: GLenum
gl_FRAGMENT_SHADER_DERIVATIVE_HINT_OES = 0x8B8B