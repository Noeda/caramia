-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.ListPriority (
	-- * Extension Support
	  gl_SGIX_list_priority

	-- * GL_SGIX_list_priority
	, glGetListParameterfvSGIX
	, glGetListParameterivSGIX
	, glListParameterfSGIX
	, glListParameterfvSGIX
	, glListParameteriSGIX
	, glListParameterivSGIX
	, gl_LIST_PRIORITY_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_list_priority :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_list_priority = extGL 645

glGetListParameterfvSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetListParameterfvSGIX v0 v1 v2 = funGL 2262 >>= \f -> liftIO $ f v0 v1 v2

glGetListParameterivSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetListParameterivSGIX v0 v1 v2 = funGL 2263 >>= \f -> liftIO $ f v0 v1 v2

glListParameterfSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLfloat -> m ()
glListParameterfSGIX v0 v1 v2 = funGL 2264 >>= \f -> liftIO $ f v0 v1 v2

glListParameterfvSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glListParameterfvSGIX v0 v1 v2 = funGL 2265 >>= \f -> liftIO $ f v0 v1 v2

glListParameteriSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glListParameteriSGIX v0 v1 v2 = funGL 2266 >>= \f -> liftIO $ f v0 v1 v2

glListParameterivSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glListParameterivSGIX v0 v1 v2 = funGL 2267 >>= \f -> liftIO $ f v0 v1 v2

gl_LIST_PRIORITY_SGIX :: GLenum
gl_LIST_PRIORITY_SGIX = 0x8182