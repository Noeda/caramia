-- This file was automatically generated.
module Graphics.OpenGL.Extension.INGR.BlendFuncSeparate (
	-- * Extension Support
	  gl_INGR_blend_func_separate

	-- * GL_INGR_blend_func_separate
	, glBlendFuncSeparateINGR
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_INGR_blend_func_separate :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_INGR_blend_func_separate = extGL 406

glBlendFuncSeparateINGR :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> m ()
glBlendFuncSeparateINGR v0 v1 v2 v3 = funGL 1485 >>= \f -> liftIO $ f v0 v1 v2 v3