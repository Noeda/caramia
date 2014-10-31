-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.MapBufferRange (
	-- * Extension Support
	  gl_ARB_map_buffer_range

	-- * GL_ARB_map_buffer_range
	, glFlushMappedBufferRange
	, glMapBufferRange
	, gl_MAP_FLUSH_EXPLICIT_BIT
	, gl_MAP_INVALIDATE_BUFFER_BIT
	, gl_MAP_INVALIDATE_RANGE_BIT
	, gl_MAP_READ_BIT
	, gl_MAP_UNSYNCHRONIZED_BIT
	, gl_MAP_WRITE_BIT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_map_buffer_range :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_map_buffer_range = extGL 127