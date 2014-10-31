-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TextureShader2 (
	-- * Extension Support
	  gl_NV_texture_shader2

	-- * GL_NV_texture_shader2
	, gl_DOT_PRODUCT_TEXTURE_3D_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texture_shader2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texture_shader2 = extGL 525

gl_DOT_PRODUCT_TEXTURE_3D_NV :: GLenum
gl_DOT_PRODUCT_TEXTURE_3D_NV = 0x86EF