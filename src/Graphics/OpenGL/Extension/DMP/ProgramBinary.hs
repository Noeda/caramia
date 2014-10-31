-- This file was automatically generated.
module Graphics.OpenGL.Extension.DMP.ProgramBinary (
	-- * Extension Support
	  gl_DMP_program_binary

	-- * GL_DMP_program_binary
	, gl_DMP_PROGRAM_BINARY_DMP
	, gl_SMAPHS30_PROGRAM_BINARY_DMP
	, gl_SMAPHS_PROGRAM_BINARY_DMP
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_DMP_program_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_DMP_program_binary = extGL 244

gl_DMP_PROGRAM_BINARY_DMP :: GLenum
gl_DMP_PROGRAM_BINARY_DMP = 0x9253

gl_SMAPHS30_PROGRAM_BINARY_DMP :: GLenum
gl_SMAPHS30_PROGRAM_BINARY_DMP = 0x9251

gl_SMAPHS_PROGRAM_BINARY_DMP :: GLenum
gl_SMAPHS_PROGRAM_BINARY_DMP = 0x9252