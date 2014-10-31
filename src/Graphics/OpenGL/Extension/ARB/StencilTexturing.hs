-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.StencilTexturing (
	-- * Extension Support
	  gl_ARB_stencil_texturing

	-- * GL_ARB_stencil_texturing
	, gl_DEPTH_STENCIL_TEXTURE_MODE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_stencil_texturing :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_stencil_texturing = extGL 171