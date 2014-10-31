-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.Meminfo (
	-- * Extension Support
	  gl_ATI_meminfo

	-- * GL_ATI_meminfo
	, gl_RENDERBUFFER_FREE_MEMORY_ATI
	, gl_TEXTURE_FREE_MEMORY_ATI
	, gl_VBO_FREE_MEMORY_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_meminfo :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_meminfo = extGL 233

gl_RENDERBUFFER_FREE_MEMORY_ATI :: GLenum
gl_RENDERBUFFER_FREE_MEMORY_ATI = 0x87FD

gl_TEXTURE_FREE_MEMORY_ATI :: GLenum
gl_TEXTURE_FREE_MEMORY_ATI = 0x87FC

gl_VBO_FREE_MEMORY_ATI :: GLenum
gl_VBO_FREE_MEMORY_ATI = 0x87FB