-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ConditionalRenderInverted (
	-- * Extension Support
	  gl_ARB_conditional_render_inverted

	-- * GL_ARB_conditional_render_inverted
	, gl_QUERY_BY_REGION_NO_WAIT_INVERTED
	, gl_QUERY_BY_REGION_WAIT_INVERTED
	, gl_QUERY_NO_WAIT_INVERTED
	, gl_QUERY_WAIT_INVERTED
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_conditional_render_inverted :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_conditional_render_inverted = extGL 86