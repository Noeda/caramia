-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.StencilWrap (
	-- * Extension Support
	  gl_EXT_stencil_wrap

	-- * GL_EXT_stencil_wrap
	, gl_DECR_WRAP_EXT
	, gl_INCR_WRAP_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_stencil_wrap :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_stencil_wrap = extGL 340

gl_DECR_WRAP_EXT :: GLenum
gl_DECR_WRAP_EXT = 0x8508

gl_INCR_WRAP_EXT :: GLenum
gl_INCR_WRAP_EXT = 0x8507