-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PackedFloat (
	-- * Extension Support
	  gl_EXT_packed_float

	-- * GL_EXT_packed_float
	, gl_R11F_G11F_B10F_EXT
	, gl_RGBA_SIGNED_COMPONENTS_EXT
	, gl_UNSIGNED_INT_10F_11F_11F_REV_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_packed_float :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_packed_float = extGL 304

gl_R11F_G11F_B10F_EXT :: GLenum
gl_R11F_G11F_B10F_EXT = 0x8C3A

gl_RGBA_SIGNED_COMPONENTS_EXT :: GLenum
gl_RGBA_SIGNED_COMPONENTS_EXT = 0x8C3C

gl_UNSIGNED_INT_10F_11F_11F_REV_EXT :: GLenum
gl_UNSIGNED_INT_10F_11F_11F_REV_EXT = 0x8C3B