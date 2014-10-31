-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.MultisampleFilterHint (
	-- * Extension Support
	  gl_NV_multisample_filter_hint

	-- * GL_NV_multisample_filter_hint
	, gl_MULTISAMPLE_FILTER_HINT_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_multisample_filter_hint :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_multisample_filter_hint = extGL 479

gl_MULTISAMPLE_FILTER_HINT_NV :: GLenum
gl_MULTISAMPLE_FILTER_HINT_NV = 0x8534