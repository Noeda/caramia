-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.ProvokingVertex (
	-- * Extension Support
	  gl_EXT_provoking_vertex

	-- * GL_EXT_provoking_vertex
	, glProvokingVertexEXT
	, gl_FIRST_VERTEX_CONVENTION_EXT
	, gl_LAST_VERTEX_CONVENTION_EXT
	, gl_PROVOKING_VERTEX_EXT
	, gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_provoking_vertex :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_provoking_vertex = extGL 315

glProvokingVertexEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glProvokingVertexEXT v0 = funGL 1321 >>= \f -> liftIO $ f v0

gl_PROVOKING_VERTEX_EXT :: GLenum
gl_PROVOKING_VERTEX_EXT = 0x8E4F

gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT :: GLenum
gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT = 0x8E4C