-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.EnhancedLayouts (
	-- * Extension Support
	  gl_ARB_enhanced_layouts

	-- * GL_ARB_enhanced_layouts
	, gl_LOCATION_COMPONENT
	, gl_TRANSFORM_FEEDBACK_BUFFER
	, gl_TRANSFORM_FEEDBACK_BUFFER_INDEX
	, gl_TRANSFORM_FEEDBACK_BUFFER_STRIDE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_enhanced_layouts :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_enhanced_layouts = extGL 102