-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ExplicitUniformLocation (
	-- * Extension Support
	  gl_ARB_explicit_uniform_location

	-- * GL_ARB_explicit_uniform_location
	, gl_MAX_UNIFORM_LOCATIONS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_explicit_uniform_location :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_explicit_uniform_location = extGL 104