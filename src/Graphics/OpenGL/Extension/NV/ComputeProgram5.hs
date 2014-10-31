-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ComputeProgram5 (
	-- * Extension Support
	  gl_NV_compute_program5

	-- * GL_NV_compute_program5
	, gl_COMPUTE_PROGRAM_NV
	, gl_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_compute_program5 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_compute_program5 = extGL 434

gl_COMPUTE_PROGRAM_NV :: GLenum
gl_COMPUTE_PROGRAM_NV = 0x90FB

gl_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV = 0x90FC