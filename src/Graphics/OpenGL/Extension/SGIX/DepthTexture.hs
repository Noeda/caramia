-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.DepthTexture (
	-- * Extension Support
	  gl_SGIX_depth_texture

	-- * GL_SGIX_depth_texture
	, gl_DEPTH_COMPONENT16_SGIX
	, gl_DEPTH_COMPONENT24_SGIX
	, gl_DEPTH_COMPONENT32_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_depth_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_depth_texture = extGL 636

gl_DEPTH_COMPONENT16_SGIX :: GLenum
gl_DEPTH_COMPONENT16_SGIX = 0x81A5

gl_DEPTH_COMPONENT24_SGIX :: GLenum
gl_DEPTH_COMPONENT24_SGIX = 0x81A6

gl_DEPTH_COMPONENT32_SGIX :: GLenum
gl_DEPTH_COMPONENT32_SGIX = 0x81A7