-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.SecondaryColor (
	-- * Extension Support
	  gl_EXT_secondary_color

	-- * GL_EXT_secondary_color
	, glSecondaryColor3bEXT
	, glSecondaryColor3bvEXT
	, glSecondaryColor3dEXT
	, glSecondaryColor3dvEXT
	, glSecondaryColor3fEXT
	, glSecondaryColor3fvEXT
	, glSecondaryColor3iEXT
	, glSecondaryColor3ivEXT
	, glSecondaryColor3sEXT
	, glSecondaryColor3svEXT
	, glSecondaryColor3ubEXT
	, glSecondaryColor3ubvEXT
	, glSecondaryColor3uiEXT
	, glSecondaryColor3uivEXT
	, glSecondaryColor3usEXT
	, glSecondaryColor3usvEXT
	, glSecondaryColorPointerEXT
	, gl_COLOR_SUM_EXT
	, gl_CURRENT_SECONDARY_COLOR_EXT
	, gl_SECONDARY_COLOR_ARRAY_EXT
	, gl_SECONDARY_COLOR_ARRAY_POINTER_EXT
	, gl_SECONDARY_COLOR_ARRAY_SIZE_EXT
	, gl_SECONDARY_COLOR_ARRAY_STRIDE_EXT
	, gl_SECONDARY_COLOR_ARRAY_TYPE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_secondary_color :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_secondary_color = extGL 323

glSecondaryColor3bEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> m ()
glSecondaryColor3bEXT v0 v1 v2 = funGL 1327 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3bvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glSecondaryColor3bvEXT v0 = funGL 1328 >>= \f -> liftIO $ f v0

glSecondaryColor3dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glSecondaryColor3dEXT v0 v1 v2 = funGL 1329 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glSecondaryColor3dvEXT v0 = funGL 1330 >>= \f -> liftIO $ f v0

glSecondaryColor3fEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glSecondaryColor3fEXT v0 v1 v2 = funGL 1331 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glSecondaryColor3fvEXT v0 = funGL 1332 >>= \f -> liftIO $ f v0

glSecondaryColor3iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glSecondaryColor3iEXT v0 v1 v2 = funGL 1333 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glSecondaryColor3ivEXT v0 = funGL 1334 >>= \f -> liftIO $ f v0

glSecondaryColor3sEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glSecondaryColor3sEXT v0 v1 v2 = funGL 1335 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3svEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glSecondaryColor3svEXT v0 = funGL 1336 >>= \f -> liftIO $ f v0

glSecondaryColor3ubEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> GLubyte -> GLubyte -> m ()
glSecondaryColor3ubEXT v0 v1 v2 = funGL 1337 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3ubvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> m ()
glSecondaryColor3ubvEXT v0 = funGL 1338 >>= \f -> liftIO $ f v0

glSecondaryColor3uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glSecondaryColor3uiEXT v0 v1 v2 = funGL 1339 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> m ()
glSecondaryColor3uivEXT v0 = funGL 1340 >>= \f -> liftIO $ f v0

glSecondaryColor3usEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLushort -> GLushort -> GLushort -> m ()
glSecondaryColor3usEXT v0 v1 v2 = funGL 1341 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3usvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLushort -> m ()
glSecondaryColor3usvEXT v0 = funGL 1342 >>= \f -> liftIO $ f v0

glSecondaryColorPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glSecondaryColorPointerEXT v0 v1 v2 v3 = funGL 1343 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_COLOR_SUM_EXT :: GLenum
gl_COLOR_SUM_EXT = 0x8458

gl_CURRENT_SECONDARY_COLOR_EXT :: GLenum
gl_CURRENT_SECONDARY_COLOR_EXT = 0x8459

gl_SECONDARY_COLOR_ARRAY_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_EXT = 0x845E

gl_SECONDARY_COLOR_ARRAY_POINTER_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_POINTER_EXT = 0x845D

gl_SECONDARY_COLOR_ARRAY_SIZE_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_SIZE_EXT = 0x845A

gl_SECONDARY_COLOR_ARRAY_STRIDE_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_STRIDE_EXT = 0x845C

gl_SECONDARY_COLOR_ARRAY_TYPE_EXT :: GLenum
gl_SECONDARY_COLOR_ARRAY_TYPE_EXT = 0x845B