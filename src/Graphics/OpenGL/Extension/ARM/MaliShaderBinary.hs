-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARM.MaliShaderBinary (
	-- * Extension Support
	  gl_ARM_mali_shader_binary

	-- * GL_ARM_mali_shader_binary
	, gl_MALI_SHADER_BINARY_ARM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARM_mali_shader_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARM_mali_shader_binary = extGL 224

gl_MALI_SHADER_BINARY_ARM :: GLenum
gl_MALI_SHADER_BINARY_ARM = 0x8F60