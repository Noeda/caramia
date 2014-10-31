-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.Mapbuffer (
	-- * Extension Support
	  gl_OES_mapbuffer

	-- * GL_OES_mapbuffer
	, glGetBufferPointervOES
	, glMapBufferOES
	, glUnmapBufferOES
	, gl_BUFFER_ACCESS_OES
	, gl_BUFFER_MAPPED_OES
	, gl_BUFFER_MAP_POINTER_OES
	, gl_WRITE_ONLY_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_mapbuffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_mapbuffer = extGL 562

glGetBufferPointervOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> m ()
glGetBufferPointervOES v0 v1 v2 = funGL 2148 >>= \f -> liftIO $ f v0 v1 v2

glMapBufferOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m (Ptr ())
glMapBufferOES v0 v1 = funGL 2149 >>= \f -> liftIO $ f v0 v1

glUnmapBufferOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLboolean
glUnmapBufferOES v0 = funGL 2150 >>= \f -> liftIO $ f v0

gl_BUFFER_ACCESS_OES :: GLenum
gl_BUFFER_ACCESS_OES = 0x88BB

gl_BUFFER_MAPPED_OES :: GLenum
gl_BUFFER_MAPPED_OES = 0x88BC

gl_BUFFER_MAP_POINTER_OES :: GLenum
gl_BUFFER_MAP_POINTER_OES = 0x88BD

gl_WRITE_ONLY_OES :: GLenum
gl_WRITE_ONLY_OES = 0x88B9