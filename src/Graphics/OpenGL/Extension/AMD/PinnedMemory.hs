-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.PinnedMemory (
	-- * Extension Support
	  gl_AMD_pinned_memory

	-- * GL_AMD_pinned_memory
	, gl_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_pinned_memory :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_pinned_memory = extGL 17

gl_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD :: GLenum
gl_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD = 0x9160