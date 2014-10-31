-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.VideoCapture (
	-- * Extension Support
	  gl_NV_video_capture

	-- * GL_NV_video_capture
	, glBeginVideoCaptureNV
	, glBindVideoCaptureStreamBufferNV
	, glBindVideoCaptureStreamTextureNV
	, glEndVideoCaptureNV
	, glGetVideoCaptureStreamdvNV
	, glGetVideoCaptureStreamfvNV
	, glGetVideoCaptureStreamivNV
	, glGetVideoCaptureivNV
	, glVideoCaptureNV
	, glVideoCaptureStreamParameterdvNV
	, glVideoCaptureStreamParameterfvNV
	, glVideoCaptureStreamParameterivNV
	, gl_FAILURE_NV
	, gl_FIELD_LOWER_NV
	, gl_FIELD_UPPER_NV
	, gl_LAST_VIDEO_CAPTURE_STATUS_NV
	, gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV
	, gl_NUM_VIDEO_CAPTURE_STREAMS_NV
	, gl_PARTIAL_SUCCESS_NV
	, gl_SUCCESS_NV
	, gl_VIDEO_BUFFER_BINDING_NV
	, gl_VIDEO_BUFFER_INTERNAL_FORMAT_NV
	, gl_VIDEO_BUFFER_NV
	, gl_VIDEO_BUFFER_PITCH_NV
	, gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV
	, gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV
	, gl_VIDEO_CAPTURE_FRAME_HEIGHT_NV
	, gl_VIDEO_CAPTURE_FRAME_WIDTH_NV
	, gl_VIDEO_CAPTURE_SURFACE_ORIGIN_NV
	, gl_VIDEO_CAPTURE_TO_422_SUPPORTED_NV
	, gl_VIDEO_COLOR_CONVERSION_MATRIX_NV
	, gl_VIDEO_COLOR_CONVERSION_MAX_NV
	, gl_VIDEO_COLOR_CONVERSION_MIN_NV
	, gl_VIDEO_COLOR_CONVERSION_OFFSET_NV
	, gl_YCBAYCR8A_4224_NV
	, gl_YCBYCR8_422_NV
	, gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV
	, gl_Z4Y12Z4CB12Z4CR12_444_NV
	, gl_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV
	, gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV
	, gl_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_video_capture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_video_capture = extGL 541

glBeginVideoCaptureNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBeginVideoCaptureNV v0 = funGL 1974 >>= \f -> liftIO $ f v0

glBindVideoCaptureStreamBufferNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLintptrARB -> m ()
glBindVideoCaptureStreamBufferNV v0 v1 v2 v3 = funGL 1975 >>= \f -> liftIO $ f v0 v1 v2 v3

glBindVideoCaptureStreamTextureNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> m ()
glBindVideoCaptureStreamTextureNV v0 v1 v2 v3 v4 = funGL 1976 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glEndVideoCaptureNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glEndVideoCaptureNV v0 = funGL 1977 >>= \f -> liftIO $ f v0

glGetVideoCaptureStreamdvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLdouble -> m ()
glGetVideoCaptureStreamdvNV v0 v1 v2 v3 = funGL 1978 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVideoCaptureStreamfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetVideoCaptureStreamfvNV v0 v1 v2 v3 = funGL 1979 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVideoCaptureStreamivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetVideoCaptureStreamivNV v0 v1 v2 v3 = funGL 1980 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVideoCaptureivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVideoCaptureivNV v0 v1 v2 = funGL 1981 >>= \f -> liftIO $ f v0 v1 v2

glVideoCaptureNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> Ptr GLuint64EXT -> m GLenum
glVideoCaptureNV v0 v1 v2 = funGL 1982 >>= \f -> liftIO $ f v0 v1 v2

glVideoCaptureStreamParameterdvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLdouble -> m ()
glVideoCaptureStreamParameterdvNV v0 v1 v2 v3 = funGL 1983 >>= \f -> liftIO $ f v0 v1 v2 v3

glVideoCaptureStreamParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLfloat -> m ()
glVideoCaptureStreamParameterfvNV v0 v1 v2 v3 = funGL 1984 >>= \f -> liftIO $ f v0 v1 v2 v3

glVideoCaptureStreamParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLint -> m ()
glVideoCaptureStreamParameterivNV v0 v1 v2 v3 = funGL 1985 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_FAILURE_NV :: GLenum
gl_FAILURE_NV = 0x9030

gl_FIELD_LOWER_NV :: GLenum
gl_FIELD_LOWER_NV = 0x9023

gl_FIELD_UPPER_NV :: GLenum
gl_FIELD_UPPER_NV = 0x9022

gl_LAST_VIDEO_CAPTURE_STATUS_NV :: GLenum
gl_LAST_VIDEO_CAPTURE_STATUS_NV = 0x9027

gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV :: GLenum
gl_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV = 0x9025

gl_NUM_VIDEO_CAPTURE_STREAMS_NV :: GLenum
gl_NUM_VIDEO_CAPTURE_STREAMS_NV = 0x9024

gl_PARTIAL_SUCCESS_NV :: GLenum
gl_PARTIAL_SUCCESS_NV = 0x902E

gl_SUCCESS_NV :: GLenum
gl_SUCCESS_NV = 0x902F

gl_VIDEO_BUFFER_BINDING_NV :: GLenum
gl_VIDEO_BUFFER_BINDING_NV = 0x9021

gl_VIDEO_BUFFER_INTERNAL_FORMAT_NV :: GLenum
gl_VIDEO_BUFFER_INTERNAL_FORMAT_NV = 0x902D

gl_VIDEO_BUFFER_NV :: GLenum
gl_VIDEO_BUFFER_NV = 0x9020

gl_VIDEO_BUFFER_PITCH_NV :: GLenum
gl_VIDEO_BUFFER_PITCH_NV = 0x9028

gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV :: GLenum
gl_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV = 0x903B

gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV :: GLenum
gl_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV = 0x903A

gl_VIDEO_CAPTURE_FRAME_HEIGHT_NV :: GLenum
gl_VIDEO_CAPTURE_FRAME_HEIGHT_NV = 0x9039

gl_VIDEO_CAPTURE_FRAME_WIDTH_NV :: GLenum
gl_VIDEO_CAPTURE_FRAME_WIDTH_NV = 0x9038

gl_VIDEO_CAPTURE_SURFACE_ORIGIN_NV :: GLenum
gl_VIDEO_CAPTURE_SURFACE_ORIGIN_NV = 0x903C

gl_VIDEO_CAPTURE_TO_422_SUPPORTED_NV :: GLenum
gl_VIDEO_CAPTURE_TO_422_SUPPORTED_NV = 0x9026

gl_VIDEO_COLOR_CONVERSION_MATRIX_NV :: GLenum
gl_VIDEO_COLOR_CONVERSION_MATRIX_NV = 0x9029

gl_VIDEO_COLOR_CONVERSION_MAX_NV :: GLenum
gl_VIDEO_COLOR_CONVERSION_MAX_NV = 0x902A

gl_VIDEO_COLOR_CONVERSION_MIN_NV :: GLenum
gl_VIDEO_COLOR_CONVERSION_MIN_NV = 0x902B

gl_VIDEO_COLOR_CONVERSION_OFFSET_NV :: GLenum
gl_VIDEO_COLOR_CONVERSION_OFFSET_NV = 0x902C

gl_YCBAYCR8A_4224_NV :: GLenum
gl_YCBAYCR8A_4224_NV = 0x9032

gl_YCBYCR8_422_NV :: GLenum
gl_YCBYCR8_422_NV = 0x9031

gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV :: GLenum
gl_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV = 0x9036

gl_Z4Y12Z4CB12Z4CR12_444_NV :: GLenum
gl_Z4Y12Z4CB12Z4CR12_444_NV = 0x9037

gl_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV :: GLenum
gl_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV = 0x9035

gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV :: GLenum
gl_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV = 0x9034

gl_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV :: GLenum
gl_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV = 0x9033