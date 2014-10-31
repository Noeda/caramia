-- This file was automatically generated.
module Graphics.OpenGL.Extension.INTEL.ParallelArrays (
	-- * Extension Support
	  gl_INTEL_parallel_arrays

	-- * GL_INTEL_parallel_arrays
	, glColorPointervINTEL
	, glNormalPointervINTEL
	, glTexCoordPointervINTEL
	, glVertexPointervINTEL
	, gl_COLOR_ARRAY_PARALLEL_POINTERS_INTEL
	, gl_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL
	, gl_PARALLEL_ARRAYS_INTEL
	, gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL
	, gl_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_INTEL_parallel_arrays :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_INTEL_parallel_arrays = extGL 411

glColorPointervINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> Ptr () -> m ()
glColorPointervINTEL v0 v1 v2 = funGL 1489 >>= \f -> liftIO $ f v0 v1 v2

glNormalPointervINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glNormalPointervINTEL v0 v1 = funGL 1490 >>= \f -> liftIO $ f v0 v1

glTexCoordPointervINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> Ptr () -> m ()
glTexCoordPointervINTEL v0 v1 v2 = funGL 1491 >>= \f -> liftIO $ f v0 v1 v2

glVertexPointervINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> Ptr () -> m ()
glVertexPointervINTEL v0 v1 v2 = funGL 1492 >>= \f -> liftIO $ f v0 v1 v2

gl_COLOR_ARRAY_PARALLEL_POINTERS_INTEL :: GLenum
gl_COLOR_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F7

gl_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL :: GLenum
gl_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F6

gl_PARALLEL_ARRAYS_INTEL :: GLenum
gl_PARALLEL_ARRAYS_INTEL = 0x83F4

gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL :: GLenum
gl_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F8

gl_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL :: GLenum
gl_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL = 0x83F5