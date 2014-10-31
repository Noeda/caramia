-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FragmentProgram2 (
	-- * Extension Support
	  gl_NV_fragment_program2

	-- * GL_NV_fragment_program2
	, gl_MAX_PROGRAM_CALL_DEPTH_NV
	, gl_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
	, gl_MAX_PROGRAM_IF_DEPTH_NV
	, gl_MAX_PROGRAM_LOOP_COUNT_NV
	, gl_MAX_PROGRAM_LOOP_DEPTH_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_fragment_program2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_fragment_program2 = extGL 458

gl_MAX_PROGRAM_IF_DEPTH_NV :: GLenum
gl_MAX_PROGRAM_IF_DEPTH_NV = 0x88F6

gl_MAX_PROGRAM_LOOP_COUNT_NV :: GLenum
gl_MAX_PROGRAM_LOOP_COUNT_NV = 0x88F8

gl_MAX_PROGRAM_LOOP_DEPTH_NV :: GLenum
gl_MAX_PROGRAM_LOOP_DEPTH_NV = 0x88F7