-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PackedDepthStencil (
	-- * Extension Support
	  gl_EXT_packed_depth_stencil

	-- * GL_EXT_packed_depth_stencil
	, gl_DEPTH24_STENCIL8_EXT
	, gl_DEPTH_STENCIL_EXT
	, gl_TEXTURE_STENCIL_SIZE_EXT
	, gl_UNSIGNED_INT_24_8_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_packed_depth_stencil :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_packed_depth_stencil = extGL 303

gl_DEPTH24_STENCIL8_EXT :: GLenum
gl_DEPTH24_STENCIL8_EXT = 0x88F0

gl_DEPTH_STENCIL_EXT :: GLenum
gl_DEPTH_STENCIL_EXT = 0x84F9

gl_TEXTURE_STENCIL_SIZE_EXT :: GLenum
gl_TEXTURE_STENCIL_SIZE_EXT = 0x88F1

gl_UNSIGNED_INT_24_8_EXT :: GLenum
gl_UNSIGNED_INT_24_8_EXT = 0x84FA