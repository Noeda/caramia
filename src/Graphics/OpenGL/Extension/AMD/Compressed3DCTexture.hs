-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.Compressed3DCTexture (
	-- * Extension Support
	  gl_AMD_compressed_3DC_texture

	-- * GL_AMD_compressed_3DC_texture
	, gl_3DC_XY_AMD
	, gl_3DC_X_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_compressed_3DC_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_compressed_3DC_texture = extGL 4

gl_3DC_XY_AMD :: GLenum
gl_3DC_XY_AMD = 0x87FA

gl_3DC_X_AMD :: GLenum
gl_3DC_X_AMD = 0x87F9