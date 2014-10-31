-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.GetProgramBinary (
	-- * Extension Support
	  gl_ARB_get_program_binary

	-- * GL_ARB_get_program_binary
	, glGetProgramBinary
	, glProgramBinary
	, glProgramParameteri
	, gl_NUM_PROGRAM_BINARY_FORMATS
	, gl_PROGRAM_BINARY_FORMATS
	, gl_PROGRAM_BINARY_LENGTH
	, gl_PROGRAM_BINARY_RETRIEVABLE_HINT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_get_program_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_get_program_binary = extGL 114