-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Framezoom (
	-- * Extension Support
	  gl_SGIX_framezoom

	-- * GL_SGIX_framezoom
	, glFrameZoomSGIX
	, gl_FRAMEZOOM_FACTOR_SGIX
	, gl_FRAMEZOOM_SGIX
	, gl_MAX_FRAMEZOOM_FACTOR_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_framezoom :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_framezoom = extGL 640

glFrameZoomSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glFrameZoomSGIX v0 = funGL 2254 >>= \f -> liftIO $ f v0

gl_FRAMEZOOM_FACTOR_SGIX :: GLenum
gl_FRAMEZOOM_FACTOR_SGIX = 0x818C

gl_FRAMEZOOM_SGIX :: GLenum
gl_FRAMEZOOM_SGIX = 0x818B

gl_MAX_FRAMEZOOM_FACTOR_SGIX :: GLenum
gl_MAX_FRAMEZOOM_FACTOR_SGIX = 0x818D