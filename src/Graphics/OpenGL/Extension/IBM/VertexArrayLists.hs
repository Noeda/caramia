-- This file was automatically generated.
module Graphics.OpenGL.Extension.IBM.VertexArrayLists (
	-- * Extension Support
	  gl_IBM_vertex_array_lists

	-- * GL_IBM_vertex_array_lists
	, glColorPointerListIBM
	, glEdgeFlagPointerListIBM
	, glFogCoordPointerListIBM
	, glIndexPointerListIBM
	, glNormalPointerListIBM
	, glSecondaryColorPointerListIBM
	, glTexCoordPointerListIBM
	, glVertexPointerListIBM
	, gl_COLOR_ARRAY_LIST_IBM
	, gl_COLOR_ARRAY_LIST_STRIDE_IBM
	, gl_EDGE_FLAG_ARRAY_LIST_IBM
	, gl_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM
	, gl_FOG_COORDINATE_ARRAY_LIST_IBM
	, gl_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM
	, gl_INDEX_ARRAY_LIST_IBM
	, gl_INDEX_ARRAY_LIST_STRIDE_IBM
	, gl_NORMAL_ARRAY_LIST_IBM
	, gl_NORMAL_ARRAY_LIST_STRIDE_IBM
	, gl_SECONDARY_COLOR_ARRAY_LIST_IBM
	, gl_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM
	, gl_TEXTURE_COORD_ARRAY_LIST_IBM
	, gl_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM
	, gl_VERTEX_ARRAY_LIST_IBM
	, gl_VERTEX_ARRAY_LIST_STRIDE_IBM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IBM_vertex_array_lists :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IBM_vertex_array_lists = extGL 397

glColorPointerListIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLint -> Ptr () -> GLint -> m ()
glColorPointerListIBM v0 v1 v2 v3 v4 = funGL 1473 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glEdgeFlagPointerListIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLboolean -> GLint -> m ()
glEdgeFlagPointerListIBM v0 v1 v2 = funGL 1474 >>= \f -> liftIO $ f v0 v1 v2

glFogCoordPointerListIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr () -> GLint -> m ()
glFogCoordPointerListIBM v0 v1 v2 v3 = funGL 1475 >>= \f -> liftIO $ f v0 v1 v2 v3

glIndexPointerListIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr () -> GLint -> m ()
glIndexPointerListIBM v0 v1 v2 v3 = funGL 1476 >>= \f -> liftIO $ f v0 v1 v2 v3

glNormalPointerListIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr () -> GLint -> m ()
glNormalPointerListIBM v0 v1 v2 v3 = funGL 1477 >>= \f -> liftIO $ f v0 v1 v2 v3

glSecondaryColorPointerListIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLint -> Ptr () -> GLint -> m ()
glSecondaryColorPointerListIBM v0 v1 v2 v3 v4 = funGL 1478 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTexCoordPointerListIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLint -> Ptr () -> GLint -> m ()
glTexCoordPointerListIBM v0 v1 v2 v3 v4 = funGL 1479 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexPointerListIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLint -> Ptr () -> GLint -> m ()
glVertexPointerListIBM v0 v1 v2 v3 v4 = funGL 1480 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_COLOR_ARRAY_LIST_IBM :: GLenum
gl_COLOR_ARRAY_LIST_IBM = 103072

gl_COLOR_ARRAY_LIST_STRIDE_IBM :: GLenum
gl_COLOR_ARRAY_LIST_STRIDE_IBM = 103082

gl_EDGE_FLAG_ARRAY_LIST_IBM :: GLenum
gl_EDGE_FLAG_ARRAY_LIST_IBM = 103075

gl_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM :: GLenum
gl_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM = 103085

gl_FOG_COORDINATE_ARRAY_LIST_IBM :: GLenum
gl_FOG_COORDINATE_ARRAY_LIST_IBM = 103076

gl_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM :: GLenum
gl_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM = 103086

gl_INDEX_ARRAY_LIST_IBM :: GLenum
gl_INDEX_ARRAY_LIST_IBM = 103073

gl_INDEX_ARRAY_LIST_STRIDE_IBM :: GLenum
gl_INDEX_ARRAY_LIST_STRIDE_IBM = 103083

gl_NORMAL_ARRAY_LIST_IBM :: GLenum
gl_NORMAL_ARRAY_LIST_IBM = 103071

gl_NORMAL_ARRAY_LIST_STRIDE_IBM :: GLenum
gl_NORMAL_ARRAY_LIST_STRIDE_IBM = 103081

gl_SECONDARY_COLOR_ARRAY_LIST_IBM :: GLenum
gl_SECONDARY_COLOR_ARRAY_LIST_IBM = 103077

gl_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM :: GLenum
gl_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM = 103087

gl_TEXTURE_COORD_ARRAY_LIST_IBM :: GLenum
gl_TEXTURE_COORD_ARRAY_LIST_IBM = 103074

gl_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM :: GLenum
gl_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM = 103084

gl_VERTEX_ARRAY_LIST_IBM :: GLenum
gl_VERTEX_ARRAY_LIST_IBM = 103070

gl_VERTEX_ARRAY_LIST_STRIDE_IBM :: GLenum
gl_VERTEX_ARRAY_LIST_STRIDE_IBM = 103080