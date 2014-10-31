-- This file was automatically generated.
module Graphics.OpenGL.Extension.NVX.ConditionalRender (
	-- * Extension Support
	  gl_NVX_conditional_render

	-- * GL_NVX_conditional_render
	, glBeginConditionalRenderNVX
	, glEndConditionalRenderNVX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NVX_conditional_render :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NVX_conditional_render = extGL 426

glBeginConditionalRenderNVX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBeginConditionalRenderNVX v0 = funGL 1986 >>= \f -> liftIO $ f v0

glEndConditionalRenderNVX :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndConditionalRenderNVX = funGL 1987 >>= \f -> liftIO $ f