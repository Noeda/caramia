-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Ycrcb (
	-- * Extension Support
	  gl_SGIX_ycrcb

	-- * GL_SGIX_ycrcb
	, gl_YCRCB_422_SGIX
	, gl_YCRCB_444_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_ycrcb :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_ycrcb = extGL 663

gl_YCRCB_422_SGIX :: GLenum
gl_YCRCB_422_SGIX = 0x81BB

gl_YCRCB_444_SGIX :: GLenum
gl_YCRCB_444_SGIX = 0x81BC