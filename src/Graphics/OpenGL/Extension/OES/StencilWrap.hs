-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.StencilWrap (
	-- * Extension Support
	  gl_OES_stencil_wrap

	-- * GL_OES_stencil_wrap
	, gl_DECR_WRAP_OES
	, gl_INCR_WRAP_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_stencil_wrap :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_stencil_wrap = extGL 581

gl_DECR_WRAP_OES :: GLenum
gl_DECR_WRAP_OES = 0x8508

gl_INCR_WRAP_OES :: GLenum
gl_INCR_WRAP_OES = 0x8507