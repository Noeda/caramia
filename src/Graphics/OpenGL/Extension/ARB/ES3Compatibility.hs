-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ES3Compatibility (
	-- * Extension Support
	  gl_ARB_ES3_compatibility

	-- * GL_ARB_ES3_compatibility
	, gl_ANY_SAMPLES_PASSED_CONSERVATIVE
	, gl_COMPRESSED_R11_EAC
	, gl_COMPRESSED_RG11_EAC
	, gl_COMPRESSED_RGB8_ETC2
	, gl_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
	, gl_COMPRESSED_RGBA8_ETC2_EAC
	, gl_COMPRESSED_SIGNED_R11_EAC
	, gl_COMPRESSED_SIGNED_RG11_EAC
	, gl_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
	, gl_COMPRESSED_SRGB8_ETC2
	, gl_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
	, gl_MAX_ELEMENT_INDEX
	, gl_PRIMITIVE_RESTART_FIXED_INDEX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_ES3_compatibility :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_ES3_compatibility = extGL 71