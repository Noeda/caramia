-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.WindowPos (
	-- * Extension Support
	  gl_ARB_window_pos

	-- * GL_ARB_window_pos
	, glWindowPos2dARB
	, glWindowPos2dvARB
	, glWindowPos2fARB
	, glWindowPos2fvARB
	, glWindowPos2iARB
	, glWindowPos2ivARB
	, glWindowPos2sARB
	, glWindowPos2svARB
	, glWindowPos3dARB
	, glWindowPos3dvARB
	, glWindowPos3fARB
	, glWindowPos3fvARB
	, glWindowPos3iARB
	, glWindowPos3ivARB
	, glWindowPos3sARB
	, glWindowPos3svARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_window_pos :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_window_pos = extGL 222

glWindowPos2dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glWindowPos2dARB v0 v1 = funGL 797 >>= \f -> liftIO $ f v0 v1

glWindowPos2dvARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glWindowPos2dvARB v0 = funGL 798 >>= \f -> liftIO $ f v0

glWindowPos2fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glWindowPos2fARB v0 v1 = funGL 799 >>= \f -> liftIO $ f v0 v1

glWindowPos2fvARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glWindowPos2fvARB v0 = funGL 800 >>= \f -> liftIO $ f v0

glWindowPos2iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glWindowPos2iARB v0 v1 = funGL 801 >>= \f -> liftIO $ f v0 v1

glWindowPos2ivARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glWindowPos2ivARB v0 = funGL 802 >>= \f -> liftIO $ f v0

glWindowPos2sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> m ()
glWindowPos2sARB v0 v1 = funGL 803 >>= \f -> liftIO $ f v0 v1

glWindowPos2svARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glWindowPos2svARB v0 = funGL 804 >>= \f -> liftIO $ f v0

glWindowPos3dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glWindowPos3dARB v0 v1 v2 = funGL 805 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3dvARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glWindowPos3dvARB v0 = funGL 806 >>= \f -> liftIO $ f v0

glWindowPos3fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glWindowPos3fARB v0 v1 v2 = funGL 807 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3fvARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glWindowPos3fvARB v0 = funGL 808 >>= \f -> liftIO $ f v0

glWindowPos3iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glWindowPos3iARB v0 v1 v2 = funGL 809 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3ivARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glWindowPos3ivARB v0 = funGL 810 >>= \f -> liftIO $ f v0

glWindowPos3sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glWindowPos3sARB v0 v1 v2 = funGL 811 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3svARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glWindowPos3svARB v0 = funGL 812 >>= \f -> liftIO $ f v0