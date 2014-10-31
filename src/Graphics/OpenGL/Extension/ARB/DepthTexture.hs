-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.DepthTexture (
	-- * Extension Support
	  gl_ARB_depth_texture

	-- * GL_ARB_depth_texture
	, gl_DEPTH_COMPONENT16_ARB
	, gl_DEPTH_COMPONENT24_ARB
	, gl_DEPTH_COMPONENT32_ARB
	, gl_DEPTH_TEXTURE_MODE_ARB
	, gl_TEXTURE_DEPTH_SIZE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_depth_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_depth_texture = extGL 94

gl_DEPTH_COMPONENT16_ARB :: GLenum
gl_DEPTH_COMPONENT16_ARB = 0x81A5

gl_DEPTH_COMPONENT24_ARB :: GLenum
gl_DEPTH_COMPONENT24_ARB = 0x81A6

gl_DEPTH_COMPONENT32_ARB :: GLenum
gl_DEPTH_COMPONENT32_ARB = 0x81A7

gl_DEPTH_TEXTURE_MODE_ARB :: GLenum
gl_DEPTH_TEXTURE_MODE_ARB = 0x884B

gl_TEXTURE_DEPTH_SIZE_ARB :: GLenum
gl_TEXTURE_DEPTH_SIZE_ARB = 0x884A