-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.ShaderMultisampleInterpolation (
	-- * Extension Support
	  gl_OES_shader_multisample_interpolation

	-- * GL_OES_shader_multisample_interpolation
	, gl_FRAGMENT_INTERPOLATION_OFFSET_BITS_OES
	, gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_OES
	, gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_shader_multisample_interpolation :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_shader_multisample_interpolation = extGL 575

gl_FRAGMENT_INTERPOLATION_OFFSET_BITS_OES :: GLenum
gl_FRAGMENT_INTERPOLATION_OFFSET_BITS_OES = 0x8E5D

gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_OES :: GLenum
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET_OES = 0x8E5C

gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_OES :: GLenum
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET_OES = 0x8E5B