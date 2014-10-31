-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.ReadFormat (
	-- * Extension Support
	  gl_OES_read_format

	-- * GL_OES_read_format
	, gl_IMPLEMENTATION_COLOR_READ_FORMAT_OES
	, gl_IMPLEMENTATION_COLOR_READ_TYPE_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_read_format :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_read_format = extGL 569

gl_IMPLEMENTATION_COLOR_READ_FORMAT_OES :: GLenum
gl_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 0x8B9B

gl_IMPLEMENTATION_COLOR_READ_TYPE_OES :: GLenum
gl_IMPLEMENTATION_COLOR_READ_TYPE_OES = 0x8B9A