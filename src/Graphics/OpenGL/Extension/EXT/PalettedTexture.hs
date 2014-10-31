-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.PalettedTexture (
	-- * Extension Support
	  gl_EXT_paletted_texture

	-- * GL_EXT_paletted_texture
	, glColorTableEXT
	, glGetColorTableEXT
	, glGetColorTableParameterfvEXT
	, glGetColorTableParameterivEXT
	, gl_COLOR_INDEX12_EXT
	, gl_COLOR_INDEX16_EXT
	, gl_COLOR_INDEX1_EXT
	, gl_COLOR_INDEX2_EXT
	, gl_COLOR_INDEX4_EXT
	, gl_COLOR_INDEX8_EXT
	, gl_TEXTURE_INDEX_SIZE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_paletted_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_paletted_texture = extGL 306

glColorTableEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glColorTableEXT v0 v1 v2 v3 v4 v5 = funGL 1306 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetColorTableEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr () -> m ()
glGetColorTableEXT v0 v1 v2 v3 = funGL 1307 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetColorTableParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetColorTableParameterfvEXT v0 v1 v2 = funGL 1308 >>= \f -> liftIO $ f v0 v1 v2

glGetColorTableParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetColorTableParameterivEXT v0 v1 v2 = funGL 1309 >>= \f -> liftIO $ f v0 v1 v2

gl_COLOR_INDEX12_EXT :: GLenum
gl_COLOR_INDEX12_EXT = 0x80E6

gl_COLOR_INDEX16_EXT :: GLenum
gl_COLOR_INDEX16_EXT = 0x80E7

gl_COLOR_INDEX1_EXT :: GLenum
gl_COLOR_INDEX1_EXT = 0x80E2

gl_COLOR_INDEX2_EXT :: GLenum
gl_COLOR_INDEX2_EXT = 0x80E3

gl_COLOR_INDEX4_EXT :: GLenum
gl_COLOR_INDEX4_EXT = 0x80E4

gl_COLOR_INDEX8_EXT :: GLenum
gl_COLOR_INDEX8_EXT = 0x80E5

gl_TEXTURE_INDEX_SIZE_EXT :: GLenum
gl_TEXTURE_INDEX_SIZE_EXT = 0x80ED