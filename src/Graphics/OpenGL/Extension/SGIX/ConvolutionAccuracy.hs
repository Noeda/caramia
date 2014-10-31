-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.ConvolutionAccuracy (
	-- * Extension Support
	  gl_SGIX_convolution_accuracy

	-- * GL_SGIX_convolution_accuracy
	, gl_CONVOLUTION_HINT_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_convolution_accuracy :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_convolution_accuracy = extGL 634

gl_CONVOLUTION_HINT_SGIX :: GLenum
gl_CONVOLUTION_HINT_SGIX = 0x8316