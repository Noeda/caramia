-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.QueryBufferObject (
	-- * Extension Support
	  gl_AMD_query_buffer_object

	-- * GL_AMD_query_buffer_object
	, gl_QUERY_BUFFER_AMD
	, gl_QUERY_BUFFER_BINDING_AMD
	, gl_QUERY_RESULT_NO_WAIT_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_query_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_query_buffer_object = extGL 19

gl_QUERY_BUFFER_AMD :: GLenum
gl_QUERY_BUFFER_AMD = 0x9192

gl_QUERY_BUFFER_BINDING_AMD :: GLenum
gl_QUERY_BUFFER_BINDING_AMD = 0x9193

gl_QUERY_RESULT_NO_WAIT_AMD :: GLenum
gl_QUERY_RESULT_NO_WAIT_AMD = 0x9194