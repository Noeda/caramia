-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.HalfFloatPixel (
	-- * Extension Support
	  gl_ARB_half_float_pixel

	-- * GL_ARB_half_float_pixel
	, gl_HALF_FLOAT_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_half_float_pixel :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_half_float_pixel = extGL 118

gl_HALF_FLOAT_ARB :: GLenum
gl_HALF_FLOAT_ARB = 0x140B