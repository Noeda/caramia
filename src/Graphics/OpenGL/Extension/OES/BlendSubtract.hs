-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.BlendSubtract (
	-- * Extension Support
	  gl_OES_blend_subtract

	-- * GL_OES_blend_subtract
	, glBlendEquationOES
	, gl_BLEND_EQUATION_OES
	, gl_FUNC_ADD_OES
	, gl_FUNC_REVERSE_SUBTRACT_OES
	, gl_FUNC_SUBTRACT_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_blend_subtract :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_blend_subtract = extGL 546

glBlendEquationOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glBlendEquationOES v0 = funGL 1990 >>= \f -> liftIO $ f v0

gl_BLEND_EQUATION_OES :: GLenum
gl_BLEND_EQUATION_OES = 0x8009

gl_FUNC_ADD_OES :: GLenum
gl_FUNC_ADD_OES = 0x8006

gl_FUNC_REVERSE_SUBTRACT_OES :: GLenum
gl_FUNC_REVERSE_SUBTRACT_OES = 0x800B

gl_FUNC_SUBTRACT_OES :: GLenum
gl_FUNC_SUBTRACT_OES = 0x800A