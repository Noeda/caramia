-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureCompressionRgtc (
	-- * Extension Support
	  gl_EXT_texture_compression_rgtc

	-- * GL_EXT_texture_compression_rgtc
	, gl_COMPRESSED_RED_GREEN_RGTC2_EXT
	, gl_COMPRESSED_RED_RGTC1_EXT
	, gl_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT
	, gl_COMPRESSED_SIGNED_RED_RGTC1_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_compression_rgtc :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_compression_rgtc = extGL 352

gl_COMPRESSED_RED_GREEN_RGTC2_EXT :: GLenum
gl_COMPRESSED_RED_GREEN_RGTC2_EXT = 0x8DBD

gl_COMPRESSED_RED_RGTC1_EXT :: GLenum
gl_COMPRESSED_RED_RGTC1_EXT = 0x8DBB

gl_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT :: GLenum
gl_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT = 0x8DBE

gl_COMPRESSED_SIGNED_RED_RGTC1_EXT :: GLenum
gl_COMPRESSED_SIGNED_RED_RGTC1_EXT = 0x8DBC