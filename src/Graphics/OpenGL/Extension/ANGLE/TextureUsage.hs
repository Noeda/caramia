-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.TextureUsage (
	-- * Extension Support
	  gl_ANGLE_texture_usage

	-- * GL_ANGLE_texture_usage
	, gl_FRAMEBUFFER_ATTACHMENT_ANGLE
	, gl_TEXTURE_USAGE_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_texture_usage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_texture_usage = extGL 42

gl_FRAMEBUFFER_ATTACHMENT_ANGLE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_ANGLE = 0x93A3

gl_TEXTURE_USAGE_ANGLE :: GLenum
gl_TEXTURE_USAGE_ANGLE = 0x93A2