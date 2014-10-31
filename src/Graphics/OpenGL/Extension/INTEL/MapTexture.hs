-- This file was automatically generated.
module Graphics.OpenGL.Extension.INTEL.MapTexture (
	-- * Extension Support
	  gl_INTEL_map_texture

	-- * GL_INTEL_map_texture
	, glMapTexture2DINTEL
	, glSyncTextureINTEL
	, glUnmapTexture2DINTEL
	, gl_LAYOUT_DEFAULT_INTEL
	, gl_LAYOUT_LINEAR_CPU_CACHED_INTEL
	, gl_LAYOUT_LINEAR_INTEL
	, gl_TEXTURE_MEMORY_LAYOUT_INTEL
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_INTEL_map_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_INTEL_map_texture = extGL 410

glMapTexture2DINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLbitfield -> Ptr GLint -> Ptr GLenum -> m (Ptr ())
glMapTexture2DINTEL v0 v1 v2 v3 v4 = funGL 1486 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glSyncTextureINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glSyncTextureINTEL v0 = funGL 1487 >>= \f -> liftIO $ f v0

glUnmapTexture2DINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> m ()
glUnmapTexture2DINTEL v0 v1 = funGL 1488 >>= \f -> liftIO $ f v0 v1

gl_LAYOUT_DEFAULT_INTEL :: GLenum
gl_LAYOUT_DEFAULT_INTEL = 0

gl_LAYOUT_LINEAR_CPU_CACHED_INTEL :: GLenum
gl_LAYOUT_LINEAR_CPU_CACHED_INTEL = 2

gl_LAYOUT_LINEAR_INTEL :: GLenum
gl_LAYOUT_LINEAR_INTEL = 1

gl_TEXTURE_MEMORY_LAYOUT_INTEL :: GLenum
gl_TEXTURE_MEMORY_LAYOUT_INTEL = 0x83FF