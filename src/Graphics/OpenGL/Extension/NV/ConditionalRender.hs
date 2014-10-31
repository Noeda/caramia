-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ConditionalRender (
	-- * Extension Support
	  gl_NV_conditional_render

	-- * GL_NV_conditional_render
	, glBeginConditionalRenderNV
	, glEndConditionalRenderNV
	, gl_QUERY_BY_REGION_NO_WAIT_NV
	, gl_QUERY_BY_REGION_WAIT_NV
	, gl_QUERY_NO_WAIT_NV
	, gl_QUERY_WAIT_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_conditional_render :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_conditional_render = extGL 435

glBeginConditionalRenderNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glBeginConditionalRenderNV v0 v1 = funGL 1580 >>= \f -> liftIO $ f v0 v1

glEndConditionalRenderNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndConditionalRenderNV = funGL 1581 >>= \f -> liftIO $ f

gl_QUERY_BY_REGION_NO_WAIT_NV :: GLenum
gl_QUERY_BY_REGION_NO_WAIT_NV = 0x8E16

gl_QUERY_BY_REGION_WAIT_NV :: GLenum
gl_QUERY_BY_REGION_WAIT_NV = 0x8E15

gl_QUERY_NO_WAIT_NV :: GLenum
gl_QUERY_NO_WAIT_NV = 0x8E14

gl_QUERY_WAIT_NV :: GLenum
gl_QUERY_WAIT_NV = 0x8E13