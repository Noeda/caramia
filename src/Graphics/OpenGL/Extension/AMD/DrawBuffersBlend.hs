-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.DrawBuffersBlend (
	-- * Extension Support
	  gl_AMD_draw_buffers_blend

	-- * GL_AMD_draw_buffers_blend
	, glBlendEquationIndexedAMD
	, glBlendEquationSeparateIndexedAMD
	, glBlendFuncIndexedAMD
	, glBlendFuncSeparateIndexedAMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_draw_buffers_blend :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_draw_buffers_blend = extGL 9

glBlendEquationIndexedAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glBlendEquationIndexedAMD v0 v1 = funGL 4 >>= \f -> liftIO $ f v0 v1

glBlendEquationSeparateIndexedAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> m ()
glBlendEquationSeparateIndexedAMD v0 v1 v2 = funGL 5 >>= \f -> liftIO $ f v0 v1 v2

glBlendFuncIndexedAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> m ()
glBlendFuncIndexedAMD v0 v1 v2 = funGL 6 >>= \f -> liftIO $ f v0 v1 v2

glBlendFuncSeparateIndexedAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
glBlendFuncSeparateIndexedAMD v0 v1 v2 v3 v4 = funGL 7 >>= \f -> liftIO $ f v0 v1 v2 v3 v4