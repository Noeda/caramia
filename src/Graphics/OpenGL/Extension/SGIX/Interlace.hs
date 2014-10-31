-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Interlace (
	-- * Extension Support
	  gl_SGIX_interlace

	-- * GL_SGIX_interlace
	, gl_INTERLACE_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_interlace :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_interlace = extGL 643

gl_INTERLACE_SGIX :: GLenum
gl_INTERLACE_SGIX = 0x8094