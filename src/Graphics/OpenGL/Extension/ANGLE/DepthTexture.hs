-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.DepthTexture (
	-- * Extension Support
	  gl_ANGLE_depth_texture

	-- * GL_ANGLE_depth_texture
	, gl_DEPTH24_STENCIL8_OES
	, gl_DEPTH_COMPONENT
	, gl_DEPTH_COMPONENT16
	, gl_DEPTH_COMPONENT32_OES
	, gl_DEPTH_STENCIL_OES
	, gl_UNSIGNED_INT
	, gl_UNSIGNED_INT_24_8_OES
	, gl_UNSIGNED_SHORT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ANGLE_depth_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_depth_texture = extGL 34