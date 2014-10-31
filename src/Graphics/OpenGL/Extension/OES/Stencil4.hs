-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.Stencil4 (
	-- * Extension Support
	  gl_OES_stencil4

	-- * GL_OES_stencil4
	, gl_STENCIL_INDEX4_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_stencil4 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_stencil4 = extGL 579

gl_STENCIL_INDEX4_OES :: GLenum
gl_STENCIL_INDEX4_OES = 0x8D47