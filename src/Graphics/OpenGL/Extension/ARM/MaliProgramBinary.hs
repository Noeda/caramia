-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARM.MaliProgramBinary (
	-- * Extension Support
	  gl_ARM_mali_program_binary

	-- * GL_ARM_mali_program_binary
	, gl_MALI_PROGRAM_BINARY_ARM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARM_mali_program_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARM_mali_program_binary = extGL 223

gl_MALI_PROGRAM_BINARY_ARM :: GLenum
gl_MALI_PROGRAM_BINARY_ARM = 0x8F61