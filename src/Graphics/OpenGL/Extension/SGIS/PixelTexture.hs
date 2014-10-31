-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.PixelTexture (
	-- * Extension Support
	  gl_SGIS_pixel_texture

	-- * GL_SGIS_pixel_texture
	, glGetPixelTexGenParameterfvSGIS
	, glGetPixelTexGenParameterivSGIS
	, glPixelTexGenParameterfSGIS
	, glPixelTexGenParameterfvSGIS
	, glPixelTexGenParameteriSGIS
	, glPixelTexGenParameterivSGIS
	, gl_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS
	, gl_PIXEL_FRAGMENT_RGB_SOURCE_SGIS
	, gl_PIXEL_GROUP_COLOR_SGIS
	, gl_PIXEL_TEXTURE_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_pixel_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_pixel_texture = extGL 617

glGetPixelTexGenParameterfvSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glGetPixelTexGenParameterfvSGIS v0 v1 = funGL 2214 >>= \f -> liftIO $ f v0 v1

glGetPixelTexGenParameterivSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glGetPixelTexGenParameterivSGIS v0 v1 = funGL 2215 >>= \f -> liftIO $ f v0 v1

glPixelTexGenParameterfSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glPixelTexGenParameterfSGIS v0 v1 = funGL 2216 >>= \f -> liftIO $ f v0 v1

glPixelTexGenParameterfvSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glPixelTexGenParameterfvSGIS v0 v1 = funGL 2217 >>= \f -> liftIO $ f v0 v1

glPixelTexGenParameteriSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glPixelTexGenParameteriSGIS v0 v1 = funGL 2218 >>= \f -> liftIO $ f v0 v1

glPixelTexGenParameterivSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glPixelTexGenParameterivSGIS v0 v1 = funGL 2219 >>= \f -> liftIO $ f v0 v1

gl_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS :: GLenum
gl_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS = 0x8355

gl_PIXEL_FRAGMENT_RGB_SOURCE_SGIS :: GLenum
gl_PIXEL_FRAGMENT_RGB_SOURCE_SGIS = 0x8354

gl_PIXEL_GROUP_COLOR_SGIS :: GLenum
gl_PIXEL_GROUP_COLOR_SGIS = 0x8356

gl_PIXEL_TEXTURE_SGIS :: GLenum
gl_PIXEL_TEXTURE_SGIS = 0x8353