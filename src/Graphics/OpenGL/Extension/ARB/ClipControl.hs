-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ClipControl (
	-- * Extension Support
	  gl_ARB_clip_control

	-- * GL_ARB_clip_control
	, glClipControl
	, gl_CLIP_DEPTH_MODE
	, gl_CLIP_ORIGIN
	, gl_LOWER_LEFT
	, gl_NEGATIVE_ONE_TO_ONE
	, gl_UPPER_LEFT
	, gl_ZERO_TO_ONE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_clip_control :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_clip_control = extGL 80