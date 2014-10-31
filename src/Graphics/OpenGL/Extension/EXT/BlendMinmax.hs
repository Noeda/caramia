-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.BlendMinmax (
	-- * Extension Support
	  gl_EXT_blend_minmax

	-- * GL_EXT_blend_minmax
	, glBlendEquationEXT
	, gl_BLEND_EQUATION_EXT
	, gl_FUNC_ADD_EXT
	, gl_MAX_EXT
	, gl_MIN_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_blend_minmax :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_blend_minmax = extGL 254

glBlendEquationEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glBlendEquationEXT v0 = funGL 907 >>= \f -> liftIO $ f v0

gl_BLEND_EQUATION_EXT :: GLenum
gl_BLEND_EQUATION_EXT = 0x8009

gl_FUNC_ADD_EXT :: GLenum
gl_FUNC_ADD_EXT = 0x8006

gl_MAX_EXT :: GLenum
gl_MAX_EXT = 0x8008

gl_MIN_EXT :: GLenum
gl_MIN_EXT = 0x8007