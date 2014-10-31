-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.FragmentShader (
	-- * Extension Support
	  gl_ARB_fragment_shader

	-- * GL_ARB_fragment_shader
	, gl_FRAGMENT_SHADER_ARB
	, gl_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB
	, gl_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_fragment_shader :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_fragment_shader = extGL 109

gl_FRAGMENT_SHADER_ARB :: GLenum
gl_FRAGMENT_SHADER_ARB = 0x8B30

gl_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB :: GLenum
gl_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB = 0x8B8B

gl_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB :: GLenum
gl_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB = 0x8B49