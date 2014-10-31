-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.CopyBuffer (
	-- * Extension Support
	  gl_ARB_copy_buffer

	-- * GL_ARB_copy_buffer
	, glCopyBufferSubData
	, gl_COPY_READ_BUFFER
	, gl_COPY_WRITE_BUFFER
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_copy_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_copy_buffer = extGL 88