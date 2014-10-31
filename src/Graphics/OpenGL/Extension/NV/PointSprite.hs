-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.PointSprite (
	-- * Extension Support
	  gl_NV_point_sprite

	-- * GL_NV_point_sprite
	, glPointParameteriNV
	, glPointParameterivNV
	, gl_COORD_REPLACE_NV
	, gl_POINT_SPRITE_NV
	, gl_POINT_SPRITE_R_MODE_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_point_sprite :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_point_sprite = extGL 487

glPointParameteriNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glPointParameteriNV v0 v1 = funGL 1776 >>= \f -> liftIO $ f v0 v1

glPointParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glPointParameterivNV v0 v1 = funGL 1777 >>= \f -> liftIO $ f v0 v1

gl_COORD_REPLACE_NV :: GLenum
gl_COORD_REPLACE_NV = 0x8862

gl_POINT_SPRITE_NV :: GLenum
gl_POINT_SPRITE_NV = 0x8861

gl_POINT_SPRITE_R_MODE_NV :: GLenum
gl_POINT_SPRITE_R_MODE_NV = 0x8863