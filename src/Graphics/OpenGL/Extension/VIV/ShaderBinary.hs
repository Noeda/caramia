-- This file was automatically generated.
module Graphics.OpenGL.Extension.VIV.ShaderBinary (
	-- * Extension Support
	  gl_VIV_shader_binary

	-- * GL_VIV_shader_binary
	, gl_SHADER_BINARY_VIV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_VIV_shader_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_VIV_shader_binary = extGL 676

gl_SHADER_BINARY_VIV :: GLenum
gl_SHADER_BINARY_VIV = 0x8FC4