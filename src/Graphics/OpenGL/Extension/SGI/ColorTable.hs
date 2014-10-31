-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGI.ColorTable (
	-- * Extension Support
	  gl_SGI_color_table

	-- * GL_SGI_color_table
	, glColorTableParameterfvSGI
	, glColorTableParameterivSGI
	, glColorTableSGI
	, glCopyColorTableSGI
	, glGetColorTableParameterfvSGI
	, glGetColorTableParameterivSGI
	, glGetColorTableSGI
	, gl_COLOR_TABLE_ALPHA_SIZE_SGI
	, gl_COLOR_TABLE_BIAS_SGI
	, gl_COLOR_TABLE_BLUE_SIZE_SGI
	, gl_COLOR_TABLE_FORMAT_SGI
	, gl_COLOR_TABLE_GREEN_SIZE_SGI
	, gl_COLOR_TABLE_INTENSITY_SIZE_SGI
	, gl_COLOR_TABLE_LUMINANCE_SIZE_SGI
	, gl_COLOR_TABLE_RED_SIZE_SGI
	, gl_COLOR_TABLE_SCALE_SGI
	, gl_COLOR_TABLE_SGI
	, gl_COLOR_TABLE_WIDTH_SGI
	, gl_POST_COLOR_MATRIX_COLOR_TABLE_SGI
	, gl_POST_CONVOLUTION_COLOR_TABLE_SGI
	, gl_PROXY_COLOR_TABLE_SGI
	, gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI
	, gl_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGI_color_table :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGI_color_table = extGL 667

glColorTableParameterfvSGI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glColorTableParameterfvSGI v0 v1 v2 = funGL 2201 >>= \f -> liftIO $ f v0 v1 v2

glColorTableParameterivSGI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glColorTableParameterivSGI v0 v1 v2 = funGL 2202 >>= \f -> liftIO $ f v0 v1 v2

glColorTableSGI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glColorTableSGI v0 v1 v2 v3 v4 v5 = funGL 2203 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glCopyColorTableSGI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> m ()
glCopyColorTableSGI v0 v1 v2 v3 v4 = funGL 2204 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetColorTableParameterfvSGI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetColorTableParameterfvSGI v0 v1 v2 = funGL 2205 >>= \f -> liftIO $ f v0 v1 v2

glGetColorTableParameterivSGI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetColorTableParameterivSGI v0 v1 v2 = funGL 2206 >>= \f -> liftIO $ f v0 v1 v2

glGetColorTableSGI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr () -> m ()
glGetColorTableSGI v0 v1 v2 v3 = funGL 2207 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_COLOR_TABLE_ALPHA_SIZE_SGI :: GLenum
gl_COLOR_TABLE_ALPHA_SIZE_SGI = 0x80DD

gl_COLOR_TABLE_BIAS_SGI :: GLenum
gl_COLOR_TABLE_BIAS_SGI = 0x80D7

gl_COLOR_TABLE_BLUE_SIZE_SGI :: GLenum
gl_COLOR_TABLE_BLUE_SIZE_SGI = 0x80DC

gl_COLOR_TABLE_FORMAT_SGI :: GLenum
gl_COLOR_TABLE_FORMAT_SGI = 0x80D8

gl_COLOR_TABLE_GREEN_SIZE_SGI :: GLenum
gl_COLOR_TABLE_GREEN_SIZE_SGI = 0x80DB

gl_COLOR_TABLE_INTENSITY_SIZE_SGI :: GLenum
gl_COLOR_TABLE_INTENSITY_SIZE_SGI = 0x80DF

gl_COLOR_TABLE_LUMINANCE_SIZE_SGI :: GLenum
gl_COLOR_TABLE_LUMINANCE_SIZE_SGI = 0x80DE

gl_COLOR_TABLE_RED_SIZE_SGI :: GLenum
gl_COLOR_TABLE_RED_SIZE_SGI = 0x80DA

gl_COLOR_TABLE_SCALE_SGI :: GLenum
gl_COLOR_TABLE_SCALE_SGI = 0x80D6

gl_COLOR_TABLE_SGI :: GLenum
gl_COLOR_TABLE_SGI = 0x80D0

gl_COLOR_TABLE_WIDTH_SGI :: GLenum
gl_COLOR_TABLE_WIDTH_SGI = 0x80D9

gl_POST_COLOR_MATRIX_COLOR_TABLE_SGI :: GLenum
gl_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D2

gl_POST_CONVOLUTION_COLOR_TABLE_SGI :: GLenum
gl_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D1

gl_PROXY_COLOR_TABLE_SGI :: GLenum
gl_PROXY_COLOR_TABLE_SGI = 0x80D3

gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI :: GLenum
gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D5

gl_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI :: GLenum
gl_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D4