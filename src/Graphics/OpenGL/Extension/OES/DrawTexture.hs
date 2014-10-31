-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.DrawTexture (
	-- * Extension Support
	  gl_OES_draw_texture

	-- * GL_OES_draw_texture
	, glDrawTexfOES
	, glDrawTexfvOES
	, glDrawTexiOES
	, glDrawTexivOES
	, glDrawTexsOES
	, glDrawTexsvOES
	, glDrawTexxOES
	, glDrawTexxvOES
	, gl_TEXTURE_CROP_RECT_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_draw_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_draw_texture = extGL 554

glDrawTexfOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glDrawTexfOES v0 v1 v2 v3 v4 = funGL 2013 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDrawTexfvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glDrawTexfvOES v0 = funGL 2014 >>= \f -> liftIO $ f v0

glDrawTexiOES :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> GLint -> m ()
glDrawTexiOES v0 v1 v2 v3 v4 = funGL 2015 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDrawTexivOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glDrawTexivOES v0 = funGL 2016 >>= \f -> liftIO $ f v0

glDrawTexsOES :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> GLshort -> GLshort -> m ()
glDrawTexsOES v0 v1 v2 v3 v4 = funGL 2017 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDrawTexsvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glDrawTexsvOES v0 = funGL 2018 >>= \f -> liftIO $ f v0

glDrawTexxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glDrawTexxOES v0 v1 v2 v3 v4 = funGL 2019 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDrawTexxvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glDrawTexxvOES v0 = funGL 2020 >>= \f -> liftIO $ f v0

gl_TEXTURE_CROP_RECT_OES :: GLenum
gl_TEXTURE_CROP_RECT_OES = 0x8B9D