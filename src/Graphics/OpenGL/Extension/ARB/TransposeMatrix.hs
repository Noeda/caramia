-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TransposeMatrix (
	-- * Extension Support
	  gl_ARB_transpose_matrix

	-- * GL_ARB_transpose_matrix
	, glLoadTransposeMatrixdARB
	, glLoadTransposeMatrixfARB
	, glMultTransposeMatrixdARB
	, glMultTransposeMatrixfARB
	, gl_TRANSPOSE_COLOR_MATRIX_ARB
	, gl_TRANSPOSE_MODELVIEW_MATRIX_ARB
	, gl_TRANSPOSE_PROJECTION_MATRIX_ARB
	, gl_TRANSPOSE_TEXTURE_MATRIX_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_transpose_matrix :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_transpose_matrix = extGL 209

glLoadTransposeMatrixdARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glLoadTransposeMatrixdARB v0 = funGL 651 >>= \f -> liftIO $ f v0

glLoadTransposeMatrixfARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glLoadTransposeMatrixfARB v0 = funGL 652 >>= \f -> liftIO $ f v0

glMultTransposeMatrixdARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glMultTransposeMatrixdARB v0 = funGL 653 >>= \f -> liftIO $ f v0

glMultTransposeMatrixfARB :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glMultTransposeMatrixfARB v0 = funGL 654 >>= \f -> liftIO $ f v0

gl_TRANSPOSE_COLOR_MATRIX_ARB :: GLenum
gl_TRANSPOSE_COLOR_MATRIX_ARB = 0x84E6

gl_TRANSPOSE_MODELVIEW_MATRIX_ARB :: GLenum
gl_TRANSPOSE_MODELVIEW_MATRIX_ARB = 0x84E3

gl_TRANSPOSE_PROJECTION_MATRIX_ARB :: GLenum
gl_TRANSPOSE_PROJECTION_MATRIX_ARB = 0x84E4

gl_TRANSPOSE_TEXTURE_MATRIX_ARB :: GLenum
gl_TRANSPOSE_TEXTURE_MATRIX_ARB = 0x84E5