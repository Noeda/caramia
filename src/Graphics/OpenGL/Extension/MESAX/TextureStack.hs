-- This file was automatically generated.
module Graphics.OpenGL.Extension.MESAX.TextureStack (
	-- * Extension Support
	  gl_MESAX_texture_stack

	-- * GL_MESAX_texture_stack
	, gl_PROXY_TEXTURE_1D_STACK_MESAX
	, gl_PROXY_TEXTURE_2D_STACK_MESAX
	, gl_TEXTURE_1D_STACK_BINDING_MESAX
	, gl_TEXTURE_1D_STACK_MESAX
	, gl_TEXTURE_2D_STACK_BINDING_MESAX
	, gl_TEXTURE_2D_STACK_MESAX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_MESAX_texture_stack :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_MESAX_texture_stack = extGL 421

gl_PROXY_TEXTURE_1D_STACK_MESAX :: GLenum
gl_PROXY_TEXTURE_1D_STACK_MESAX = 0x875B

gl_PROXY_TEXTURE_2D_STACK_MESAX :: GLenum
gl_PROXY_TEXTURE_2D_STACK_MESAX = 0x875C

gl_TEXTURE_1D_STACK_BINDING_MESAX :: GLenum
gl_TEXTURE_1D_STACK_BINDING_MESAX = 0x875D

gl_TEXTURE_1D_STACK_MESAX :: GLenum
gl_TEXTURE_1D_STACK_MESAX = 0x8759

gl_TEXTURE_2D_STACK_BINDING_MESAX :: GLenum
gl_TEXTURE_2D_STACK_BINDING_MESAX = 0x875E

gl_TEXTURE_2D_STACK_MESAX :: GLenum
gl_TEXTURE_2D_STACK_MESAX = 0x875A