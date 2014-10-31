-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PrimitiveBoundingBox (
	-- * Extension Support
	  gl_EXT_primitive_bounding_box

	-- * GL_EXT_primitive_bounding_box
	, glPrimitiveBoundingBoxEXT
	, gl_PRIMITIVE_BOUNDING_BOX_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_primitive_bounding_box :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_primitive_bounding_box = extGL 314

glPrimitiveBoundingBoxEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glPrimitiveBoundingBoxEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1320 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_PRIMITIVE_BOUNDING_BOX_EXT :: GLenum
gl_PRIMITIVE_BOUNDING_BOX_EXT = 0x92BE