-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.Multitexture (
	-- * Extension Support
	  gl_ARB_multitexture

	-- * GL_ARB_multitexture
	, glActiveTextureARB
	, glClientActiveTextureARB
	, glMultiTexCoord1dARB
	, glMultiTexCoord1dvARB
	, glMultiTexCoord1fARB
	, glMultiTexCoord1fvARB
	, glMultiTexCoord1iARB
	, glMultiTexCoord1ivARB
	, glMultiTexCoord1sARB
	, glMultiTexCoord1svARB
	, glMultiTexCoord2dARB
	, glMultiTexCoord2dvARB
	, glMultiTexCoord2fARB
	, glMultiTexCoord2fvARB
	, glMultiTexCoord2iARB
	, glMultiTexCoord2ivARB
	, glMultiTexCoord2sARB
	, glMultiTexCoord2svARB
	, glMultiTexCoord3dARB
	, glMultiTexCoord3dvARB
	, glMultiTexCoord3fARB
	, glMultiTexCoord3fvARB
	, glMultiTexCoord3iARB
	, glMultiTexCoord3ivARB
	, glMultiTexCoord3sARB
	, glMultiTexCoord3svARB
	, glMultiTexCoord4dARB
	, glMultiTexCoord4dvARB
	, glMultiTexCoord4fARB
	, glMultiTexCoord4fvARB
	, glMultiTexCoord4iARB
	, glMultiTexCoord4ivARB
	, glMultiTexCoord4sARB
	, glMultiTexCoord4svARB
	, gl_ACTIVE_TEXTURE_ARB
	, gl_CLIENT_ACTIVE_TEXTURE_ARB
	, gl_MAX_TEXTURE_UNITS_ARB
	, gl_TEXTURE0_ARB
	, gl_TEXTURE10_ARB
	, gl_TEXTURE11_ARB
	, gl_TEXTURE12_ARB
	, gl_TEXTURE13_ARB
	, gl_TEXTURE14_ARB
	, gl_TEXTURE15_ARB
	, gl_TEXTURE16_ARB
	, gl_TEXTURE17_ARB
	, gl_TEXTURE18_ARB
	, gl_TEXTURE19_ARB
	, gl_TEXTURE1_ARB
	, gl_TEXTURE20_ARB
	, gl_TEXTURE21_ARB
	, gl_TEXTURE22_ARB
	, gl_TEXTURE23_ARB
	, gl_TEXTURE24_ARB
	, gl_TEXTURE25_ARB
	, gl_TEXTURE26_ARB
	, gl_TEXTURE27_ARB
	, gl_TEXTURE28_ARB
	, gl_TEXTURE29_ARB
	, gl_TEXTURE2_ARB
	, gl_TEXTURE30_ARB
	, gl_TEXTURE31_ARB
	, gl_TEXTURE3_ARB
	, gl_TEXTURE4_ARB
	, gl_TEXTURE5_ARB
	, gl_TEXTURE6_ARB
	, gl_TEXTURE7_ARB
	, gl_TEXTURE8_ARB
	, gl_TEXTURE9_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_multitexture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_multitexture = extGL 132

glActiveTextureARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glActiveTextureARB v0 = funGL 399 >>= \f -> liftIO $ f v0

glClientActiveTextureARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glClientActiveTextureARB v0 = funGL 400 >>= \f -> liftIO $ f v0

glMultiTexCoord1dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> m ()
glMultiTexCoord1dARB v0 v1 = funGL 401 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMultiTexCoord1dvARB v0 v1 = funGL 402 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glMultiTexCoord1fARB v0 v1 = funGL 403 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMultiTexCoord1fvARB v0 v1 = funGL 404 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glMultiTexCoord1iARB v0 v1 = funGL 405 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glMultiTexCoord1ivARB v0 v1 = funGL 406 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> m ()
glMultiTexCoord1sARB v0 v1 = funGL 407 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1svARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glMultiTexCoord1svARB v0 v1 = funGL 408 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> m ()
glMultiTexCoord2dARB v0 v1 v2 = funGL 409 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMultiTexCoord2dvARB v0 v1 = funGL 410 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> m ()
glMultiTexCoord2fARB v0 v1 v2 = funGL 411 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMultiTexCoord2fvARB v0 v1 = funGL 412 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> m ()
glMultiTexCoord2iARB v0 v1 v2 = funGL 413 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glMultiTexCoord2ivARB v0 v1 = funGL 414 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> m ()
glMultiTexCoord2sARB v0 v1 v2 = funGL 415 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2svARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glMultiTexCoord2svARB v0 v1 = funGL 416 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> m ()
glMultiTexCoord3dARB v0 v1 v2 v3 = funGL 417 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMultiTexCoord3dvARB v0 v1 = funGL 418 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> m ()
glMultiTexCoord3fARB v0 v1 v2 v3 = funGL 419 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMultiTexCoord3fvARB v0 v1 = funGL 420 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> m ()
glMultiTexCoord3iARB v0 v1 v2 v3 = funGL 421 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glMultiTexCoord3ivARB v0 v1 = funGL 422 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> GLshort -> m ()
glMultiTexCoord3sARB v0 v1 v2 v3 = funGL 423 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3svARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glMultiTexCoord3svARB v0 v1 = funGL 424 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glMultiTexCoord4dARB v0 v1 v2 v3 v4 = funGL 425 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMultiTexCoord4dvARB v0 v1 = funGL 426 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glMultiTexCoord4fARB v0 v1 v2 v3 v4 = funGL 427 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMultiTexCoord4fvARB v0 v1 = funGL 428 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> m ()
glMultiTexCoord4iARB v0 v1 v2 v3 v4 = funGL 429 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glMultiTexCoord4ivARB v0 v1 = funGL 430 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> m ()
glMultiTexCoord4sARB v0 v1 v2 v3 v4 = funGL 431 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4svARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glMultiTexCoord4svARB v0 v1 = funGL 432 >>= \f -> liftIO $ f v0 v1

gl_ACTIVE_TEXTURE_ARB :: GLenum
gl_ACTIVE_TEXTURE_ARB = 0x84E0

gl_CLIENT_ACTIVE_TEXTURE_ARB :: GLenum
gl_CLIENT_ACTIVE_TEXTURE_ARB = 0x84E1

gl_MAX_TEXTURE_UNITS_ARB :: GLenum
gl_MAX_TEXTURE_UNITS_ARB = 0x84E2

gl_TEXTURE10_ARB :: GLenum
gl_TEXTURE10_ARB = 0x84CA

gl_TEXTURE11_ARB :: GLenum
gl_TEXTURE11_ARB = 0x84CB

gl_TEXTURE12_ARB :: GLenum
gl_TEXTURE12_ARB = 0x84CC

gl_TEXTURE13_ARB :: GLenum
gl_TEXTURE13_ARB = 0x84CD

gl_TEXTURE14_ARB :: GLenum
gl_TEXTURE14_ARB = 0x84CE

gl_TEXTURE15_ARB :: GLenum
gl_TEXTURE15_ARB = 0x84CF

gl_TEXTURE16_ARB :: GLenum
gl_TEXTURE16_ARB = 0x84D0

gl_TEXTURE17_ARB :: GLenum
gl_TEXTURE17_ARB = 0x84D1

gl_TEXTURE18_ARB :: GLenum
gl_TEXTURE18_ARB = 0x84D2

gl_TEXTURE19_ARB :: GLenum
gl_TEXTURE19_ARB = 0x84D3

gl_TEXTURE20_ARB :: GLenum
gl_TEXTURE20_ARB = 0x84D4

gl_TEXTURE21_ARB :: GLenum
gl_TEXTURE21_ARB = 0x84D5

gl_TEXTURE22_ARB :: GLenum
gl_TEXTURE22_ARB = 0x84D6

gl_TEXTURE23_ARB :: GLenum
gl_TEXTURE23_ARB = 0x84D7

gl_TEXTURE24_ARB :: GLenum
gl_TEXTURE24_ARB = 0x84D8

gl_TEXTURE25_ARB :: GLenum
gl_TEXTURE25_ARB = 0x84D9

gl_TEXTURE26_ARB :: GLenum
gl_TEXTURE26_ARB = 0x84DA

gl_TEXTURE27_ARB :: GLenum
gl_TEXTURE27_ARB = 0x84DB

gl_TEXTURE28_ARB :: GLenum
gl_TEXTURE28_ARB = 0x84DC

gl_TEXTURE29_ARB :: GLenum
gl_TEXTURE29_ARB = 0x84DD

gl_TEXTURE2_ARB :: GLenum
gl_TEXTURE2_ARB = 0x84C2

gl_TEXTURE30_ARB :: GLenum
gl_TEXTURE30_ARB = 0x84DE

gl_TEXTURE31_ARB :: GLenum
gl_TEXTURE31_ARB = 0x84DF

gl_TEXTURE3_ARB :: GLenum
gl_TEXTURE3_ARB = 0x84C3

gl_TEXTURE4_ARB :: GLenum
gl_TEXTURE4_ARB = 0x84C4

gl_TEXTURE5_ARB :: GLenum
gl_TEXTURE5_ARB = 0x84C5

gl_TEXTURE6_ARB :: GLenum
gl_TEXTURE6_ARB = 0x84C6

gl_TEXTURE7_ARB :: GLenum
gl_TEXTURE7_ARB = 0x84C7

gl_TEXTURE8_ARB :: GLenum
gl_TEXTURE8_ARB = 0x84C8

gl_TEXTURE9_ARB :: GLenum
gl_TEXTURE9_ARB = 0x84C9