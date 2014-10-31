-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.UniformBufferUnifiedMemory (
	-- * Extension Support
	  gl_NV_uniform_buffer_unified_memory

	-- * GL_NV_uniform_buffer_unified_memory
	, gl_UNIFORM_BUFFER_ADDRESS_NV
	, gl_UNIFORM_BUFFER_LENGTH_NV
	, gl_UNIFORM_BUFFER_UNIFIED_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_uniform_buffer_unified_memory :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_uniform_buffer_unified_memory = extGL 529

gl_UNIFORM_BUFFER_ADDRESS_NV :: GLenum
gl_UNIFORM_BUFFER_ADDRESS_NV = 0x936F

gl_UNIFORM_BUFFER_LENGTH_NV :: GLenum
gl_UNIFORM_BUFFER_LENGTH_NV = 0x9370

gl_UNIFORM_BUFFER_UNIFIED_NV :: GLenum
gl_UNIFORM_BUFFER_UNIFIED_NV = 0x936E