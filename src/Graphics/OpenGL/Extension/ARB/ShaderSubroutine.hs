-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ShaderSubroutine (
	-- * Extension Support
	  gl_ARB_shader_subroutine

	-- * GL_ARB_shader_subroutine
	, glGetActiveSubroutineName
	, glGetActiveSubroutineUniformName
	, glGetActiveSubroutineUniformiv
	, glGetProgramStageiv
	, glGetSubroutineIndex
	, glGetSubroutineUniformLocation
	, glGetUniformSubroutineuiv
	, glUniformSubroutinesuiv
	, gl_ACTIVE_SUBROUTINES
	, gl_ACTIVE_SUBROUTINE_MAX_LENGTH
	, gl_ACTIVE_SUBROUTINE_UNIFORMS
	, gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
	, gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
	, gl_COMPATIBLE_SUBROUTINES
	, gl_MAX_SUBROUTINES
	, gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS
	, gl_NUM_COMPATIBLE_SUBROUTINES
	, gl_UNIFORM_NAME_LENGTH
	, gl_UNIFORM_SIZE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_shader_subroutine :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_shader_subroutine = extGL 160