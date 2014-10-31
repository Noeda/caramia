-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.MatrixPalette (
	-- * Extension Support
	  gl_ARB_matrix_palette

	-- * GL_ARB_matrix_palette
	, glCurrentPaletteMatrixARB
	, glMatrixIndexPointerARB
	, glMatrixIndexubvARB
	, glMatrixIndexuivARB
	, glMatrixIndexusvARB
	, gl_CURRENT_MATRIX_INDEX_ARB
	, gl_CURRENT_PALETTE_MATRIX_ARB
	, gl_MATRIX_INDEX_ARRAY_ARB
	, gl_MATRIX_INDEX_ARRAY_POINTER_ARB
	, gl_MATRIX_INDEX_ARRAY_SIZE_ARB
	, gl_MATRIX_INDEX_ARRAY_STRIDE_ARB
	, gl_MATRIX_INDEX_ARRAY_TYPE_ARB
	, gl_MATRIX_PALETTE_ARB
	, gl_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB
	, gl_MAX_PALETTE_MATRICES_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_matrix_palette :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_matrix_palette = extGL 128

glCurrentPaletteMatrixARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glCurrentPaletteMatrixARB v0 = funGL 385 >>= \f -> liftIO $ f v0

glMatrixIndexPointerARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glMatrixIndexPointerARB v0 v1 v2 v3 = funGL 386 >>= \f -> liftIO $ f v0 v1 v2 v3

glMatrixIndexubvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLubyte -> m ()
glMatrixIndexubvARB v0 v1 = funGL 387 >>= \f -> liftIO $ f v0 v1

glMatrixIndexuivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLuint -> m ()
glMatrixIndexuivARB v0 v1 = funGL 388 >>= \f -> liftIO $ f v0 v1

glMatrixIndexusvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLushort -> m ()
glMatrixIndexusvARB v0 v1 = funGL 389 >>= \f -> liftIO $ f v0 v1

gl_CURRENT_MATRIX_INDEX_ARB :: GLenum
gl_CURRENT_MATRIX_INDEX_ARB = 0x8845

gl_CURRENT_PALETTE_MATRIX_ARB :: GLenum
gl_CURRENT_PALETTE_MATRIX_ARB = 0x8843

gl_MATRIX_INDEX_ARRAY_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_ARB = 0x8844

gl_MATRIX_INDEX_ARRAY_POINTER_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_POINTER_ARB = 0x8849

gl_MATRIX_INDEX_ARRAY_SIZE_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_SIZE_ARB = 0x8846

gl_MATRIX_INDEX_ARRAY_STRIDE_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_STRIDE_ARB = 0x8848

gl_MATRIX_INDEX_ARRAY_TYPE_ARB :: GLenum
gl_MATRIX_INDEX_ARRAY_TYPE_ARB = 0x8847

gl_MATRIX_PALETTE_ARB :: GLenum
gl_MATRIX_PALETTE_ARB = 0x8840

gl_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB :: GLenum
gl_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB = 0x8841

gl_MAX_PALETTE_MATRICES_ARB :: GLenum
gl_MAX_PALETTE_MATRICES_ARB = 0x8842