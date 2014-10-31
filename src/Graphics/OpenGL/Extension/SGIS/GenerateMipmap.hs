-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.GenerateMipmap (
	-- * Extension Support
	  gl_SGIS_generate_mipmap

	-- * GL_SGIS_generate_mipmap
	, gl_GENERATE_MIPMAP_HINT_SGIS
	, gl_GENERATE_MIPMAP_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_generate_mipmap :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_generate_mipmap = extGL 615

gl_GENERATE_MIPMAP_HINT_SGIS :: GLenum
gl_GENERATE_MIPMAP_HINT_SGIS = 0x8192

gl_GENERATE_MIPMAP_SGIS :: GLenum
gl_GENERATE_MIPMAP_SGIS = 0x8191