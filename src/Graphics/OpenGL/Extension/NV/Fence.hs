-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.Fence (
	-- * Extension Support
	  gl_NV_fence

	-- * GL_NV_fence
	, glDeleteFencesNV
	, glFinishFenceNV
	, glGenFencesNV
	, glGetFenceivNV
	, glIsFenceNV
	, glSetFenceNV
	, glTestFenceNV
	, gl_ALL_COMPLETED_NV
	, gl_FENCE_CONDITION_NV
	, gl_FENCE_STATUS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_fence :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_fence = extGL 452

glDeleteFencesNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteFencesNV v0 v1 = funGL 1606 >>= \f -> liftIO $ f v0 v1

glFinishFenceNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glFinishFenceNV v0 = funGL 1607 >>= \f -> liftIO $ f v0

glGenFencesNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenFencesNV v0 v1 = funGL 1608 >>= \f -> liftIO $ f v0 v1

glGetFenceivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetFenceivNV v0 v1 v2 = funGL 1609 >>= \f -> liftIO $ f v0 v1 v2

glIsFenceNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsFenceNV v0 = funGL 1610 >>= \f -> liftIO $ f v0

glSetFenceNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glSetFenceNV v0 v1 = funGL 1611 >>= \f -> liftIO $ f v0 v1

glTestFenceNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glTestFenceNV v0 = funGL 1612 >>= \f -> liftIO $ f v0

gl_ALL_COMPLETED_NV :: GLenum
gl_ALL_COMPLETED_NV = 0x84F2

gl_FENCE_CONDITION_NV :: GLenum
gl_FENCE_CONDITION_NV = 0x84F4

gl_FENCE_STATUS_NV :: GLenum
gl_FENCE_STATUS_NV = 0x84F3