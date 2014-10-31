-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ViewportArray (
	-- * Extension Support
	  gl_ARB_viewport_array

	-- * GL_ARB_viewport_array
	, glDepthRangeArrayv
	, glDepthRangeIndexed
	, glGetDoublei_v
	, glGetFloati_v
	, glScissorArrayv
	, glScissorIndexed
	, glScissorIndexedv
	, glViewportArrayv
	, glViewportIndexedf
	, glViewportIndexedfv
	, gl_DEPTH_RANGE
	, gl_FIRST_VERTEX_CONVENTION
	, gl_LAST_VERTEX_CONVENTION
	, gl_LAYER_PROVOKING_VERTEX
	, gl_MAX_VIEWPORTS
	, gl_PROVOKING_VERTEX
	, gl_SCISSOR_BOX
	, gl_SCISSOR_TEST
	, gl_UNDEFINED_VERTEX
	, gl_VIEWPORT
	, gl_VIEWPORT_BOUNDS_RANGE
	, gl_VIEWPORT_INDEX_PROVOKING_VERTEX
	, gl_VIEWPORT_SUBPIXEL_BITS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_viewport_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_viewport_array = extGL 221