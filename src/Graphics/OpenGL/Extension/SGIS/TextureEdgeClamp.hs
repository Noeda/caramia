-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.TextureEdgeClamp (
	-- * Extension Support
	  gl_SGIS_texture_edge_clamp

	-- * GL_SGIS_texture_edge_clamp
	, gl_CLAMP_TO_EDGE_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_texture_edge_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_texture_edge_clamp = extGL 624

gl_CLAMP_TO_EDGE_SGIS :: GLenum
gl_CLAMP_TO_EDGE_SGIS = 0x812F