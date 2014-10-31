-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.CopyImage (
	-- * Extension Support
	  gl_NV_copy_image

	-- * GL_NV_copy_image
	, glCopyImageSubDataNV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_copy_image :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_copy_image = extGL 439

glCopyImageSubDataNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> m ()
glCopyImageSubDataNV v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 = funGL 1584 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14