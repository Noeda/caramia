-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.TextureStencil8 (
	-- * Extension Support
	  gl_OES_texture_stencil8

	-- * GL_OES_texture_stencil8
	, gl_STENCIL_INDEX8_OES
	, gl_STENCIL_INDEX_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_OES_texture_stencil8 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_texture_stencil8 = extGL 593

gl_STENCIL_INDEX_OES :: GLenum
gl_STENCIL_INDEX_OES = 0x1901