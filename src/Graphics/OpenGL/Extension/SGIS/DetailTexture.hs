-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.DetailTexture (
	-- * Extension Support
	  gl_SGIS_detail_texture

	-- * GL_SGIS_detail_texture
	, glDetailTexFuncSGIS
	, glGetDetailTexFuncSGIS
	, gl_DETAIL_TEXTURE_2D_BINDING_SGIS
	, gl_DETAIL_TEXTURE_2D_SGIS
	, gl_DETAIL_TEXTURE_FUNC_POINTS_SGIS
	, gl_DETAIL_TEXTURE_LEVEL_SGIS
	, gl_DETAIL_TEXTURE_MODE_SGIS
	, gl_LINEAR_DETAIL_ALPHA_SGIS
	, gl_LINEAR_DETAIL_COLOR_SGIS
	, gl_LINEAR_DETAIL_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_detail_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_detail_texture = extGL 613

glDetailTexFuncSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLfloat -> m ()
glDetailTexFuncSGIS v0 v1 v2 = funGL 2208 >>= \f -> liftIO $ f v0 v1 v2

glGetDetailTexFuncSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glGetDetailTexFuncSGIS v0 v1 = funGL 2209 >>= \f -> liftIO $ f v0 v1

gl_DETAIL_TEXTURE_2D_BINDING_SGIS :: GLenum
gl_DETAIL_TEXTURE_2D_BINDING_SGIS = 0x8096

gl_DETAIL_TEXTURE_2D_SGIS :: GLenum
gl_DETAIL_TEXTURE_2D_SGIS = 0x8095

gl_DETAIL_TEXTURE_FUNC_POINTS_SGIS :: GLenum
gl_DETAIL_TEXTURE_FUNC_POINTS_SGIS = 0x809C

gl_DETAIL_TEXTURE_LEVEL_SGIS :: GLenum
gl_DETAIL_TEXTURE_LEVEL_SGIS = 0x809A

gl_DETAIL_TEXTURE_MODE_SGIS :: GLenum
gl_DETAIL_TEXTURE_MODE_SGIS = 0x809B

gl_LINEAR_DETAIL_ALPHA_SGIS :: GLenum
gl_LINEAR_DETAIL_ALPHA_SGIS = 0x8098

gl_LINEAR_DETAIL_COLOR_SGIS :: GLenum
gl_LINEAR_DETAIL_COLOR_SGIS = 0x8099

gl_LINEAR_DETAIL_SGIS :: GLenum
gl_LINEAR_DETAIL_SGIS = 0x8097