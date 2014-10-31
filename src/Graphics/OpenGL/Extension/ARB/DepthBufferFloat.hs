-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.DepthBufferFloat (
	-- * Extension Support
	  gl_ARB_depth_buffer_float

	-- * GL_ARB_depth_buffer_float
	, gl_DEPTH32F_STENCIL8
	, gl_DEPTH_COMPONENT32F
	, gl_FLOAT_32_UNSIGNED_INT_24_8_REV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_depth_buffer_float :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_depth_buffer_float = extGL 92