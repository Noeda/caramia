-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.MatrixPalette (
	-- * Extension Support
	  gl_OES_matrix_palette

	-- * GL_OES_matrix_palette
	, glCurrentPaletteMatrixOES
	, glLoadPaletteFromModelViewMatrixOES
	, glMatrixIndexPointerOES
	, glWeightPointerOES
	, gl_CURRENT_PALETTE_MATRIX_OES
	, gl_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES
	, gl_MATRIX_INDEX_ARRAY_OES
	, gl_MATRIX_INDEX_ARRAY_POINTER_OES
	, gl_MATRIX_INDEX_ARRAY_SIZE_OES
	, gl_MATRIX_INDEX_ARRAY_STRIDE_OES
	, gl_MATRIX_INDEX_ARRAY_TYPE_OES
	, gl_MATRIX_PALETTE_OES
	, gl_MAX_PALETTE_MATRICES_OES
	, gl_MAX_VERTEX_UNITS_OES
	, gl_WEIGHT_ARRAY_BUFFER_BINDING_OES
	, gl_WEIGHT_ARRAY_OES
	, gl_WEIGHT_ARRAY_POINTER_OES
	, gl_WEIGHT_ARRAY_SIZE_OES
	, gl_WEIGHT_ARRAY_STRIDE_OES
	, gl_WEIGHT_ARRAY_TYPE_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_matrix_palette :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_matrix_palette = extGL 564

glCurrentPaletteMatrixOES :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glCurrentPaletteMatrixOES v0 = funGL 2151 >>= \f -> liftIO $ f v0

glLoadPaletteFromModelViewMatrixOES :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glLoadPaletteFromModelViewMatrixOES = funGL 2152 >>= \f -> liftIO $ f

glMatrixIndexPointerOES :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glMatrixIndexPointerOES v0 v1 v2 v3 = funGL 2153 >>= \f -> liftIO $ f v0 v1 v2 v3

glWeightPointerOES :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glWeightPointerOES v0 v1 v2 v3 = funGL 2154 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_CURRENT_PALETTE_MATRIX_OES :: GLenum
gl_CURRENT_PALETTE_MATRIX_OES = 0x8843

gl_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES :: GLenum
gl_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = 0x8B9E

gl_MATRIX_INDEX_ARRAY_OES :: GLenum
gl_MATRIX_INDEX_ARRAY_OES = 0x8844

gl_MATRIX_INDEX_ARRAY_POINTER_OES :: GLenum
gl_MATRIX_INDEX_ARRAY_POINTER_OES = 0x8849

gl_MATRIX_INDEX_ARRAY_SIZE_OES :: GLenum
gl_MATRIX_INDEX_ARRAY_SIZE_OES = 0x8846

gl_MATRIX_INDEX_ARRAY_STRIDE_OES :: GLenum
gl_MATRIX_INDEX_ARRAY_STRIDE_OES = 0x8848

gl_MATRIX_INDEX_ARRAY_TYPE_OES :: GLenum
gl_MATRIX_INDEX_ARRAY_TYPE_OES = 0x8847

gl_MATRIX_PALETTE_OES :: GLenum
gl_MATRIX_PALETTE_OES = 0x8840

gl_MAX_PALETTE_MATRICES_OES :: GLenum
gl_MAX_PALETTE_MATRICES_OES = 0x8842

gl_MAX_VERTEX_UNITS_OES :: GLenum
gl_MAX_VERTEX_UNITS_OES = 0x86A4

gl_WEIGHT_ARRAY_BUFFER_BINDING_OES :: GLenum
gl_WEIGHT_ARRAY_BUFFER_BINDING_OES = 0x889E

gl_WEIGHT_ARRAY_OES :: GLenum
gl_WEIGHT_ARRAY_OES = 0x86AD

gl_WEIGHT_ARRAY_POINTER_OES :: GLenum
gl_WEIGHT_ARRAY_POINTER_OES = 0x86AC

gl_WEIGHT_ARRAY_SIZE_OES :: GLenum
gl_WEIGHT_ARRAY_SIZE_OES = 0x86AB

gl_WEIGHT_ARRAY_STRIDE_OES :: GLenum
gl_WEIGHT_ARRAY_STRIDE_OES = 0x86AA

gl_WEIGHT_ARRAY_TYPE_OES :: GLenum
gl_WEIGHT_ARRAY_TYPE_OES = 0x86A9