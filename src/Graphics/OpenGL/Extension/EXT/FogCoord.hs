-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.FogCoord (
	-- * Extension Support
	  gl_EXT_fog_coord

	-- * GL_EXT_fog_coord
	, glFogCoordPointerEXT
	, glFogCoorddEXT
	, glFogCoorddvEXT
	, glFogCoordfEXT
	, glFogCoordfvEXT
	, gl_CURRENT_FOG_COORDINATE_EXT
	, gl_FOG_COORDINATE_ARRAY_EXT
	, gl_FOG_COORDINATE_ARRAY_POINTER_EXT
	, gl_FOG_COORDINATE_ARRAY_STRIDE_EXT
	, gl_FOG_COORDINATE_ARRAY_TYPE_EXT
	, gl_FOG_COORDINATE_EXT
	, gl_FOG_COORDINATE_SOURCE_EXT
	, gl_FRAGMENT_DEPTH_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_fog_coord :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_fog_coord = extGL 277

glFogCoordPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glFogCoordPointerEXT v0 v1 v2 = funGL 1241 >>= \f -> liftIO $ f v0 v1 v2

glFogCoorddEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> m ()
glFogCoorddEXT v0 = funGL 1242 >>= \f -> liftIO $ f v0

glFogCoorddvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glFogCoorddvEXT v0 = funGL 1243 >>= \f -> liftIO $ f v0

glFogCoordfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glFogCoordfEXT v0 = funGL 1244 >>= \f -> liftIO $ f v0

glFogCoordfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glFogCoordfvEXT v0 = funGL 1245 >>= \f -> liftIO $ f v0

gl_CURRENT_FOG_COORDINATE_EXT :: GLenum
gl_CURRENT_FOG_COORDINATE_EXT = 0x8453

gl_FOG_COORDINATE_ARRAY_EXT :: GLenum
gl_FOG_COORDINATE_ARRAY_EXT = 0x8457

gl_FOG_COORDINATE_ARRAY_POINTER_EXT :: GLenum
gl_FOG_COORDINATE_ARRAY_POINTER_EXT = 0x8456

gl_FOG_COORDINATE_ARRAY_STRIDE_EXT :: GLenum
gl_FOG_COORDINATE_ARRAY_STRIDE_EXT = 0x8455

gl_FOG_COORDINATE_ARRAY_TYPE_EXT :: GLenum
gl_FOG_COORDINATE_ARRAY_TYPE_EXT = 0x8454

gl_FOG_COORDINATE_EXT :: GLenum
gl_FOG_COORDINATE_EXT = 0x8451

gl_FOG_COORDINATE_SOURCE_EXT :: GLenum
gl_FOG_COORDINATE_SOURCE_EXT = 0x8450