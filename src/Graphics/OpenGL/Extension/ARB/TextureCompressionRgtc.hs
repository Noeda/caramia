-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureCompressionRgtc (
	-- * Extension Support
	  gl_ARB_texture_compression_rgtc

	-- * GL_ARB_texture_compression_rgtc
	, gl_COMPRESSED_RED_RGTC1
	, gl_COMPRESSED_RG_RGTC2
	, gl_COMPRESSED_SIGNED_RED_RGTC1
	, gl_COMPRESSED_SIGNED_RG_RGTC2
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_compression_rgtc :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_compression_rgtc = extGL 181