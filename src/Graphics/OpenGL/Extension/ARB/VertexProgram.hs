-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.VertexProgram (
	-- * Extension Support
	  gl_ARB_vertex_program

	-- * GL_ARB_vertex_program
	, glBindProgramARB
	, glDeleteProgramsARB
	, glDisableVertexAttribArrayARB
	, glEnableVertexAttribArrayARB
	, glGenProgramsARB
	, glGetProgramEnvParameterdvARB
	, glGetProgramEnvParameterfvARB
	, glGetProgramLocalParameterdvARB
	, glGetProgramLocalParameterfvARB
	, glGetProgramStringARB
	, glGetProgramivARB
	, glGetVertexAttribPointervARB
	, glGetVertexAttribdvARB
	, glGetVertexAttribfvARB
	, glGetVertexAttribivARB
	, glIsProgramARB
	, glProgramEnvParameter4dARB
	, glProgramEnvParameter4dvARB
	, glProgramEnvParameter4fARB
	, glProgramEnvParameter4fvARB
	, glProgramLocalParameter4dARB
	, glProgramLocalParameter4dvARB
	, glProgramLocalParameter4fARB
	, glProgramLocalParameter4fvARB
	, glProgramStringARB
	, glVertexAttrib1dARB
	, glVertexAttrib1dvARB
	, glVertexAttrib1fARB
	, glVertexAttrib1fvARB
	, glVertexAttrib1sARB
	, glVertexAttrib1svARB
	, glVertexAttrib2dARB
	, glVertexAttrib2dvARB
	, glVertexAttrib2fARB
	, glVertexAttrib2fvARB
	, glVertexAttrib2sARB
	, glVertexAttrib2svARB
	, glVertexAttrib3dARB
	, glVertexAttrib3dvARB
	, glVertexAttrib3fARB
	, glVertexAttrib3fvARB
	, glVertexAttrib3sARB
	, glVertexAttrib3svARB
	, glVertexAttrib4NbvARB
	, glVertexAttrib4NivARB
	, glVertexAttrib4NsvARB
	, glVertexAttrib4NubARB
	, glVertexAttrib4NubvARB
	, glVertexAttrib4NuivARB
	, glVertexAttrib4NusvARB
	, glVertexAttrib4bvARB
	, glVertexAttrib4dARB
	, glVertexAttrib4dvARB
	, glVertexAttrib4fARB
	, glVertexAttrib4fvARB
	, glVertexAttrib4ivARB
	, glVertexAttrib4sARB
	, glVertexAttrib4svARB
	, glVertexAttrib4ubvARB
	, glVertexAttrib4uivARB
	, glVertexAttrib4usvARB
	, glVertexAttribPointerARB
	, gl_COLOR_SUM_ARB
	, gl_CURRENT_MATRIX_ARB
	, gl_CURRENT_MATRIX_STACK_DEPTH_ARB
	, gl_CURRENT_VERTEX_ATTRIB_ARB
	, gl_MATRIX0_ARB
	, gl_MATRIX10_ARB
	, gl_MATRIX11_ARB
	, gl_MATRIX12_ARB
	, gl_MATRIX13_ARB
	, gl_MATRIX14_ARB
	, gl_MATRIX15_ARB
	, gl_MATRIX16_ARB
	, gl_MATRIX17_ARB
	, gl_MATRIX18_ARB
	, gl_MATRIX19_ARB
	, gl_MATRIX1_ARB
	, gl_MATRIX20_ARB
	, gl_MATRIX21_ARB
	, gl_MATRIX22_ARB
	, gl_MATRIX23_ARB
	, gl_MATRIX24_ARB
	, gl_MATRIX25_ARB
	, gl_MATRIX26_ARB
	, gl_MATRIX27_ARB
	, gl_MATRIX28_ARB
	, gl_MATRIX29_ARB
	, gl_MATRIX2_ARB
	, gl_MATRIX30_ARB
	, gl_MATRIX31_ARB
	, gl_MATRIX3_ARB
	, gl_MATRIX4_ARB
	, gl_MATRIX5_ARB
	, gl_MATRIX6_ARB
	, gl_MATRIX7_ARB
	, gl_MATRIX8_ARB
	, gl_MATRIX9_ARB
	, gl_MAX_PROGRAM_ADDRESS_REGISTERS_ARB
	, gl_MAX_PROGRAM_ATTRIBS_ARB
	, gl_MAX_PROGRAM_ENV_PARAMETERS_ARB
	, gl_MAX_PROGRAM_INSTRUCTIONS_ARB
	, gl_MAX_PROGRAM_LOCAL_PARAMETERS_ARB
	, gl_MAX_PROGRAM_MATRICES_ARB
	, gl_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB
	, gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
	, gl_MAX_PROGRAM_NATIVE_ATTRIBS_ARB
	, gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB
	, gl_MAX_PROGRAM_NATIVE_PARAMETERS_ARB
	, gl_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB
	, gl_MAX_PROGRAM_PARAMETERS_ARB
	, gl_MAX_PROGRAM_TEMPORARIES_ARB
	, gl_MAX_VERTEX_ATTRIBS_ARB
	, gl_PROGRAM_ADDRESS_REGISTERS_ARB
	, gl_PROGRAM_ATTRIBS_ARB
	, gl_PROGRAM_BINDING_ARB
	, gl_PROGRAM_ERROR_POSITION_ARB
	, gl_PROGRAM_ERROR_STRING_ARB
	, gl_PROGRAM_FORMAT_ARB
	, gl_PROGRAM_FORMAT_ASCII_ARB
	, gl_PROGRAM_INSTRUCTIONS_ARB
	, gl_PROGRAM_LENGTH_ARB
	, gl_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
	, gl_PROGRAM_NATIVE_ATTRIBS_ARB
	, gl_PROGRAM_NATIVE_INSTRUCTIONS_ARB
	, gl_PROGRAM_NATIVE_PARAMETERS_ARB
	, gl_PROGRAM_NATIVE_TEMPORARIES_ARB
	, gl_PROGRAM_PARAMETERS_ARB
	, gl_PROGRAM_STRING_ARB
	, gl_PROGRAM_TEMPORARIES_ARB
	, gl_PROGRAM_UNDER_NATIVE_LIMITS_ARB
	, gl_TRANSPOSE_CURRENT_MATRIX_ARB
	, gl_VERTEX_ATTRIB_ARRAY_ENABLED_ARB
	, gl_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB
	, gl_VERTEX_ATTRIB_ARRAY_POINTER_ARB
	, gl_VERTEX_ATTRIB_ARRAY_SIZE_ARB
	, gl_VERTEX_ATTRIB_ARRAY_STRIDE_ARB
	, gl_VERTEX_ATTRIB_ARRAY_TYPE_ARB
	, gl_VERTEX_PROGRAM_ARB
	, gl_VERTEX_PROGRAM_POINT_SIZE_ARB
	, gl_VERTEX_PROGRAM_TWO_SIDE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_vertex_program :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_vertex_program = extGL 217

gl_COLOR_SUM_ARB :: GLenum
gl_COLOR_SUM_ARB = 0x8458

gl_MAX_PROGRAM_ADDRESS_REGISTERS_ARB :: GLenum
gl_MAX_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88B1

gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B3

gl_PROGRAM_ADDRESS_REGISTERS_ARB :: GLenum
gl_PROGRAM_ADDRESS_REGISTERS_ARB = 0x88B0

gl_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB :: GLenum
gl_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB = 0x88B2

gl_VERTEX_PROGRAM_ARB :: GLenum
gl_VERTEX_PROGRAM_ARB = 0x8620