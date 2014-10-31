-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.TextureColorMask (
	-- * Extension Support
	  gl_SGIS_texture_color_mask

	-- * GL_SGIS_texture_color_mask
	, glTextureColorMaskSGIS
	, gl_TEXTURE_COLOR_WRITEMASK_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_texture_color_mask :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_texture_color_mask = extGL 623

glTextureColorMaskSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLboolean -> GLboolean -> GLboolean -> GLboolean -> m ()
glTextureColorMaskSGIS v0 v1 v2 v3 = funGL 2226 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_TEXTURE_COLOR_WRITEMASK_SGIS :: GLenum
gl_TEXTURE_COLOR_WRITEMASK_SGIS = 0x81EF