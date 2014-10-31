-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.DepthTexture (
	-- * Extension Support
	  gl_OES_depth_texture

	-- * GL_OES_depth_texture
	, gl_DEPTH_COMPONENT
	, gl_UNSIGNED_INT
	, gl_UNSIGNED_SHORT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_OES_depth_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_depth_texture = extGL 553