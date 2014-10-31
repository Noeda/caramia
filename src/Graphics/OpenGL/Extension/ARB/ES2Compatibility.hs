-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ES2Compatibility (
	-- * Extension Support
	  gl_ARB_ES2_compatibility

	-- * GL_ARB_ES2_compatibility
	, glClearDepthf
	, glDepthRangef
	, glGetShaderPrecisionFormat
	, glReleaseShaderCompiler
	, glShaderBinary
	, gl_FIXED
	, gl_HIGH_FLOAT
	, gl_HIGH_INT
	, gl_IMPLEMENTATION_COLOR_READ_FORMAT
	, gl_IMPLEMENTATION_COLOR_READ_TYPE
	, gl_LOW_FLOAT
	, gl_LOW_INT
	, gl_MAX_FRAGMENT_UNIFORM_VECTORS
	, gl_MAX_VARYING_VECTORS
	, gl_MAX_VERTEX_UNIFORM_VECTORS
	, gl_MEDIUM_FLOAT
	, gl_MEDIUM_INT
	, gl_NUM_SHADER_BINARY_FORMATS
	, gl_RGB565
	, gl_SHADER_BINARY_FORMATS
	, gl_SHADER_COMPILER
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_ES2_compatibility :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_ES2_compatibility = extGL 69