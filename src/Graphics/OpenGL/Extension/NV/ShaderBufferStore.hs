-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ShaderBufferStore (
	-- * Extension Support
	  gl_NV_shader_buffer_store

	-- * GL_NV_shader_buffer_store
	, gl_READ_WRITE
	, gl_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV
	, gl_WRITE_ONLY
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_shader_buffer_store :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_shader_buffer_store = extGL 506

gl_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV :: GLenum
gl_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV = 0x00000010