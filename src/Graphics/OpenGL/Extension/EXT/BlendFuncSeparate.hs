-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.BlendFuncSeparate (
	-- * Extension Support
	  gl_EXT_blend_func_separate

	-- * GL_EXT_blend_func_separate
	, glBlendFuncSeparateEXT
	, gl_BLEND_DST_ALPHA_EXT
	, gl_BLEND_DST_RGB_EXT
	, gl_BLEND_SRC_ALPHA_EXT
	, gl_BLEND_SRC_RGB_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_blend_func_separate :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_blend_func_separate = extGL 252

glBlendFuncSeparateEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> m ()
glBlendFuncSeparateEXT v0 v1 v2 v3 = funGL 906 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_BLEND_DST_ALPHA_EXT :: GLenum
gl_BLEND_DST_ALPHA_EXT = 0x80CA

gl_BLEND_DST_RGB_EXT :: GLenum
gl_BLEND_DST_RGB_EXT = 0x80C8

gl_BLEND_SRC_ALPHA_EXT :: GLenum
gl_BLEND_SRC_ALPHA_EXT = 0x80CB

gl_BLEND_SRC_RGB_EXT :: GLenum
gl_BLEND_SRC_RGB_EXT = 0x80C9