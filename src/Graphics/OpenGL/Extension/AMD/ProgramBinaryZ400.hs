-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.ProgramBinaryZ400 (
	-- * Extension Support
	  gl_AMD_program_binary_Z400

	-- * GL_AMD_program_binary_Z400
	, gl_Z400_BINARY_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_program_binary_Z400 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_program_binary_Z400 = extGL 18

gl_Z400_BINARY_AMD :: GLenum
gl_Z400_BINARY_AMD = 0x8740