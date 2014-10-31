-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Bgra (
	-- * Extension Support
	  gl_EXT_bgra

	-- * GL_EXT_bgra
	, gl_BGRA_EXT
	, gl_BGR_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_bgra :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_bgra = extGL 248

gl_BGR_EXT :: GLenum
gl_BGR_EXT = 0x80E0