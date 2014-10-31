-- This file was automatically generated.
module Graphics.OpenGL.Extension.MESA.WindowPos (
	-- * Extension Support
	  gl_MESA_window_pos

	-- * GL_MESA_window_pos
	, glWindowPos2dMESA
	, glWindowPos2dvMESA
	, glWindowPos2fMESA
	, glWindowPos2fvMESA
	, glWindowPos2iMESA
	, glWindowPos2ivMESA
	, glWindowPos2sMESA
	, glWindowPos2svMESA
	, glWindowPos3dMESA
	, glWindowPos3dvMESA
	, glWindowPos3fMESA
	, glWindowPos3fvMESA
	, glWindowPos3iMESA
	, glWindowPos3ivMESA
	, glWindowPos3sMESA
	, glWindowPos3svMESA
	, glWindowPos4dMESA
	, glWindowPos4dvMESA
	, glWindowPos4fMESA
	, glWindowPos4fvMESA
	, glWindowPos4iMESA
	, glWindowPos4ivMESA
	, glWindowPos4sMESA
	, glWindowPos4svMESA
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_MESA_window_pos :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_MESA_window_pos = extGL 424

glWindowPos2dMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glWindowPos2dMESA v0 v1 = funGL 1537 >>= \f -> liftIO $ f v0 v1

glWindowPos2dvMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glWindowPos2dvMESA v0 = funGL 1538 >>= \f -> liftIO $ f v0

glWindowPos2fMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glWindowPos2fMESA v0 v1 = funGL 1539 >>= \f -> liftIO $ f v0 v1

glWindowPos2fvMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glWindowPos2fvMESA v0 = funGL 1540 >>= \f -> liftIO $ f v0

glWindowPos2iMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glWindowPos2iMESA v0 v1 = funGL 1541 >>= \f -> liftIO $ f v0 v1

glWindowPos2ivMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glWindowPos2ivMESA v0 = funGL 1542 >>= \f -> liftIO $ f v0

glWindowPos2sMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> m ()
glWindowPos2sMESA v0 v1 = funGL 1543 >>= \f -> liftIO $ f v0 v1

glWindowPos2svMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glWindowPos2svMESA v0 = funGL 1544 >>= \f -> liftIO $ f v0

glWindowPos3dMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glWindowPos3dMESA v0 v1 v2 = funGL 1545 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3dvMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glWindowPos3dvMESA v0 = funGL 1546 >>= \f -> liftIO $ f v0

glWindowPos3fMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glWindowPos3fMESA v0 v1 v2 = funGL 1547 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3fvMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glWindowPos3fvMESA v0 = funGL 1548 >>= \f -> liftIO $ f v0

glWindowPos3iMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glWindowPos3iMESA v0 v1 v2 = funGL 1549 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3ivMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glWindowPos3ivMESA v0 = funGL 1550 >>= \f -> liftIO $ f v0

glWindowPos3sMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glWindowPos3sMESA v0 v1 v2 = funGL 1551 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3svMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glWindowPos3svMESA v0 = funGL 1552 >>= \f -> liftIO $ f v0

glWindowPos4dMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glWindowPos4dMESA v0 v1 v2 v3 = funGL 1553 >>= \f -> liftIO $ f v0 v1 v2 v3

glWindowPos4dvMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glWindowPos4dvMESA v0 = funGL 1554 >>= \f -> liftIO $ f v0

glWindowPos4fMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glWindowPos4fMESA v0 v1 v2 v3 = funGL 1555 >>= \f -> liftIO $ f v0 v1 v2 v3

glWindowPos4fvMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glWindowPos4fvMESA v0 = funGL 1556 >>= \f -> liftIO $ f v0

glWindowPos4iMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> m ()
glWindowPos4iMESA v0 v1 v2 v3 = funGL 1557 >>= \f -> liftIO $ f v0 v1 v2 v3

glWindowPos4ivMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glWindowPos4ivMESA v0 = funGL 1558 >>= \f -> liftIO $ f v0

glWindowPos4sMESA :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> GLshort -> m ()
glWindowPos4sMESA v0 v1 v2 v3 = funGL 1559 >>= \f -> liftIO $ f v0 v1 v2 v3

glWindowPos4svMESA :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glWindowPos4svMESA v0 = funGL 1560 >>= \f -> liftIO $ f v0