-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.CompressedETC1RGB8Texture (
	-- * Extension Support
	  gl_OES_compressed_ETC1_RGB8_texture

	-- * GL_OES_compressed_ETC1_RGB8_texture
	, gl_ETC1_RGB8_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_compressed_ETC1_RGB8_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_compressed_ETC1_RGB8_texture = extGL 549

gl_ETC1_RGB8_OES :: GLenum
gl_ETC1_RGB8_OES = 0x8D64