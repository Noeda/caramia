-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.PerformanceMonitor (
	-- * Extension Support
	  gl_AMD_performance_monitor

	-- * GL_AMD_performance_monitor
	, glBeginPerfMonitorAMD
	, glDeletePerfMonitorsAMD
	, glEndPerfMonitorAMD
	, glGenPerfMonitorsAMD
	, glGetPerfMonitorCounterDataAMD
	, glGetPerfMonitorCounterInfoAMD
	, glGetPerfMonitorCounterStringAMD
	, glGetPerfMonitorCountersAMD
	, glGetPerfMonitorGroupStringAMD
	, glGetPerfMonitorGroupsAMD
	, glSelectPerfMonitorCountersAMD
	, gl_COUNTER_RANGE_AMD
	, gl_COUNTER_TYPE_AMD
	, gl_PERCENTAGE_AMD
	, gl_PERFMON_RESULT_AMD
	, gl_PERFMON_RESULT_AVAILABLE_AMD
	, gl_PERFMON_RESULT_SIZE_AMD
	, gl_UNSIGNED_INT64_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_performance_monitor :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_performance_monitor = extGL 16

glBeginPerfMonitorAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBeginPerfMonitorAMD v0 = funGL 49 >>= \f -> liftIO $ f v0

glDeletePerfMonitorsAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeletePerfMonitorsAMD v0 v1 = funGL 50 >>= \f -> liftIO $ f v0 v1

glEndPerfMonitorAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glEndPerfMonitorAMD v0 = funGL 51 >>= \f -> liftIO $ f v0

glGenPerfMonitorsAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenPerfMonitorsAMD v0 v1 = funGL 52 >>= \f -> liftIO $ f v0 v1

glGetPerfMonitorCounterDataAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> Ptr GLuint -> Ptr GLint -> m ()
glGetPerfMonitorCounterDataAMD v0 v1 v2 v3 v4 = funGL 53 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetPerfMonitorCounterInfoAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr () -> m ()
glGetPerfMonitorCounterInfoAMD v0 v1 v2 v3 = funGL 54 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetPerfMonitorCounterStringAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetPerfMonitorCounterStringAMD v0 v1 v2 v3 v4 = funGL 55 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetPerfMonitorCountersAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> Ptr GLint -> GLsizei -> Ptr GLuint -> m ()
glGetPerfMonitorCountersAMD v0 v1 v2 v3 v4 = funGL 56 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetPerfMonitorGroupStringAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetPerfMonitorGroupStringAMD v0 v1 v2 v3 = funGL 57 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetPerfMonitorGroupsAMD :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> GLsizei -> Ptr GLuint -> m ()
glGetPerfMonitorGroupsAMD v0 v1 v2 = funGL 58 >>= \f -> liftIO $ f v0 v1 v2

glSelectPerfMonitorCountersAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLboolean -> GLuint -> GLint -> Ptr GLuint -> m ()
glSelectPerfMonitorCountersAMD v0 v1 v2 v3 v4 = funGL 59 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_COUNTER_RANGE_AMD :: GLenum
gl_COUNTER_RANGE_AMD = 0x8BC1

gl_COUNTER_TYPE_AMD :: GLenum
gl_COUNTER_TYPE_AMD = 0x8BC0

gl_PERCENTAGE_AMD :: GLenum
gl_PERCENTAGE_AMD = 0x8BC3

gl_PERFMON_RESULT_AMD :: GLenum
gl_PERFMON_RESULT_AMD = 0x8BC6

gl_PERFMON_RESULT_AVAILABLE_AMD :: GLenum
gl_PERFMON_RESULT_AVAILABLE_AMD = 0x8BC4

gl_PERFMON_RESULT_SIZE_AMD :: GLenum
gl_PERFMON_RESULT_SIZE_AMD = 0x8BC5

gl_UNSIGNED_INT64_AMD :: GLenum
gl_UNSIGNED_INT64_AMD = 0x8BC2