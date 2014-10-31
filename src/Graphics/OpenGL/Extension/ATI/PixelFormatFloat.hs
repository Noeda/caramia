-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.PixelFormatFloat (
	-- * Extension Support
	  gl_ATI_pixel_format_float

	-- * GL_ATI_pixel_format_float
	, gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI
	, gl_RGBA_FLOAT_MODE_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_pixel_format_float :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_pixel_format_float = extGL 234

gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI :: GLenum
gl_COLOR_CLEAR_UNCLAMPED_VALUE_ATI = 0x8835

gl_RGBA_FLOAT_MODE_ATI :: GLenum
gl_RGBA_FLOAT_MODE_ATI = 0x8820