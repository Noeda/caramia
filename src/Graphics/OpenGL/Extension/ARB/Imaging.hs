-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.Imaging (
	-- * Extension Support
	  gl_ARB_imaging

	-- * GL_ARB_imaging
	, glBlendColor
	, glBlendEquation
	, glColorSubTable
	, glColorTable
	, glColorTableParameterfv
	, glColorTableParameteriv
	, glConvolutionFilter1D
	, glConvolutionFilter2D
	, glConvolutionParameterf
	, glConvolutionParameterfv
	, glConvolutionParameteri
	, glConvolutionParameteriv
	, glCopyColorSubTable
	, glCopyColorTable
	, glCopyConvolutionFilter1D
	, glCopyConvolutionFilter2D
	, glGetColorTable
	, glGetColorTableParameterfv
	, glGetColorTableParameteriv
	, glGetConvolutionFilter
	, glGetConvolutionParameterfv
	, glGetConvolutionParameteriv
	, glGetHistogram
	, glGetHistogramParameterfv
	, glGetHistogramParameteriv
	, glGetMinmax
	, glGetMinmaxParameterfv
	, glGetMinmaxParameteriv
	, glGetSeparableFilter
	, glHistogram
	, glMinmax
	, glResetHistogram
	, glResetMinmax
	, glSeparableFilter2D
	, gl_BLEND_COLOR
	, gl_BLEND_EQUATION
	, gl_COLOR_MATRIX
	, gl_COLOR_MATRIX_STACK_DEPTH
	, gl_COLOR_TABLE
	, gl_COLOR_TABLE_ALPHA_SIZE
	, gl_COLOR_TABLE_BIAS
	, gl_COLOR_TABLE_BLUE_SIZE
	, gl_COLOR_TABLE_FORMAT
	, gl_COLOR_TABLE_GREEN_SIZE
	, gl_COLOR_TABLE_INTENSITY_SIZE
	, gl_COLOR_TABLE_LUMINANCE_SIZE
	, gl_COLOR_TABLE_RED_SIZE
	, gl_COLOR_TABLE_SCALE
	, gl_COLOR_TABLE_WIDTH
	, gl_CONSTANT_ALPHA
	, gl_CONSTANT_BORDER
	, gl_CONSTANT_COLOR
	, gl_CONVOLUTION_1D
	, gl_CONVOLUTION_2D
	, gl_CONVOLUTION_BORDER_COLOR
	, gl_CONVOLUTION_BORDER_MODE
	, gl_CONVOLUTION_FILTER_BIAS
	, gl_CONVOLUTION_FILTER_SCALE
	, gl_CONVOLUTION_FORMAT
	, gl_CONVOLUTION_HEIGHT
	, gl_CONVOLUTION_WIDTH
	, gl_FUNC_ADD
	, gl_FUNC_REVERSE_SUBTRACT
	, gl_FUNC_SUBTRACT
	, gl_HISTOGRAM
	, gl_HISTOGRAM_ALPHA_SIZE
	, gl_HISTOGRAM_BLUE_SIZE
	, gl_HISTOGRAM_FORMAT
	, gl_HISTOGRAM_GREEN_SIZE
	, gl_HISTOGRAM_LUMINANCE_SIZE
	, gl_HISTOGRAM_RED_SIZE
	, gl_HISTOGRAM_SINK
	, gl_HISTOGRAM_WIDTH
	, gl_MAX
	, gl_MAX_COLOR_MATRIX_STACK_DEPTH
	, gl_MAX_CONVOLUTION_HEIGHT
	, gl_MAX_CONVOLUTION_WIDTH
	, gl_MIN
	, gl_MINMAX
	, gl_MINMAX_FORMAT
	, gl_MINMAX_SINK
	, gl_ONE_MINUS_CONSTANT_ALPHA
	, gl_ONE_MINUS_CONSTANT_COLOR
	, gl_POST_COLOR_MATRIX_ALPHA_BIAS
	, gl_POST_COLOR_MATRIX_ALPHA_SCALE
	, gl_POST_COLOR_MATRIX_BLUE_BIAS
	, gl_POST_COLOR_MATRIX_BLUE_SCALE
	, gl_POST_COLOR_MATRIX_COLOR_TABLE
	, gl_POST_COLOR_MATRIX_GREEN_BIAS
	, gl_POST_COLOR_MATRIX_GREEN_SCALE
	, gl_POST_COLOR_MATRIX_RED_BIAS
	, gl_POST_COLOR_MATRIX_RED_SCALE
	, gl_POST_CONVOLUTION_ALPHA_BIAS
	, gl_POST_CONVOLUTION_ALPHA_SCALE
	, gl_POST_CONVOLUTION_BLUE_BIAS
	, gl_POST_CONVOLUTION_BLUE_SCALE
	, gl_POST_CONVOLUTION_COLOR_TABLE
	, gl_POST_CONVOLUTION_GREEN_BIAS
	, gl_POST_CONVOLUTION_GREEN_SCALE
	, gl_POST_CONVOLUTION_RED_BIAS
	, gl_POST_CONVOLUTION_RED_SCALE
	, gl_PROXY_COLOR_TABLE
	, gl_PROXY_HISTOGRAM
	, gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
	, gl_PROXY_POST_CONVOLUTION_COLOR_TABLE
	, gl_REDUCE
	, gl_REPLICATE_BORDER
	, gl_SEPARABLE_2D
	, gl_TABLE_TOO_LARGE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_imaging :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_imaging = extGL 120

glColorSubTable :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glColorSubTable v0 v1 v2 v3 v4 v5 = funGL 340 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glColorTable :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glColorTable v0 v1 v2 v3 v4 v5 = funGL 341 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glColorTableParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glColorTableParameterfv v0 v1 v2 = funGL 342 >>= \f -> liftIO $ f v0 v1 v2

glColorTableParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glColorTableParameteriv v0 v1 v2 = funGL 343 >>= \f -> liftIO $ f v0 v1 v2

glConvolutionFilter1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glConvolutionFilter1D v0 v1 v2 v3 v4 v5 = funGL 344 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glConvolutionFilter2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glConvolutionFilter2D v0 v1 v2 v3 v4 v5 v6 = funGL 345 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glConvolutionParameterf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glConvolutionParameterf v0 v1 v2 = funGL 346 >>= \f -> liftIO $ f v0 v1 v2

glConvolutionParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glConvolutionParameterfv v0 v1 v2 = funGL 347 >>= \f -> liftIO $ f v0 v1 v2

glConvolutionParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glConvolutionParameteri v0 v1 v2 = funGL 348 >>= \f -> liftIO $ f v0 v1 v2

glConvolutionParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glConvolutionParameteriv v0 v1 v2 = funGL 349 >>= \f -> liftIO $ f v0 v1 v2

glCopyColorSubTable :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLint -> GLint -> GLsizei -> m ()
glCopyColorSubTable v0 v1 v2 v3 v4 = funGL 350 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glCopyColorTable :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> m ()
glCopyColorTable v0 v1 v2 v3 v4 = funGL 351 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glCopyConvolutionFilter1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> m ()
glCopyConvolutionFilter1D v0 v1 v2 v3 v4 = funGL 352 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glCopyConvolutionFilter2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyConvolutionFilter2D v0 v1 v2 v3 v4 v5 = funGL 353 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetColorTable :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr () -> m ()
glGetColorTable v0 v1 v2 v3 = funGL 354 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetColorTableParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetColorTableParameterfv v0 v1 v2 = funGL 355 >>= \f -> liftIO $ f v0 v1 v2

glGetColorTableParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetColorTableParameteriv v0 v1 v2 = funGL 356 >>= \f -> liftIO $ f v0 v1 v2

glGetConvolutionFilter :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr () -> m ()
glGetConvolutionFilter v0 v1 v2 v3 = funGL 357 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetConvolutionParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetConvolutionParameterfv v0 v1 v2 = funGL 358 >>= \f -> liftIO $ f v0 v1 v2

glGetConvolutionParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetConvolutionParameteriv v0 v1 v2 = funGL 359 >>= \f -> liftIO $ f v0 v1 v2

glGetHistogram :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLboolean -> GLenum -> GLenum -> Ptr () -> m ()
glGetHistogram v0 v1 v2 v3 v4 = funGL 360 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetHistogramParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetHistogramParameterfv v0 v1 v2 = funGL 361 >>= \f -> liftIO $ f v0 v1 v2

glGetHistogramParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetHistogramParameteriv v0 v1 v2 = funGL 362 >>= \f -> liftIO $ f v0 v1 v2

glGetMinmax :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLboolean -> GLenum -> GLenum -> Ptr () -> m ()
glGetMinmax v0 v1 v2 v3 v4 = funGL 363 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetMinmaxParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetMinmaxParameterfv v0 v1 v2 = funGL 364 >>= \f -> liftIO $ f v0 v1 v2

glGetMinmaxParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetMinmaxParameteriv v0 v1 v2 = funGL 365 >>= \f -> liftIO $ f v0 v1 v2

glGetSeparableFilter :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr () -> Ptr () -> Ptr () -> m ()
glGetSeparableFilter v0 v1 v2 v3 v4 v5 = funGL 366 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glHistogram :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLboolean -> m ()
glHistogram v0 v1 v2 v3 = funGL 367 >>= \f -> liftIO $ f v0 v1 v2 v3

glMinmax :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLboolean -> m ()
glMinmax v0 v1 v2 = funGL 368 >>= \f -> liftIO $ f v0 v1 v2

glResetHistogram :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glResetHistogram v0 = funGL 369 >>= \f -> liftIO $ f v0

glResetMinmax :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glResetMinmax v0 = funGL 370 >>= \f -> liftIO $ f v0

glSeparableFilter2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> Ptr () -> m ()
glSeparableFilter2D v0 v1 v2 v3 v4 v5 v6 v7 = funGL 371 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_COLOR_MATRIX :: GLenum
gl_COLOR_MATRIX = 0x80B1

gl_COLOR_MATRIX_STACK_DEPTH :: GLenum
gl_COLOR_MATRIX_STACK_DEPTH = 0x80B2

gl_COLOR_TABLE :: GLenum
gl_COLOR_TABLE = 0x80D0

gl_COLOR_TABLE_ALPHA_SIZE :: GLenum
gl_COLOR_TABLE_ALPHA_SIZE = 0x80DD

gl_COLOR_TABLE_BIAS :: GLenum
gl_COLOR_TABLE_BIAS = 0x80D7

gl_COLOR_TABLE_BLUE_SIZE :: GLenum
gl_COLOR_TABLE_BLUE_SIZE = 0x80DC

gl_COLOR_TABLE_FORMAT :: GLenum
gl_COLOR_TABLE_FORMAT = 0x80D8

gl_COLOR_TABLE_GREEN_SIZE :: GLenum
gl_COLOR_TABLE_GREEN_SIZE = 0x80DB

gl_COLOR_TABLE_INTENSITY_SIZE :: GLenum
gl_COLOR_TABLE_INTENSITY_SIZE = 0x80DF

gl_COLOR_TABLE_LUMINANCE_SIZE :: GLenum
gl_COLOR_TABLE_LUMINANCE_SIZE = 0x80DE

gl_COLOR_TABLE_RED_SIZE :: GLenum
gl_COLOR_TABLE_RED_SIZE = 0x80DA

gl_COLOR_TABLE_SCALE :: GLenum
gl_COLOR_TABLE_SCALE = 0x80D6

gl_COLOR_TABLE_WIDTH :: GLenum
gl_COLOR_TABLE_WIDTH = 0x80D9

gl_CONSTANT_BORDER :: GLenum
gl_CONSTANT_BORDER = 0x8151

gl_CONVOLUTION_1D :: GLenum
gl_CONVOLUTION_1D = 0x8010

gl_CONVOLUTION_2D :: GLenum
gl_CONVOLUTION_2D = 0x8011

gl_CONVOLUTION_BORDER_COLOR :: GLenum
gl_CONVOLUTION_BORDER_COLOR = 0x8154

gl_CONVOLUTION_BORDER_MODE :: GLenum
gl_CONVOLUTION_BORDER_MODE = 0x8013

gl_CONVOLUTION_FILTER_BIAS :: GLenum
gl_CONVOLUTION_FILTER_BIAS = 0x8015

gl_CONVOLUTION_FILTER_SCALE :: GLenum
gl_CONVOLUTION_FILTER_SCALE = 0x8014

gl_CONVOLUTION_FORMAT :: GLenum
gl_CONVOLUTION_FORMAT = 0x8017

gl_CONVOLUTION_HEIGHT :: GLenum
gl_CONVOLUTION_HEIGHT = 0x8019

gl_CONVOLUTION_WIDTH :: GLenum
gl_CONVOLUTION_WIDTH = 0x8018

gl_HISTOGRAM :: GLenum
gl_HISTOGRAM = 0x8024

gl_HISTOGRAM_ALPHA_SIZE :: GLenum
gl_HISTOGRAM_ALPHA_SIZE = 0x802B

gl_HISTOGRAM_BLUE_SIZE :: GLenum
gl_HISTOGRAM_BLUE_SIZE = 0x802A

gl_HISTOGRAM_FORMAT :: GLenum
gl_HISTOGRAM_FORMAT = 0x8027

gl_HISTOGRAM_GREEN_SIZE :: GLenum
gl_HISTOGRAM_GREEN_SIZE = 0x8029

gl_HISTOGRAM_LUMINANCE_SIZE :: GLenum
gl_HISTOGRAM_LUMINANCE_SIZE = 0x802C

gl_HISTOGRAM_RED_SIZE :: GLenum
gl_HISTOGRAM_RED_SIZE = 0x8028

gl_HISTOGRAM_SINK :: GLenum
gl_HISTOGRAM_SINK = 0x802D

gl_HISTOGRAM_WIDTH :: GLenum
gl_HISTOGRAM_WIDTH = 0x8026

gl_MAX_COLOR_MATRIX_STACK_DEPTH :: GLenum
gl_MAX_COLOR_MATRIX_STACK_DEPTH = 0x80B3

gl_MAX_CONVOLUTION_HEIGHT :: GLenum
gl_MAX_CONVOLUTION_HEIGHT = 0x801B

gl_MAX_CONVOLUTION_WIDTH :: GLenum
gl_MAX_CONVOLUTION_WIDTH = 0x801A

gl_MINMAX :: GLenum
gl_MINMAX = 0x802E

gl_MINMAX_FORMAT :: GLenum
gl_MINMAX_FORMAT = 0x802F

gl_MINMAX_SINK :: GLenum
gl_MINMAX_SINK = 0x8030

gl_POST_COLOR_MATRIX_ALPHA_BIAS :: GLenum
gl_POST_COLOR_MATRIX_ALPHA_BIAS = 0x80BB

gl_POST_COLOR_MATRIX_ALPHA_SCALE :: GLenum
gl_POST_COLOR_MATRIX_ALPHA_SCALE = 0x80B7

gl_POST_COLOR_MATRIX_BLUE_BIAS :: GLenum
gl_POST_COLOR_MATRIX_BLUE_BIAS = 0x80BA

gl_POST_COLOR_MATRIX_BLUE_SCALE :: GLenum
gl_POST_COLOR_MATRIX_BLUE_SCALE = 0x80B6

gl_POST_COLOR_MATRIX_COLOR_TABLE :: GLenum
gl_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D2

gl_POST_COLOR_MATRIX_GREEN_BIAS :: GLenum
gl_POST_COLOR_MATRIX_GREEN_BIAS = 0x80B9

gl_POST_COLOR_MATRIX_GREEN_SCALE :: GLenum
gl_POST_COLOR_MATRIX_GREEN_SCALE = 0x80B5

gl_POST_COLOR_MATRIX_RED_BIAS :: GLenum
gl_POST_COLOR_MATRIX_RED_BIAS = 0x80B8

gl_POST_COLOR_MATRIX_RED_SCALE :: GLenum
gl_POST_COLOR_MATRIX_RED_SCALE = 0x80B4

gl_POST_CONVOLUTION_ALPHA_BIAS :: GLenum
gl_POST_CONVOLUTION_ALPHA_BIAS = 0x8023

gl_POST_CONVOLUTION_ALPHA_SCALE :: GLenum
gl_POST_CONVOLUTION_ALPHA_SCALE = 0x801F

gl_POST_CONVOLUTION_BLUE_BIAS :: GLenum
gl_POST_CONVOLUTION_BLUE_BIAS = 0x8022

gl_POST_CONVOLUTION_BLUE_SCALE :: GLenum
gl_POST_CONVOLUTION_BLUE_SCALE = 0x801E

gl_POST_CONVOLUTION_COLOR_TABLE :: GLenum
gl_POST_CONVOLUTION_COLOR_TABLE = 0x80D1

gl_POST_CONVOLUTION_GREEN_BIAS :: GLenum
gl_POST_CONVOLUTION_GREEN_BIAS = 0x8021

gl_POST_CONVOLUTION_GREEN_SCALE :: GLenum
gl_POST_CONVOLUTION_GREEN_SCALE = 0x801D

gl_POST_CONVOLUTION_RED_BIAS :: GLenum
gl_POST_CONVOLUTION_RED_BIAS = 0x8020

gl_POST_CONVOLUTION_RED_SCALE :: GLenum
gl_POST_CONVOLUTION_RED_SCALE = 0x801C

gl_PROXY_COLOR_TABLE :: GLenum
gl_PROXY_COLOR_TABLE = 0x80D3

gl_PROXY_HISTOGRAM :: GLenum
gl_PROXY_HISTOGRAM = 0x8025

gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE :: GLenum
gl_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = 0x80D5

gl_PROXY_POST_CONVOLUTION_COLOR_TABLE :: GLenum
gl_PROXY_POST_CONVOLUTION_COLOR_TABLE = 0x80D4

gl_REDUCE :: GLenum
gl_REDUCE = 0x8016

gl_REPLICATE_BORDER :: GLenum
gl_REPLICATE_BORDER = 0x8153

gl_SEPARABLE_2D :: GLenum
gl_SEPARABLE_2D = 0x8012

gl_TABLE_TOO_LARGE :: GLenum
gl_TABLE_TOO_LARGE = 0x8031