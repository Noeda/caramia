-- This file was automatically generated.
module Graphics.OpenGL.Extension.ThreeDFX.TextureCompressionFXT1 (
	-- * Extension Support
	  gl_3DFX_texture_compression_FXT1

	-- * GL_3DFX_texture_compression_FXT1
	, gl_COMPRESSED_RGBA_FXT1_3DFX
	, gl_COMPRESSED_RGB_FXT1_3DFX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_3DFX_texture_compression_FXT1 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_3DFX_texture_compression_FXT1 = extGL 2

gl_COMPRESSED_RGBA_FXT1_3DFX :: GLenum
gl_COMPRESSED_RGBA_FXT1_3DFX = 0x86B1

gl_COMPRESSED_RGB_FXT1_3DFX :: GLenum
gl_COMPRESSED_RGB_FXT1_3DFX = 0x86B0