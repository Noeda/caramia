-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.ObjectPurgeable (
	-- * Extension Support
	  gl_APPLE_object_purgeable

	-- * GL_APPLE_object_purgeable
	, glGetObjectParameterivAPPLE
	, glObjectPurgeableAPPLE
	, glObjectUnpurgeableAPPLE
	, gl_BUFFER_OBJECT_APPLE
	, gl_PURGEABLE_APPLE
	, gl_RELEASED_APPLE
	, gl_RETAINED_APPLE
	, gl_UNDEFINED_APPLE
	, gl_VOLATILE_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_object_purgeable :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_object_purgeable = extGL 54

glGetObjectParameterivAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetObjectParameterivAPPLE v0 v1 v2 v3 = funGL 90 >>= \f -> liftIO $ f v0 v1 v2 v3

glObjectPurgeableAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> m GLenum
glObjectPurgeableAPPLE v0 v1 v2 = funGL 91 >>= \f -> liftIO $ f v0 v1 v2

glObjectUnpurgeableAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> m GLenum
glObjectUnpurgeableAPPLE v0 v1 v2 = funGL 92 >>= \f -> liftIO $ f v0 v1 v2

gl_BUFFER_OBJECT_APPLE :: GLenum
gl_BUFFER_OBJECT_APPLE = 0x85B3

gl_PURGEABLE_APPLE :: GLenum
gl_PURGEABLE_APPLE = 0x8A1D

gl_RELEASED_APPLE :: GLenum
gl_RELEASED_APPLE = 0x8A19

gl_RETAINED_APPLE :: GLenum
gl_RETAINED_APPLE = 0x8A1B

gl_UNDEFINED_APPLE :: GLenum
gl_UNDEFINED_APPLE = 0x8A1C

gl_VOLATILE_APPLE :: GLenum
gl_VOLATILE_APPLE = 0x8A1A