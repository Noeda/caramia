-- This file was automatically generated.
module Graphics.OpenGL.Extension.IMG.ProgramBinary (
	-- * Extension Support
	  gl_IMG_program_binary

	-- * GL_IMG_program_binary
	, gl_SGX_PROGRAM_BINARY_IMG
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IMG_program_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IMG_program_binary = extGL 399

gl_SGX_PROGRAM_BINARY_IMG :: GLenum
gl_SGX_PROGRAM_BINARY_IMG = 0x9130