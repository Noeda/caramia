-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.FourTwoTwoPixels (
	-- * Extension Support
	  gl_EXT_422_pixels

	-- * GL_EXT_422_pixels
	, gl_422_AVERAGE_EXT
	, gl_422_EXT
	, gl_422_REV_AVERAGE_EXT
	, gl_422_REV_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_422_pixels :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_422_pixels = extGL 246

gl_422_AVERAGE_EXT :: GLenum
gl_422_AVERAGE_EXT = 0x80CE

gl_422_EXT :: GLenum
gl_422_EXT = 0x80CC

gl_422_REV_AVERAGE_EXT :: GLenum
gl_422_REV_AVERAGE_EXT = 0x80CF

gl_422_REV_EXT :: GLenum
gl_422_REV_EXT = 0x80CD