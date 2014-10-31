-- This file was automatically generated.
module Graphics.OpenGL.Extension.SUN.ConvolutionBorderModes (
	-- * Extension Support
	  gl_SUN_convolution_border_modes

	-- * GL_SUN_convolution_border_modes
	, gl_WRAP_BORDER_SUN
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SUN_convolution_border_modes :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SUN_convolution_border_modes = extGL 670

gl_WRAP_BORDER_SUN :: GLenum
gl_WRAP_BORDER_SUN = 0x81D4