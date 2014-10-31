-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.VertexPreclip (
	-- * Extension Support
	  gl_SGIX_vertex_preclip

	-- * GL_SGIX_vertex_preclip
	, gl_VERTEX_PRECLIP_HINT_SGIX
	, gl_VERTEX_PRECLIP_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_vertex_preclip :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_vertex_preclip = extGL 662

gl_VERTEX_PRECLIP_HINT_SGIX :: GLenum
gl_VERTEX_PRECLIP_HINT_SGIX = 0x83EF

gl_VERTEX_PRECLIP_SGIX :: GLenum
gl_VERTEX_PRECLIP_SGIX = 0x83EE