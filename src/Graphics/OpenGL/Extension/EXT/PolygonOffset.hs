-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PolygonOffset (
	-- * Extension Support
	  gl_EXT_polygon_offset

	-- * GL_EXT_polygon_offset
	, glPolygonOffsetEXT
	, gl_POLYGON_OFFSET_BIAS_EXT
	, gl_POLYGON_OFFSET_EXT
	, gl_POLYGON_OFFSET_FACTOR_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_polygon_offset :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_polygon_offset = extGL 311

glPolygonOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glPolygonOffsetEXT v0 v1 = funGL 1318 >>= \f -> liftIO $ f v0 v1

gl_POLYGON_OFFSET_BIAS_EXT :: GLenum
gl_POLYGON_OFFSET_BIAS_EXT = 0x8039

gl_POLYGON_OFFSET_EXT :: GLenum
gl_POLYGON_OFFSET_EXT = 0x8037

gl_POLYGON_OFFSET_FACTOR_EXT :: GLenum
gl_POLYGON_OFFSET_FACTOR_EXT = 0x8038