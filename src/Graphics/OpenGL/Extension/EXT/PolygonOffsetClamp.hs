-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PolygonOffsetClamp (
	-- * Extension Support
	  gl_EXT_polygon_offset_clamp

	-- * GL_EXT_polygon_offset_clamp
	, glPolygonOffsetClampEXT
	, gl_POLYGON_OFFSET_CLAMP_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_polygon_offset_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_polygon_offset_clamp = extGL 312

glPolygonOffsetClampEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glPolygonOffsetClampEXT v0 v1 v2 = funGL 1319 >>= \f -> liftIO $ f v0 v1 v2

gl_POLYGON_OFFSET_CLAMP_EXT :: GLenum
gl_POLYGON_OFFSET_CLAMP_EXT = 0x8E1B