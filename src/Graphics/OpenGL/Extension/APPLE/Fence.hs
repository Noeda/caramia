-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.Fence (
	-- * Extension Support
	  gl_APPLE_fence

	-- * GL_APPLE_fence
	, glDeleteFencesAPPLE
	, glFinishFenceAPPLE
	, glFinishObjectAPPLE
	, glGenFencesAPPLE
	, glIsFenceAPPLE
	, glSetFenceAPPLE
	, glTestFenceAPPLE
	, glTestObjectAPPLE
	, gl_DRAW_PIXELS_APPLE
	, gl_FENCE_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_fence :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_fence = extGL 50

glDeleteFencesAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteFencesAPPLE v0 v1 = funGL 78 >>= \f -> liftIO $ f v0 v1

glFinishFenceAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glFinishFenceAPPLE v0 = funGL 79 >>= \f -> liftIO $ f v0

glFinishObjectAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glFinishObjectAPPLE v0 v1 = funGL 80 >>= \f -> liftIO $ f v0 v1

glGenFencesAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenFencesAPPLE v0 v1 = funGL 81 >>= \f -> liftIO $ f v0 v1

glIsFenceAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsFenceAPPLE v0 = funGL 82 >>= \f -> liftIO $ f v0

glSetFenceAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glSetFenceAPPLE v0 = funGL 83 >>= \f -> liftIO $ f v0

glTestFenceAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glTestFenceAPPLE v0 = funGL 84 >>= \f -> liftIO $ f v0

glTestObjectAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m GLboolean
glTestObjectAPPLE v0 v1 = funGL 85 >>= \f -> liftIO $ f v0 v1

gl_DRAW_PIXELS_APPLE :: GLenum
gl_DRAW_PIXELS_APPLE = 0x8A0A

gl_FENCE_APPLE :: GLenum
gl_FENCE_APPLE = 0x8A0B