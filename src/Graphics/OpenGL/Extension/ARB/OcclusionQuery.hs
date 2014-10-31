-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.OcclusionQuery (
	-- * Extension Support
	  gl_ARB_occlusion_query

	-- * GL_ARB_occlusion_query
	, glBeginQueryARB
	, glDeleteQueriesARB
	, glEndQueryARB
	, glGenQueriesARB
	, glGetQueryObjectivARB
	, glGetQueryObjectuivARB
	, glGetQueryivARB
	, glIsQueryARB
	, gl_CURRENT_QUERY_ARB
	, gl_QUERY_COUNTER_BITS_ARB
	, gl_QUERY_RESULT_ARB
	, gl_QUERY_RESULT_AVAILABLE_ARB
	, gl_SAMPLES_PASSED_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_occlusion_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_occlusion_query = extGL 133

glBeginQueryARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBeginQueryARB v0 v1 = funGL 433 >>= \f -> liftIO $ f v0 v1

glDeleteQueriesARB :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteQueriesARB v0 v1 = funGL 434 >>= \f -> liftIO $ f v0 v1

glEndQueryARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glEndQueryARB v0 = funGL 435 >>= \f -> liftIO $ f v0

glGenQueriesARB :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenQueriesARB v0 v1 = funGL 436 >>= \f -> liftIO $ f v0 v1

glGetQueryObjectivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetQueryObjectivARB v0 v1 v2 = funGL 437 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryObjectuivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetQueryObjectuivARB v0 v1 v2 = funGL 438 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetQueryivARB v0 v1 v2 = funGL 439 >>= \f -> liftIO $ f v0 v1 v2

glIsQueryARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsQueryARB v0 = funGL 440 >>= \f -> liftIO $ f v0

gl_CURRENT_QUERY_ARB :: GLenum
gl_CURRENT_QUERY_ARB = 0x8865

gl_QUERY_COUNTER_BITS_ARB :: GLenum
gl_QUERY_COUNTER_BITS_ARB = 0x8864

gl_QUERY_RESULT_ARB :: GLenum
gl_QUERY_RESULT_ARB = 0x8866

gl_QUERY_RESULT_AVAILABLE_ARB :: GLenum
gl_QUERY_RESULT_AVAILABLE_ARB = 0x8867

gl_SAMPLES_PASSED_ARB :: GLenum
gl_SAMPLES_PASSED_ARB = 0x8914