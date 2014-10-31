-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.InternalformatQuery (
	-- * Extension Support
	  gl_ARB_internalformat_query

	-- * GL_ARB_internalformat_query
	, glGetInternalformativ
	, gl_NUM_SAMPLE_COUNTS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_internalformat_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_internalformat_query = extGL 123