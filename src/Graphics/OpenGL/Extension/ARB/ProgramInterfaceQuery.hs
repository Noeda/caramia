-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ProgramInterfaceQuery (
	-- * Extension Support
	  gl_ARB_program_interface_query

	-- * GL_ARB_program_interface_query
	, glGetProgramInterfaceiv
	, glGetProgramResourceIndex
	, glGetProgramResourceLocation
	, glGetProgramResourceLocationIndex
	, glGetProgramResourceName
	, glGetProgramResourceiv
	, gl_ACTIVE_RESOURCES
	, gl_ACTIVE_VARIABLES
	, gl_ARRAY_SIZE
	, gl_ARRAY_STRIDE
	, gl_ATOMIC_COUNTER_BUFFER
	, gl_ATOMIC_COUNTER_BUFFER_INDEX
	, gl_BLOCK_INDEX
	, gl_BUFFER_BINDING
	, gl_BUFFER_DATA_SIZE
	, gl_BUFFER_VARIABLE
	, gl_COMPATIBLE_SUBROUTINES
	, gl_COMPUTE_SUBROUTINE
	, gl_COMPUTE_SUBROUTINE_UNIFORM
	, gl_FRAGMENT_SUBROUTINE
	, gl_FRAGMENT_SUBROUTINE_UNIFORM
	, gl_GEOMETRY_SUBROUTINE
	, gl_GEOMETRY_SUBROUTINE_UNIFORM
	, gl_IS_PER_PATCH
	, gl_IS_ROW_MAJOR
	, gl_LOCATION
	, gl_LOCATION_INDEX
	, gl_MATRIX_STRIDE
	, gl_MAX_NAME_LENGTH
	, gl_MAX_NUM_ACTIVE_VARIABLES
	, gl_MAX_NUM_COMPATIBLE_SUBROUTINES
	, gl_NAME_LENGTH
	, gl_NUM_ACTIVE_VARIABLES
	, gl_NUM_COMPATIBLE_SUBROUTINES
	, gl_OFFSET
	, gl_PROGRAM_INPUT
	, gl_PROGRAM_OUTPUT
	, gl_REFERENCED_BY_COMPUTE_SHADER
	, gl_REFERENCED_BY_FRAGMENT_SHADER
	, gl_REFERENCED_BY_GEOMETRY_SHADER
	, gl_REFERENCED_BY_TESS_CONTROL_SHADER
	, gl_REFERENCED_BY_TESS_EVALUATION_SHADER
	, gl_REFERENCED_BY_VERTEX_SHADER
	, gl_SHADER_STORAGE_BLOCK
	, gl_TESS_CONTROL_SUBROUTINE
	, gl_TESS_CONTROL_SUBROUTINE_UNIFORM
	, gl_TESS_EVALUATION_SUBROUTINE
	, gl_TESS_EVALUATION_SUBROUTINE_UNIFORM
	, gl_TOP_LEVEL_ARRAY_SIZE
	, gl_TOP_LEVEL_ARRAY_STRIDE
	, gl_TRANSFORM_FEEDBACK_VARYING
	, gl_TYPE
	, gl_UNIFORM
	, gl_UNIFORM_BLOCK
	, gl_VERTEX_SUBROUTINE
	, gl_VERTEX_SUBROUTINE_UNIFORM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_program_interface_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_program_interface_query = extGL 139