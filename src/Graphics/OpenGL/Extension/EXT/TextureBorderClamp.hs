-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureBorderClamp (
	-- * Extension Support
	  gl_EXT_texture_border_clamp

	-- * GL_EXT_texture_border_clamp
	, glGetSamplerParameterIivEXT
	, glGetSamplerParameterIuivEXT
	, glGetTexParameterIivEXT
	, glGetTexParameterIuivEXT
	, glSamplerParameterIivEXT
	, glSamplerParameterIuivEXT
	, glTexParameterIivEXT
	, glTexParameterIuivEXT
	, gl_CLAMP_TO_BORDER_EXT
	, gl_TEXTURE_BORDER_COLOR_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_border_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_border_clamp = extGL 347

glGetSamplerParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetSamplerParameterIivEXT v0 v1 v2 = funGL 1367 >>= \f -> liftIO $ f v0 v1 v2

glGetSamplerParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetSamplerParameterIuivEXT v0 v1 v2 = funGL 1368 >>= \f -> liftIO $ f v0 v1 v2

glSamplerParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glSamplerParameterIivEXT v0 v1 v2 = funGL 1371 >>= \f -> liftIO $ f v0 v1 v2

glSamplerParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glSamplerParameterIuivEXT v0 v1 v2 = funGL 1372 >>= \f -> liftIO $ f v0 v1 v2

gl_CLAMP_TO_BORDER_EXT :: GLenum
gl_CLAMP_TO_BORDER_EXT = 0x812D

gl_TEXTURE_BORDER_COLOR_EXT :: GLenum
gl_TEXTURE_BORDER_COLOR_EXT = 0x1004