-- This file was automatically generated.
module Graphics.OpenGL.Extension.INGR.InterlaceRead (
	-- * Extension Support
	  gl_INGR_interlace_read

	-- * GL_INGR_interlace_read
	, gl_INTERLACE_READ_INGR
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_INGR_interlace_read :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_INGR_interlace_read = extGL 408

gl_INTERLACE_READ_INGR :: GLenum
gl_INTERLACE_READ_INGR = 0x8568