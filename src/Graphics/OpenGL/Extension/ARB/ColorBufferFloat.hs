-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ColorBufferFloat (
	-- * Extension Support
	  gl_ARB_color_buffer_float

	-- * GL_ARB_color_buffer_float
	, glClampColorARB
	, gl_CLAMP_FRAGMENT_COLOR_ARB
	, gl_CLAMP_READ_COLOR_ARB
	, gl_CLAMP_VERTEX_COLOR_ARB
	, gl_FIXED_ONLY_ARB
	, gl_RGBA_FLOAT_MODE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_color_buffer_float :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_color_buffer_float = extGL 81

glClampColorARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glClampColorARB v0 v1 = funGL 144 >>= \f -> liftIO $ f v0 v1

gl_CLAMP_FRAGMENT_COLOR_ARB :: GLenum
gl_CLAMP_FRAGMENT_COLOR_ARB = 0x891B

gl_CLAMP_READ_COLOR_ARB :: GLenum
gl_CLAMP_READ_COLOR_ARB = 0x891C

gl_CLAMP_VERTEX_COLOR_ARB :: GLenum
gl_CLAMP_VERTEX_COLOR_ARB = 0x891A

gl_FIXED_ONLY_ARB :: GLenum
gl_FIXED_ONLY_ARB = 0x891D

gl_RGBA_FLOAT_MODE_ARB :: GLenum
gl_RGBA_FLOAT_MODE_ARB = 0x8820