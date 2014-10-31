-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.BlendEquationSeparate (
	-- * Extension Support
	  gl_OES_blend_equation_separate

	-- * GL_OES_blend_equation_separate
	, glBlendEquationSeparateOES
	, gl_BLEND_EQUATION_ALPHA_OES
	, gl_BLEND_EQUATION_RGB_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_blend_equation_separate :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_blend_equation_separate = extGL 544

glBlendEquationSeparateOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glBlendEquationSeparateOES v0 v1 = funGL 1988 >>= \f -> liftIO $ f v0 v1

gl_BLEND_EQUATION_ALPHA_OES :: GLenum
gl_BLEND_EQUATION_ALPHA_OES = 0x883D

gl_BLEND_EQUATION_RGB_OES :: GLenum
gl_BLEND_EQUATION_RGB_OES = 0x8009