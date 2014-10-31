-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.OcclusionQuery (
	-- * Extension Support
	  gl_NV_occlusion_query

	-- * GL_NV_occlusion_query
	, glBeginOcclusionQueryNV
	, glDeleteOcclusionQueriesNV
	, glEndOcclusionQueryNV
	, glGenOcclusionQueriesNV
	, glGetOcclusionQueryivNV
	, glGetOcclusionQueryuivNV
	, glIsOcclusionQueryNV
	, gl_CURRENT_OCCLUSION_QUERY_ID_NV
	, gl_PIXEL_COUNTER_BITS_NV
	, gl_PIXEL_COUNT_AVAILABLE_NV
	, gl_PIXEL_COUNT_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_occlusion_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_occlusion_query = extGL 481

glBeginOcclusionQueryNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBeginOcclusionQueryNV v0 = funGL 1700 >>= \f -> liftIO $ f v0

glDeleteOcclusionQueriesNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteOcclusionQueriesNV v0 v1 = funGL 1701 >>= \f -> liftIO $ f v0 v1

glEndOcclusionQueryNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndOcclusionQueryNV = funGL 1702 >>= \f -> liftIO $ f

glGenOcclusionQueriesNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenOcclusionQueriesNV v0 v1 = funGL 1703 >>= \f -> liftIO $ f v0 v1

glGetOcclusionQueryivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetOcclusionQueryivNV v0 v1 v2 = funGL 1704 >>= \f -> liftIO $ f v0 v1 v2

glGetOcclusionQueryuivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetOcclusionQueryuivNV v0 v1 v2 = funGL 1705 >>= \f -> liftIO $ f v0 v1 v2

glIsOcclusionQueryNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsOcclusionQueryNV v0 = funGL 1706 >>= \f -> liftIO $ f v0

gl_CURRENT_OCCLUSION_QUERY_ID_NV :: GLenum
gl_CURRENT_OCCLUSION_QUERY_ID_NV = 0x8865

gl_PIXEL_COUNTER_BITS_NV :: GLenum
gl_PIXEL_COUNTER_BITS_NV = 0x8864

gl_PIXEL_COUNT_AVAILABLE_NV :: GLenum
gl_PIXEL_COUNT_AVAILABLE_NV = 0x8867

gl_PIXEL_COUNT_NV :: GLenum
gl_PIXEL_COUNT_NV = 0x8866