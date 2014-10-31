-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.InterleavedElements (
	-- * Extension Support
	  gl_AMD_interleaved_elements

	-- * GL_AMD_interleaved_elements
	, glVertexAttribParameteriAMD
	, gl_ALPHA
	, gl_BLUE
	, gl_GREEN
	, gl_RED
	, gl_RG16UI
	, gl_RG8UI
	, gl_RGBA8UI
	, gl_VERTEX_ELEMENT_SWIZZLE_AMD
	, gl_VERTEX_ID_SWIZZLE_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_AMD_interleaved_elements :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_interleaved_elements = extGL 12

glVertexAttribParameteriAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glVertexAttribParameteriAMD v0 v1 v2 = funGL 42 >>= \f -> liftIO $ f v0 v1 v2

gl_VERTEX_ELEMENT_SWIZZLE_AMD :: GLenum
gl_VERTEX_ELEMENT_SWIZZLE_AMD = 0x91A4

gl_VERTEX_ID_SWIZZLE_AMD :: GLenum
gl_VERTEX_ID_SWIZZLE_AMD = 0x91A5