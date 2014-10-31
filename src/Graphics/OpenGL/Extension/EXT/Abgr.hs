-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Abgr (
	-- * Extension Support
	  gl_EXT_abgr

	-- * GL_EXT_abgr
	, gl_ABGR_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_abgr :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_abgr = extGL 247

gl_ABGR_EXT :: GLenum
gl_ABGR_EXT = 0x8000