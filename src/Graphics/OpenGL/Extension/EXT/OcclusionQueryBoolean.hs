-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.OcclusionQueryBoolean (
	-- * Extension Support
	  gl_EXT_occlusion_query_boolean

	-- * GL_EXT_occlusion_query_boolean
	, glBeginQueryEXT
	, glDeleteQueriesEXT
	, glEndQueryEXT
	, glGenQueriesEXT
	, glGetQueryObjectuivEXT
	, glGetQueryivEXT
	, glIsQueryEXT
	, gl_ANY_SAMPLES_PASSED_CONSERVATIVE_EXT
	, gl_ANY_SAMPLES_PASSED_EXT
	, gl_CURRENT_QUERY_EXT
	, gl_QUERY_RESULT_AVAILABLE_EXT
	, gl_QUERY_RESULT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_occlusion_query_boolean :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_occlusion_query_boolean = extGL 302

gl_ANY_SAMPLES_PASSED_CONSERVATIVE_EXT :: GLenum
gl_ANY_SAMPLES_PASSED_CONSERVATIVE_EXT = 0x8D6A

gl_ANY_SAMPLES_PASSED_EXT :: GLenum
gl_ANY_SAMPLES_PASSED_EXT = 0x8C2F