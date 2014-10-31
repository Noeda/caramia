-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TessellationProgram5 (
	-- * Extension Support
	  gl_NV_tessellation_program5

	-- * GL_NV_tessellation_program5
	, gl_MAX_PROGRAM_PATCH_ATTRIBS_NV
	, gl_TESS_CONTROL_PROGRAM_NV
	, gl_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV
	, gl_TESS_EVALUATION_PROGRAM_NV
	, gl_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_tessellation_program5 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_tessellation_program5 = extGL 512

gl_MAX_PROGRAM_PATCH_ATTRIBS_NV :: GLenum
gl_MAX_PROGRAM_PATCH_ATTRIBS_NV = 0x86D8

gl_TESS_CONTROL_PROGRAM_NV :: GLenum
gl_TESS_CONTROL_PROGRAM_NV = 0x891E

gl_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV = 0x8C74

gl_TESS_EVALUATION_PROGRAM_NV :: GLenum
gl_TESS_EVALUATION_PROGRAM_NV = 0x891F

gl_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV :: GLenum
gl_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV = 0x8C75