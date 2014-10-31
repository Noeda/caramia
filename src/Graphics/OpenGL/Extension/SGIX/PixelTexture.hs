-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.PixelTexture (
	-- * Extension Support
	  gl_SGIX_pixel_texture

	-- * GL_SGIX_pixel_texture
	, glPixelTexGenSGIX
	, gl_PIXEL_TEX_GEN_MODE_SGIX
	, gl_PIXEL_TEX_GEN_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_pixel_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_pixel_texture = extGL 646

glPixelTexGenSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glPixelTexGenSGIX v0 = funGL 2268 >>= \f -> liftIO $ f v0

gl_PIXEL_TEX_GEN_MODE_SGIX :: GLenum
gl_PIXEL_TEX_GEN_MODE_SGIX = 0x832B

gl_PIXEL_TEX_GEN_SGIX :: GLenum
gl_PIXEL_TEX_GEN_SGIX = 0x8139