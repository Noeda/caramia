-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.PathRenderingSharedEdge (
	-- * Extension Support
	  gl_NV_path_rendering_shared_edge

	-- * GL_NV_path_rendering_shared_edge
	, gl_SHARED_EDGE_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_path_rendering_shared_edge :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_path_rendering_shared_edge = extGL 496

gl_SHARED_EDGE_NV :: GLenum
gl_SHARED_EDGE_NV = 0xC0