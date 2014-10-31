-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.IndexArrayFormats (
	-- * Extension Support
	  gl_EXT_index_array_formats

	-- * GL_EXT_index_array_formats
	, gl_IUI_N3F_V2F_EXT
	, gl_IUI_N3F_V3F_EXT
	, gl_IUI_V2F_EXT
	, gl_IUI_V3F_EXT
	, gl_T2F_IUI_N3F_V2F_EXT
	, gl_T2F_IUI_N3F_V3F_EXT
	, gl_T2F_IUI_V2F_EXT
	, gl_T2F_IUI_V3F_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_index_array_formats :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_index_array_formats = extGL 290

gl_IUI_N3F_V2F_EXT :: GLenum
gl_IUI_N3F_V2F_EXT = 0x81AF

gl_IUI_N3F_V3F_EXT :: GLenum
gl_IUI_N3F_V3F_EXT = 0x81B0

gl_IUI_V2F_EXT :: GLenum
gl_IUI_V2F_EXT = 0x81AD

gl_IUI_V3F_EXT :: GLenum
gl_IUI_V3F_EXT = 0x81AE

gl_T2F_IUI_N3F_V2F_EXT :: GLenum
gl_T2F_IUI_N3F_V2F_EXT = 0x81B3

gl_T2F_IUI_N3F_V3F_EXT :: GLenum
gl_T2F_IUI_N3F_V3F_EXT = 0x81B4

gl_T2F_IUI_V2F_EXT :: GLenum
gl_T2F_IUI_V2F_EXT = 0x81B1

gl_T2F_IUI_V3F_EXT :: GLenum
gl_T2F_IUI_V3F_EXT = 0x81B2