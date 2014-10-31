-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DisjointTimerQuery (
	-- * Extension Support
	  gl_EXT_disjoint_timer_query

	-- * GL_EXT_disjoint_timer_query
	, glBeginQueryEXT
	, glDeleteQueriesEXT
	, glEndQueryEXT
	, glGenQueriesEXT
	, glGetQueryObjecti64vEXT
	, glGetQueryObjectivEXT
	, glGetQueryObjectui64vEXT
	, glGetQueryObjectuivEXT
	, glGetQueryivEXT
	, glIsQueryEXT
	, glQueryCounterEXT
	, gl_CURRENT_QUERY_EXT
	, gl_GPU_DISJOINT_EXT
	, gl_QUERY_COUNTER_BITS_EXT
	, gl_QUERY_RESULT_AVAILABLE_EXT
	, gl_QUERY_RESULT_EXT
	, gl_TIMESTAMP_EXT
	, gl_TIME_ELAPSED_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_disjoint_timer_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_disjoint_timer_query = extGL 271

glGetQueryObjectivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetQueryObjectivEXT v0 v1 v2 = funGL 1222 >>= \f -> liftIO $ f v0 v1 v2

glQueryCounterEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glQueryCounterEXT v0 v1 = funGL 1227 >>= \f -> liftIO $ f v0 v1

gl_GPU_DISJOINT_EXT :: GLenum
gl_GPU_DISJOINT_EXT = 0x8FBB

gl_QUERY_COUNTER_BITS_EXT :: GLenum
gl_QUERY_COUNTER_BITS_EXT = 0x8864

gl_TIMESTAMP_EXT :: GLenum
gl_TIMESTAMP_EXT = 0x8E28