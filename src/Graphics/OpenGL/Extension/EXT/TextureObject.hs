-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureObject (
	-- * Extension Support
	  gl_EXT_texture_object

	-- * GL_EXT_texture_object
	, glAreTexturesResidentEXT
	, glBindTextureEXT
	, glDeleteTexturesEXT
	, glGenTexturesEXT
	, glIsTextureEXT
	, glPrioritizeTexturesEXT
	, gl_TEXTURE_1D_BINDING_EXT
	, gl_TEXTURE_2D_BINDING_EXT
	, gl_TEXTURE_3D_BINDING_EXT
	, gl_TEXTURE_PRIORITY_EXT
	, gl_TEXTURE_RESIDENT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_object = extGL 365

glAreTexturesResidentEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> Ptr GLboolean -> m GLboolean
glAreTexturesResidentEXT v0 v1 v2 = funGL 1379 >>= \f -> liftIO $ f v0 v1 v2

glBindTextureEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindTextureEXT v0 v1 = funGL 1380 >>= \f -> liftIO $ f v0 v1

glDeleteTexturesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteTexturesEXT v0 v1 = funGL 1381 >>= \f -> liftIO $ f v0 v1

glGenTexturesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenTexturesEXT v0 v1 = funGL 1382 >>= \f -> liftIO $ f v0 v1

glIsTextureEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsTextureEXT v0 = funGL 1383 >>= \f -> liftIO $ f v0

glPrioritizeTexturesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> Ptr GLclampf -> m ()
glPrioritizeTexturesEXT v0 v1 v2 = funGL 1384 >>= \f -> liftIO $ f v0 v1 v2

gl_TEXTURE_1D_BINDING_EXT :: GLenum
gl_TEXTURE_1D_BINDING_EXT = 0x8068

gl_TEXTURE_2D_BINDING_EXT :: GLenum
gl_TEXTURE_2D_BINDING_EXT = 0x8069

gl_TEXTURE_3D_BINDING_EXT :: GLenum
gl_TEXTURE_3D_BINDING_EXT = 0x806A

gl_TEXTURE_PRIORITY_EXT :: GLenum
gl_TEXTURE_PRIORITY_EXT = 0x8066

gl_TEXTURE_RESIDENT_EXT :: GLenum
gl_TEXTURE_RESIDENT_EXT = 0x8067