-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Sprite (
	-- * Extension Support
	  gl_SGIX_sprite

	-- * GL_SGIX_sprite
	, glSpriteParameterfSGIX
	, glSpriteParameterfvSGIX
	, glSpriteParameteriSGIX
	, glSpriteParameterivSGIX
	, gl_SPRITE_AXIAL_SGIX
	, gl_SPRITE_AXIS_SGIX
	, gl_SPRITE_EYE_ALIGNED_SGIX
	, gl_SPRITE_MODE_SGIX
	, gl_SPRITE_OBJECT_ALIGNED_SGIX
	, gl_SPRITE_SGIX
	, gl_SPRITE_TRANSLATION_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_sprite :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_sprite = extGL 654

glSpriteParameterfSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glSpriteParameterfSGIX v0 v1 = funGL 2274 >>= \f -> liftIO $ f v0 v1

glSpriteParameterfvSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glSpriteParameterfvSGIX v0 v1 = funGL 2275 >>= \f -> liftIO $ f v0 v1

glSpriteParameteriSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glSpriteParameteriSGIX v0 v1 = funGL 2276 >>= \f -> liftIO $ f v0 v1

glSpriteParameterivSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glSpriteParameterivSGIX v0 v1 = funGL 2277 >>= \f -> liftIO $ f v0 v1

gl_SPRITE_AXIAL_SGIX :: GLenum
gl_SPRITE_AXIAL_SGIX = 0x814C

gl_SPRITE_AXIS_SGIX :: GLenum
gl_SPRITE_AXIS_SGIX = 0x814A

gl_SPRITE_EYE_ALIGNED_SGIX :: GLenum
gl_SPRITE_EYE_ALIGNED_SGIX = 0x814E

gl_SPRITE_MODE_SGIX :: GLenum
gl_SPRITE_MODE_SGIX = 0x8149

gl_SPRITE_OBJECT_ALIGNED_SGIX :: GLenum
gl_SPRITE_OBJECT_ALIGNED_SGIX = 0x814D

gl_SPRITE_SGIX :: GLenum
gl_SPRITE_SGIX = 0x8148

gl_SPRITE_TRANSLATION_SGIX :: GLenum
gl_SPRITE_TRANSLATION_SGIX = 0x814B