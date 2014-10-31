-- This file was automatically generated.
module Graphics.OpenGL.Extension.FJ.ShaderBinaryGCCSO (
	-- * Extension Support
	  gl_FJ_shader_binary_GCCSO

	-- * GL_FJ_shader_binary_GCCSO
	, gl_GCCSO_SHADER_BINARY_FJ
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_FJ_shader_binary_GCCSO :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_FJ_shader_binary_GCCSO = extGL 385

gl_GCCSO_SHADER_BINARY_FJ :: GLenum
gl_GCCSO_SHADER_BINARY_FJ = 0x9260