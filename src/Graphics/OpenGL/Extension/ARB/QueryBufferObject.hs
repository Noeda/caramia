-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.QueryBufferObject (
	-- * Extension Support
	  gl_ARB_query_buffer_object

	-- * GL_ARB_query_buffer_object
	, gl_QUERY_BUFFER
	, gl_QUERY_BUFFER_BARRIER_BIT
	, gl_QUERY_BUFFER_BINDING
	, gl_QUERY_RESULT_NO_WAIT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_query_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_query_buffer_object = extGL 141