-- This file was automatically generated.
module Graphics.OpenGL.Extension.IMG.ShaderBinary (
	-- * Extension Support
	  gl_IMG_shader_binary

	-- * GL_IMG_shader_binary
	, gl_SGX_BINARY_IMG
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IMG_shader_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IMG_shader_binary = extGL 401

gl_SGX_BINARY_IMG :: GLenum
gl_SGX_BINARY_IMG = 0x8C0A