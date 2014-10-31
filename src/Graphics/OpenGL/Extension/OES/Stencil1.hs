-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.Stencil1 (
	-- * Extension Support
	  gl_OES_stencil1

	-- * GL_OES_stencil1
	, gl_STENCIL_INDEX1_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_stencil1 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_stencil1 = extGL 578

gl_STENCIL_INDEX1_OES :: GLenum
gl_STENCIL_INDEX1_OES = 0x8D46