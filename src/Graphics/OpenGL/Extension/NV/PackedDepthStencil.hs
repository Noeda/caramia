-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.PackedDepthStencil (
	-- * Extension Support
	  gl_NV_packed_depth_stencil

	-- * GL_NV_packed_depth_stencil
	, gl_DEPTH_STENCIL_NV
	, gl_UNSIGNED_INT_24_8_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_packed_depth_stencil :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_packed_depth_stencil = extGL 482

gl_DEPTH_STENCIL_NV :: GLenum
gl_DEPTH_STENCIL_NV = 0x84F9

gl_UNSIGNED_INT_24_8_NV :: GLenum
gl_UNSIGNED_INT_24_8_NV = 0x84FA