-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.TextureFilter4 (
	-- * Extension Support
	  gl_SGIS_texture_filter4

	-- * GL_SGIS_texture_filter4
	, glGetTexFilterFuncSGIS
	, glTexFilterFuncSGIS
	, gl_FILTER4_SGIS
	, gl_TEXTURE_FILTER4_SIZE_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_texture_filter4 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_texture_filter4 = extGL 625

glGetTexFilterFuncSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetTexFilterFuncSGIS v0 v1 v2 = funGL 2227 >>= \f -> liftIO $ f v0 v1 v2

glTexFilterFuncSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> m ()
glTexFilterFuncSGIS v0 v1 v2 v3 = funGL 2228 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_FILTER4_SGIS :: GLenum
gl_FILTER4_SGIS = 0x8146

gl_TEXTURE_FILTER4_SIZE_SGIS :: GLenum
gl_TEXTURE_FILTER4_SIZE_SGIS = 0x8147