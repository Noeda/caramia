-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.Histogram (
	-- * Extension Support
	  gl_EXT_histogram

	-- * GL_EXT_histogram
	, glGetHistogramEXT
	, glGetHistogramParameterfvEXT
	, glGetHistogramParameterivEXT
	, glGetMinmaxEXT
	, glGetMinmaxParameterfvEXT
	, glGetMinmaxParameterivEXT
	, glHistogramEXT
	, glMinmaxEXT
	, glResetHistogramEXT
	, glResetMinmaxEXT
	, gl_HISTOGRAM_ALPHA_SIZE_EXT
	, gl_HISTOGRAM_BLUE_SIZE_EXT
	, gl_HISTOGRAM_EXT
	, gl_HISTOGRAM_FORMAT_EXT
	, gl_HISTOGRAM_GREEN_SIZE_EXT
	, gl_HISTOGRAM_LUMINANCE_SIZE_EXT
	, gl_HISTOGRAM_RED_SIZE_EXT
	, gl_HISTOGRAM_SINK_EXT
	, gl_HISTOGRAM_WIDTH_EXT
	, gl_MINMAX_EXT
	, gl_MINMAX_FORMAT_EXT
	, gl_MINMAX_SINK_EXT
	, gl_PROXY_HISTOGRAM_EXT
	, gl_TABLE_TOO_LARGE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_histogram :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_histogram = extGL 289

glGetHistogramEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLboolean -> GLenum -> GLenum -> Ptr () -> m ()
glGetHistogramEXT v0 v1 v2 v3 v4 = funGL 1280 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetHistogramParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetHistogramParameterfvEXT v0 v1 v2 = funGL 1281 >>= \f -> liftIO $ f v0 v1 v2

glGetHistogramParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetHistogramParameterivEXT v0 v1 v2 = funGL 1282 >>= \f -> liftIO $ f v0 v1 v2

glGetMinmaxEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLboolean -> GLenum -> GLenum -> Ptr () -> m ()
glGetMinmaxEXT v0 v1 v2 v3 v4 = funGL 1283 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetMinmaxParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetMinmaxParameterfvEXT v0 v1 v2 = funGL 1284 >>= \f -> liftIO $ f v0 v1 v2

glGetMinmaxParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetMinmaxParameterivEXT v0 v1 v2 = funGL 1285 >>= \f -> liftIO $ f v0 v1 v2

glHistogramEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLboolean -> m ()
glHistogramEXT v0 v1 v2 v3 = funGL 1286 >>= \f -> liftIO $ f v0 v1 v2 v3

glMinmaxEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLboolean -> m ()
glMinmaxEXT v0 v1 v2 = funGL 1287 >>= \f -> liftIO $ f v0 v1 v2

glResetHistogramEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glResetHistogramEXT v0 = funGL 1288 >>= \f -> liftIO $ f v0

glResetMinmaxEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glResetMinmaxEXT v0 = funGL 1289 >>= \f -> liftIO $ f v0

gl_HISTOGRAM_ALPHA_SIZE_EXT :: GLenum
gl_HISTOGRAM_ALPHA_SIZE_EXT = 0x802B

gl_HISTOGRAM_BLUE_SIZE_EXT :: GLenum
gl_HISTOGRAM_BLUE_SIZE_EXT = 0x802A

gl_HISTOGRAM_EXT :: GLenum
gl_HISTOGRAM_EXT = 0x8024

gl_HISTOGRAM_FORMAT_EXT :: GLenum
gl_HISTOGRAM_FORMAT_EXT = 0x8027

gl_HISTOGRAM_GREEN_SIZE_EXT :: GLenum
gl_HISTOGRAM_GREEN_SIZE_EXT = 0x8029

gl_HISTOGRAM_LUMINANCE_SIZE_EXT :: GLenum
gl_HISTOGRAM_LUMINANCE_SIZE_EXT = 0x802C

gl_HISTOGRAM_RED_SIZE_EXT :: GLenum
gl_HISTOGRAM_RED_SIZE_EXT = 0x8028

gl_HISTOGRAM_SINK_EXT :: GLenum
gl_HISTOGRAM_SINK_EXT = 0x802D

gl_HISTOGRAM_WIDTH_EXT :: GLenum
gl_HISTOGRAM_WIDTH_EXT = 0x8026

gl_MINMAX_EXT :: GLenum
gl_MINMAX_EXT = 0x802E

gl_MINMAX_FORMAT_EXT :: GLenum
gl_MINMAX_FORMAT_EXT = 0x802F

gl_MINMAX_SINK_EXT :: GLenum
gl_MINMAX_SINK_EXT = 0x8030

gl_PROXY_HISTOGRAM_EXT :: GLenum
gl_PROXY_HISTOGRAM_EXT = 0x8025

gl_TABLE_TOO_LARGE_EXT :: GLenum
gl_TABLE_TOO_LARGE_EXT = 0x8031