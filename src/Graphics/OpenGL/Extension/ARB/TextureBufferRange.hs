-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureBufferRange (
	-- * Extension Support
	  gl_ARB_texture_buffer_range

	-- * GL_ARB_texture_buffer_range
	, glTexBufferRange
	, gl_TEXTURE_BUFFER_OFFSET
	, gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT
	, gl_TEXTURE_BUFFER_SIZE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_buffer_range :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_buffer_range = extGL 178