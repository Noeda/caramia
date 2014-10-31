-- This file was automatically generated.
module Graphics.OpenGL.Extension.OML.Interlace (
	-- * Extension Support
	  gl_OML_interlace

	-- * GL_OML_interlace
	, gl_INTERLACE_OML
	, gl_INTERLACE_READ_OML
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OML_interlace :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OML_interlace = extGL 598

gl_INTERLACE_OML :: GLenum
gl_INTERLACE_OML = 0x8980

gl_INTERLACE_READ_OML :: GLenum
gl_INTERLACE_READ_OML = 0x8981