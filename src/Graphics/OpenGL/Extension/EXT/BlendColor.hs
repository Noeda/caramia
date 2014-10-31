-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.BlendColor (
	-- * Extension Support
	  gl_EXT_blend_color

	-- * GL_EXT_blend_color
	, glBlendColorEXT
	, gl_BLEND_COLOR_EXT
	, gl_CONSTANT_ALPHA_EXT
	, gl_CONSTANT_COLOR_EXT
	, gl_ONE_MINUS_CONSTANT_ALPHA_EXT
	, gl_ONE_MINUS_CONSTANT_COLOR_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_blend_color :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_blend_color = extGL 250

glBlendColorEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glBlendColorEXT v0 v1 v2 v3 = funGL 904 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_BLEND_COLOR_EXT :: GLenum
gl_BLEND_COLOR_EXT = 0x8005

gl_CONSTANT_ALPHA_EXT :: GLenum
gl_CONSTANT_ALPHA_EXT = 0x8003

gl_CONSTANT_COLOR_EXT :: GLenum
gl_CONSTANT_COLOR_EXT = 0x8001

gl_ONE_MINUS_CONSTANT_ALPHA_EXT :: GLenum
gl_ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004

gl_ONE_MINUS_CONSTANT_COLOR_EXT :: GLenum
gl_ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002