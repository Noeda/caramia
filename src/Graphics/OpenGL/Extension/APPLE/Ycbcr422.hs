-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.Ycbcr422 (
	-- * Extension Support
	  gl_APPLE_ycbcr_422

	-- * GL_APPLE_ycbcr_422
	, gl_UNSIGNED_SHORT_8_8_APPLE
	, gl_UNSIGNED_SHORT_8_8_REV_APPLE
	, gl_YCBCR_422_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_APPLE_ycbcr_422 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_ycbcr_422 = extGL 68

gl_YCBCR_422_APPLE :: GLenum
gl_YCBCR_422_APPLE = 0x85B9