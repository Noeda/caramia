-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.BufferStorage (
	-- * Extension Support
	  gl_ARB_buffer_storage

	-- * GL_ARB_buffer_storage
	, glBufferStorage
	, gl_BUFFER_IMMUTABLE_STORAGE
	, gl_BUFFER_STORAGE_FLAGS
	, gl_CLIENT_MAPPED_BUFFER_BARRIER_BIT
	, gl_CLIENT_STORAGE_BIT
	, gl_DYNAMIC_STORAGE_BIT
	, gl_MAP_COHERENT_BIT
	, gl_MAP_PERSISTENT_BIT
	, gl_MAP_READ_BIT
	, gl_MAP_WRITE_BIT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_buffer_storage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_buffer_storage = extGL 76