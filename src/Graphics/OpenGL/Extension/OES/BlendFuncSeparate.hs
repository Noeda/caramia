-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.BlendFuncSeparate (
	-- * Extension Support
	  gl_OES_blend_func_separate

	-- * GL_OES_blend_func_separate
	, glBlendFuncSeparateOES
	, gl_BLEND_DST_ALPHA_OES
	, gl_BLEND_DST_RGB_OES
	, gl_BLEND_SRC_ALPHA_OES
	, gl_BLEND_SRC_RGB_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_blend_func_separate :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_blend_func_separate = extGL 545

glBlendFuncSeparateOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> m ()
glBlendFuncSeparateOES v0 v1 v2 v3 = funGL 1989 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_BLEND_DST_ALPHA_OES :: GLenum
gl_BLEND_DST_ALPHA_OES = 0x80CA

gl_BLEND_DST_RGB_OES :: GLenum
gl_BLEND_DST_RGB_OES = 0x80C8

gl_BLEND_SRC_ALPHA_OES :: GLenum
gl_BLEND_SRC_ALPHA_OES = 0x80CB

gl_BLEND_SRC_RGB_OES :: GLenum
gl_BLEND_SRC_RGB_OES = 0x80C9