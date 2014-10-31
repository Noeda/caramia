-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Cmyka (
	-- * Extension Support
	  gl_EXT_cmyka

	-- * GL_EXT_cmyka
	, gl_CMYKA_EXT
	, gl_CMYK_EXT
	, gl_PACK_CMYK_HINT_EXT
	, gl_UNPACK_CMYK_HINT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_cmyka :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_cmyka = extGL 257

gl_CMYKA_EXT :: GLenum
gl_CMYKA_EXT = 0x800D

gl_CMYK_EXT :: GLenum
gl_CMYK_EXT = 0x800C

gl_PACK_CMYK_HINT_EXT :: GLenum
gl_PACK_CMYK_HINT_EXT = 0x800E

gl_UNPACK_CMYK_HINT_EXT :: GLenum
gl_UNPACK_CMYK_HINT_EXT = 0x800F