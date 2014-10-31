-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.PackedDepthStencil (
	-- * Extension Support
	  gl_OES_packed_depth_stencil

	-- * GL_OES_packed_depth_stencil
	, gl_DEPTH24_STENCIL8_OES
	, gl_DEPTH_STENCIL_OES
	, gl_UNSIGNED_INT_24_8_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_OES_packed_depth_stencil :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_packed_depth_stencil = extGL 565