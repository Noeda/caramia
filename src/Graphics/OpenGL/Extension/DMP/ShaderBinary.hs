-- This file was automatically generated.
module Graphics.OpenGL.Extension.DMP.ShaderBinary (
	-- * Extension Support
	  gl_DMP_shader_binary

	-- * GL_DMP_shader_binary
	, gl_SHADER_BINARY_DMP
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_DMP_shader_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_DMP_shader_binary = extGL 245

gl_SHADER_BINARY_DMP :: GLenum
gl_SHADER_BINARY_DMP = 0x9250