-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.TransformHint (
	-- * Extension Support
	  gl_APPLE_transform_hint

	-- * GL_APPLE_transform_hint
	, gl_TRANSFORM_HINT_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_transform_hint :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_transform_hint = extGL 64

gl_TRANSFORM_HINT_APPLE :: GLenum
gl_TRANSFORM_HINT_APPLE = 0x85B1