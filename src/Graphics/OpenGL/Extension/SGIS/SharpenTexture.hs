-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.SharpenTexture (
	-- * Extension Support
	  gl_SGIS_sharpen_texture

	-- * GL_SGIS_sharpen_texture
	, glGetSharpenTexFuncSGIS
	, glSharpenTexFuncSGIS
	, gl_LINEAR_SHARPEN_ALPHA_SGIS
	, gl_LINEAR_SHARPEN_COLOR_SGIS
	, gl_LINEAR_SHARPEN_SGIS
	, gl_SHARPEN_TEXTURE_FUNC_POINTS_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_sharpen_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_sharpen_texture = extGL 620

glGetSharpenTexFuncSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glGetSharpenTexFuncSGIS v0 v1 = funGL 2222 >>= \f -> liftIO $ f v0 v1

glSharpenTexFuncSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLfloat -> m ()
glSharpenTexFuncSGIS v0 v1 v2 = funGL 2223 >>= \f -> liftIO $ f v0 v1 v2

gl_LINEAR_SHARPEN_ALPHA_SGIS :: GLenum
gl_LINEAR_SHARPEN_ALPHA_SGIS = 0x80AE

gl_LINEAR_SHARPEN_COLOR_SGIS :: GLenum
gl_LINEAR_SHARPEN_COLOR_SGIS = 0x80AF

gl_LINEAR_SHARPEN_SGIS :: GLenum
gl_LINEAR_SHARPEN_SGIS = 0x80AD

gl_SHARPEN_TEXTURE_FUNC_POINTS_SGIS :: GLenum
gl_SHARPEN_TEXTURE_FUNC_POINTS_SGIS = 0x80B0