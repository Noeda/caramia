-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.TextFragmentShader (
	-- * Extension Support
	  gl_ATI_text_fragment_shader

	-- * GL_ATI_text_fragment_shader
	, gl_TEXT_FRAGMENT_SHADER_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_text_fragment_shader :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_text_fragment_shader = extGL 237

gl_TEXT_FRAGMENT_SHADER_ATI :: GLenum
gl_TEXT_FRAGMENT_SHADER_ATI = 0x8200