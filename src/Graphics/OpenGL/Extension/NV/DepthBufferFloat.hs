-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.DepthBufferFloat (
	-- * Extension Support
	  gl_NV_depth_buffer_float

	-- * GL_NV_depth_buffer_float
	, glClearDepthdNV
	, glDepthBoundsdNV
	, glDepthRangedNV
	, gl_DEPTH32F_STENCIL8_NV
	, gl_DEPTH_BUFFER_FLOAT_MODE_NV
	, gl_DEPTH_COMPONENT32F_NV
	, gl_FLOAT_32_UNSIGNED_INT_24_8_REV_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_depth_buffer_float :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_depth_buffer_float = extGL 442

glClearDepthdNV :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> m ()
glClearDepthdNV v0 = funGL 1587 >>= \f -> liftIO $ f v0

glDepthBoundsdNV :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glDepthBoundsdNV v0 v1 = funGL 1588 >>= \f -> liftIO $ f v0 v1

glDepthRangedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glDepthRangedNV v0 v1 = funGL 1589 >>= \f -> liftIO $ f v0 v1

gl_DEPTH32F_STENCIL8_NV :: GLenum
gl_DEPTH32F_STENCIL8_NV = 0x8DAC

gl_DEPTH_BUFFER_FLOAT_MODE_NV :: GLenum
gl_DEPTH_BUFFER_FLOAT_MODE_NV = 0x8DAF

gl_DEPTH_COMPONENT32F_NV :: GLenum
gl_DEPTH_COMPONENT32F_NV = 0x8DAB

gl_FLOAT_32_UNSIGNED_INT_24_8_REV_NV :: GLenum
gl_FLOAT_32_UNSIGNED_INT_24_8_REV_NV = 0x8DAD