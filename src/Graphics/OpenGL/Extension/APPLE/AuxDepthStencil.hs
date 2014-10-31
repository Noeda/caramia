-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.AuxDepthStencil (
	-- * Extension Support
	  gl_APPLE_aux_depth_stencil

	-- * GL_APPLE_aux_depth_stencil
	, gl_AUX_DEPTH_STENCIL_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_aux_depth_stencil :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_aux_depth_stencil = extGL 44

gl_AUX_DEPTH_STENCIL_APPLE :: GLenum
gl_AUX_DEPTH_STENCIL_APPLE = 0x8A14