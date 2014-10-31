-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Convolution (
	-- * Extension Support
	  gl_EXT_convolution

	-- * GL_EXT_convolution
	, glConvolutionFilter1DEXT
	, glConvolutionFilter2DEXT
	, glConvolutionParameterfEXT
	, glConvolutionParameterfvEXT
	, glConvolutionParameteriEXT
	, glConvolutionParameterivEXT
	, glCopyConvolutionFilter1DEXT
	, glCopyConvolutionFilter2DEXT
	, glGetConvolutionFilterEXT
	, glGetConvolutionParameterfvEXT
	, glGetConvolutionParameterivEXT
	, glGetSeparableFilterEXT
	, glSeparableFilter2DEXT
	, gl_CONVOLUTION_1D_EXT
	, gl_CONVOLUTION_2D_EXT
	, gl_CONVOLUTION_BORDER_MODE_EXT
	, gl_CONVOLUTION_FILTER_BIAS_EXT
	, gl_CONVOLUTION_FILTER_SCALE_EXT
	, gl_CONVOLUTION_FORMAT_EXT
	, gl_CONVOLUTION_HEIGHT_EXT
	, gl_CONVOLUTION_WIDTH_EXT
	, gl_MAX_CONVOLUTION_HEIGHT_EXT
	, gl_MAX_CONVOLUTION_WIDTH_EXT
	, gl_POST_CONVOLUTION_ALPHA_BIAS_EXT
	, gl_POST_CONVOLUTION_ALPHA_SCALE_EXT
	, gl_POST_CONVOLUTION_BLUE_BIAS_EXT
	, gl_POST_CONVOLUTION_BLUE_SCALE_EXT
	, gl_POST_CONVOLUTION_GREEN_BIAS_EXT
	, gl_POST_CONVOLUTION_GREEN_SCALE_EXT
	, gl_POST_CONVOLUTION_RED_BIAS_EXT
	, gl_POST_CONVOLUTION_RED_SCALE_EXT
	, gl_REDUCE_EXT
	, gl_SEPARABLE_2D_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_convolution :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_convolution = extGL 261

glConvolutionFilter1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glConvolutionFilter1DEXT v0 v1 v2 v3 v4 v5 = funGL 912 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glConvolutionFilter2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glConvolutionFilter2DEXT v0 v1 v2 v3 v4 v5 v6 = funGL 913 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glConvolutionParameterfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glConvolutionParameterfEXT v0 v1 v2 = funGL 914 >>= \f -> liftIO $ f v0 v1 v2

glConvolutionParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glConvolutionParameterfvEXT v0 v1 v2 = funGL 915 >>= \f -> liftIO $ f v0 v1 v2

glConvolutionParameteriEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glConvolutionParameteriEXT v0 v1 v2 = funGL 916 >>= \f -> liftIO $ f v0 v1 v2

glConvolutionParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glConvolutionParameterivEXT v0 v1 v2 = funGL 917 >>= \f -> liftIO $ f v0 v1 v2

glCopyConvolutionFilter1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> m ()
glCopyConvolutionFilter1DEXT v0 v1 v2 v3 v4 = funGL 918 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glCopyConvolutionFilter2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyConvolutionFilter2DEXT v0 v1 v2 v3 v4 v5 = funGL 919 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetConvolutionFilterEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr () -> m ()
glGetConvolutionFilterEXT v0 v1 v2 v3 = funGL 920 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetConvolutionParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetConvolutionParameterfvEXT v0 v1 v2 = funGL 921 >>= \f -> liftIO $ f v0 v1 v2

glGetConvolutionParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetConvolutionParameterivEXT v0 v1 v2 = funGL 922 >>= \f -> liftIO $ f v0 v1 v2

glGetSeparableFilterEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr () -> Ptr () -> Ptr () -> m ()
glGetSeparableFilterEXT v0 v1 v2 v3 v4 v5 = funGL 923 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glSeparableFilter2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> Ptr () -> m ()
glSeparableFilter2DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 924 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_CONVOLUTION_1D_EXT :: GLenum
gl_CONVOLUTION_1D_EXT = 0x8010

gl_CONVOLUTION_2D_EXT :: GLenum
gl_CONVOLUTION_2D_EXT = 0x8011

gl_CONVOLUTION_BORDER_MODE_EXT :: GLenum
gl_CONVOLUTION_BORDER_MODE_EXT = 0x8013

gl_CONVOLUTION_FILTER_BIAS_EXT :: GLenum
gl_CONVOLUTION_FILTER_BIAS_EXT = 0x8015

gl_CONVOLUTION_FILTER_SCALE_EXT :: GLenum
gl_CONVOLUTION_FILTER_SCALE_EXT = 0x8014

gl_CONVOLUTION_FORMAT_EXT :: GLenum
gl_CONVOLUTION_FORMAT_EXT = 0x8017

gl_CONVOLUTION_HEIGHT_EXT :: GLenum
gl_CONVOLUTION_HEIGHT_EXT = 0x8019

gl_CONVOLUTION_WIDTH_EXT :: GLenum
gl_CONVOLUTION_WIDTH_EXT = 0x8018

gl_MAX_CONVOLUTION_HEIGHT_EXT :: GLenum
gl_MAX_CONVOLUTION_HEIGHT_EXT = 0x801B

gl_MAX_CONVOLUTION_WIDTH_EXT :: GLenum
gl_MAX_CONVOLUTION_WIDTH_EXT = 0x801A

gl_POST_CONVOLUTION_ALPHA_BIAS_EXT :: GLenum
gl_POST_CONVOLUTION_ALPHA_BIAS_EXT = 0x8023

gl_POST_CONVOLUTION_ALPHA_SCALE_EXT :: GLenum
gl_POST_CONVOLUTION_ALPHA_SCALE_EXT = 0x801F

gl_POST_CONVOLUTION_BLUE_BIAS_EXT :: GLenum
gl_POST_CONVOLUTION_BLUE_BIAS_EXT = 0x8022

gl_POST_CONVOLUTION_BLUE_SCALE_EXT :: GLenum
gl_POST_CONVOLUTION_BLUE_SCALE_EXT = 0x801E

gl_POST_CONVOLUTION_GREEN_BIAS_EXT :: GLenum
gl_POST_CONVOLUTION_GREEN_BIAS_EXT = 0x8021

gl_POST_CONVOLUTION_GREEN_SCALE_EXT :: GLenum
gl_POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801D

gl_POST_CONVOLUTION_RED_BIAS_EXT :: GLenum
gl_POST_CONVOLUTION_RED_BIAS_EXT = 0x8020

gl_POST_CONVOLUTION_RED_SCALE_EXT :: GLenum
gl_POST_CONVOLUTION_RED_SCALE_EXT = 0x801C

gl_REDUCE_EXT :: GLenum
gl_REDUCE_EXT = 0x8016

gl_SEPARABLE_2D_EXT :: GLenum
gl_SEPARABLE_2D_EXT = 0x8012