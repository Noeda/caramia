-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.DrawTexture (
	-- * Extension Support
	  gl_NV_draw_texture

	-- * GL_NV_draw_texture
	, glDrawTextureNV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_draw_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_draw_texture = extGL 447

glDrawTextureNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glDrawTextureNV v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 1593 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10