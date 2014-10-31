-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.BlendMinmaxFactor (
	-- * Extension Support
	  gl_AMD_blend_minmax_factor

	-- * GL_AMD_blend_minmax_factor
	, gl_FACTOR_MAX_AMD
	, gl_FACTOR_MIN_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_blend_minmax_factor :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_blend_minmax_factor = extGL 3

gl_FACTOR_MAX_AMD :: GLenum
gl_FACTOR_MAX_AMD = 0x901D

gl_FACTOR_MIN_AMD :: GLenum
gl_FACTOR_MIN_AMD = 0x901C