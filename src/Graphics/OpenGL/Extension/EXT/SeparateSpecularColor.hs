-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.SeparateSpecularColor (
	-- * Extension Support
	  gl_EXT_separate_specular_color

	-- * GL_EXT_separate_specular_color
	, gl_LIGHT_MODEL_COLOR_CONTROL_EXT
	, gl_SEPARATE_SPECULAR_COLOR_EXT
	, gl_SINGLE_COLOR_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_separate_specular_color :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_separate_specular_color = extGL 325

gl_LIGHT_MODEL_COLOR_CONTROL_EXT :: GLenum
gl_LIGHT_MODEL_COLOR_CONTROL_EXT = 0x81F8

gl_SEPARATE_SPECULAR_COLOR_EXT :: GLenum
gl_SEPARATE_SPECULAR_COLOR_EXT = 0x81FA

gl_SINGLE_COLOR_EXT :: GLenum
gl_SINGLE_COLOR_EXT = 0x81F9