-- This file was automatically generated.
module Graphics.OpenGL.Extension.INTEL.PerformanceQuery (
	-- * Extension Support
	  gl_INTEL_performance_query

	-- * GL_INTEL_performance_query
	, glBeginPerfQueryINTEL
	, glCreatePerfQueryINTEL
	, glDeletePerfQueryINTEL
	, glEndPerfQueryINTEL
	, glGetFirstPerfQueryIdINTEL
	, glGetNextPerfQueryIdINTEL
	, glGetPerfCounterInfoINTEL
	, glGetPerfQueryDataINTEL
	, glGetPerfQueryIdByNameINTEL
	, glGetPerfQueryInfoINTEL
	, gl_PERFQUERY_COUNTER_DATA_BOOL32_INTEL
	, gl_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL
	, gl_PERFQUERY_COUNTER_DATA_FLOAT_INTEL
	, gl_PERFQUERY_COUNTER_DATA_UINT32_INTEL
	, gl_PERFQUERY_COUNTER_DATA_UINT64_INTEL
	, gl_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL
	, gl_PERFQUERY_COUNTER_DURATION_NORM_INTEL
	, gl_PERFQUERY_COUNTER_DURATION_RAW_INTEL
	, gl_PERFQUERY_COUNTER_EVENT_INTEL
	, gl_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL
	, gl_PERFQUERY_COUNTER_RAW_INTEL
	, gl_PERFQUERY_COUNTER_THROUGHPUT_INTEL
	, gl_PERFQUERY_COUNTER_TIMESTAMP_INTEL
	, gl_PERFQUERY_DONOT_FLUSH_INTEL
	, gl_PERFQUERY_FLUSH_INTEL
	, gl_PERFQUERY_GLOBAL_CONTEXT_INTEL
	, gl_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL
	, gl_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL
	, gl_PERFQUERY_SINGLE_CONTEXT_INTEL
	, gl_PERFQUERY_WAIT_INTEL
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_INTEL_performance_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_INTEL_performance_query = extGL 412

glBeginPerfQueryINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBeginPerfQueryINTEL v0 = funGL 1493 >>= \f -> liftIO $ f v0

glCreatePerfQueryINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glCreatePerfQueryINTEL v0 v1 = funGL 1494 >>= \f -> liftIO $ f v0 v1

glDeletePerfQueryINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDeletePerfQueryINTEL v0 = funGL 1495 >>= \f -> liftIO $ f v0

glEndPerfQueryINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glEndPerfQueryINTEL v0 = funGL 1496 >>= \f -> liftIO $ f v0

glGetFirstPerfQueryIdINTEL :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> m ()
glGetFirstPerfQueryIdINTEL v0 = funGL 1497 >>= \f -> liftIO $ f v0

glGetNextPerfQueryIdINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glGetNextPerfQueryIdINTEL v0 v1 = funGL 1498 >>= \f -> liftIO $ f v0 v1

glGetPerfCounterInfoINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> Ptr GLchar -> GLuint -> Ptr GLchar -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint64 -> m ()
glGetPerfCounterInfoINTEL v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 1499 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glGetPerfQueryDataINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr () -> Ptr GLuint -> m ()
glGetPerfQueryDataINTEL v0 v1 v2 v3 v4 = funGL 1500 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetPerfQueryIdByNameINTEL :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLchar -> Ptr GLuint -> m ()
glGetPerfQueryIdByNameINTEL v0 v1 = funGL 1501 >>= \f -> liftIO $ f v0 v1

glGetPerfQueryInfoINTEL :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> Ptr GLchar -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> Ptr GLuint -> m ()
glGetPerfQueryInfoINTEL v0 v1 v2 v3 v4 v5 v6 = funGL 1502 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

gl_PERFQUERY_COUNTER_DATA_BOOL32_INTEL :: GLenum
gl_PERFQUERY_COUNTER_DATA_BOOL32_INTEL = 0x94FC

gl_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL :: GLenum
gl_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL = 0x94FB

gl_PERFQUERY_COUNTER_DATA_FLOAT_INTEL :: GLenum
gl_PERFQUERY_COUNTER_DATA_FLOAT_INTEL = 0x94FA

gl_PERFQUERY_COUNTER_DATA_UINT32_INTEL :: GLenum
gl_PERFQUERY_COUNTER_DATA_UINT32_INTEL = 0x94F8

gl_PERFQUERY_COUNTER_DATA_UINT64_INTEL :: GLenum
gl_PERFQUERY_COUNTER_DATA_UINT64_INTEL = 0x94F9

gl_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL :: GLenum
gl_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL = 0x94FF

gl_PERFQUERY_COUNTER_DURATION_NORM_INTEL :: GLenum
gl_PERFQUERY_COUNTER_DURATION_NORM_INTEL = 0x94F1

gl_PERFQUERY_COUNTER_DURATION_RAW_INTEL :: GLenum
gl_PERFQUERY_COUNTER_DURATION_RAW_INTEL = 0x94F2

gl_PERFQUERY_COUNTER_EVENT_INTEL :: GLenum
gl_PERFQUERY_COUNTER_EVENT_INTEL = 0x94F0

gl_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL :: GLenum
gl_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL = 0x94FE

gl_PERFQUERY_COUNTER_RAW_INTEL :: GLenum
gl_PERFQUERY_COUNTER_RAW_INTEL = 0x94F4

gl_PERFQUERY_COUNTER_THROUGHPUT_INTEL :: GLenum
gl_PERFQUERY_COUNTER_THROUGHPUT_INTEL = 0x94F3

gl_PERFQUERY_COUNTER_TIMESTAMP_INTEL :: GLenum
gl_PERFQUERY_COUNTER_TIMESTAMP_INTEL = 0x94F5

gl_PERFQUERY_DONOT_FLUSH_INTEL :: GLenum
gl_PERFQUERY_DONOT_FLUSH_INTEL = 0x83F9

gl_PERFQUERY_FLUSH_INTEL :: GLenum
gl_PERFQUERY_FLUSH_INTEL = 0x83FA

gl_PERFQUERY_GLOBAL_CONTEXT_INTEL :: GLenum
gl_PERFQUERY_GLOBAL_CONTEXT_INTEL = 0x00000001

gl_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL :: GLenum
gl_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL = 0x9500

gl_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL :: GLenum
gl_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL = 0x94FD

gl_PERFQUERY_SINGLE_CONTEXT_INTEL :: GLenum
gl_PERFQUERY_SINGLE_CONTEXT_INTEL = 0x00000000

gl_PERFQUERY_WAIT_INTEL :: GLenum
gl_PERFQUERY_WAIT_INTEL = 0x83FB