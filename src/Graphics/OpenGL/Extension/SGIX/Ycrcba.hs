-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Ycrcba (
	-- * Extension Support
	  gl_SGIX_ycrcba

	-- * GL_SGIX_ycrcba
	, gl_YCRCBA_SGIX
	, gl_YCRCB_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_ycrcba :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_ycrcba = extGL 665

gl_YCRCBA_SGIX :: GLenum
gl_YCRCBA_SGIX = 0x8319

gl_YCRCB_SGIX :: GLenum
gl_YCRCB_SGIX = 0x8318