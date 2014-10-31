-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.CullVertex (
	-- * Extension Support
	  gl_EXT_cull_vertex

	-- * GL_EXT_cull_vertex
	, glCullParameterdvEXT
	, glCullParameterfvEXT
	, gl_CULL_VERTEX_EXT
	, gl_CULL_VERTEX_EYE_POSITION_EXT
	, gl_CULL_VERTEX_OBJECT_POSITION_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_cull_vertex :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_cull_vertex = extGL 265

glCullParameterdvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glCullParameterdvEXT v0 v1 = funGL 953 >>= \f -> liftIO $ f v0 v1

glCullParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glCullParameterfvEXT v0 v1 = funGL 954 >>= \f -> liftIO $ f v0 v1

gl_CULL_VERTEX_EXT :: GLenum
gl_CULL_VERTEX_EXT = 0x81AA

gl_CULL_VERTEX_EYE_POSITION_EXT :: GLenum
gl_CULL_VERTEX_EYE_POSITION_EXT = 0x81AB

gl_CULL_VERTEX_OBJECT_POSITION_EXT :: GLenum
gl_CULL_VERTEX_OBJECT_POSITION_EXT = 0x81AC