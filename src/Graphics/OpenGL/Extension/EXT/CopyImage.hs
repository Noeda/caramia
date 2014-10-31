-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.CopyImage (
	-- * Extension Support
	  gl_EXT_copy_image

	-- * GL_EXT_copy_image
	, glCopyImageSubDataEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_copy_image :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_copy_image = extGL 263

glCopyImageSubDataEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> m ()
glCopyImageSubDataEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 = funGL 947 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14