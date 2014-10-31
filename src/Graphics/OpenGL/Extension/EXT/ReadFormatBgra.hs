-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.ReadFormatBgra (
	-- * Extension Support
	  gl_EXT_read_format_bgra

	-- * GL_EXT_read_format_bgra
	, gl_BGRA_EXT
	, gl_UNSIGNED_SHORT_1_5_5_5_REV_EXT
	, gl_UNSIGNED_SHORT_4_4_4_4_REV_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_read_format_bgra :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_read_format_bgra = extGL 318

gl_UNSIGNED_SHORT_1_5_5_5_REV_EXT :: GLenum
gl_UNSIGNED_SHORT_1_5_5_5_REV_EXT = 0x8366

gl_UNSIGNED_SHORT_4_4_4_4_REV_EXT :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4_REV_EXT = 0x8365