-- This file was automatically generated.
module Graphics.OpenGL.Extension.HP.ConvolutionBorderModes (
	-- * Extension Support
	  gl_HP_convolution_border_modes

	-- * GL_HP_convolution_border_modes
	, gl_CONSTANT_BORDER_HP
	, gl_CONVOLUTION_BORDER_COLOR_HP
	, gl_IGNORE_BORDER_HP
	, gl_REPLICATE_BORDER_HP
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_HP_convolution_border_modes :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_HP_convolution_border_modes = extGL 388

gl_CONSTANT_BORDER_HP :: GLenum
gl_CONSTANT_BORDER_HP = 0x8151

gl_CONVOLUTION_BORDER_COLOR_HP :: GLenum
gl_CONVOLUTION_BORDER_COLOR_HP = 0x8154

gl_IGNORE_BORDER_HP :: GLenum
gl_IGNORE_BORDER_HP = 0x8150

gl_REPLICATE_BORDER_HP :: GLenum
gl_REPLICATE_BORDER_HP = 0x8153