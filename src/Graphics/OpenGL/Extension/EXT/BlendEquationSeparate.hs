-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.BlendEquationSeparate (
	-- * Extension Support
	  gl_EXT_blend_equation_separate

	-- * GL_EXT_blend_equation_separate
	, glBlendEquationSeparateEXT
	, gl_BLEND_EQUATION_ALPHA_EXT
	, gl_BLEND_EQUATION_RGB_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_blend_equation_separate :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_blend_equation_separate = extGL 251

glBlendEquationSeparateEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glBlendEquationSeparateEXT v0 v1 = funGL 905 >>= \f -> liftIO $ f v0 v1

gl_BLEND_EQUATION_ALPHA_EXT :: GLenum
gl_BLEND_EQUATION_ALPHA_EXT = 0x883D

gl_BLEND_EQUATION_RGB_EXT :: GLenum
gl_BLEND_EQUATION_RGB_EXT = 0x8009