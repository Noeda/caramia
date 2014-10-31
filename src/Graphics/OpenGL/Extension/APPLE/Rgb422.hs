-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.Rgb422 (
	-- * Extension Support
	  gl_APPLE_rgb_422

	-- * GL_APPLE_rgb_422
	, gl_RGB_422_APPLE
	, gl_RGB_RAW_422_APPLE
	, gl_UNSIGNED_SHORT_8_8_APPLE
	, gl_UNSIGNED_SHORT_8_8_REV_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_APPLE_rgb_422 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_rgb_422 = extGL 55

gl_RGB_422_APPLE :: GLenum
gl_RGB_422_APPLE = 0x8A1F

gl_RGB_RAW_422_APPLE :: GLenum
gl_RGB_RAW_422_APPLE = 0x8A51