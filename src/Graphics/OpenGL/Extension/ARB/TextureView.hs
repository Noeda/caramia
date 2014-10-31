-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureView (
	-- * Extension Support
	  gl_ARB_texture_view

	-- * GL_ARB_texture_view
	, glTextureView
	, gl_TEXTURE_IMMUTABLE_LEVELS
	, gl_TEXTURE_VIEW_MIN_LAYER
	, gl_TEXTURE_VIEW_MIN_LEVEL
	, gl_TEXTURE_VIEW_NUM_LAYERS
	, gl_TEXTURE_VIEW_NUM_LEVELS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_view :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_view = extGL 203