-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.TexturePackedFloat (
	-- * Extension Support
	  gl_APPLE_texture_packed_float

	-- * GL_APPLE_texture_packed_float
	, gl_R11F_G11F_B10F_APPLE
	, gl_RGB9_E5_APPLE
	, gl_UNSIGNED_INT_10F_11F_11F_REV_APPLE
	, gl_UNSIGNED_INT_5_9_9_9_REV_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_texture_packed_float :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_texture_packed_float = extGL 62

gl_R11F_G11F_B10F_APPLE :: GLenum
gl_R11F_G11F_B10F_APPLE = 0x8C3A

gl_RGB9_E5_APPLE :: GLenum
gl_RGB9_E5_APPLE = 0x8C3D

gl_UNSIGNED_INT_10F_11F_11F_REV_APPLE :: GLenum
gl_UNSIGNED_INT_10F_11F_11F_REV_APPLE = 0x8C3B

gl_UNSIGNED_INT_5_9_9_9_REV_APPLE :: GLenum
gl_UNSIGNED_INT_5_9_9_9_REV_APPLE = 0x8C3E