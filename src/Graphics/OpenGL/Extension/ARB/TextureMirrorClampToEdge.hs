-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureMirrorClampToEdge (
	-- * Extension Support
	  gl_ARB_texture_mirror_clamp_to_edge

	-- * GL_ARB_texture_mirror_clamp_to_edge
	, gl_MIRROR_CLAMP_TO_EDGE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_mirror_clamp_to_edge :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_mirror_clamp_to_edge = extGL 190