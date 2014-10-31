-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.IndexMaterial (
	-- * Extension Support
	  gl_EXT_index_material

	-- * GL_EXT_index_material
	, glIndexMaterialEXT
	, gl_INDEX_MATERIAL_EXT
	, gl_INDEX_MATERIAL_FACE_EXT
	, gl_INDEX_MATERIAL_PARAMETER_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_index_material :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_index_material = extGL 292

glIndexMaterialEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glIndexMaterialEXT v0 v1 = funGL 1291 >>= \f -> liftIO $ f v0 v1

gl_INDEX_MATERIAL_EXT :: GLenum
gl_INDEX_MATERIAL_EXT = 0x81B8

gl_INDEX_MATERIAL_FACE_EXT :: GLenum
gl_INDEX_MATERIAL_FACE_EXT = 0x81BA

gl_INDEX_MATERIAL_PARAMETER_EXT :: GLenum
gl_INDEX_MATERIAL_PARAMETER_EXT = 0x81B9