-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.ProgramBinary (
	-- * Extension Support
	  gl_ANGLE_program_binary

	-- * GL_ANGLE_program_binary
	, gl_PROGRAM_BINARY_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_program_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_program_binary = extGL 39

gl_PROGRAM_BINARY_ANGLE :: GLenum
gl_PROGRAM_BINARY_ANGLE = 0x93A6