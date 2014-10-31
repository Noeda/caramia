-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.StencilClearTag (
	-- * Extension Support
	  gl_EXT_stencil_clear_tag

	-- * GL_EXT_stencil_clear_tag
	, glStencilClearTagEXT
	, gl_STENCIL_CLEAR_TAG_VALUE_EXT
	, gl_STENCIL_TAG_BITS_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_stencil_clear_tag :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_stencil_clear_tag = extGL 338

glStencilClearTagEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLuint -> m ()
glStencilClearTagEXT v0 v1 = funGL 1359 >>= \f -> liftIO $ f v0 v1

gl_STENCIL_CLEAR_TAG_VALUE_EXT :: GLenum
gl_STENCIL_CLEAR_TAG_VALUE_EXT = 0x88F3

gl_STENCIL_TAG_BITS_EXT :: GLenum
gl_STENCIL_TAG_BITS_EXT = 0x88F2