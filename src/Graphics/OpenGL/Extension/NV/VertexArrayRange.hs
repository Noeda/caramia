-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.VertexArrayRange (
	-- * Extension Support
	  gl_NV_vertex_array_range

	-- * GL_NV_vertex_array_range
	, glFlushVertexArrayRangeNV
	, glVertexArrayRangeNV
	, gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV
	, gl_VERTEX_ARRAY_RANGE_LENGTH_NV
	, gl_VERTEX_ARRAY_RANGE_NV
	, gl_VERTEX_ARRAY_RANGE_POINTER_NV
	, gl_VERTEX_ARRAY_RANGE_VALID_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_vertex_array_range :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_vertex_array_range = extGL 531

glFlushVertexArrayRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glFlushVertexArrayRangeNV = funGL 1854 >>= \f -> liftIO $ f

glVertexArrayRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr () -> m ()
glVertexArrayRangeNV v0 v1 = funGL 1855 >>= \f -> liftIO $ f v0 v1

gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV :: GLenum
gl_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV = 0x8520

gl_VERTEX_ARRAY_RANGE_LENGTH_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_LENGTH_NV = 0x851E

gl_VERTEX_ARRAY_RANGE_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_NV = 0x851D

gl_VERTEX_ARRAY_RANGE_POINTER_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_POINTER_NV = 0x8521

gl_VERTEX_ARRAY_RANGE_VALID_NV :: GLenum
gl_VERTEX_ARRAY_RANGE_VALID_NV = 0x851F