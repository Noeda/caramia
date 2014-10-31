-- This file was automatically generated.
module Graphics.OpenGL.Internal.Shared where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

glGetUniformi64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> Ptr GLint64EXT -> m ()
glGetUniformi64vNV v0 v1 v2 = funGL 8 >>= \f -> liftIO $ f v0 v1 v2

glGetUniformui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> Ptr GLuint64EXT -> m ()
glGetUniformui64vNV v0 v1 v2 = funGL 9 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint64EXT -> m ()
glProgramUniform1i64NV v0 v1 v2 = funGL 10 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint64EXT -> m ()
glProgramUniform1i64vNV v0 v1 v2 v3 = funGL 11 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform1ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint64EXT -> m ()
glProgramUniform1ui64NV v0 v1 v2 = funGL 12 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glProgramUniform1ui64vNV v0 v1 v2 v3 = funGL 13 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint64EXT -> GLint64EXT -> m ()
glProgramUniform2i64NV v0 v1 v2 v3 = funGL 14 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint64EXT -> m ()
glProgramUniform2i64vNV v0 v1 v2 v3 = funGL 15 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> m ()
glProgramUniform2ui64NV v0 v1 v2 v3 = funGL 16 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glProgramUniform2ui64vNV v0 v1 v2 v3 = funGL 17 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> m ()
glProgramUniform3i64NV v0 v1 v2 v3 v4 = funGL 18 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint64EXT -> m ()
glProgramUniform3i64vNV v0 v1 v2 v3 = funGL 19 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> m ()
glProgramUniform3ui64NV v0 v1 v2 v3 v4 = funGL 20 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glProgramUniform3ui64vNV v0 v1 v2 v3 = funGL 21 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> m ()
glProgramUniform4i64NV v0 v1 v2 v3 v4 v5 = funGL 22 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint64EXT -> m ()
glProgramUniform4i64vNV v0 v1 v2 v3 = funGL 23 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> m ()
glProgramUniform4ui64NV v0 v1 v2 v3 v4 v5 = funGL 24 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glProgramUniform4ui64vNV v0 v1 v2 v3 = funGL 25 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform1i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint64EXT -> m ()
glUniform1i64NV v0 v1 = funGL 26 >>= \f -> liftIO $ f v0 v1

glUniform1i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint64EXT -> m ()
glUniform1i64vNV v0 v1 v2 = funGL 27 >>= \f -> liftIO $ f v0 v1 v2

glUniform1ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint64EXT -> m ()
glUniform1ui64NV v0 v1 = funGL 28 >>= \f -> liftIO $ f v0 v1

glUniform1ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glUniform1ui64vNV v0 v1 v2 = funGL 29 >>= \f -> liftIO $ f v0 v1 v2

glUniform2i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint64EXT -> GLint64EXT -> m ()
glUniform2i64NV v0 v1 v2 = funGL 30 >>= \f -> liftIO $ f v0 v1 v2

glUniform2i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint64EXT -> m ()
glUniform2i64vNV v0 v1 v2 = funGL 31 >>= \f -> liftIO $ f v0 v1 v2

glUniform2ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint64EXT -> GLuint64EXT -> m ()
glUniform2ui64NV v0 v1 v2 = funGL 32 >>= \f -> liftIO $ f v0 v1 v2

glUniform2ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glUniform2ui64vNV v0 v1 v2 = funGL 33 >>= \f -> liftIO $ f v0 v1 v2

glUniform3i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> m ()
glUniform3i64NV v0 v1 v2 v3 = funGL 34 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint64EXT -> m ()
glUniform3i64vNV v0 v1 v2 = funGL 35 >>= \f -> liftIO $ f v0 v1 v2

glUniform3ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> m ()
glUniform3ui64NV v0 v1 v2 v3 = funGL 36 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glUniform3ui64vNV v0 v1 v2 = funGL 37 >>= \f -> liftIO $ f v0 v1 v2

glUniform4i64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint64EXT -> GLint64EXT -> GLint64EXT -> GLint64EXT -> m ()
glUniform4i64NV v0 v1 v2 v3 v4 = funGL 38 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4i64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint64EXT -> m ()
glUniform4i64vNV v0 v1 v2 = funGL 39 >>= \f -> liftIO $ f v0 v1 v2

glUniform4ui64NV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> GLuint64EXT -> m ()
glUniform4ui64NV v0 v1 v2 v3 v4 = funGL 40 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4ui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint64EXT -> m ()
glUniform4ui64vNV v0 v1 v2 = funGL 41 >>= \f -> liftIO $ f v0 v1 v2

gl_FLOAT16_NV :: GLenum
gl_FLOAT16_NV = 0x8FF8

gl_FLOAT16_VEC2_NV :: GLenum
gl_FLOAT16_VEC2_NV = 0x8FF9

gl_FLOAT16_VEC3_NV :: GLenum
gl_FLOAT16_VEC3_NV = 0x8FFA

gl_FLOAT16_VEC4_NV :: GLenum
gl_FLOAT16_VEC4_NV = 0x8FFB

gl_INT16_NV :: GLenum
gl_INT16_NV = 0x8FE4

gl_INT16_VEC2_NV :: GLenum
gl_INT16_VEC2_NV = 0x8FE5

gl_INT16_VEC3_NV :: GLenum
gl_INT16_VEC3_NV = 0x8FE6

gl_INT16_VEC4_NV :: GLenum
gl_INT16_VEC4_NV = 0x8FE7

gl_INT64_NV :: GLenum
gl_INT64_NV = 0x140E

gl_INT64_VEC2_NV :: GLenum
gl_INT64_VEC2_NV = 0x8FE9

gl_INT64_VEC3_NV :: GLenum
gl_INT64_VEC3_NV = 0x8FEA

gl_INT64_VEC4_NV :: GLenum
gl_INT64_VEC4_NV = 0x8FEB

gl_INT8_NV :: GLenum
gl_INT8_NV = 0x8FE0

gl_INT8_VEC2_NV :: GLenum
gl_INT8_VEC2_NV = 0x8FE1

gl_INT8_VEC3_NV :: GLenum
gl_INT8_VEC3_NV = 0x8FE2

gl_INT8_VEC4_NV :: GLenum
gl_INT8_VEC4_NV = 0x8FE3

gl_UNSIGNED_INT16_NV :: GLenum
gl_UNSIGNED_INT16_NV = 0x8FF0

gl_UNSIGNED_INT16_VEC2_NV :: GLenum
gl_UNSIGNED_INT16_VEC2_NV = 0x8FF1

gl_UNSIGNED_INT16_VEC3_NV :: GLenum
gl_UNSIGNED_INT16_VEC3_NV = 0x8FF2

gl_UNSIGNED_INT16_VEC4_NV :: GLenum
gl_UNSIGNED_INT16_VEC4_NV = 0x8FF3

gl_UNSIGNED_INT64_NV :: GLenum
gl_UNSIGNED_INT64_NV = 0x140F

gl_UNSIGNED_INT64_VEC2_NV :: GLenum
gl_UNSIGNED_INT64_VEC2_NV = 0x8FF5

gl_UNSIGNED_INT64_VEC3_NV :: GLenum
gl_UNSIGNED_INT64_VEC3_NV = 0x8FF6

gl_UNSIGNED_INT64_VEC4_NV :: GLenum
gl_UNSIGNED_INT64_VEC4_NV = 0x8FF7

gl_UNSIGNED_INT8_NV :: GLenum
gl_UNSIGNED_INT8_NV = 0x8FEC

gl_UNSIGNED_INT8_VEC2_NV :: GLenum
gl_UNSIGNED_INT8_VEC2_NV = 0x8FED

gl_UNSIGNED_INT8_VEC3_NV :: GLenum
gl_UNSIGNED_INT8_VEC3_NV = 0x8FEE

gl_UNSIGNED_INT8_VEC4_NV :: GLenum
gl_UNSIGNED_INT8_VEC4_NV = 0x8FEF

gl_ALPHA :: GLenum
gl_ALPHA = 0x1906

gl_BLUE :: GLenum
gl_BLUE = 0x1905

gl_GREEN :: GLenum
gl_GREEN = 0x1904

gl_RED :: GLenum
gl_RED = 0x1903

gl_RG16UI :: GLenum
gl_RG16UI = 0x823A

gl_RG8UI :: GLenum
gl_RG8UI = 0x8238

gl_RGBA8UI :: GLenum
gl_RGBA8UI = 0x8D7C

gl_TEXTURE_CUBE_MAP_SEAMLESS :: GLenum
gl_TEXTURE_CUBE_MAP_SEAMLESS = 0x884F

gl_DEPTH24_STENCIL8_OES :: GLenum
gl_DEPTH24_STENCIL8_OES = 0x88F0

gl_DEPTH_COMPONENT :: GLenum
gl_DEPTH_COMPONENT = 0x1902

gl_DEPTH_COMPONENT16 :: GLenum
gl_DEPTH_COMPONENT16 = 0x81A5

gl_DEPTH_COMPONENT32_OES :: GLenum
gl_DEPTH_COMPONENT32_OES = 0x81A7

gl_DEPTH_STENCIL_OES :: GLenum
gl_DEPTH_STENCIL_OES = 0x84F9

gl_UNSIGNED_INT :: GLenum
gl_UNSIGNED_INT = 0x1405

gl_UNSIGNED_INT_24_8_OES :: GLenum
gl_UNSIGNED_INT_24_8_OES = 0x84FA

gl_UNSIGNED_SHORT :: GLenum
gl_UNSIGNED_SHORT = 0x1403

gl_UNSIGNED_SHORT_8_8_APPLE :: GLenum
gl_UNSIGNED_SHORT_8_8_APPLE = 0x85BA

gl_UNSIGNED_SHORT_8_8_REV_APPLE :: GLenum
gl_UNSIGNED_SHORT_8_8_REV_APPLE = 0x85BB

gl_BGRA8_EXT :: GLenum
gl_BGRA8_EXT = 0x93A1

gl_BGRA_EXT :: GLenum
gl_BGRA_EXT = 0x80E1

gl_STORAGE_CACHED_APPLE :: GLenum
gl_STORAGE_CACHED_APPLE = 0x85BE

gl_STORAGE_SHARED_APPLE :: GLenum
gl_STORAGE_SHARED_APPLE = 0x85BF

glDrawArraysInstancedBaseInstance :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> GLsizei -> GLuint -> m ()
glDrawArraysInstancedBaseInstance v0 v1 v2 v3 v4 = funGL 116 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDrawElementsInstancedBaseInstance :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLuint -> m ()
glDrawElementsInstancedBaseInstance v0 v1 v2 v3 v4 v5 = funGL 117 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glDrawElementsInstancedBaseVertexBaseInstance :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> GLuint -> m ()
glDrawElementsInstancedBaseVertexBaseInstance v0 v1 v2 v3 v4 v5 v6 = funGL 118 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glBindFragDataLocationIndexed :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> Ptr GLchar -> m ()
glBindFragDataLocationIndexed v0 v1 v2 v3 = funGL 135 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetFragDataIndex :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLchar -> m GLint
glGetFragDataIndex v0 v1 = funGL 136 >>= \f -> liftIO $ f v0 v1

gl_MAX_DUAL_SOURCE_DRAW_BUFFERS :: GLenum
gl_MAX_DUAL_SOURCE_DRAW_BUFFERS = 0x88FC

gl_ONE_MINUS_SRC1_ALPHA :: GLenum
gl_ONE_MINUS_SRC1_ALPHA = 0x88FB

gl_ONE_MINUS_SRC1_COLOR :: GLenum
gl_ONE_MINUS_SRC1_COLOR = 0x88FA

gl_SRC1_ALPHA :: GLenum
gl_SRC1_ALPHA = 0x8589

gl_SRC1_COLOR :: GLenum
gl_SRC1_COLOR = 0x88F9

glBufferStorage :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizeiptr -> Ptr () -> GLbitfield -> m ()
glBufferStorage v0 v1 v2 v3 = funGL 137 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_BUFFER_IMMUTABLE_STORAGE :: GLenum
gl_BUFFER_IMMUTABLE_STORAGE = 0x821F

gl_BUFFER_STORAGE_FLAGS :: GLenum
gl_BUFFER_STORAGE_FLAGS = 0x8220

gl_CLIENT_MAPPED_BUFFER_BARRIER_BIT :: GLenum
gl_CLIENT_MAPPED_BUFFER_BARRIER_BIT = 0x00004000

gl_CLIENT_STORAGE_BIT :: GLenum
gl_CLIENT_STORAGE_BIT = 0x0200

gl_DYNAMIC_STORAGE_BIT :: GLenum
gl_DYNAMIC_STORAGE_BIT = 0x0100

gl_MAP_COHERENT_BIT :: GLenum
gl_MAP_COHERENT_BIT = 0x0080

gl_MAP_PERSISTENT_BIT :: GLenum
gl_MAP_PERSISTENT_BIT = 0x0040

gl_MAP_READ_BIT :: GLenum
gl_MAP_READ_BIT = 0x0001

gl_MAP_WRITE_BIT :: GLenum
gl_MAP_WRITE_BIT = 0x0002

glClearBufferData :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> Ptr () -> m ()
glClearBufferData v0 v1 v2 v3 v4 = funGL 139 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glClearBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLintptr -> GLsizeiptr -> GLenum -> GLenum -> Ptr () -> m ()
glClearBufferSubData v0 v1 v2 v3 v4 v5 v6 = funGL 140 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glClearTexImage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glClearTexImage v0 v1 v2 v3 v4 = funGL 141 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glClearTexSubImage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glClearTexSubImage v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 142 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

gl_CLEAR_TEXTURE :: GLenum
gl_CLEAR_TEXTURE = 0x9365

glClipControl :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glClipControl v0 v1 = funGL 143 >>= \f -> liftIO $ f v0 v1

gl_CLIP_DEPTH_MODE :: GLenum
gl_CLIP_DEPTH_MODE = 0x935D

gl_CLIP_ORIGIN :: GLenum
gl_CLIP_ORIGIN = 0x935C

gl_LOWER_LEFT :: GLenum
gl_LOWER_LEFT = 0x8CA1

gl_NEGATIVE_ONE_TO_ONE :: GLenum
gl_NEGATIVE_ONE_TO_ONE = 0x935E

gl_UPPER_LEFT :: GLenum
gl_UPPER_LEFT = 0x8CA2

gl_ZERO_TO_ONE :: GLenum
gl_ZERO_TO_ONE = 0x935F

gl_PACK_COMPRESSED_BLOCK_DEPTH :: GLenum
gl_PACK_COMPRESSED_BLOCK_DEPTH = 0x912D

gl_PACK_COMPRESSED_BLOCK_HEIGHT :: GLenum
gl_PACK_COMPRESSED_BLOCK_HEIGHT = 0x912C

gl_PACK_COMPRESSED_BLOCK_SIZE :: GLenum
gl_PACK_COMPRESSED_BLOCK_SIZE = 0x912E

gl_PACK_COMPRESSED_BLOCK_WIDTH :: GLenum
gl_PACK_COMPRESSED_BLOCK_WIDTH = 0x912B

gl_UNPACK_COMPRESSED_BLOCK_DEPTH :: GLenum
gl_UNPACK_COMPRESSED_BLOCK_DEPTH = 0x9129

gl_UNPACK_COMPRESSED_BLOCK_HEIGHT :: GLenum
gl_UNPACK_COMPRESSED_BLOCK_HEIGHT = 0x9128

gl_UNPACK_COMPRESSED_BLOCK_SIZE :: GLenum
gl_UNPACK_COMPRESSED_BLOCK_SIZE = 0x912A

gl_UNPACK_COMPRESSED_BLOCK_WIDTH :: GLenum
gl_UNPACK_COMPRESSED_BLOCK_WIDTH = 0x9127

glDispatchCompute :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glDispatchCompute v0 v1 v2 = funGL 145 >>= \f -> liftIO $ f v0 v1 v2

glDispatchComputeIndirect :: (MonadIO m, MonadReader e m, HasScope e) => GLintptr -> m ()
glDispatchComputeIndirect v0 = funGL 146 >>= \f -> liftIO $ f v0

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = 0x90ED

gl_COMPUTE_SHADER :: GLenum
gl_COMPUTE_SHADER = 0x91B9

gl_COMPUTE_SHADER_BIT :: GLenum
gl_COMPUTE_SHADER_BIT = 0x00000020

gl_COMPUTE_WORK_GROUP_SIZE :: GLenum
gl_COMPUTE_WORK_GROUP_SIZE = 0x8267

gl_DISPATCH_INDIRECT_BUFFER :: GLenum
gl_DISPATCH_INDIRECT_BUFFER = 0x90EE

gl_DISPATCH_INDIRECT_BUFFER_BINDING :: GLenum
gl_DISPATCH_INDIRECT_BUFFER_BINDING = 0x90EF

gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 0x8266

gl_MAX_COMPUTE_ATOMIC_COUNTERS :: GLenum
gl_MAX_COMPUTE_ATOMIC_COUNTERS = 0x8265

gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 0x8264

gl_MAX_COMPUTE_IMAGE_UNIFORMS :: GLenum
gl_MAX_COMPUTE_IMAGE_UNIFORMS = 0x91BD

gl_MAX_COMPUTE_SHARED_MEMORY_SIZE :: GLenum
gl_MAX_COMPUTE_SHARED_MEMORY_SIZE = 0x8262

gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 0x91BC

gl_MAX_COMPUTE_UNIFORM_BLOCKS :: GLenum
gl_MAX_COMPUTE_UNIFORM_BLOCKS = 0x91BB

gl_MAX_COMPUTE_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMPUTE_UNIFORM_COMPONENTS = 0x8263

gl_MAX_COMPUTE_WORK_GROUP_COUNT :: GLenum
gl_MAX_COMPUTE_WORK_GROUP_COUNT = 0x91BE

gl_MAX_COMPUTE_WORK_GROUP_INVOCATIONS :: GLenum
gl_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = 0x90EB

gl_MAX_COMPUTE_WORK_GROUP_SIZE :: GLenum
gl_MAX_COMPUTE_WORK_GROUP_SIZE = 0x91BF

gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER = 0x90EC

gl_QUERY_BY_REGION_NO_WAIT_INVERTED :: GLenum
gl_QUERY_BY_REGION_NO_WAIT_INVERTED = 0x8E1A

gl_QUERY_BY_REGION_WAIT_INVERTED :: GLenum
gl_QUERY_BY_REGION_WAIT_INVERTED = 0x8E19

gl_QUERY_NO_WAIT_INVERTED :: GLenum
gl_QUERY_NO_WAIT_INVERTED = 0x8E18

gl_QUERY_WAIT_INVERTED :: GLenum
gl_QUERY_WAIT_INVERTED = 0x8E17

glCopyBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizeiptr -> m ()
glCopyBufferSubData v0 v1 v2 v3 v4 = funGL 148 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_COPY_READ_BUFFER :: GLenum
gl_COPY_READ_BUFFER = 0x8F36

gl_COPY_WRITE_BUFFER :: GLenum
gl_COPY_WRITE_BUFFER = 0x8F37

glCopyImageSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> m ()
glCopyImageSubData v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 = funGL 149 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14

gl_MAX_COMBINED_CLIP_AND_CULL_DISTANCES :: GLenum
gl_MAX_COMBINED_CLIP_AND_CULL_DISTANCES = 0x82FA

gl_MAX_CULL_DISTANCES :: GLenum
gl_MAX_CULL_DISTANCES = 0x82F9

gl_DEPTH32F_STENCIL8 :: GLenum
gl_DEPTH32F_STENCIL8 = 0x8CAD

gl_DEPTH_COMPONENT32F :: GLenum
gl_DEPTH_COMPONENT32F = 0x8CAC

gl_FLOAT_32_UNSIGNED_INT_24_8_REV :: GLenum
gl_FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD

gl_DEPTH_CLAMP :: GLenum
gl_DEPTH_CLAMP = 0x864F

glBindTextureUnit :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glBindTextureUnit v0 v1 = funGL 154 >>= \f -> liftIO $ f v0 v1

glBlitNamedFramebuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> m ()
glBlitNamedFramebuffer v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = funGL 155 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

glCheckNamedFramebufferStatus :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m GLenum
glCheckNamedFramebufferStatus v0 v1 = funGL 156 >>= \f -> liftIO $ f v0 v1

glClearNamedBufferData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLenum -> Ptr () -> m ()
glClearNamedBufferData v0 v1 v2 v3 v4 = funGL 157 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glClearNamedBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLintptr -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glClearNamedBufferSubData v0 v1 v2 v3 v4 v5 v6 = funGL 158 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glClearNamedFramebufferfi :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLfloat -> GLint -> m ()
glClearNamedFramebufferfi v0 v1 v2 v3 = funGL 159 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearNamedFramebufferfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> Ptr GLfloat -> m ()
glClearNamedFramebufferfv v0 v1 v2 v3 = funGL 160 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearNamedFramebufferiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> Ptr GLint -> m ()
glClearNamedFramebufferiv v0 v1 v2 v3 = funGL 161 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearNamedFramebufferuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> Ptr GLuint -> m ()
glClearNamedFramebufferuiv v0 v1 v2 v3 = funGL 162 >>= \f -> liftIO $ f v0 v1 v2 v3

glCompressedTextureSubImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTextureSubImage1D v0 v1 v2 v3 v4 v5 v6 = funGL 163 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCompressedTextureSubImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTextureSubImage2D v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 164 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCompressedTextureSubImage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTextureSubImage3D v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 165 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glCopyNamedBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizei -> m ()
glCopyNamedBufferSubData v0 v1 v2 v3 v4 = funGL 166 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glCopyTextureSubImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> m ()
glCopyTextureSubImage1D v0 v1 v2 v3 v4 v5 = funGL 167 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glCopyTextureSubImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTextureSubImage2D v0 v1 v2 v3 v4 v5 v6 v7 = funGL 168 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCopyTextureSubImage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTextureSubImage3D v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 169 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCreateBuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glCreateBuffers v0 v1 = funGL 170 >>= \f -> liftIO $ f v0 v1

glCreateFramebuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glCreateFramebuffers v0 v1 = funGL 171 >>= \f -> liftIO $ f v0 v1

glCreateProgramPipelines :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glCreateProgramPipelines v0 v1 = funGL 172 >>= \f -> liftIO $ f v0 v1

glCreateQueries :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLuint -> m ()
glCreateQueries v0 v1 v2 = funGL 173 >>= \f -> liftIO $ f v0 v1 v2

glCreateRenderbuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glCreateRenderbuffers v0 v1 = funGL 174 >>= \f -> liftIO $ f v0 v1

glCreateSamplers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glCreateSamplers v0 v1 = funGL 175 >>= \f -> liftIO $ f v0 v1

glCreateTextures :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLuint -> m ()
glCreateTextures v0 v1 v2 = funGL 176 >>= \f -> liftIO $ f v0 v1 v2

glCreateTransformFeedbacks :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glCreateTransformFeedbacks v0 v1 = funGL 177 >>= \f -> liftIO $ f v0 v1

glCreateVertexArrays :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glCreateVertexArrays v0 v1 = funGL 178 >>= \f -> liftIO $ f v0 v1

glDisableVertexArrayAttrib :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glDisableVertexArrayAttrib v0 v1 = funGL 179 >>= \f -> liftIO $ f v0 v1

glEnableVertexArrayAttrib :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glEnableVertexArrayAttrib v0 v1 = funGL 180 >>= \f -> liftIO $ f v0 v1

glFlushMappedNamedBufferRange :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizei -> m ()
glFlushMappedNamedBufferRange v0 v1 v2 = funGL 181 >>= \f -> liftIO $ f v0 v1 v2

glGenerateTextureMipmap :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glGenerateTextureMipmap v0 = funGL 182 >>= \f -> liftIO $ f v0

glGetCompressedTextureImage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr () -> m ()
glGetCompressedTextureImage v0 v1 v2 v3 = funGL 183 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedBufferParameteri64v :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint64 -> m ()
glGetNamedBufferParameteri64v v0 v1 v2 = funGL 184 >>= \f -> liftIO $ f v0 v1 v2

glGetNamedBufferParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetNamedBufferParameteriv v0 v1 v2 = funGL 185 >>= \f -> liftIO $ f v0 v1 v2

glGetNamedBufferPointerv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glGetNamedBufferPointerv v0 v1 v2 = funGL 186 >>= \f -> liftIO $ f v0 v1 v2

glGetNamedBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizei -> Ptr () -> m ()
glGetNamedBufferSubData v0 v1 v2 v3 = funGL 187 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedFramebufferAttachmentParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetNamedFramebufferAttachmentParameteriv v0 v1 v2 v3 = funGL 188 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedFramebufferParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetNamedFramebufferParameteriv v0 v1 v2 = funGL 189 >>= \f -> liftIO $ f v0 v1 v2

glGetNamedRenderbufferParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetNamedRenderbufferParameteriv v0 v1 v2 = funGL 190 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryBufferObjecti64v :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLintptr -> m ()
glGetQueryBufferObjecti64v v0 v1 v2 v3 = funGL 191 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetQueryBufferObjectiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLintptr -> m ()
glGetQueryBufferObjectiv v0 v1 v2 v3 = funGL 192 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetQueryBufferObjectui64v :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLintptr -> m ()
glGetQueryBufferObjectui64v v0 v1 v2 v3 = funGL 193 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetQueryBufferObjectuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLintptr -> m ()
glGetQueryBufferObjectuiv v0 v1 v2 v3 = funGL 194 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTextureImage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetTextureImage v0 v1 v2 v3 v4 v5 = funGL 195 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetTextureLevelParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> Ptr GLfloat -> m ()
glGetTextureLevelParameterfv v0 v1 v2 v3 = funGL 196 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTextureLevelParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> Ptr GLint -> m ()
glGetTextureLevelParameteriv v0 v1 v2 v3 = funGL 197 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTextureParameterIiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetTextureParameterIiv v0 v1 v2 = funGL 198 >>= \f -> liftIO $ f v0 v1 v2

glGetTextureParameterIuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetTextureParameterIuiv v0 v1 v2 = funGL 199 >>= \f -> liftIO $ f v0 v1 v2

glGetTextureParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetTextureParameterfv v0 v1 v2 = funGL 200 >>= \f -> liftIO $ f v0 v1 v2

glGetTextureParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetTextureParameteriv v0 v1 v2 = funGL 201 >>= \f -> liftIO $ f v0 v1 v2

glGetTransformFeedbacki64_v :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLint64 -> m ()
glGetTransformFeedbacki64_v v0 v1 v2 v3 = funGL 202 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTransformFeedbacki_v :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLint -> m ()
glGetTransformFeedbacki_v v0 v1 v2 v3 = funGL 203 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTransformFeedbackiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetTransformFeedbackiv v0 v1 v2 = funGL 204 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexArrayIndexed64iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLint64 -> m ()
glGetVertexArrayIndexed64iv v0 v1 v2 v3 = funGL 205 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVertexArrayIndexediv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexArrayIndexediv v0 v1 v2 v3 = funGL 206 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVertexArrayiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexArrayiv v0 v1 v2 = funGL 207 >>= \f -> liftIO $ f v0 v1 v2

glInvalidateNamedFramebufferData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLenum -> m ()
glInvalidateNamedFramebufferData v0 v1 v2 = funGL 208 >>= \f -> liftIO $ f v0 v1 v2

glInvalidateNamedFramebufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glInvalidateNamedFramebufferSubData v0 v1 v2 v3 v4 v5 v6 = funGL 209 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glMapNamedBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m (Ptr ())
glMapNamedBuffer v0 v1 = funGL 210 >>= \f -> liftIO $ f v0 v1

glMapNamedBufferRange :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizei -> GLbitfield -> m (Ptr ())
glMapNamedBufferRange v0 v1 v2 v3 = funGL 211 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedBufferData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr () -> GLenum -> m ()
glNamedBufferData v0 v1 v2 v3 = funGL 212 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedBufferStorage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr () -> GLbitfield -> m ()
glNamedBufferStorage v0 v1 v2 v3 = funGL 213 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizei -> Ptr () -> m ()
glNamedBufferSubData v0 v1 v2 v3 = funGL 214 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedFramebufferDrawBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glNamedFramebufferDrawBuffer v0 v1 = funGL 215 >>= \f -> liftIO $ f v0 v1

glNamedFramebufferDrawBuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLenum -> m ()
glNamedFramebufferDrawBuffers v0 v1 v2 = funGL 216 >>= \f -> liftIO $ f v0 v1 v2

glNamedFramebufferParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glNamedFramebufferParameteri v0 v1 v2 = funGL 217 >>= \f -> liftIO $ f v0 v1 v2

glNamedFramebufferReadBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glNamedFramebufferReadBuffer v0 v1 = funGL 218 >>= \f -> liftIO $ f v0 v1

glNamedFramebufferRenderbuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLuint -> m ()
glNamedFramebufferRenderbuffer v0 v1 v2 v3 = funGL 219 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedFramebufferTexture :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLint -> m ()
glNamedFramebufferTexture v0 v1 v2 v3 = funGL 220 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedFramebufferTextureLayer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLint -> GLint -> m ()
glNamedFramebufferTextureLayer v0 v1 v2 v3 v4 = funGL 221 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedRenderbufferStorage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLsizei -> m ()
glNamedRenderbufferStorage v0 v1 v2 v3 = funGL 222 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedRenderbufferStorageMultisample :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glNamedRenderbufferStorageMultisample v0 v1 v2 v3 v4 = funGL 223 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTextureBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> m ()
glTextureBuffer v0 v1 v2 = funGL 224 >>= \f -> liftIO $ f v0 v1 v2

glTextureBufferRange :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLintptr -> GLsizei -> m ()
glTextureBufferRange v0 v1 v2 v3 v4 = funGL 225 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTextureParameterIiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glTextureParameterIiv v0 v1 v2 = funGL 226 >>= \f -> liftIO $ f v0 v1 v2

glTextureParameterIuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glTextureParameterIuiv v0 v1 v2 = funGL 227 >>= \f -> liftIO $ f v0 v1 v2

glTextureParameterf :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLfloat -> m ()
glTextureParameterf v0 v1 v2 = funGL 228 >>= \f -> liftIO $ f v0 v1 v2

glTextureParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glTextureParameterfv v0 v1 v2 = funGL 229 >>= \f -> liftIO $ f v0 v1 v2

glTextureParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glTextureParameteri v0 v1 v2 = funGL 230 >>= \f -> liftIO $ f v0 v1 v2

glTextureParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glTextureParameteriv v0 v1 v2 = funGL 231 >>= \f -> liftIO $ f v0 v1 v2

glTextureStorage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLenum -> GLsizei -> m ()
glTextureStorage1D v0 v1 v2 v3 = funGL 232 >>= \f -> liftIO $ f v0 v1 v2 v3

glTextureStorage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glTextureStorage2D v0 v1 v2 v3 v4 = funGL 233 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTextureStorage2DMultisample :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> m ()
glTextureStorage2DMultisample v0 v1 v2 v3 v4 v5 = funGL 234 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glTextureStorage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> m ()
glTextureStorage3D v0 v1 v2 v3 v4 v5 = funGL 235 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glTextureStorage3DMultisample :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTextureStorage3DMultisample v0 v1 v2 v3 v4 v5 v6 = funGL 236 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTextureSubImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTextureSubImage1D v0 v1 v2 v3 v4 v5 v6 = funGL 237 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTextureSubImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTextureSubImage2D v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 238 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glTextureSubImage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTextureSubImage3D v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 239 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glTransformFeedbackBufferBase :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glTransformFeedbackBufferBase v0 v1 v2 = funGL 240 >>= \f -> liftIO $ f v0 v1 v2

glTransformFeedbackBufferRange :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLintptr -> GLsizei -> m ()
glTransformFeedbackBufferRange v0 v1 v2 v3 v4 = funGL 241 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUnmapNamedBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glUnmapNamedBuffer v0 = funGL 242 >>= \f -> liftIO $ f v0

glVertexArrayAttribBinding :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glVertexArrayAttribBinding v0 v1 v2 = funGL 243 >>= \f -> liftIO $ f v0 v1 v2

glVertexArrayAttribFormat :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> m ()
glVertexArrayAttribFormat v0 v1 v2 v3 v4 v5 = funGL 244 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glVertexArrayAttribIFormat :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLuint -> m ()
glVertexArrayAttribIFormat v0 v1 v2 v3 v4 = funGL 245 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArrayAttribLFormat :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLuint -> m ()
glVertexArrayAttribLFormat v0 v1 v2 v3 v4 = funGL 246 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArrayBindingDivisor :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glVertexArrayBindingDivisor v0 v1 v2 = funGL 247 >>= \f -> liftIO $ f v0 v1 v2

glVertexArrayElementBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexArrayElementBuffer v0 v1 = funGL 248 >>= \f -> liftIO $ f v0 v1

glVertexArrayVertexBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLintptr -> GLsizei -> m ()
glVertexArrayVertexBuffer v0 v1 v2 v3 v4 = funGL 249 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArrayVertexBuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizei -> m ()
glVertexArrayVertexBuffers v0 v1 v2 v3 v4 v5 = funGL 250 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_QUERY_TARGET :: GLenum
gl_QUERY_TARGET = 0x82EA

gl_TEXTURE_BINDING :: GLenum
gl_TEXTURE_BINDING = 0x82EB

gl_TEXTURE_BINDING_1D :: GLenum
gl_TEXTURE_BINDING_1D = 0x8068

gl_TEXTURE_BINDING_1D_ARRAY :: GLenum
gl_TEXTURE_BINDING_1D_ARRAY = 0x8C1C

gl_TEXTURE_BINDING_2D :: GLenum
gl_TEXTURE_BINDING_2D = 0x8069

gl_TEXTURE_BINDING_2D_ARRAY :: GLenum
gl_TEXTURE_BINDING_2D_ARRAY = 0x8C1D

gl_TEXTURE_BINDING_2D_MULTISAMPLE :: GLenum
gl_TEXTURE_BINDING_2D_MULTISAMPLE = 0x9104

gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY :: GLenum
gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY = 0x9105

gl_TEXTURE_BINDING_3D :: GLenum
gl_TEXTURE_BINDING_3D = 0x806A

gl_TEXTURE_BINDING_BUFFER :: GLenum
gl_TEXTURE_BINDING_BUFFER = 0x8C2C

gl_TEXTURE_BINDING_CUBE_MAP :: GLenum
gl_TEXTURE_BINDING_CUBE_MAP = 0x8514

gl_TEXTURE_BINDING_CUBE_MAP_ARRAY :: GLenum
gl_TEXTURE_BINDING_CUBE_MAP_ARRAY = 0x900A

gl_TEXTURE_BINDING_RECTANGLE :: GLenum
gl_TEXTURE_BINDING_RECTANGLE = 0x84F6

gl_TEXTURE_TARGET :: GLenum
gl_TEXTURE_TARGET = 0x1006

glDrawElementsBaseVertex :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLint -> m ()
glDrawElementsBaseVertex v0 v1 v2 v3 v4 = funGL 256 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDrawElementsInstancedBaseVertex :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> GLint -> m ()
glDrawElementsInstancedBaseVertex v0 v1 v2 v3 v4 v5 = funGL 257 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glDrawRangeElementsBaseVertex :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr () -> GLint -> m ()
glDrawRangeElementsBaseVertex v0 v1 v2 v3 v4 v5 v6 = funGL 258 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glMultiDrawElementsBaseVertex :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> Ptr GLint -> m ()
glMultiDrawElementsBaseVertex v0 v1 v2 v3 v4 v5 = funGL 259 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glDrawArraysIndirect :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glDrawArraysIndirect v0 v1 = funGL 260 >>= \f -> liftIO $ f v0 v1

glDrawElementsIndirect :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> m ()
glDrawElementsIndirect v0 v1 v2 = funGL 261 >>= \f -> liftIO $ f v0 v1 v2

gl_DRAW_INDIRECT_BUFFER :: GLenum
gl_DRAW_INDIRECT_BUFFER = 0x8F3F

gl_DRAW_INDIRECT_BUFFER_BINDING :: GLenum
gl_DRAW_INDIRECT_BUFFER_BINDING = 0x8F43

glClearDepthf :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glClearDepthf v0 = funGL 264 >>= \f -> liftIO $ f v0

glDepthRangef :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glDepthRangef v0 v1 = funGL 265 >>= \f -> liftIO $ f v0 v1

glGetShaderPrecisionFormat :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> Ptr GLint -> m ()
glGetShaderPrecisionFormat v0 v1 v2 v3 = funGL 266 >>= \f -> liftIO $ f v0 v1 v2 v3

glReleaseShaderCompiler :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glReleaseShaderCompiler = funGL 267 >>= \f -> liftIO $ f

glShaderBinary :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> GLenum -> Ptr () -> GLsizei -> m ()
glShaderBinary v0 v1 v2 v3 v4 = funGL 268 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_FIXED :: GLenum
gl_FIXED = 0x140C

gl_HIGH_FLOAT :: GLenum
gl_HIGH_FLOAT = 0x8DF2

gl_HIGH_INT :: GLenum
gl_HIGH_INT = 0x8DF5

gl_IMPLEMENTATION_COLOR_READ_FORMAT :: GLenum
gl_IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B

gl_IMPLEMENTATION_COLOR_READ_TYPE :: GLenum
gl_IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A

gl_LOW_FLOAT :: GLenum
gl_LOW_FLOAT = 0x8DF0

gl_LOW_INT :: GLenum
gl_LOW_INT = 0x8DF3

gl_MAX_FRAGMENT_UNIFORM_VECTORS :: GLenum
gl_MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD

gl_MAX_VARYING_VECTORS :: GLenum
gl_MAX_VARYING_VECTORS = 0x8DFC

gl_MAX_VERTEX_UNIFORM_VECTORS :: GLenum
gl_MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB

gl_MEDIUM_FLOAT :: GLenum
gl_MEDIUM_FLOAT = 0x8DF1

gl_MEDIUM_INT :: GLenum
gl_MEDIUM_INT = 0x8DF4

gl_NUM_SHADER_BINARY_FORMATS :: GLenum
gl_NUM_SHADER_BINARY_FORMATS = 0x8DF9

gl_RGB565 :: GLenum
gl_RGB565 = 0x8D62

gl_SHADER_BINARY_FORMATS :: GLenum
gl_SHADER_BINARY_FORMATS = 0x8DF8

gl_SHADER_COMPILER :: GLenum
gl_SHADER_COMPILER = 0x8DFA

glMemoryBarrierByRegion :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glMemoryBarrierByRegion v0 = funGL 269 >>= \f -> liftIO $ f v0

gl_BACK :: GLenum
gl_BACK = 0x0405

gl_ANY_SAMPLES_PASSED_CONSERVATIVE :: GLenum
gl_ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A

gl_COMPRESSED_R11_EAC :: GLenum
gl_COMPRESSED_R11_EAC = 0x9270

gl_COMPRESSED_RG11_EAC :: GLenum
gl_COMPRESSED_RG11_EAC = 0x9272

gl_COMPRESSED_RGB8_ETC2 :: GLenum
gl_COMPRESSED_RGB8_ETC2 = 0x9274

gl_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 :: GLenum
gl_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276

gl_COMPRESSED_RGBA8_ETC2_EAC :: GLenum
gl_COMPRESSED_RGBA8_ETC2_EAC = 0x9278

gl_COMPRESSED_SIGNED_R11_EAC :: GLenum
gl_COMPRESSED_SIGNED_R11_EAC = 0x9271

gl_COMPRESSED_SIGNED_RG11_EAC :: GLenum
gl_COMPRESSED_SIGNED_RG11_EAC = 0x9273

gl_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279

gl_COMPRESSED_SRGB8_ETC2 :: GLenum
gl_COMPRESSED_SRGB8_ETC2 = 0x9275

gl_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 :: GLenum
gl_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277

gl_MAX_ELEMENT_INDEX :: GLenum
gl_MAX_ELEMENT_INDEX = 0x8D6B

gl_PRIMITIVE_RESTART_FIXED_INDEX :: GLenum
gl_PRIMITIVE_RESTART_FIXED_INDEX = 0x8D69

gl_LOCATION_COMPONENT :: GLenum
gl_LOCATION_COMPONENT = 0x934A

gl_TRANSFORM_FEEDBACK_BUFFER :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER = 0x8C8E

gl_TRANSFORM_FEEDBACK_BUFFER_INDEX :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_INDEX = 0x934B

gl_TRANSFORM_FEEDBACK_BUFFER_STRIDE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_STRIDE = 0x934C

gl_MAX_UNIFORM_LOCATIONS :: GLenum
gl_MAX_UNIFORM_LOCATIONS = 0x826E

glBindProgramARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindProgramARB v0 v1 = funGL 270 >>= \f -> liftIO $ f v0 v1

glDeleteProgramsARB :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteProgramsARB v0 v1 = funGL 271 >>= \f -> liftIO $ f v0 v1

glGenProgramsARB :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenProgramsARB v0 v1 = funGL 272 >>= \f -> liftIO $ f v0 v1

glGetProgramEnvParameterdvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLdouble -> m ()
glGetProgramEnvParameterdvARB v0 v1 v2 = funGL 273 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramEnvParameterfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glGetProgramEnvParameterfvARB v0 v1 v2 = funGL 274 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramLocalParameterdvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLdouble -> m ()
glGetProgramLocalParameterdvARB v0 v1 v2 = funGL 275 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramLocalParameterfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glGetProgramLocalParameterfvARB v0 v1 v2 = funGL 276 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramStringARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> m ()
glGetProgramStringARB v0 v1 v2 = funGL 277 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetProgramivARB v0 v1 v2 = funGL 278 >>= \f -> liftIO $ f v0 v1 v2

glIsProgramARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsProgramARB v0 = funGL 279 >>= \f -> liftIO $ f v0

glProgramEnvParameter4dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glProgramEnvParameter4dARB v0 v1 v2 v3 v4 v5 = funGL 280 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramEnvParameter4dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLdouble -> m ()
glProgramEnvParameter4dvARB v0 v1 v2 = funGL 281 >>= \f -> liftIO $ f v0 v1 v2

glProgramEnvParameter4fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glProgramEnvParameter4fARB v0 v1 v2 v3 v4 v5 = funGL 282 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramEnvParameter4fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glProgramEnvParameter4fvARB v0 v1 v2 = funGL 283 >>= \f -> liftIO $ f v0 v1 v2

glProgramLocalParameter4dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glProgramLocalParameter4dARB v0 v1 v2 v3 v4 v5 = funGL 284 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramLocalParameter4dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLdouble -> m ()
glProgramLocalParameter4dvARB v0 v1 v2 = funGL 285 >>= \f -> liftIO $ f v0 v1 v2

glProgramLocalParameter4fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glProgramLocalParameter4fARB v0 v1 v2 v3 v4 v5 = funGL 286 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramLocalParameter4fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glProgramLocalParameter4fvARB v0 v1 v2 = funGL 287 >>= \f -> liftIO $ f v0 v1 v2

glProgramStringARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glProgramStringARB v0 v1 v2 v3 = funGL 288 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_CURRENT_MATRIX_ARB :: GLenum
gl_CURRENT_MATRIX_ARB = 0x8641

gl_CURRENT_MATRIX_STACK_DEPTH_ARB :: GLenum
gl_CURRENT_MATRIX_STACK_DEPTH_ARB = 0x8640

gl_MATRIX0_ARB :: GLenum
gl_MATRIX0_ARB = 0x88C0

gl_MATRIX10_ARB :: GLenum
gl_MATRIX10_ARB = 0x88CA

gl_MATRIX11_ARB :: GLenum
gl_MATRIX11_ARB = 0x88CB

gl_MATRIX12_ARB :: GLenum
gl_MATRIX12_ARB = 0x88CC

gl_MATRIX13_ARB :: GLenum
gl_MATRIX13_ARB = 0x88CD

gl_MATRIX14_ARB :: GLenum
gl_MATRIX14_ARB = 0x88CE

gl_MATRIX15_ARB :: GLenum
gl_MATRIX15_ARB = 0x88CF

gl_MATRIX16_ARB :: GLenum
gl_MATRIX16_ARB = 0x88D0

gl_MATRIX17_ARB :: GLenum
gl_MATRIX17_ARB = 0x88D1

gl_MATRIX18_ARB :: GLenum
gl_MATRIX18_ARB = 0x88D2

gl_MATRIX19_ARB :: GLenum
gl_MATRIX19_ARB = 0x88D3

gl_MATRIX1_ARB :: GLenum
gl_MATRIX1_ARB = 0x88C1

gl_MATRIX20_ARB :: GLenum
gl_MATRIX20_ARB = 0x88D4

gl_MATRIX21_ARB :: GLenum
gl_MATRIX21_ARB = 0x88D5

gl_MATRIX22_ARB :: GLenum
gl_MATRIX22_ARB = 0x88D6

gl_MATRIX23_ARB :: GLenum
gl_MATRIX23_ARB = 0x88D7

gl_MATRIX24_ARB :: GLenum
gl_MATRIX24_ARB = 0x88D8

gl_MATRIX25_ARB :: GLenum
gl_MATRIX25_ARB = 0x88D9

gl_MATRIX26_ARB :: GLenum
gl_MATRIX26_ARB = 0x88DA

gl_MATRIX27_ARB :: GLenum
gl_MATRIX27_ARB = 0x88DB

gl_MATRIX28_ARB :: GLenum
gl_MATRIX28_ARB = 0x88DC

gl_MATRIX29_ARB :: GLenum
gl_MATRIX29_ARB = 0x88DD

gl_MATRIX2_ARB :: GLenum
gl_MATRIX2_ARB = 0x88C2

gl_MATRIX30_ARB :: GLenum
gl_MATRIX30_ARB = 0x88DE

gl_MATRIX31_ARB :: GLenum
gl_MATRIX31_ARB = 0x88DF

gl_MATRIX3_ARB :: GLenum
gl_MATRIX3_ARB = 0x88C3

gl_MATRIX4_ARB :: GLenum
gl_MATRIX4_ARB = 0x88C4

gl_MATRIX5_ARB :: GLenum
gl_MATRIX5_ARB = 0x88C5

gl_MATRIX6_ARB :: GLenum
gl_MATRIX6_ARB = 0x88C6

gl_MATRIX7_ARB :: GLenum
gl_MATRIX7_ARB = 0x88C7

gl_MATRIX8_ARB :: GLenum
gl_MATRIX8_ARB = 0x88C8

gl_MATRIX9_ARB :: GLenum
gl_MATRIX9_ARB = 0x88C9

gl_MAX_PROGRAM_ATTRIBS_ARB :: GLenum
gl_MAX_PROGRAM_ATTRIBS_ARB = 0x88AD

gl_MAX_PROGRAM_ENV_PARAMETERS_ARB :: GLenum
gl_MAX_PROGRAM_ENV_PARAMETERS_ARB = 0x88B5

gl_MAX_PROGRAM_INSTRUCTIONS_ARB :: GLenum
gl_MAX_PROGRAM_INSTRUCTIONS_ARB = 0x88A1

gl_MAX_PROGRAM_LOCAL_PARAMETERS_ARB :: GLenum
gl_MAX_PROGRAM_LOCAL_PARAMETERS_ARB = 0x88B4

gl_MAX_PROGRAM_MATRICES_ARB :: GLenum
gl_MAX_PROGRAM_MATRICES_ARB = 0x862F

gl_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB :: GLenum
gl_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB = 0x862E

gl_MAX_PROGRAM_NATIVE_ATTRIBS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88AF

gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A3

gl_MAX_PROGRAM_NATIVE_PARAMETERS_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88AB

gl_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB :: GLenum
gl_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A7

gl_MAX_PROGRAM_PARAMETERS_ARB :: GLenum
gl_MAX_PROGRAM_PARAMETERS_ARB = 0x88A9

gl_MAX_PROGRAM_TEMPORARIES_ARB :: GLenum
gl_MAX_PROGRAM_TEMPORARIES_ARB = 0x88A5

gl_MAX_TEXTURE_COORDS_ARB :: GLenum
gl_MAX_TEXTURE_COORDS_ARB = 0x8871

gl_MAX_TEXTURE_IMAGE_UNITS_ARB :: GLenum
gl_MAX_TEXTURE_IMAGE_UNITS_ARB = 0x8872

gl_PROGRAM_ATTRIBS_ARB :: GLenum
gl_PROGRAM_ATTRIBS_ARB = 0x88AC

gl_PROGRAM_BINDING_ARB :: GLenum
gl_PROGRAM_BINDING_ARB = 0x8677

gl_PROGRAM_ERROR_POSITION_ARB :: GLenum
gl_PROGRAM_ERROR_POSITION_ARB = 0x864B

gl_PROGRAM_ERROR_STRING_ARB :: GLenum
gl_PROGRAM_ERROR_STRING_ARB = 0x8874

gl_PROGRAM_FORMAT_ARB :: GLenum
gl_PROGRAM_FORMAT_ARB = 0x8876

gl_PROGRAM_FORMAT_ASCII_ARB :: GLenum
gl_PROGRAM_FORMAT_ASCII_ARB = 0x8875

gl_PROGRAM_INSTRUCTIONS_ARB :: GLenum
gl_PROGRAM_INSTRUCTIONS_ARB = 0x88A0

gl_PROGRAM_LENGTH_ARB :: GLenum
gl_PROGRAM_LENGTH_ARB = 0x8627

gl_PROGRAM_NATIVE_ATTRIBS_ARB :: GLenum
gl_PROGRAM_NATIVE_ATTRIBS_ARB = 0x88AE

gl_PROGRAM_NATIVE_INSTRUCTIONS_ARB :: GLenum
gl_PROGRAM_NATIVE_INSTRUCTIONS_ARB = 0x88A2

gl_PROGRAM_NATIVE_PARAMETERS_ARB :: GLenum
gl_PROGRAM_NATIVE_PARAMETERS_ARB = 0x88AA

gl_PROGRAM_NATIVE_TEMPORARIES_ARB :: GLenum
gl_PROGRAM_NATIVE_TEMPORARIES_ARB = 0x88A6

gl_PROGRAM_PARAMETERS_ARB :: GLenum
gl_PROGRAM_PARAMETERS_ARB = 0x88A8

gl_PROGRAM_STRING_ARB :: GLenum
gl_PROGRAM_STRING_ARB = 0x8628

gl_PROGRAM_TEMPORARIES_ARB :: GLenum
gl_PROGRAM_TEMPORARIES_ARB = 0x88A4

gl_PROGRAM_UNDER_NATIVE_LIMITS_ARB :: GLenum
gl_PROGRAM_UNDER_NATIVE_LIMITS_ARB = 0x88B6

gl_TRANSPOSE_CURRENT_MATRIX_ARB :: GLenum
gl_TRANSPOSE_CURRENT_MATRIX_ARB = 0x88B7

glFramebufferParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glFramebufferParameteri v0 v1 v2 = funGL 289 >>= \f -> liftIO $ f v0 v1 v2

glGetFramebufferParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetFramebufferParameteriv v0 v1 v2 = funGL 290 >>= \f -> liftIO $ f v0 v1 v2

gl_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS :: GLenum
gl_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS = 0x9314

gl_FRAMEBUFFER_DEFAULT_HEIGHT :: GLenum
gl_FRAMEBUFFER_DEFAULT_HEIGHT = 0x9311

gl_FRAMEBUFFER_DEFAULT_LAYERS :: GLenum
gl_FRAMEBUFFER_DEFAULT_LAYERS = 0x9312

gl_FRAMEBUFFER_DEFAULT_SAMPLES :: GLenum
gl_FRAMEBUFFER_DEFAULT_SAMPLES = 0x9313

gl_FRAMEBUFFER_DEFAULT_WIDTH :: GLenum
gl_FRAMEBUFFER_DEFAULT_WIDTH = 0x9310

gl_MAX_FRAMEBUFFER_HEIGHT :: GLenum
gl_MAX_FRAMEBUFFER_HEIGHT = 0x9316

gl_MAX_FRAMEBUFFER_LAYERS :: GLenum
gl_MAX_FRAMEBUFFER_LAYERS = 0x9317

gl_MAX_FRAMEBUFFER_SAMPLES :: GLenum
gl_MAX_FRAMEBUFFER_SAMPLES = 0x9318

gl_MAX_FRAMEBUFFER_WIDTH :: GLenum
gl_MAX_FRAMEBUFFER_WIDTH = 0x9315

glBindFramebuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindFramebuffer v0 v1 = funGL 291 >>= \f -> liftIO $ f v0 v1

glBindRenderbuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindRenderbuffer v0 v1 = funGL 292 >>= \f -> liftIO $ f v0 v1

glBlitFramebuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> m ()
glBlitFramebuffer v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 293 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glCheckFramebufferStatus :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLenum
glCheckFramebufferStatus v0 = funGL 294 >>= \f -> liftIO $ f v0

glDeleteFramebuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteFramebuffers v0 v1 = funGL 295 >>= \f -> liftIO $ f v0 v1

glDeleteRenderbuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteRenderbuffers v0 v1 = funGL 296 >>= \f -> liftIO $ f v0 v1

glFramebufferRenderbuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> m ()
glFramebufferRenderbuffer v0 v1 v2 v3 = funGL 297 >>= \f -> liftIO $ f v0 v1 v2 v3

glFramebufferTexture1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> m ()
glFramebufferTexture1D v0 v1 v2 v3 v4 = funGL 298 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glFramebufferTexture2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> m ()
glFramebufferTexture2D v0 v1 v2 v3 v4 = funGL 299 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glFramebufferTexture3D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> m ()
glFramebufferTexture3D v0 v1 v2 v3 v4 v5 = funGL 300 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glFramebufferTextureLayer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLint -> GLint -> m ()
glFramebufferTextureLayer v0 v1 v2 v3 v4 = funGL 301 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGenFramebuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenFramebuffers v0 v1 = funGL 302 >>= \f -> liftIO $ f v0 v1

glGenRenderbuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenRenderbuffers v0 v1 = funGL 303 >>= \f -> liftIO $ f v0 v1

glGenerateMipmap :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glGenerateMipmap v0 = funGL 304 >>= \f -> liftIO $ f v0

glGetFramebufferAttachmentParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetFramebufferAttachmentParameteriv v0 v1 v2 v3 = funGL 305 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetRenderbufferParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetRenderbufferParameteriv v0 v1 v2 = funGL 306 >>= \f -> liftIO $ f v0 v1 v2

glIsFramebuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsFramebuffer v0 = funGL 307 >>= \f -> liftIO $ f v0

glIsRenderbuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsRenderbuffer v0 = funGL 308 >>= \f -> liftIO $ f v0

glRenderbufferStorage :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorage v0 v1 v2 v3 = funGL 309 >>= \f -> liftIO $ f v0 v1 v2 v3

glRenderbufferStorageMultisample :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageMultisample v0 v1 v2 v3 v4 = funGL 310 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_COLOR_ATTACHMENT0 :: GLenum
gl_COLOR_ATTACHMENT0 = 0x8CE0

gl_COLOR_ATTACHMENT1 :: GLenum
gl_COLOR_ATTACHMENT1 = 0x8CE1

gl_COLOR_ATTACHMENT10 :: GLenum
gl_COLOR_ATTACHMENT10 = 0x8CEA

gl_COLOR_ATTACHMENT11 :: GLenum
gl_COLOR_ATTACHMENT11 = 0x8CEB

gl_COLOR_ATTACHMENT12 :: GLenum
gl_COLOR_ATTACHMENT12 = 0x8CEC

gl_COLOR_ATTACHMENT13 :: GLenum
gl_COLOR_ATTACHMENT13 = 0x8CED

gl_COLOR_ATTACHMENT14 :: GLenum
gl_COLOR_ATTACHMENT14 = 0x8CEE

gl_COLOR_ATTACHMENT15 :: GLenum
gl_COLOR_ATTACHMENT15 = 0x8CEF

gl_COLOR_ATTACHMENT2 :: GLenum
gl_COLOR_ATTACHMENT2 = 0x8CE2

gl_COLOR_ATTACHMENT3 :: GLenum
gl_COLOR_ATTACHMENT3 = 0x8CE3

gl_COLOR_ATTACHMENT4 :: GLenum
gl_COLOR_ATTACHMENT4 = 0x8CE4

gl_COLOR_ATTACHMENT5 :: GLenum
gl_COLOR_ATTACHMENT5 = 0x8CE5

gl_COLOR_ATTACHMENT6 :: GLenum
gl_COLOR_ATTACHMENT6 = 0x8CE6

gl_COLOR_ATTACHMENT7 :: GLenum
gl_COLOR_ATTACHMENT7 = 0x8CE7

gl_COLOR_ATTACHMENT8 :: GLenum
gl_COLOR_ATTACHMENT8 = 0x8CE8

gl_COLOR_ATTACHMENT9 :: GLenum
gl_COLOR_ATTACHMENT9 = 0x8CE9

gl_DEPTH24_STENCIL8 :: GLenum
gl_DEPTH24_STENCIL8 = 0x88F0

gl_DEPTH_ATTACHMENT :: GLenum
gl_DEPTH_ATTACHMENT = 0x8D00

gl_DEPTH_STENCIL :: GLenum
gl_DEPTH_STENCIL = 0x84F9

gl_DEPTH_STENCIL_ATTACHMENT :: GLenum
gl_DEPTH_STENCIL_ATTACHMENT = 0x821A

gl_DRAW_FRAMEBUFFER :: GLenum
gl_DRAW_FRAMEBUFFER = 0x8CA9

gl_DRAW_FRAMEBUFFER_BINDING :: GLenum
gl_DRAW_FRAMEBUFFER_BINDING = 0x8CA6

gl_FRAMEBUFFER :: GLenum
gl_FRAMEBUFFER = 0x8D40

gl_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215

gl_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214

gl_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210

gl_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211

gl_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216

gl_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213

gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1

gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0

gl_FRAMEBUFFER_ATTACHMENT_RED_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212

gl_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2

gl_FRAMEBUFFER_BINDING :: GLenum
gl_FRAMEBUFFER_BINDING = 0x8CA6

gl_FRAMEBUFFER_COMPLETE :: GLenum
gl_FRAMEBUFFER_COMPLETE = 0x8CD5

gl_FRAMEBUFFER_DEFAULT :: GLenum
gl_FRAMEBUFFER_DEFAULT = 0x8218

gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6

gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER = 0x8CDB

gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7

gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56

gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER = 0x8CDC

gl_FRAMEBUFFER_UNDEFINED :: GLenum
gl_FRAMEBUFFER_UNDEFINED = 0x8219

gl_FRAMEBUFFER_UNSUPPORTED :: GLenum
gl_FRAMEBUFFER_UNSUPPORTED = 0x8CDD

gl_INDEX :: GLenum
gl_INDEX = 0x8222

gl_INVALID_FRAMEBUFFER_OPERATION :: GLenum
gl_INVALID_FRAMEBUFFER_OPERATION = 0x0506

gl_MAX_COLOR_ATTACHMENTS :: GLenum
gl_MAX_COLOR_ATTACHMENTS = 0x8CDF

gl_MAX_RENDERBUFFER_SIZE :: GLenum
gl_MAX_RENDERBUFFER_SIZE = 0x84E8

gl_MAX_SAMPLES :: GLenum
gl_MAX_SAMPLES = 0x8D57

gl_READ_FRAMEBUFFER :: GLenum
gl_READ_FRAMEBUFFER = 0x8CA8

gl_READ_FRAMEBUFFER_BINDING :: GLenum
gl_READ_FRAMEBUFFER_BINDING = 0x8CAA

gl_RENDERBUFFER :: GLenum
gl_RENDERBUFFER = 0x8D41

gl_RENDERBUFFER_ALPHA_SIZE :: GLenum
gl_RENDERBUFFER_ALPHA_SIZE = 0x8D53

gl_RENDERBUFFER_BINDING :: GLenum
gl_RENDERBUFFER_BINDING = 0x8CA7

gl_RENDERBUFFER_BLUE_SIZE :: GLenum
gl_RENDERBUFFER_BLUE_SIZE = 0x8D52

gl_RENDERBUFFER_DEPTH_SIZE :: GLenum
gl_RENDERBUFFER_DEPTH_SIZE = 0x8D54

gl_RENDERBUFFER_GREEN_SIZE :: GLenum
gl_RENDERBUFFER_GREEN_SIZE = 0x8D51

gl_RENDERBUFFER_HEIGHT :: GLenum
gl_RENDERBUFFER_HEIGHT = 0x8D43

gl_RENDERBUFFER_INTERNAL_FORMAT :: GLenum
gl_RENDERBUFFER_INTERNAL_FORMAT = 0x8D44

gl_RENDERBUFFER_RED_SIZE :: GLenum
gl_RENDERBUFFER_RED_SIZE = 0x8D50

gl_RENDERBUFFER_SAMPLES :: GLenum
gl_RENDERBUFFER_SAMPLES = 0x8CAB

gl_RENDERBUFFER_STENCIL_SIZE :: GLenum
gl_RENDERBUFFER_STENCIL_SIZE = 0x8D55

gl_RENDERBUFFER_WIDTH :: GLenum
gl_RENDERBUFFER_WIDTH = 0x8D42

gl_STENCIL_ATTACHMENT :: GLenum
gl_STENCIL_ATTACHMENT = 0x8D20

gl_STENCIL_INDEX1 :: GLenum
gl_STENCIL_INDEX1 = 0x8D46

gl_STENCIL_INDEX16 :: GLenum
gl_STENCIL_INDEX16 = 0x8D49

gl_STENCIL_INDEX4 :: GLenum
gl_STENCIL_INDEX4 = 0x8D47

gl_STENCIL_INDEX8 :: GLenum
gl_STENCIL_INDEX8 = 0x8D48

gl_TEXTURE_STENCIL_SIZE :: GLenum
gl_TEXTURE_STENCIL_SIZE = 0x88F1

gl_UNSIGNED_INT_24_8 :: GLenum
gl_UNSIGNED_INT_24_8 = 0x84FA

gl_UNSIGNED_NORMALIZED :: GLenum
gl_UNSIGNED_NORMALIZED = 0x8C17

gl_FRAMEBUFFER_SRGB :: GLenum
gl_FRAMEBUFFER_SRGB = 0x8DB9

gl_MAX_VARYING_COMPONENTS :: GLenum
gl_MAX_VARYING_COMPONENTS = 0x8B4B

glGetProgramBinary :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr () -> m ()
glGetProgramBinary v0 v1 v2 v3 v4 = funGL 315 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramBinary :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> GLsizei -> m ()
glProgramBinary v0 v1 v2 v3 = funGL 316 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glProgramParameteri v0 v1 v2 = funGL 317 >>= \f -> liftIO $ f v0 v1 v2

gl_NUM_PROGRAM_BINARY_FORMATS :: GLenum
gl_NUM_PROGRAM_BINARY_FORMATS = 0x87FE

gl_PROGRAM_BINARY_FORMATS :: GLenum
gl_PROGRAM_BINARY_FORMATS = 0x87FF

gl_PROGRAM_BINARY_LENGTH :: GLenum
gl_PROGRAM_BINARY_LENGTH = 0x8741

gl_PROGRAM_BINARY_RETRIEVABLE_HINT :: GLenum
gl_PROGRAM_BINARY_RETRIEVABLE_HINT = 0x8257

glGetCompressedTextureSubImage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> Ptr () -> m ()
glGetCompressedTextureSubImage v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 318 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glGetTextureSubImage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetTextureSubImage v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = funGL 319 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

gl_FRAGMENT_INTERPOLATION_OFFSET_BITS :: GLenum
gl_FRAGMENT_INTERPOLATION_OFFSET_BITS = 0x8E5D

gl_GEOMETRY_SHADER_INVOCATIONS :: GLenum
gl_GEOMETRY_SHADER_INVOCATIONS = 0x887F

gl_MAX_FRAGMENT_INTERPOLATION_OFFSET :: GLenum
gl_MAX_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5C

gl_MAX_GEOMETRY_SHADER_INVOCATIONS :: GLenum
gl_MAX_GEOMETRY_SHADER_INVOCATIONS = 0x8E5A

gl_MAX_VERTEX_STREAMS :: GLenum
gl_MAX_VERTEX_STREAMS = 0x8E71

gl_MIN_FRAGMENT_INTERPOLATION_OFFSET :: GLenum
gl_MIN_FRAGMENT_INTERPOLATION_OFFSET = 0x8E5B

glGetUniformdv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> Ptr GLdouble -> m ()
glGetUniformdv v0 v1 v2 = funGL 320 >>= \f -> liftIO $ f v0 v1 v2

glUniform1d :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLdouble -> m ()
glUniform1d v0 v1 = funGL 321 >>= \f -> liftIO $ f v0 v1

glUniform1dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLdouble -> m ()
glUniform1dv v0 v1 v2 = funGL 322 >>= \f -> liftIO $ f v0 v1 v2

glUniform2d :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLdouble -> GLdouble -> m ()
glUniform2d v0 v1 v2 = funGL 323 >>= \f -> liftIO $ f v0 v1 v2

glUniform2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLdouble -> m ()
glUniform2dv v0 v1 v2 = funGL 324 >>= \f -> liftIO $ f v0 v1 v2

glUniform3d :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLdouble -> GLdouble -> GLdouble -> m ()
glUniform3d v0 v1 v2 v3 = funGL 325 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLdouble -> m ()
glUniform3dv v0 v1 v2 = funGL 326 >>= \f -> liftIO $ f v0 v1 v2

glUniform4d :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glUniform4d v0 v1 v2 v3 v4 = funGL 327 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLdouble -> m ()
glUniform4dv v0 v1 v2 = funGL 328 >>= \f -> liftIO $ f v0 v1 v2

glUniformMatrix2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix2dv v0 v1 v2 v3 = funGL 329 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix2x3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix2x3dv v0 v1 v2 v3 = funGL 330 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix2x4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix2x4dv v0 v1 v2 v3 = funGL 331 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix3dv v0 v1 v2 v3 = funGL 332 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3x2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix3x2dv v0 v1 v2 v3 = funGL 333 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3x4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix3x4dv v0 v1 v2 v3 = funGL 334 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix4dv v0 v1 v2 v3 = funGL 335 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4x2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix4x2dv v0 v1 v2 v3 = funGL 336 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4x3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glUniformMatrix4x3dv v0 v1 v2 v3 = funGL 337 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_DOUBLE :: GLenum
gl_DOUBLE = 0x140A

gl_DOUBLE_MAT2 :: GLenum
gl_DOUBLE_MAT2 = 0x8F46

gl_DOUBLE_MAT2x3 :: GLenum
gl_DOUBLE_MAT2x3 = 0x8F49

gl_DOUBLE_MAT2x4 :: GLenum
gl_DOUBLE_MAT2x4 = 0x8F4A

gl_DOUBLE_MAT3 :: GLenum
gl_DOUBLE_MAT3 = 0x8F47

gl_DOUBLE_MAT3x2 :: GLenum
gl_DOUBLE_MAT3x2 = 0x8F4B

gl_DOUBLE_MAT3x4 :: GLenum
gl_DOUBLE_MAT3x4 = 0x8F4C

gl_DOUBLE_MAT4 :: GLenum
gl_DOUBLE_MAT4 = 0x8F48

gl_DOUBLE_MAT4x2 :: GLenum
gl_DOUBLE_MAT4x2 = 0x8F4D

gl_DOUBLE_MAT4x3 :: GLenum
gl_DOUBLE_MAT4x3 = 0x8F4E

gl_DOUBLE_VEC2 :: GLenum
gl_DOUBLE_VEC2 = 0x8FFC

gl_DOUBLE_VEC3 :: GLenum
gl_DOUBLE_VEC3 = 0x8FFD

gl_DOUBLE_VEC4 :: GLenum
gl_DOUBLE_VEC4 = 0x8FFE

gl_HALF_FLOAT :: GLenum
gl_HALF_FLOAT = 0x140B

glBlendColor :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glBlendColor v0 v1 v2 v3 = funGL 338 >>= \f -> liftIO $ f v0 v1 v2 v3

glBlendEquation :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glBlendEquation v0 = funGL 339 >>= \f -> liftIO $ f v0

gl_BLEND_COLOR :: GLenum
gl_BLEND_COLOR = 0x8005

gl_BLEND_EQUATION :: GLenum
gl_BLEND_EQUATION = 0x8009

gl_CONSTANT_ALPHA :: GLenum
gl_CONSTANT_ALPHA = 0x8003

gl_CONSTANT_COLOR :: GLenum
gl_CONSTANT_COLOR = 0x8001

gl_FUNC_ADD :: GLenum
gl_FUNC_ADD = 0x8006

gl_FUNC_REVERSE_SUBTRACT :: GLenum
gl_FUNC_REVERSE_SUBTRACT = 0x800B

gl_FUNC_SUBTRACT :: GLenum
gl_FUNC_SUBTRACT = 0x800A

gl_MAX :: GLenum
gl_MAX = 0x8008

gl_MIN :: GLenum
gl_MIN = 0x8007

gl_ONE_MINUS_CONSTANT_ALPHA :: GLenum
gl_ONE_MINUS_CONSTANT_ALPHA = 0x8004

gl_ONE_MINUS_CONSTANT_COLOR :: GLenum
gl_ONE_MINUS_CONSTANT_COLOR = 0x8002

glGetInternalformativ :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint -> m ()
glGetInternalformativ v0 v1 v2 v3 v4 = funGL 375 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_NUM_SAMPLE_COUNTS :: GLenum
gl_NUM_SAMPLE_COUNTS = 0x9380

glGetInternalformati64v :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLint64 -> m ()
glGetInternalformati64v v0 v1 v2 v3 v4 = funGL 376 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_AUTO_GENERATE_MIPMAP :: GLenum
gl_AUTO_GENERATE_MIPMAP = 0x8295

gl_CAVEAT_SUPPORT :: GLenum
gl_CAVEAT_SUPPORT = 0x82B8

gl_CLEAR_BUFFER :: GLenum
gl_CLEAR_BUFFER = 0x82B4

gl_COLOR_COMPONENTS :: GLenum
gl_COLOR_COMPONENTS = 0x8283

gl_COLOR_ENCODING :: GLenum
gl_COLOR_ENCODING = 0x8296

gl_COLOR_RENDERABLE :: GLenum
gl_COLOR_RENDERABLE = 0x8286

gl_COMPUTE_TEXTURE :: GLenum
gl_COMPUTE_TEXTURE = 0x82A0

gl_DEPTH_COMPONENTS :: GLenum
gl_DEPTH_COMPONENTS = 0x8284

gl_DEPTH_RENDERABLE :: GLenum
gl_DEPTH_RENDERABLE = 0x8287

gl_FILTER :: GLenum
gl_FILTER = 0x829A

gl_FRAGMENT_TEXTURE :: GLenum
gl_FRAGMENT_TEXTURE = 0x829F

gl_FRAMEBUFFER_BLEND :: GLenum
gl_FRAMEBUFFER_BLEND = 0x828B

gl_FRAMEBUFFER_RENDERABLE :: GLenum
gl_FRAMEBUFFER_RENDERABLE = 0x8289

gl_FRAMEBUFFER_RENDERABLE_LAYERED :: GLenum
gl_FRAMEBUFFER_RENDERABLE_LAYERED = 0x828A

gl_FULL_SUPPORT :: GLenum
gl_FULL_SUPPORT = 0x82B7

gl_GEOMETRY_TEXTURE :: GLenum
gl_GEOMETRY_TEXTURE = 0x829E

gl_GET_TEXTURE_IMAGE_FORMAT :: GLenum
gl_GET_TEXTURE_IMAGE_FORMAT = 0x8291

gl_GET_TEXTURE_IMAGE_TYPE :: GLenum
gl_GET_TEXTURE_IMAGE_TYPE = 0x8292

gl_IMAGE_CLASS_10_10_10_2 :: GLenum
gl_IMAGE_CLASS_10_10_10_2 = 0x82C3

gl_IMAGE_CLASS_11_11_10 :: GLenum
gl_IMAGE_CLASS_11_11_10 = 0x82C2

gl_IMAGE_CLASS_1_X_16 :: GLenum
gl_IMAGE_CLASS_1_X_16 = 0x82BE

gl_IMAGE_CLASS_1_X_32 :: GLenum
gl_IMAGE_CLASS_1_X_32 = 0x82BB

gl_IMAGE_CLASS_1_X_8 :: GLenum
gl_IMAGE_CLASS_1_X_8 = 0x82C1

gl_IMAGE_CLASS_2_X_16 :: GLenum
gl_IMAGE_CLASS_2_X_16 = 0x82BD

gl_IMAGE_CLASS_2_X_32 :: GLenum
gl_IMAGE_CLASS_2_X_32 = 0x82BA

gl_IMAGE_CLASS_2_X_8 :: GLenum
gl_IMAGE_CLASS_2_X_8 = 0x82C0

gl_IMAGE_CLASS_4_X_16 :: GLenum
gl_IMAGE_CLASS_4_X_16 = 0x82BC

gl_IMAGE_CLASS_4_X_32 :: GLenum
gl_IMAGE_CLASS_4_X_32 = 0x82B9

gl_IMAGE_CLASS_4_X_8 :: GLenum
gl_IMAGE_CLASS_4_X_8 = 0x82BF

gl_IMAGE_COMPATIBILITY_CLASS :: GLenum
gl_IMAGE_COMPATIBILITY_CLASS = 0x82A8

gl_IMAGE_FORMAT_COMPATIBILITY_TYPE :: GLenum
gl_IMAGE_FORMAT_COMPATIBILITY_TYPE = 0x90C7

gl_IMAGE_PIXEL_FORMAT :: GLenum
gl_IMAGE_PIXEL_FORMAT = 0x82A9

gl_IMAGE_PIXEL_TYPE :: GLenum
gl_IMAGE_PIXEL_TYPE = 0x82AA

gl_IMAGE_TEXEL_SIZE :: GLenum
gl_IMAGE_TEXEL_SIZE = 0x82A7

gl_INTERNALFORMAT_ALPHA_SIZE :: GLenum
gl_INTERNALFORMAT_ALPHA_SIZE = 0x8274

gl_INTERNALFORMAT_ALPHA_TYPE :: GLenum
gl_INTERNALFORMAT_ALPHA_TYPE = 0x827B

gl_INTERNALFORMAT_BLUE_SIZE :: GLenum
gl_INTERNALFORMAT_BLUE_SIZE = 0x8273

gl_INTERNALFORMAT_BLUE_TYPE :: GLenum
gl_INTERNALFORMAT_BLUE_TYPE = 0x827A

gl_INTERNALFORMAT_DEPTH_SIZE :: GLenum
gl_INTERNALFORMAT_DEPTH_SIZE = 0x8275

gl_INTERNALFORMAT_DEPTH_TYPE :: GLenum
gl_INTERNALFORMAT_DEPTH_TYPE = 0x827C

gl_INTERNALFORMAT_GREEN_SIZE :: GLenum
gl_INTERNALFORMAT_GREEN_SIZE = 0x8272

gl_INTERNALFORMAT_GREEN_TYPE :: GLenum
gl_INTERNALFORMAT_GREEN_TYPE = 0x8279

gl_INTERNALFORMAT_PREFERRED :: GLenum
gl_INTERNALFORMAT_PREFERRED = 0x8270

gl_INTERNALFORMAT_RED_SIZE :: GLenum
gl_INTERNALFORMAT_RED_SIZE = 0x8271

gl_INTERNALFORMAT_RED_TYPE :: GLenum
gl_INTERNALFORMAT_RED_TYPE = 0x8278

gl_INTERNALFORMAT_SHARED_SIZE :: GLenum
gl_INTERNALFORMAT_SHARED_SIZE = 0x8277

gl_INTERNALFORMAT_STENCIL_SIZE :: GLenum
gl_INTERNALFORMAT_STENCIL_SIZE = 0x8276

gl_INTERNALFORMAT_STENCIL_TYPE :: GLenum
gl_INTERNALFORMAT_STENCIL_TYPE = 0x827D

gl_INTERNALFORMAT_SUPPORTED :: GLenum
gl_INTERNALFORMAT_SUPPORTED = 0x826F

gl_MANUAL_GENERATE_MIPMAP :: GLenum
gl_MANUAL_GENERATE_MIPMAP = 0x8294

gl_MAX_COMBINED_DIMENSIONS :: GLenum
gl_MAX_COMBINED_DIMENSIONS = 0x8282

gl_MAX_DEPTH :: GLenum
gl_MAX_DEPTH = 0x8280

gl_MAX_HEIGHT :: GLenum
gl_MAX_HEIGHT = 0x827F

gl_MAX_LAYERS :: GLenum
gl_MAX_LAYERS = 0x8281

gl_MAX_WIDTH :: GLenum
gl_MAX_WIDTH = 0x827E

gl_MIPMAP :: GLenum
gl_MIPMAP = 0x8293

gl_READ_PIXELS :: GLenum
gl_READ_PIXELS = 0x828C

gl_READ_PIXELS_FORMAT :: GLenum
gl_READ_PIXELS_FORMAT = 0x828D

gl_READ_PIXELS_TYPE :: GLenum
gl_READ_PIXELS_TYPE = 0x828E

gl_SAMPLES :: GLenum
gl_SAMPLES = 0x80A9

gl_SHADER_IMAGE_ATOMIC :: GLenum
gl_SHADER_IMAGE_ATOMIC = 0x82A6

gl_SHADER_IMAGE_LOAD :: GLenum
gl_SHADER_IMAGE_LOAD = 0x82A4

gl_SHADER_IMAGE_STORE :: GLenum
gl_SHADER_IMAGE_STORE = 0x82A5

gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST :: GLenum
gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST = 0x82AC

gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE :: GLenum
gl_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE = 0x82AE

gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST :: GLenum
gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST = 0x82AD

gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE :: GLenum
gl_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE = 0x82AF

gl_SRGB_READ :: GLenum
gl_SRGB_READ = 0x8297

gl_SRGB_WRITE :: GLenum
gl_SRGB_WRITE = 0x8298

gl_STENCIL_COMPONENTS :: GLenum
gl_STENCIL_COMPONENTS = 0x8285

gl_STENCIL_RENDERABLE :: GLenum
gl_STENCIL_RENDERABLE = 0x8288

gl_TESS_CONTROL_TEXTURE :: GLenum
gl_TESS_CONTROL_TEXTURE = 0x829C

gl_TESS_EVALUATION_TEXTURE :: GLenum
gl_TESS_EVALUATION_TEXTURE = 0x829D

gl_TEXTURE_1D :: GLenum
gl_TEXTURE_1D = 0x0DE0

gl_TEXTURE_1D_ARRAY :: GLenum
gl_TEXTURE_1D_ARRAY = 0x8C18

gl_TEXTURE_2D :: GLenum
gl_TEXTURE_2D = 0x0DE1

gl_TEXTURE_2D_ARRAY :: GLenum
gl_TEXTURE_2D_ARRAY = 0x8C1A

gl_TEXTURE_2D_MULTISAMPLE :: GLenum
gl_TEXTURE_2D_MULTISAMPLE = 0x9100

gl_TEXTURE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9102

gl_TEXTURE_3D :: GLenum
gl_TEXTURE_3D = 0x806F

gl_TEXTURE_BUFFER :: GLenum
gl_TEXTURE_BUFFER = 0x8C2A

gl_TEXTURE_COMPRESSED :: GLenum
gl_TEXTURE_COMPRESSED = 0x86A1

gl_TEXTURE_COMPRESSED_BLOCK_HEIGHT :: GLenum
gl_TEXTURE_COMPRESSED_BLOCK_HEIGHT = 0x82B2

gl_TEXTURE_COMPRESSED_BLOCK_SIZE :: GLenum
gl_TEXTURE_COMPRESSED_BLOCK_SIZE = 0x82B3

gl_TEXTURE_COMPRESSED_BLOCK_WIDTH :: GLenum
gl_TEXTURE_COMPRESSED_BLOCK_WIDTH = 0x82B1

gl_TEXTURE_CUBE_MAP :: GLenum
gl_TEXTURE_CUBE_MAP = 0x8513

gl_TEXTURE_CUBE_MAP_ARRAY :: GLenum
gl_TEXTURE_CUBE_MAP_ARRAY = 0x9009

gl_TEXTURE_GATHER :: GLenum
gl_TEXTURE_GATHER = 0x82A2

gl_TEXTURE_GATHER_SHADOW :: GLenum
gl_TEXTURE_GATHER_SHADOW = 0x82A3

gl_TEXTURE_IMAGE_FORMAT :: GLenum
gl_TEXTURE_IMAGE_FORMAT = 0x828F

gl_TEXTURE_IMAGE_TYPE :: GLenum
gl_TEXTURE_IMAGE_TYPE = 0x8290

gl_TEXTURE_RECTANGLE :: GLenum
gl_TEXTURE_RECTANGLE = 0x84F5

gl_TEXTURE_SHADOW :: GLenum
gl_TEXTURE_SHADOW = 0x82A1

gl_TEXTURE_VIEW :: GLenum
gl_TEXTURE_VIEW = 0x82B5

gl_VERTEX_TEXTURE :: GLenum
gl_VERTEX_TEXTURE = 0x829B

gl_VIEW_CLASS_128_BITS :: GLenum
gl_VIEW_CLASS_128_BITS = 0x82C4

gl_VIEW_CLASS_16_BITS :: GLenum
gl_VIEW_CLASS_16_BITS = 0x82CA

gl_VIEW_CLASS_24_BITS :: GLenum
gl_VIEW_CLASS_24_BITS = 0x82C9

gl_VIEW_CLASS_32_BITS :: GLenum
gl_VIEW_CLASS_32_BITS = 0x82C8

gl_VIEW_CLASS_48_BITS :: GLenum
gl_VIEW_CLASS_48_BITS = 0x82C7

gl_VIEW_CLASS_64_BITS :: GLenum
gl_VIEW_CLASS_64_BITS = 0x82C6

gl_VIEW_CLASS_8_BITS :: GLenum
gl_VIEW_CLASS_8_BITS = 0x82CB

gl_VIEW_CLASS_96_BITS :: GLenum
gl_VIEW_CLASS_96_BITS = 0x82C5

gl_VIEW_CLASS_BPTC_FLOAT :: GLenum
gl_VIEW_CLASS_BPTC_FLOAT = 0x82D3

gl_VIEW_CLASS_BPTC_UNORM :: GLenum
gl_VIEW_CLASS_BPTC_UNORM = 0x82D2

gl_VIEW_CLASS_RGTC1_RED :: GLenum
gl_VIEW_CLASS_RGTC1_RED = 0x82D0

gl_VIEW_CLASS_RGTC2_RG :: GLenum
gl_VIEW_CLASS_RGTC2_RG = 0x82D1

gl_VIEW_CLASS_S3TC_DXT1_RGB :: GLenum
gl_VIEW_CLASS_S3TC_DXT1_RGB = 0x82CC

gl_VIEW_CLASS_S3TC_DXT1_RGBA :: GLenum
gl_VIEW_CLASS_S3TC_DXT1_RGBA = 0x82CD

gl_VIEW_CLASS_S3TC_DXT3_RGBA :: GLenum
gl_VIEW_CLASS_S3TC_DXT3_RGBA = 0x82CE

gl_VIEW_CLASS_S3TC_DXT5_RGBA :: GLenum
gl_VIEW_CLASS_S3TC_DXT5_RGBA = 0x82CF

gl_VIEW_COMPATIBILITY_CLASS :: GLenum
gl_VIEW_COMPATIBILITY_CLASS = 0x82B6

glInvalidateBufferData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glInvalidateBufferData v0 = funGL 377 >>= \f -> liftIO $ f v0

glInvalidateBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizeiptr -> m ()
glInvalidateBufferSubData v0 v1 v2 = funGL 378 >>= \f -> liftIO $ f v0 v1 v2

glInvalidateFramebuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLenum -> m ()
glInvalidateFramebuffer v0 v1 v2 = funGL 379 >>= \f -> liftIO $ f v0 v1 v2

glInvalidateSubFramebuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glInvalidateSubFramebuffer v0 v1 v2 v3 v4 v5 v6 = funGL 380 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glInvalidateTexImage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> m ()
glInvalidateTexImage v0 v1 = funGL 381 >>= \f -> liftIO $ f v0 v1

glInvalidateTexSubImage :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> m ()
glInvalidateTexSubImage v0 v1 v2 v3 v4 v5 v6 v7 = funGL 382 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_MIN_MAP_BUFFER_ALIGNMENT :: GLenum
gl_MIN_MAP_BUFFER_ALIGNMENT = 0x90BC

glFlushMappedBufferRange :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLsizeiptr -> m ()
glFlushMappedBufferRange v0 v1 v2 = funGL 383 >>= \f -> liftIO $ f v0 v1 v2

glMapBufferRange :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLsizeiptr -> GLbitfield -> m (Ptr ())
glMapBufferRange v0 v1 v2 v3 = funGL 384 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_MAP_FLUSH_EXPLICIT_BIT :: GLenum
gl_MAP_FLUSH_EXPLICIT_BIT = 0x0010

gl_MAP_INVALIDATE_BUFFER_BIT :: GLenum
gl_MAP_INVALIDATE_BUFFER_BIT = 0x0008

gl_MAP_INVALIDATE_RANGE_BIT :: GLenum
gl_MAP_INVALIDATE_RANGE_BIT = 0x0004

gl_MAP_UNSYNCHRONIZED_BIT :: GLenum
gl_MAP_UNSYNCHRONIZED_BIT = 0x0020

glBindBuffersBase :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLuint -> m ()
glBindBuffersBase v0 v1 v2 v3 = funGL 390 >>= \f -> liftIO $ f v0 v1 v2 v3

glBindBuffersRange :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizeiptr -> m ()
glBindBuffersRange v0 v1 v2 v3 v4 v5 = funGL 391 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glBindImageTextures :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLuint -> m ()
glBindImageTextures v0 v1 v2 = funGL 392 >>= \f -> liftIO $ f v0 v1 v2

glBindSamplers :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLuint -> m ()
glBindSamplers v0 v1 v2 = funGL 393 >>= \f -> liftIO $ f v0 v1 v2

glBindTextures :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLuint -> m ()
glBindTextures v0 v1 v2 = funGL 394 >>= \f -> liftIO $ f v0 v1 v2

glBindVertexBuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLuint -> Ptr GLintptr -> Ptr GLsizei -> m ()
glBindVertexBuffers v0 v1 v2 v3 v4 = funGL 395 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiDrawArraysIndirect :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> GLsizei -> GLsizei -> m ()
glMultiDrawArraysIndirect v0 v1 v2 v3 = funGL 396 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiDrawElementsIndirect :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> GLsizei -> GLsizei -> m ()
glMultiDrawElementsIndirect v0 v1 v2 v3 v4 = funGL 397 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_SAMPLES_ARB :: GLenum
gl_SAMPLES_ARB = 0x80A9

gl_TEXTURE0_ARB :: GLenum
gl_TEXTURE0_ARB = 0x84C0

gl_TEXTURE1_ARB :: GLenum
gl_TEXTURE1_ARB = 0x84C1

gl_ANY_SAMPLES_PASSED :: GLenum
gl_ANY_SAMPLES_PASSED = 0x8C2F

glGetProgramInterfaceiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetProgramInterfaceiv v0 v1 v2 v3 = funGL 443 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetProgramResourceIndex :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLchar -> m GLuint
glGetProgramResourceIndex v0 v1 v2 = funGL 444 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramResourceLocation :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLchar -> m GLint
glGetProgramResourceLocation v0 v1 v2 = funGL 445 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramResourceLocationIndex :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLchar -> m GLint
glGetProgramResourceLocationIndex v0 v1 v2 = funGL 446 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramResourceName :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetProgramResourceName v0 v1 v2 v3 v4 v5 = funGL 447 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetProgramResourceiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> m ()
glGetProgramResourceiv v0 v1 v2 v3 v4 v5 v6 v7 = funGL 448 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_ACTIVE_RESOURCES :: GLenum
gl_ACTIVE_RESOURCES = 0x92F5

gl_ACTIVE_VARIABLES :: GLenum
gl_ACTIVE_VARIABLES = 0x9305

gl_ARRAY_SIZE :: GLenum
gl_ARRAY_SIZE = 0x92FB

gl_ARRAY_STRIDE :: GLenum
gl_ARRAY_STRIDE = 0x92FE

gl_ATOMIC_COUNTER_BUFFER :: GLenum
gl_ATOMIC_COUNTER_BUFFER = 0x92C0

gl_ATOMIC_COUNTER_BUFFER_INDEX :: GLenum
gl_ATOMIC_COUNTER_BUFFER_INDEX = 0x9301

gl_BLOCK_INDEX :: GLenum
gl_BLOCK_INDEX = 0x92FD

gl_BUFFER_BINDING :: GLenum
gl_BUFFER_BINDING = 0x9302

gl_BUFFER_DATA_SIZE :: GLenum
gl_BUFFER_DATA_SIZE = 0x9303

gl_BUFFER_VARIABLE :: GLenum
gl_BUFFER_VARIABLE = 0x92E5

gl_COMPATIBLE_SUBROUTINES :: GLenum
gl_COMPATIBLE_SUBROUTINES = 0x8E4B

gl_COMPUTE_SUBROUTINE :: GLenum
gl_COMPUTE_SUBROUTINE = 0x92ED

gl_COMPUTE_SUBROUTINE_UNIFORM :: GLenum
gl_COMPUTE_SUBROUTINE_UNIFORM = 0x92F3

gl_FRAGMENT_SUBROUTINE :: GLenum
gl_FRAGMENT_SUBROUTINE = 0x92EC

gl_FRAGMENT_SUBROUTINE_UNIFORM :: GLenum
gl_FRAGMENT_SUBROUTINE_UNIFORM = 0x92F2

gl_GEOMETRY_SUBROUTINE :: GLenum
gl_GEOMETRY_SUBROUTINE = 0x92EB

gl_GEOMETRY_SUBROUTINE_UNIFORM :: GLenum
gl_GEOMETRY_SUBROUTINE_UNIFORM = 0x92F1

gl_IS_PER_PATCH :: GLenum
gl_IS_PER_PATCH = 0x92E7

gl_IS_ROW_MAJOR :: GLenum
gl_IS_ROW_MAJOR = 0x9300

gl_LOCATION :: GLenum
gl_LOCATION = 0x930E

gl_LOCATION_INDEX :: GLenum
gl_LOCATION_INDEX = 0x930F

gl_MATRIX_STRIDE :: GLenum
gl_MATRIX_STRIDE = 0x92FF

gl_MAX_NAME_LENGTH :: GLenum
gl_MAX_NAME_LENGTH = 0x92F6

gl_MAX_NUM_ACTIVE_VARIABLES :: GLenum
gl_MAX_NUM_ACTIVE_VARIABLES = 0x92F7

gl_MAX_NUM_COMPATIBLE_SUBROUTINES :: GLenum
gl_MAX_NUM_COMPATIBLE_SUBROUTINES = 0x92F8

gl_NAME_LENGTH :: GLenum
gl_NAME_LENGTH = 0x92F9

gl_NUM_ACTIVE_VARIABLES :: GLenum
gl_NUM_ACTIVE_VARIABLES = 0x9304

gl_NUM_COMPATIBLE_SUBROUTINES :: GLenum
gl_NUM_COMPATIBLE_SUBROUTINES = 0x8E4A

gl_OFFSET :: GLenum
gl_OFFSET = 0x92FC

gl_PROGRAM_INPUT :: GLenum
gl_PROGRAM_INPUT = 0x92E3

gl_PROGRAM_OUTPUT :: GLenum
gl_PROGRAM_OUTPUT = 0x92E4

gl_REFERENCED_BY_COMPUTE_SHADER :: GLenum
gl_REFERENCED_BY_COMPUTE_SHADER = 0x930B

gl_REFERENCED_BY_FRAGMENT_SHADER :: GLenum
gl_REFERENCED_BY_FRAGMENT_SHADER = 0x930A

gl_REFERENCED_BY_GEOMETRY_SHADER :: GLenum
gl_REFERENCED_BY_GEOMETRY_SHADER = 0x9309

gl_REFERENCED_BY_TESS_CONTROL_SHADER :: GLenum
gl_REFERENCED_BY_TESS_CONTROL_SHADER = 0x9307

gl_REFERENCED_BY_TESS_EVALUATION_SHADER :: GLenum
gl_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x9308

gl_REFERENCED_BY_VERTEX_SHADER :: GLenum
gl_REFERENCED_BY_VERTEX_SHADER = 0x9306

gl_SHADER_STORAGE_BLOCK :: GLenum
gl_SHADER_STORAGE_BLOCK = 0x92E6

gl_TESS_CONTROL_SUBROUTINE :: GLenum
gl_TESS_CONTROL_SUBROUTINE = 0x92E9

gl_TESS_CONTROL_SUBROUTINE_UNIFORM :: GLenum
gl_TESS_CONTROL_SUBROUTINE_UNIFORM = 0x92EF

gl_TESS_EVALUATION_SUBROUTINE :: GLenum
gl_TESS_EVALUATION_SUBROUTINE = 0x92EA

gl_TESS_EVALUATION_SUBROUTINE_UNIFORM :: GLenum
gl_TESS_EVALUATION_SUBROUTINE_UNIFORM = 0x92F0

gl_TOP_LEVEL_ARRAY_SIZE :: GLenum
gl_TOP_LEVEL_ARRAY_SIZE = 0x930C

gl_TOP_LEVEL_ARRAY_STRIDE :: GLenum
gl_TOP_LEVEL_ARRAY_STRIDE = 0x930D

gl_TRANSFORM_FEEDBACK_VARYING :: GLenum
gl_TRANSFORM_FEEDBACK_VARYING = 0x92F4

gl_TYPE :: GLenum
gl_TYPE = 0x92FA

gl_UNIFORM :: GLenum
gl_UNIFORM = 0x92E1

gl_UNIFORM_BLOCK :: GLenum
gl_UNIFORM_BLOCK = 0x92E2

gl_VERTEX_SUBROUTINE :: GLenum
gl_VERTEX_SUBROUTINE = 0x92E8

gl_VERTEX_SUBROUTINE_UNIFORM :: GLenum
gl_VERTEX_SUBROUTINE_UNIFORM = 0x92EE

glProvokingVertex :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glProvokingVertex v0 = funGL 449 >>= \f -> liftIO $ f v0

gl_FIRST_VERTEX_CONVENTION :: GLenum
gl_FIRST_VERTEX_CONVENTION = 0x8E4D

gl_LAST_VERTEX_CONVENTION :: GLenum
gl_LAST_VERTEX_CONVENTION = 0x8E4E

gl_PROVOKING_VERTEX :: GLenum
gl_PROVOKING_VERTEX = 0x8E4F

gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION :: GLenum
gl_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION = 0x8E4C

gl_QUERY_BUFFER :: GLenum
gl_QUERY_BUFFER = 0x9192

gl_QUERY_BUFFER_BARRIER_BIT :: GLenum
gl_QUERY_BUFFER_BARRIER_BIT = 0x00008000

gl_QUERY_BUFFER_BINDING :: GLenum
gl_QUERY_BUFFER_BINDING = 0x9193

gl_QUERY_RESULT_NO_WAIT :: GLenum
gl_QUERY_RESULT_NO_WAIT = 0x9194

gl_NO_ERROR :: GLenum
gl_NO_ERROR = 0

glBindSampler :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glBindSampler v0 v1 = funGL 471 >>= \f -> liftIO $ f v0 v1

glDeleteSamplers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteSamplers v0 v1 = funGL 472 >>= \f -> liftIO $ f v0 v1

glGenSamplers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenSamplers v0 v1 = funGL 473 >>= \f -> liftIO $ f v0 v1

glGetSamplerParameterIiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetSamplerParameterIiv v0 v1 v2 = funGL 474 >>= \f -> liftIO $ f v0 v1 v2

glGetSamplerParameterIuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetSamplerParameterIuiv v0 v1 v2 = funGL 475 >>= \f -> liftIO $ f v0 v1 v2

glGetSamplerParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetSamplerParameterfv v0 v1 v2 = funGL 476 >>= \f -> liftIO $ f v0 v1 v2

glGetSamplerParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetSamplerParameteriv v0 v1 v2 = funGL 477 >>= \f -> liftIO $ f v0 v1 v2

glIsSampler :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsSampler v0 = funGL 478 >>= \f -> liftIO $ f v0

glSamplerParameterIiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glSamplerParameterIiv v0 v1 v2 = funGL 479 >>= \f -> liftIO $ f v0 v1 v2

glSamplerParameterIuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glSamplerParameterIuiv v0 v1 v2 = funGL 480 >>= \f -> liftIO $ f v0 v1 v2

glSamplerParameterf :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLfloat -> m ()
glSamplerParameterf v0 v1 v2 = funGL 481 >>= \f -> liftIO $ f v0 v1 v2

glSamplerParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glSamplerParameterfv v0 v1 v2 = funGL 482 >>= \f -> liftIO $ f v0 v1 v2

glSamplerParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glSamplerParameteri v0 v1 v2 = funGL 483 >>= \f -> liftIO $ f v0 v1 v2

glSamplerParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glSamplerParameteriv v0 v1 v2 = funGL 484 >>= \f -> liftIO $ f v0 v1 v2

gl_SAMPLER_BINDING :: GLenum
gl_SAMPLER_BINDING = 0x8919

glActiveShaderProgram :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glActiveShaderProgram v0 v1 = funGL 485 >>= \f -> liftIO $ f v0 v1

glBindProgramPipeline :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBindProgramPipeline v0 = funGL 486 >>= \f -> liftIO $ f v0

glCreateShaderProgramv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLchar -> m GLuint
glCreateShaderProgramv v0 v1 v2 = funGL 487 >>= \f -> liftIO $ f v0 v1 v2

glDeleteProgramPipelines :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteProgramPipelines v0 v1 = funGL 488 >>= \f -> liftIO $ f v0 v1

glGenProgramPipelines :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenProgramPipelines v0 v1 = funGL 489 >>= \f -> liftIO $ f v0 v1

glGetProgramPipelineInfoLog :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetProgramPipelineInfoLog v0 v1 v2 v3 = funGL 490 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetProgramPipelineiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetProgramPipelineiv v0 v1 v2 = funGL 491 >>= \f -> liftIO $ f v0 v1 v2

glIsProgramPipeline :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsProgramPipeline v0 = funGL 492 >>= \f -> liftIO $ f v0

glProgramUniform1d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLdouble -> m ()
glProgramUniform1d v0 v1 v2 = funGL 493 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glProgramUniform1dv v0 v1 v2 v3 = funGL 494 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform1f :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLfloat -> m ()
glProgramUniform1f v0 v1 v2 = funGL 495 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glProgramUniform1fv v0 v1 v2 v3 = funGL 496 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform1i :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> m ()
glProgramUniform1i v0 v1 v2 = funGL 497 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glProgramUniform1iv v0 v1 v2 v3 = funGL 498 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform1ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> m ()
glProgramUniform1ui v0 v1 v2 = funGL 499 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glProgramUniform1uiv v0 v1 v2 v3 = funGL 500 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLdouble -> GLdouble -> m ()
glProgramUniform2d v0 v1 v2 v3 = funGL 501 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glProgramUniform2dv v0 v1 v2 v3 = funGL 502 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2f :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLfloat -> GLfloat -> m ()
glProgramUniform2f v0 v1 v2 v3 = funGL 503 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glProgramUniform2fv v0 v1 v2 v3 = funGL 504 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2i :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> m ()
glProgramUniform2i v0 v1 v2 v3 = funGL 505 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glProgramUniform2iv v0 v1 v2 v3 = funGL 506 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> GLuint -> m ()
glProgramUniform2ui v0 v1 v2 v3 = funGL 507 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glProgramUniform2uiv v0 v1 v2 v3 = funGL 508 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> m ()
glProgramUniform3d v0 v1 v2 v3 v4 = funGL 509 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glProgramUniform3dv v0 v1 v2 v3 = funGL 510 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3f :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> m ()
glProgramUniform3f v0 v1 v2 v3 v4 = funGL 511 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glProgramUniform3fv v0 v1 v2 v3 = funGL 512 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3i :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
glProgramUniform3i v0 v1 v2 v3 v4 = funGL 513 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glProgramUniform3iv v0 v1 v2 v3 = funGL 514 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> GLuint -> GLuint -> m ()
glProgramUniform3ui v0 v1 v2 v3 v4 = funGL 515 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glProgramUniform3uiv v0 v1 v2 v3 = funGL 516 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glProgramUniform4d v0 v1 v2 v3 v4 v5 = funGL 517 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glProgramUniform4dv v0 v1 v2 v3 = funGL 518 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4f :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glProgramUniform4f v0 v1 v2 v3 v4 v5 = funGL 519 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glProgramUniform4fv v0 v1 v2 v3 = funGL 520 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4i :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> m ()
glProgramUniform4i v0 v1 v2 v3 v4 v5 = funGL 521 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glProgramUniform4iv v0 v1 v2 v3 = funGL 522 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glProgramUniform4ui v0 v1 v2 v3 v4 v5 = funGL 523 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glProgramUniform4uiv v0 v1 v2 v3 = funGL 524 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniformMatrix2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix2dv v0 v1 v2 v3 v4 = funGL 525 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix2fv v0 v1 v2 v3 v4 = funGL 526 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2x3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix2x3dv v0 v1 v2 v3 v4 = funGL 527 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2x3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix2x3fv v0 v1 v2 v3 v4 = funGL 528 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2x4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix2x4dv v0 v1 v2 v3 v4 = funGL 529 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2x4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix2x4fv v0 v1 v2 v3 v4 = funGL 530 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix3dv v0 v1 v2 v3 v4 = funGL 531 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix3fv v0 v1 v2 v3 v4 = funGL 532 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3x2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix3x2dv v0 v1 v2 v3 v4 = funGL 533 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3x2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix3x2fv v0 v1 v2 v3 v4 = funGL 534 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3x4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix3x4dv v0 v1 v2 v3 v4 = funGL 535 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3x4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix3x4fv v0 v1 v2 v3 v4 = funGL 536 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix4dv v0 v1 v2 v3 v4 = funGL 537 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix4fv v0 v1 v2 v3 v4 = funGL 538 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4x2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix4x2dv v0 v1 v2 v3 v4 = funGL 539 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4x2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix4x2fv v0 v1 v2 v3 v4 = funGL 540 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4x3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix4x3dv v0 v1 v2 v3 v4 = funGL 541 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4x3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix4x3fv v0 v1 v2 v3 v4 = funGL 542 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUseProgramStages :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLbitfield -> GLuint -> m ()
glUseProgramStages v0 v1 v2 = funGL 543 >>= \f -> liftIO $ f v0 v1 v2

glValidateProgramPipeline :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glValidateProgramPipeline v0 = funGL 544 >>= \f -> liftIO $ f v0

gl_ACTIVE_PROGRAM :: GLenum
gl_ACTIVE_PROGRAM = 0x8259

gl_ALL_SHADER_BITS :: GLenum
gl_ALL_SHADER_BITS = 0xFFFFFFFF

gl_FRAGMENT_SHADER_BIT :: GLenum
gl_FRAGMENT_SHADER_BIT = 0x00000002

gl_GEOMETRY_SHADER_BIT :: GLenum
gl_GEOMETRY_SHADER_BIT = 0x00000004

gl_PROGRAM_PIPELINE_BINDING :: GLenum
gl_PROGRAM_PIPELINE_BINDING = 0x825A

gl_PROGRAM_SEPARABLE :: GLenum
gl_PROGRAM_SEPARABLE = 0x8258

gl_TESS_CONTROL_SHADER_BIT :: GLenum
gl_TESS_CONTROL_SHADER_BIT = 0x00000008

gl_TESS_EVALUATION_SHADER_BIT :: GLenum
gl_TESS_EVALUATION_SHADER_BIT = 0x00000010

gl_VERTEX_SHADER_BIT :: GLenum
gl_VERTEX_SHADER_BIT = 0x00000001

glGetActiveAtomicCounterBufferiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetActiveAtomicCounterBufferiv v0 v1 v2 v3 = funGL 545 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_ACTIVE_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_ACTIVE_ATOMIC_COUNTER_BUFFERS = 0x92D9

gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS :: GLenum
gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS = 0x92C5

gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES :: GLenum
gl_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES = 0x92C6

gl_ATOMIC_COUNTER_BUFFER_BINDING :: GLenum
gl_ATOMIC_COUNTER_BUFFER_BINDING = 0x92C1

gl_ATOMIC_COUNTER_BUFFER_DATA_SIZE :: GLenum
gl_ATOMIC_COUNTER_BUFFER_DATA_SIZE = 0x92C4

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER = 0x92CB

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER = 0x92CA

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92C8

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9

gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER :: GLenum
gl_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER = 0x92C7

gl_ATOMIC_COUNTER_BUFFER_SIZE :: GLenum
gl_ATOMIC_COUNTER_BUFFER_SIZE = 0x92C3

gl_ATOMIC_COUNTER_BUFFER_START :: GLenum
gl_ATOMIC_COUNTER_BUFFER_START = 0x92C2

gl_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS :: GLenum
gl_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS = 0x92DC

gl_MAX_ATOMIC_COUNTER_BUFFER_SIZE :: GLenum
gl_MAX_ATOMIC_COUNTER_BUFFER_SIZE = 0x92D8

gl_MAX_COMBINED_ATOMIC_COUNTERS :: GLenum
gl_MAX_COMBINED_ATOMIC_COUNTERS = 0x92D7

gl_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS = 0x92D1

gl_MAX_FRAGMENT_ATOMIC_COUNTERS :: GLenum
gl_MAX_FRAGMENT_ATOMIC_COUNTERS = 0x92D6

gl_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS = 0x92D0

gl_MAX_GEOMETRY_ATOMIC_COUNTERS :: GLenum
gl_MAX_GEOMETRY_ATOMIC_COUNTERS = 0x92D5

gl_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS = 0x92CF

gl_MAX_TESS_CONTROL_ATOMIC_COUNTERS :: GLenum
gl_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 0x92D3

gl_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS = 0x92CD

gl_MAX_TESS_EVALUATION_ATOMIC_COUNTERS :: GLenum
gl_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 0x92D4

gl_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS = 0x92CE

gl_MAX_VERTEX_ATOMIC_COUNTERS :: GLenum
gl_MAX_VERTEX_ATOMIC_COUNTERS = 0x92D2

gl_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS :: GLenum
gl_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS = 0x92CC

gl_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX :: GLenum
gl_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX = 0x92DA

gl_UNSIGNED_INT_ATOMIC_COUNTER :: GLenum
gl_UNSIGNED_INT_ATOMIC_COUNTER = 0x92DB

glBindImageTexture :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLboolean -> GLint -> GLenum -> GLenum -> m ()
glBindImageTexture v0 v1 v2 v3 v4 v5 v6 = funGL 546 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glMemoryBarrier :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glMemoryBarrier v0 = funGL 547 >>= \f -> liftIO $ f v0

gl_ALL_BARRIER_BITS :: GLenum
gl_ALL_BARRIER_BITS = 0xFFFFFFFF

gl_ATOMIC_COUNTER_BARRIER_BIT :: GLenum
gl_ATOMIC_COUNTER_BARRIER_BIT = 0x00001000

gl_BUFFER_UPDATE_BARRIER_BIT :: GLenum
gl_BUFFER_UPDATE_BARRIER_BIT = 0x00000200

gl_COMMAND_BARRIER_BIT :: GLenum
gl_COMMAND_BARRIER_BIT = 0x00000040

gl_ELEMENT_ARRAY_BARRIER_BIT :: GLenum
gl_ELEMENT_ARRAY_BARRIER_BIT = 0x00000002

gl_FRAMEBUFFER_BARRIER_BIT :: GLenum
gl_FRAMEBUFFER_BARRIER_BIT = 0x00000400

gl_IMAGE_1D :: GLenum
gl_IMAGE_1D = 0x904C

gl_IMAGE_1D_ARRAY :: GLenum
gl_IMAGE_1D_ARRAY = 0x9052

gl_IMAGE_2D :: GLenum
gl_IMAGE_2D = 0x904D

gl_IMAGE_2D_ARRAY :: GLenum
gl_IMAGE_2D_ARRAY = 0x9053

gl_IMAGE_2D_MULTISAMPLE :: GLenum
gl_IMAGE_2D_MULTISAMPLE = 0x9055

gl_IMAGE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9056

gl_IMAGE_2D_RECT :: GLenum
gl_IMAGE_2D_RECT = 0x904F

gl_IMAGE_3D :: GLenum
gl_IMAGE_3D = 0x904E

gl_IMAGE_BINDING_ACCESS :: GLenum
gl_IMAGE_BINDING_ACCESS = 0x8F3E

gl_IMAGE_BINDING_FORMAT :: GLenum
gl_IMAGE_BINDING_FORMAT = 0x906E

gl_IMAGE_BINDING_LAYER :: GLenum
gl_IMAGE_BINDING_LAYER = 0x8F3D

gl_IMAGE_BINDING_LAYERED :: GLenum
gl_IMAGE_BINDING_LAYERED = 0x8F3C

gl_IMAGE_BINDING_LEVEL :: GLenum
gl_IMAGE_BINDING_LEVEL = 0x8F3B

gl_IMAGE_BINDING_NAME :: GLenum
gl_IMAGE_BINDING_NAME = 0x8F3A

gl_IMAGE_BUFFER :: GLenum
gl_IMAGE_BUFFER = 0x9051

gl_IMAGE_CUBE :: GLenum
gl_IMAGE_CUBE = 0x9050

gl_IMAGE_CUBE_MAP_ARRAY :: GLenum
gl_IMAGE_CUBE_MAP_ARRAY = 0x9054

gl_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS :: GLenum
gl_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS = 0x90C9

gl_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE :: GLenum
gl_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE = 0x90C8

gl_INT_IMAGE_1D :: GLenum
gl_INT_IMAGE_1D = 0x9057

gl_INT_IMAGE_1D_ARRAY :: GLenum
gl_INT_IMAGE_1D_ARRAY = 0x905D

gl_INT_IMAGE_2D :: GLenum
gl_INT_IMAGE_2D = 0x9058

gl_INT_IMAGE_2D_ARRAY :: GLenum
gl_INT_IMAGE_2D_ARRAY = 0x905E

gl_INT_IMAGE_2D_MULTISAMPLE :: GLenum
gl_INT_IMAGE_2D_MULTISAMPLE = 0x9060

gl_INT_IMAGE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x9061

gl_INT_IMAGE_2D_RECT :: GLenum
gl_INT_IMAGE_2D_RECT = 0x905A

gl_INT_IMAGE_3D :: GLenum
gl_INT_IMAGE_3D = 0x9059

gl_INT_IMAGE_BUFFER :: GLenum
gl_INT_IMAGE_BUFFER = 0x905C

gl_INT_IMAGE_CUBE :: GLenum
gl_INT_IMAGE_CUBE = 0x905B

gl_INT_IMAGE_CUBE_MAP_ARRAY :: GLenum
gl_INT_IMAGE_CUBE_MAP_ARRAY = 0x905F

gl_MAX_COMBINED_IMAGE_UNIFORMS :: GLenum
gl_MAX_COMBINED_IMAGE_UNIFORMS = 0x90CF

gl_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS :: GLenum
gl_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS = 0x8F39

gl_MAX_FRAGMENT_IMAGE_UNIFORMS :: GLenum
gl_MAX_FRAGMENT_IMAGE_UNIFORMS = 0x90CE

gl_MAX_GEOMETRY_IMAGE_UNIFORMS :: GLenum
gl_MAX_GEOMETRY_IMAGE_UNIFORMS = 0x90CD

gl_MAX_IMAGE_SAMPLES :: GLenum
gl_MAX_IMAGE_SAMPLES = 0x906D

gl_MAX_IMAGE_UNITS :: GLenum
gl_MAX_IMAGE_UNITS = 0x8F38

gl_MAX_TESS_CONTROL_IMAGE_UNIFORMS :: GLenum
gl_MAX_TESS_CONTROL_IMAGE_UNIFORMS = 0x90CB

gl_MAX_TESS_EVALUATION_IMAGE_UNIFORMS :: GLenum
gl_MAX_TESS_EVALUATION_IMAGE_UNIFORMS = 0x90CC

gl_MAX_VERTEX_IMAGE_UNIFORMS :: GLenum
gl_MAX_VERTEX_IMAGE_UNIFORMS = 0x90CA

gl_PIXEL_BUFFER_BARRIER_BIT :: GLenum
gl_PIXEL_BUFFER_BARRIER_BIT = 0x00000080

gl_SHADER_IMAGE_ACCESS_BARRIER_BIT :: GLenum
gl_SHADER_IMAGE_ACCESS_BARRIER_BIT = 0x00000020

gl_TEXTURE_FETCH_BARRIER_BIT :: GLenum
gl_TEXTURE_FETCH_BARRIER_BIT = 0x00000008

gl_TEXTURE_UPDATE_BARRIER_BIT :: GLenum
gl_TEXTURE_UPDATE_BARRIER_BIT = 0x00000100

gl_TRANSFORM_FEEDBACK_BARRIER_BIT :: GLenum
gl_TRANSFORM_FEEDBACK_BARRIER_BIT = 0x00000800

gl_UNIFORM_BARRIER_BIT :: GLenum
gl_UNIFORM_BARRIER_BIT = 0x00000004

gl_UNSIGNED_INT_IMAGE_1D :: GLenum
gl_UNSIGNED_INT_IMAGE_1D = 0x9062

gl_UNSIGNED_INT_IMAGE_1D_ARRAY :: GLenum
gl_UNSIGNED_INT_IMAGE_1D_ARRAY = 0x9068

gl_UNSIGNED_INT_IMAGE_2D :: GLenum
gl_UNSIGNED_INT_IMAGE_2D = 0x9063

gl_UNSIGNED_INT_IMAGE_2D_ARRAY :: GLenum
gl_UNSIGNED_INT_IMAGE_2D_ARRAY = 0x9069

gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE :: GLenum
gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE = 0x906B

gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY = 0x906C

gl_UNSIGNED_INT_IMAGE_2D_RECT :: GLenum
gl_UNSIGNED_INT_IMAGE_2D_RECT = 0x9065

gl_UNSIGNED_INT_IMAGE_3D :: GLenum
gl_UNSIGNED_INT_IMAGE_3D = 0x9064

gl_UNSIGNED_INT_IMAGE_BUFFER :: GLenum
gl_UNSIGNED_INT_IMAGE_BUFFER = 0x9067

gl_UNSIGNED_INT_IMAGE_CUBE :: GLenum
gl_UNSIGNED_INT_IMAGE_CUBE = 0x9066

gl_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY :: GLenum
gl_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY = 0x906A

gl_VERTEX_ATTRIB_ARRAY_BARRIER_BIT :: GLenum
gl_VERTEX_ATTRIB_ARRAY_BARRIER_BIT = 0x00000001

gl_FLOAT_MAT2_ARB :: GLenum
gl_FLOAT_MAT2_ARB = 0x8B5A

gl_FLOAT_MAT3_ARB :: GLenum
gl_FLOAT_MAT3_ARB = 0x8B5B

gl_FLOAT_MAT4_ARB :: GLenum
gl_FLOAT_MAT4_ARB = 0x8B5C

gl_FLOAT_VEC2_ARB :: GLenum
gl_FLOAT_VEC2_ARB = 0x8B50

gl_FLOAT_VEC3_ARB :: GLenum
gl_FLOAT_VEC3_ARB = 0x8B51

gl_FLOAT_VEC4_ARB :: GLenum
gl_FLOAT_VEC4_ARB = 0x8B52

glShaderStorageBlockBinding :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glShaderStorageBlockBinding v0 v1 v2 = funGL 587 >>= \f -> liftIO $ f v0 v1 v2

gl_MAX_COMBINED_SHADER_OUTPUT_RESOURCES :: GLenum
gl_MAX_COMBINED_SHADER_OUTPUT_RESOURCES = 0x8F39

gl_MAX_COMBINED_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 0x90DC

gl_MAX_COMPUTE_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 0x90DB

gl_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 0x90DA

gl_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 0x90D7

gl_MAX_SHADER_STORAGE_BLOCK_SIZE :: GLenum
gl_MAX_SHADER_STORAGE_BLOCK_SIZE = 0x90DE

gl_MAX_SHADER_STORAGE_BUFFER_BINDINGS :: GLenum
gl_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 0x90DD

gl_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 0x90D8

gl_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 0x90D9

gl_MAX_VERTEX_SHADER_STORAGE_BLOCKS :: GLenum
gl_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 0x90D6

gl_SHADER_STORAGE_BARRIER_BIT :: GLenum
gl_SHADER_STORAGE_BARRIER_BIT = 0x00002000

gl_SHADER_STORAGE_BUFFER :: GLenum
gl_SHADER_STORAGE_BUFFER = 0x90D2

gl_SHADER_STORAGE_BUFFER_BINDING :: GLenum
gl_SHADER_STORAGE_BUFFER_BINDING = 0x90D3

gl_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT :: GLenum
gl_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 0x90DF

gl_SHADER_STORAGE_BUFFER_SIZE :: GLenum
gl_SHADER_STORAGE_BUFFER_SIZE = 0x90D5

gl_SHADER_STORAGE_BUFFER_START :: GLenum
gl_SHADER_STORAGE_BUFFER_START = 0x90D4

glGetActiveSubroutineName :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetActiveSubroutineName v0 v1 v2 v3 v4 v5 = funGL 588 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetActiveSubroutineUniformName :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetActiveSubroutineUniformName v0 v1 v2 v3 v4 v5 = funGL 589 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetActiveSubroutineUniformiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetActiveSubroutineUniformiv v0 v1 v2 v3 v4 = funGL 590 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetProgramStageiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetProgramStageiv v0 v1 v2 v3 = funGL 591 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetSubroutineIndex :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLchar -> m GLuint
glGetSubroutineIndex v0 v1 v2 = funGL 592 >>= \f -> liftIO $ f v0 v1 v2

glGetSubroutineUniformLocation :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLchar -> m GLint
glGetSubroutineUniformLocation v0 v1 v2 = funGL 593 >>= \f -> liftIO $ f v0 v1 v2

glGetUniformSubroutineuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr GLuint -> m ()
glGetUniformSubroutineuiv v0 v1 v2 = funGL 594 >>= \f -> liftIO $ f v0 v1 v2

glUniformSubroutinesuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLuint -> m ()
glUniformSubroutinesuiv v0 v1 v2 = funGL 595 >>= \f -> liftIO $ f v0 v1 v2

gl_ACTIVE_SUBROUTINES :: GLenum
gl_ACTIVE_SUBROUTINES = 0x8DE5

gl_ACTIVE_SUBROUTINE_MAX_LENGTH :: GLenum
gl_ACTIVE_SUBROUTINE_MAX_LENGTH = 0x8E48

gl_ACTIVE_SUBROUTINE_UNIFORMS :: GLenum
gl_ACTIVE_SUBROUTINE_UNIFORMS = 0x8DE6

gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS :: GLenum
gl_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS = 0x8E47

gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH :: GLenum
gl_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH = 0x8E49

gl_MAX_SUBROUTINES :: GLenum
gl_MAX_SUBROUTINES = 0x8DE7

gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS :: GLenum
gl_MAX_SUBROUTINE_UNIFORM_LOCATIONS = 0x8DE8

gl_UNIFORM_NAME_LENGTH :: GLenum
gl_UNIFORM_NAME_LENGTH = 0x8A39

gl_UNIFORM_SIZE :: GLenum
gl_UNIFORM_SIZE = 0x8A38

gl_DEPTH_STENCIL_TEXTURE_MODE :: GLenum
gl_DEPTH_STENCIL_TEXTURE_MODE = 0x90EA

glClientWaitSync :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> GLbitfield -> GLuint64 -> m GLenum
glClientWaitSync v0 v1 v2 = funGL 606 >>= \f -> liftIO $ f v0 v1 v2

glDeleteSync :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> m ()
glDeleteSync v0 = funGL 607 >>= \f -> liftIO $ f v0

glFenceSync :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLbitfield -> m GLsync
glFenceSync v0 v1 = funGL 608 >>= \f -> liftIO $ f v0 v1

glGetInteger64v :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint64 -> m ()
glGetInteger64v v0 v1 = funGL 609 >>= \f -> liftIO $ f v0 v1

glGetSynciv :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> m ()
glGetSynciv v0 v1 v2 v3 v4 = funGL 610 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glIsSync :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> m GLboolean
glIsSync v0 = funGL 611 >>= \f -> liftIO $ f v0

glWaitSync :: (MonadIO m, MonadReader e m, HasScope e) => GLsync -> GLbitfield -> GLuint64 -> m ()
glWaitSync v0 v1 v2 = funGL 612 >>= \f -> liftIO $ f v0 v1 v2

gl_ALREADY_SIGNALED :: GLenum
gl_ALREADY_SIGNALED = 0x911A

gl_CONDITION_SATISFIED :: GLenum
gl_CONDITION_SATISFIED = 0x911C

gl_MAX_SERVER_WAIT_TIMEOUT :: GLenum
gl_MAX_SERVER_WAIT_TIMEOUT = 0x9111

gl_OBJECT_TYPE :: GLenum
gl_OBJECT_TYPE = 0x9112

gl_SIGNALED :: GLenum
gl_SIGNALED = 0x9119

gl_SYNC_CONDITION :: GLenum
gl_SYNC_CONDITION = 0x9113

gl_SYNC_FENCE :: GLenum
gl_SYNC_FENCE = 0x9116

gl_SYNC_FLAGS :: GLenum
gl_SYNC_FLAGS = 0x9115

gl_SYNC_FLUSH_COMMANDS_BIT :: GLenum
gl_SYNC_FLUSH_COMMANDS_BIT = 0x00000001

gl_SYNC_GPU_COMMANDS_COMPLETE :: GLenum
gl_SYNC_GPU_COMMANDS_COMPLETE = 0x9117

gl_SYNC_STATUS :: GLenum
gl_SYNC_STATUS = 0x9114

gl_TIMEOUT_EXPIRED :: GLenum
gl_TIMEOUT_EXPIRED = 0x911B

gl_TIMEOUT_IGNORED :: GLenum
gl_TIMEOUT_IGNORED = 0xFFFFFFFFFFFFFFFF

gl_UNSIGNALED :: GLenum
gl_UNSIGNALED = 0x9118

gl_WAIT_FAILED :: GLenum
gl_WAIT_FAILED = 0x911D

glPatchParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glPatchParameterfv v0 v1 = funGL 613 >>= \f -> liftIO $ f v0 v1

glPatchParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glPatchParameteri v0 v1 = funGL 614 >>= \f -> liftIO $ f v0 v1

gl_CCW :: GLenum
gl_CCW = 0x0901

gl_CW :: GLenum
gl_CW = 0x0900

gl_EQUAL :: GLenum
gl_EQUAL = 0x0202

gl_FRACTIONAL_EVEN :: GLenum
gl_FRACTIONAL_EVEN = 0x8E7C

gl_FRACTIONAL_ODD :: GLenum
gl_FRACTIONAL_ODD = 0x8E7B

gl_ISOLINES :: GLenum
gl_ISOLINES = 0x8E7A

gl_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E1E

gl_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E1F

gl_MAX_PATCH_VERTICES :: GLenum
gl_MAX_PATCH_VERTICES = 0x8E7D

gl_MAX_TESS_CONTROL_INPUT_COMPONENTS :: GLenum
gl_MAX_TESS_CONTROL_INPUT_COMPONENTS = 0x886C

gl_MAX_TESS_CONTROL_OUTPUT_COMPONENTS :: GLenum
gl_MAX_TESS_CONTROL_OUTPUT_COMPONENTS = 0x8E83

gl_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS = 0x8E81

gl_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS :: GLenum
gl_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS = 0x8E85

gl_MAX_TESS_CONTROL_UNIFORM_BLOCKS :: GLenum
gl_MAX_TESS_CONTROL_UNIFORM_BLOCKS = 0x8E89

gl_MAX_TESS_CONTROL_UNIFORM_COMPONENTS :: GLenum
gl_MAX_TESS_CONTROL_UNIFORM_COMPONENTS = 0x8E7F

gl_MAX_TESS_EVALUATION_INPUT_COMPONENTS :: GLenum
gl_MAX_TESS_EVALUATION_INPUT_COMPONENTS = 0x886D

gl_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS :: GLenum
gl_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS = 0x8E86

gl_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS = 0x8E82

gl_MAX_TESS_EVALUATION_UNIFORM_BLOCKS :: GLenum
gl_MAX_TESS_EVALUATION_UNIFORM_BLOCKS = 0x8E8A

gl_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS :: GLenum
gl_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS = 0x8E80

gl_MAX_TESS_GEN_LEVEL :: GLenum
gl_MAX_TESS_GEN_LEVEL = 0x8E7E

gl_MAX_TESS_PATCH_COMPONENTS :: GLenum
gl_MAX_TESS_PATCH_COMPONENTS = 0x8E84

gl_PATCHES :: GLenum
gl_PATCHES = 0x000E

gl_PATCH_DEFAULT_INNER_LEVEL :: GLenum
gl_PATCH_DEFAULT_INNER_LEVEL = 0x8E73

gl_PATCH_DEFAULT_OUTER_LEVEL :: GLenum
gl_PATCH_DEFAULT_OUTER_LEVEL = 0x8E74

gl_PATCH_VERTICES :: GLenum
gl_PATCH_VERTICES = 0x8E72

gl_QUADS :: GLenum
gl_QUADS = 0x0007

gl_TESS_CONTROL_OUTPUT_VERTICES :: GLenum
gl_TESS_CONTROL_OUTPUT_VERTICES = 0x8E75

gl_TESS_CONTROL_SHADER :: GLenum
gl_TESS_CONTROL_SHADER = 0x8E88

gl_TESS_EVALUATION_SHADER :: GLenum
gl_TESS_EVALUATION_SHADER = 0x8E87

gl_TESS_GEN_MODE :: GLenum
gl_TESS_GEN_MODE = 0x8E76

gl_TESS_GEN_POINT_MODE :: GLenum
gl_TESS_GEN_POINT_MODE = 0x8E79

gl_TESS_GEN_SPACING :: GLenum
gl_TESS_GEN_SPACING = 0x8E77

gl_TESS_GEN_VERTEX_ORDER :: GLenum
gl_TESS_GEN_VERTEX_ORDER = 0x8E78

gl_TRIANGLES :: GLenum
gl_TRIANGLES = 0x0004

gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER = 0x84F0

gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x84F1

glTextureBarrier :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glTextureBarrier = funGL 615 >>= \f -> liftIO $ f

gl_RGB32F :: GLenum
gl_RGB32F = 0x8815

gl_RGB32I :: GLenum
gl_RGB32I = 0x8D83

gl_RGB32UI :: GLenum
gl_RGB32UI = 0x8D71

glTexBufferRange :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> m ()
glTexBufferRange v0 v1 v2 v3 v4 = funGL 617 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_TEXTURE_BUFFER_OFFSET :: GLenum
gl_TEXTURE_BUFFER_OFFSET = 0x919D

gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT :: GLenum
gl_TEXTURE_BUFFER_OFFSET_ALIGNMENT = 0x919F

gl_TEXTURE_BUFFER_SIZE :: GLenum
gl_TEXTURE_BUFFER_SIZE = 0x919E

gl_COMPRESSED_RED_RGTC1 :: GLenum
gl_COMPRESSED_RED_RGTC1 = 0x8DBB

gl_COMPRESSED_RG_RGTC2 :: GLenum
gl_COMPRESSED_RG_RGTC2 = 0x8DBD

gl_COMPRESSED_SIGNED_RED_RGTC1 :: GLenum
gl_COMPRESSED_SIGNED_RED_RGTC1 = 0x8DBC

gl_COMPRESSED_SIGNED_RG_RGTC2 :: GLenum
gl_COMPRESSED_SIGNED_RG_RGTC2 = 0x8DBE

gl_MIRROR_CLAMP_TO_EDGE :: GLenum
gl_MIRROR_CLAMP_TO_EDGE = 0x8743

glGetMultisamplefv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glGetMultisamplefv v0 v1 v2 = funGL 625 >>= \f -> liftIO $ f v0 v1 v2

glSampleMaski :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLbitfield -> m ()
glSampleMaski v0 v1 = funGL 626 >>= \f -> liftIO $ f v0 v1

glTexImage2DMultisample :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexImage2DMultisample v0 v1 v2 v3 v4 v5 = funGL 627 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glTexImage3DMultisample :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexImage3DMultisample v0 v1 v2 v3 v4 v5 v6 = funGL 628 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

gl_INT_SAMPLER_2D_MULTISAMPLE :: GLenum
gl_INT_SAMPLER_2D_MULTISAMPLE = 0x9109

gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY :: GLenum
gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910C

gl_MAX_COLOR_TEXTURE_SAMPLES :: GLenum
gl_MAX_COLOR_TEXTURE_SAMPLES = 0x910E

gl_MAX_DEPTH_TEXTURE_SAMPLES :: GLenum
gl_MAX_DEPTH_TEXTURE_SAMPLES = 0x910F

gl_MAX_INTEGER_SAMPLES :: GLenum
gl_MAX_INTEGER_SAMPLES = 0x9110

gl_MAX_SAMPLE_MASK_WORDS :: GLenum
gl_MAX_SAMPLE_MASK_WORDS = 0x8E59

gl_PROXY_TEXTURE_2D_MULTISAMPLE :: GLenum
gl_PROXY_TEXTURE_2D_MULTISAMPLE = 0x9101

gl_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY :: GLenum
gl_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY = 0x9103

gl_SAMPLER_2D_MULTISAMPLE :: GLenum
gl_SAMPLER_2D_MULTISAMPLE = 0x9108

gl_SAMPLER_2D_MULTISAMPLE_ARRAY :: GLenum
gl_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910B

gl_SAMPLE_MASK :: GLenum
gl_SAMPLE_MASK = 0x8E51

gl_SAMPLE_MASK_VALUE :: GLenum
gl_SAMPLE_MASK_VALUE = 0x8E52

gl_SAMPLE_POSITION :: GLenum
gl_SAMPLE_POSITION = 0x8E50

gl_TEXTURE_FIXED_SAMPLE_LOCATIONS :: GLenum
gl_TEXTURE_FIXED_SAMPLE_LOCATIONS = 0x9107

gl_TEXTURE_SAMPLES :: GLenum
gl_TEXTURE_SAMPLES = 0x9106

gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE = 0x910A

gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = 0x910D

gl_R16 :: GLenum
gl_R16 = 0x822A

gl_R16F :: GLenum
gl_R16F = 0x822D

gl_R16I :: GLenum
gl_R16I = 0x8233

gl_R16UI :: GLenum
gl_R16UI = 0x8234

gl_R32F :: GLenum
gl_R32F = 0x822E

gl_R32I :: GLenum
gl_R32I = 0x8235

gl_R32UI :: GLenum
gl_R32UI = 0x8236

gl_R8 :: GLenum
gl_R8 = 0x8229

gl_R8I :: GLenum
gl_R8I = 0x8231

gl_R8UI :: GLenum
gl_R8UI = 0x8232

gl_RG :: GLenum
gl_RG = 0x8227

gl_RG16 :: GLenum
gl_RG16 = 0x822C

gl_RG16F :: GLenum
gl_RG16F = 0x822F

gl_RG16I :: GLenum
gl_RG16I = 0x8239

gl_RG32F :: GLenum
gl_RG32F = 0x8230

gl_RG32I :: GLenum
gl_RG32I = 0x823B

gl_RG32UI :: GLenum
gl_RG32UI = 0x823C

gl_RG8 :: GLenum
gl_RG8 = 0x822B

gl_RG8I :: GLenum
gl_RG8I = 0x8237

gl_RG_INTEGER :: GLenum
gl_RG_INTEGER = 0x8228

gl_RGB10_A2UI :: GLenum
gl_RGB10_A2UI = 0x906F

gl_STENCIL_INDEX :: GLenum
gl_STENCIL_INDEX = 0x1901

glTexStorage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> m ()
glTexStorage1D v0 v1 v2 v3 = funGL 629 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexStorage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glTexStorage2D v0 v1 v2 v3 v4 = funGL 630 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTexStorage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> m ()
glTexStorage3D v0 v1 v2 v3 v4 v5 = funGL 631 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_TEXTURE_IMMUTABLE_FORMAT :: GLenum
gl_TEXTURE_IMMUTABLE_FORMAT = 0x912F

glTexStorage2DMultisample :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexStorage2DMultisample v0 v1 v2 v3 v4 v5 = funGL 632 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glTexStorage3DMultisample :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexStorage3DMultisample v0 v1 v2 v3 v4 v5 v6 = funGL 633 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

gl_TEXTURE_SWIZZLE_A :: GLenum
gl_TEXTURE_SWIZZLE_A = 0x8E45

gl_TEXTURE_SWIZZLE_B :: GLenum
gl_TEXTURE_SWIZZLE_B = 0x8E44

gl_TEXTURE_SWIZZLE_G :: GLenum
gl_TEXTURE_SWIZZLE_G = 0x8E43

gl_TEXTURE_SWIZZLE_R :: GLenum
gl_TEXTURE_SWIZZLE_R = 0x8E42

gl_TEXTURE_SWIZZLE_RGBA :: GLenum
gl_TEXTURE_SWIZZLE_RGBA = 0x8E46

glTextureView :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glTextureView v0 v1 v2 v3 v4 v5 v6 v7 = funGL 634 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_TEXTURE_IMMUTABLE_LEVELS :: GLenum
gl_TEXTURE_IMMUTABLE_LEVELS = 0x82DF

gl_TEXTURE_VIEW_MIN_LAYER :: GLenum
gl_TEXTURE_VIEW_MIN_LAYER = 0x82DD

gl_TEXTURE_VIEW_MIN_LEVEL :: GLenum
gl_TEXTURE_VIEW_MIN_LEVEL = 0x82DB

gl_TEXTURE_VIEW_NUM_LAYERS :: GLenum
gl_TEXTURE_VIEW_NUM_LAYERS = 0x82DE

gl_TEXTURE_VIEW_NUM_LEVELS :: GLenum
gl_TEXTURE_VIEW_NUM_LEVELS = 0x82DC

glGetQueryObjecti64v :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint64 -> m ()
glGetQueryObjecti64v v0 v1 v2 = funGL 635 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryObjectui64v :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint64 -> m ()
glGetQueryObjectui64v v0 v1 v2 = funGL 636 >>= \f -> liftIO $ f v0 v1 v2

glQueryCounter :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glQueryCounter v0 v1 = funGL 637 >>= \f -> liftIO $ f v0 v1

gl_TIMESTAMP :: GLenum
gl_TIMESTAMP = 0x8E28

gl_TIME_ELAPSED :: GLenum
gl_TIME_ELAPSED = 0x88BF

glBindTransformFeedback :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindTransformFeedback v0 v1 = funGL 638 >>= \f -> liftIO $ f v0 v1

glDeleteTransformFeedbacks :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteTransformFeedbacks v0 v1 = funGL 639 >>= \f -> liftIO $ f v0 v1

glDrawTransformFeedback :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glDrawTransformFeedback v0 v1 = funGL 640 >>= \f -> liftIO $ f v0 v1

glGenTransformFeedbacks :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenTransformFeedbacks v0 v1 = funGL 641 >>= \f -> liftIO $ f v0 v1

glIsTransformFeedback :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsTransformFeedback v0 = funGL 642 >>= \f -> liftIO $ f v0

glPauseTransformFeedback :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPauseTransformFeedback = funGL 643 >>= \f -> liftIO $ f

glResumeTransformFeedback :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glResumeTransformFeedback = funGL 644 >>= \f -> liftIO $ f

gl_TRANSFORM_FEEDBACK :: GLenum
gl_TRANSFORM_FEEDBACK = 0x8E22

gl_TRANSFORM_FEEDBACK_BINDING :: GLenum
gl_TRANSFORM_FEEDBACK_BINDING = 0x8E25

gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE = 0x8E24

gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED = 0x8E23

glBeginQueryIndexed :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> m ()
glBeginQueryIndexed v0 v1 v2 = funGL 645 >>= \f -> liftIO $ f v0 v1 v2

glDrawTransformFeedbackStream :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> m ()
glDrawTransformFeedbackStream v0 v1 v2 = funGL 646 >>= \f -> liftIO $ f v0 v1 v2

glEndQueryIndexed :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glEndQueryIndexed v0 v1 = funGL 647 >>= \f -> liftIO $ f v0 v1

glGetQueryIndexediv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetQueryIndexediv v0 v1 v2 v3 = funGL 648 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_MAX_TRANSFORM_FEEDBACK_BUFFERS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_BUFFERS = 0x8E70

glDrawTransformFeedbackInstanced :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> m ()
glDrawTransformFeedbackInstanced v0 v1 v2 = funGL 649 >>= \f -> liftIO $ f v0 v1 v2

glDrawTransformFeedbackStreamInstanced :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLsizei -> m ()
glDrawTransformFeedbackStreamInstanced v0 v1 v2 v3 = funGL 650 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetActiveUniformBlockName :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetActiveUniformBlockName v0 v1 v2 v3 v4 = funGL 655 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetActiveUniformBlockiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetActiveUniformBlockiv v0 v1 v2 v3 = funGL 656 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetActiveUniformName :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetActiveUniformName v0 v1 v2 v3 v4 = funGL 657 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetActiveUniformsiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLuint -> GLenum -> Ptr GLint -> m ()
glGetActiveUniformsiv v0 v1 v2 v3 v4 = funGL 658 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetUniformBlockIndex :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLchar -> m GLuint
glGetUniformBlockIndex v0 v1 = funGL 659 >>= \f -> liftIO $ f v0 v1

glGetUniformIndices :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLchar -> Ptr GLuint -> m ()
glGetUniformIndices v0 v1 v2 v3 = funGL 660 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformBlockBinding :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glUniformBlockBinding v0 v1 v2 = funGL 661 >>= \f -> liftIO $ f v0 v1 v2

gl_ACTIVE_UNIFORM_BLOCKS :: GLenum
gl_ACTIVE_UNIFORM_BLOCKS = 0x8A36

gl_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH :: GLenum
gl_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH = 0x8A35

gl_INVALID_INDEX :: GLenum
gl_INVALID_INDEX = 0xFFFFFFFF

gl_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33

gl_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 0x8A32

gl_MAX_COMBINED_UNIFORM_BLOCKS :: GLenum
gl_MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E

gl_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS :: GLenum
gl_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31

gl_MAX_FRAGMENT_UNIFORM_BLOCKS :: GLenum
gl_MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D

gl_MAX_GEOMETRY_UNIFORM_BLOCKS :: GLenum
gl_MAX_GEOMETRY_UNIFORM_BLOCKS = 0x8A2C

gl_MAX_UNIFORM_BLOCK_SIZE :: GLenum
gl_MAX_UNIFORM_BLOCK_SIZE = 0x8A30

gl_MAX_UNIFORM_BUFFER_BINDINGS :: GLenum
gl_MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F

gl_MAX_VERTEX_UNIFORM_BLOCKS :: GLenum
gl_MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B

gl_UNIFORM_ARRAY_STRIDE :: GLenum
gl_UNIFORM_ARRAY_STRIDE = 0x8A3C

gl_UNIFORM_BLOCK_ACTIVE_UNIFORMS :: GLenum
gl_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42

gl_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES :: GLenum
gl_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43

gl_UNIFORM_BLOCK_BINDING :: GLenum
gl_UNIFORM_BLOCK_BINDING = 0x8A3F

gl_UNIFORM_BLOCK_DATA_SIZE :: GLenum
gl_UNIFORM_BLOCK_DATA_SIZE = 0x8A40

gl_UNIFORM_BLOCK_INDEX :: GLenum
gl_UNIFORM_BLOCK_INDEX = 0x8A3A

gl_UNIFORM_BLOCK_NAME_LENGTH :: GLenum
gl_UNIFORM_BLOCK_NAME_LENGTH = 0x8A41

gl_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46

gl_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 0x8A45

gl_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER :: GLenum
gl_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44

gl_UNIFORM_BUFFER :: GLenum
gl_UNIFORM_BUFFER = 0x8A11

gl_UNIFORM_BUFFER_BINDING :: GLenum
gl_UNIFORM_BUFFER_BINDING = 0x8A28

gl_UNIFORM_BUFFER_OFFSET_ALIGNMENT :: GLenum
gl_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34

gl_UNIFORM_BUFFER_SIZE :: GLenum
gl_UNIFORM_BUFFER_SIZE = 0x8A2A

gl_UNIFORM_BUFFER_START :: GLenum
gl_UNIFORM_BUFFER_START = 0x8A29

gl_UNIFORM_IS_ROW_MAJOR :: GLenum
gl_UNIFORM_IS_ROW_MAJOR = 0x8A3E

gl_UNIFORM_MATRIX_STRIDE :: GLenum
gl_UNIFORM_MATRIX_STRIDE = 0x8A3D

gl_UNIFORM_OFFSET :: GLenum
gl_UNIFORM_OFFSET = 0x8A3B

gl_UNIFORM_TYPE :: GLenum
gl_UNIFORM_TYPE = 0x8A37

gl_BGRA :: GLenum
gl_BGRA = 0x80E1

glBindVertexArray :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBindVertexArray v0 = funGL 662 >>= \f -> liftIO $ f v0

glDeleteVertexArrays :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteVertexArrays v0 v1 = funGL 663 >>= \f -> liftIO $ f v0 v1

glGenVertexArrays :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenVertexArrays v0 v1 = funGL 664 >>= \f -> liftIO $ f v0 v1

glIsVertexArray :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsVertexArray v0 = funGL 665 >>= \f -> liftIO $ f v0

gl_VERTEX_ARRAY_BINDING :: GLenum
gl_VERTEX_ARRAY_BINDING = 0x85B5

glGetVertexAttribLdv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLdouble -> m ()
glGetVertexAttribLdv v0 v1 v2 = funGL 666 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribL1d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> m ()
glVertexAttribL1d v0 v1 = funGL 667 >>= \f -> liftIO $ f v0 v1

glVertexAttribL1dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttribL1dv v0 v1 = funGL 668 >>= \f -> liftIO $ f v0 v1

glVertexAttribL2d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> m ()
glVertexAttribL2d v0 v1 v2 = funGL 669 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribL2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttribL2dv v0 v1 = funGL 670 >>= \f -> liftIO $ f v0 v1

glVertexAttribL3d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttribL3d v0 v1 v2 v3 = funGL 671 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribL3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttribL3dv v0 v1 = funGL 672 >>= \f -> liftIO $ f v0 v1

glVertexAttribL4d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttribL4d v0 v1 v2 v3 v4 = funGL 673 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribL4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttribL4dv v0 v1 = funGL 674 >>= \f -> liftIO $ f v0 v1

glVertexAttribLPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glVertexAttribLPointer v0 v1 v2 v3 v4 = funGL 675 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glBindVertexBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLintptr -> GLsizei -> m ()
glBindVertexBuffer v0 v1 v2 v3 = funGL 676 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribBinding :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexAttribBinding v0 v1 = funGL 677 >>= \f -> liftIO $ f v0 v1

glVertexAttribFormat :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> m ()
glVertexAttribFormat v0 v1 v2 v3 v4 = funGL 678 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribIFormat :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLuint -> m ()
glVertexAttribIFormat v0 v1 v2 v3 = funGL 679 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribLFormat :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLuint -> m ()
glVertexAttribLFormat v0 v1 v2 v3 = funGL 680 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexBindingDivisor :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexBindingDivisor v0 v1 = funGL 681 >>= \f -> liftIO $ f v0 v1

gl_MAX_VERTEX_ATTRIB_BINDINGS :: GLenum
gl_MAX_VERTEX_ATTRIB_BINDINGS = 0x82DA

gl_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET :: GLenum
gl_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D9

gl_VERTEX_ATTRIB_BINDING :: GLenum
gl_VERTEX_ATTRIB_BINDING = 0x82D4

gl_VERTEX_ATTRIB_RELATIVE_OFFSET :: GLenum
gl_VERTEX_ATTRIB_RELATIVE_OFFSET = 0x82D5

gl_VERTEX_BINDING_DIVISOR :: GLenum
gl_VERTEX_BINDING_DIVISOR = 0x82D6

gl_VERTEX_BINDING_OFFSET :: GLenum
gl_VERTEX_BINDING_OFFSET = 0x82D7

gl_VERTEX_BINDING_STRIDE :: GLenum
gl_VERTEX_BINDING_STRIDE = 0x82D8

glDisableVertexAttribArrayARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDisableVertexAttribArrayARB v0 = funGL 703 >>= \f -> liftIO $ f v0

glEnableVertexAttribArrayARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glEnableVertexAttribArrayARB v0 = funGL 704 >>= \f -> liftIO $ f v0

glGetVertexAttribPointervARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glGetVertexAttribPointervARB v0 v1 v2 = funGL 705 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribdvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLdouble -> m ()
glGetVertexAttribdvARB v0 v1 v2 = funGL 706 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetVertexAttribfvARB v0 v1 v2 = funGL 707 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexAttribivARB v0 v1 v2 = funGL 708 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib1dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> m ()
glVertexAttrib1dARB v0 v1 = funGL 709 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib1dvARB v0 v1 = funGL 710 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> m ()
glVertexAttrib1fARB v0 v1 = funGL 711 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib1fvARB v0 v1 = funGL 712 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> m ()
glVertexAttrib1sARB v0 v1 = funGL 713 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1svARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib1svARB v0 v1 = funGL 714 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> m ()
glVertexAttrib2dARB v0 v1 v2 = funGL 715 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib2dvARB v0 v1 = funGL 716 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> m ()
glVertexAttrib2fARB v0 v1 v2 = funGL 717 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib2fvARB v0 v1 = funGL 718 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> m ()
glVertexAttrib2sARB v0 v1 v2 = funGL 719 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2svARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib2svARB v0 v1 = funGL 720 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttrib3dARB v0 v1 v2 v3 = funGL 721 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib3dvARB v0 v1 = funGL 722 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertexAttrib3fARB v0 v1 v2 v3 = funGL 723 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib3fvARB v0 v1 = funGL 724 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> GLshort -> m ()
glVertexAttrib3sARB v0 v1 v2 v3 = funGL 725 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3svARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib3svARB v0 v1 = funGL 726 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4NbvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLbyte -> m ()
glVertexAttrib4NbvARB v0 v1 = funGL 727 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4NivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttrib4NivARB v0 v1 = funGL 728 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4NsvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib4NsvARB v0 v1 = funGL 729 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4NubARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> m ()
glVertexAttrib4NubARB v0 v1 v2 v3 v4 = funGL 730 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4NubvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glVertexAttrib4NubvARB v0 v1 = funGL 731 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4NuivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttrib4NuivARB v0 v1 = funGL 732 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4NusvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLushort -> m ()
glVertexAttrib4NusvARB v0 v1 = funGL 733 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4bvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLbyte -> m ()
glVertexAttrib4bvARB v0 v1 = funGL 734 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4dARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttrib4dARB v0 v1 v2 v3 v4 = funGL 735 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4dvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib4dvARB v0 v1 = funGL 736 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertexAttrib4fARB v0 v1 v2 v3 v4 = funGL 737 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib4fvARB v0 v1 = funGL 738 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttrib4ivARB v0 v1 = funGL 739 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4sARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> m ()
glVertexAttrib4sARB v0 v1 v2 v3 v4 = funGL 740 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4svARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib4svARB v0 v1 = funGL 741 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4ubvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glVertexAttrib4ubvARB v0 v1 = funGL 742 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4uivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttrib4uivARB v0 v1 = funGL 743 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4usvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLushort -> m ()
glVertexAttrib4usvARB v0 v1 = funGL 744 >>= \f -> liftIO $ f v0 v1

glVertexAttribPointerARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> Ptr () -> m ()
glVertexAttribPointerARB v0 v1 v2 v3 v4 v5 = funGL 745 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_CURRENT_VERTEX_ATTRIB_ARB :: GLenum
gl_CURRENT_VERTEX_ATTRIB_ARB = 0x8626

gl_MAX_VERTEX_ATTRIBS_ARB :: GLenum
gl_MAX_VERTEX_ATTRIBS_ARB = 0x8869

gl_VERTEX_ATTRIB_ARRAY_ENABLED_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_ENABLED_ARB = 0x8622

gl_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB = 0x886A

gl_VERTEX_ATTRIB_ARRAY_POINTER_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_POINTER_ARB = 0x8645

gl_VERTEX_ATTRIB_ARRAY_SIZE_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_SIZE_ARB = 0x8623

gl_VERTEX_ATTRIB_ARRAY_STRIDE_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_STRIDE_ARB = 0x8624

gl_VERTEX_ATTRIB_ARRAY_TYPE_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_TYPE_ARB = 0x8625

gl_VERTEX_PROGRAM_POINT_SIZE_ARB :: GLenum
gl_VERTEX_PROGRAM_POINT_SIZE_ARB = 0x8642

gl_VERTEX_PROGRAM_TWO_SIDE_ARB :: GLenum
gl_VERTEX_PROGRAM_TWO_SIDE_ARB = 0x8643

gl_FLOAT :: GLenum
gl_FLOAT = 0x1406

gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB :: GLenum
gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB = 0x8B4C

gl_UNSIGNED_INT_10F_11F_11F_REV :: GLenum
gl_UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B

glColorP3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glColorP3ui v0 v1 = funGL 749 >>= \f -> liftIO $ f v0 v1

glColorP3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glColorP3uiv v0 v1 = funGL 750 >>= \f -> liftIO $ f v0 v1

glColorP4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glColorP4ui v0 v1 = funGL 751 >>= \f -> liftIO $ f v0 v1

glColorP4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glColorP4uiv v0 v1 = funGL 752 >>= \f -> liftIO $ f v0 v1

glMultiTexCoordP1ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glMultiTexCoordP1ui v0 v1 v2 = funGL 753 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoordP1uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint -> m ()
glMultiTexCoordP1uiv v0 v1 v2 = funGL 754 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoordP2ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glMultiTexCoordP2ui v0 v1 v2 = funGL 755 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoordP2uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint -> m ()
glMultiTexCoordP2uiv v0 v1 v2 = funGL 756 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoordP3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glMultiTexCoordP3ui v0 v1 v2 = funGL 757 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoordP3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint -> m ()
glMultiTexCoordP3uiv v0 v1 v2 = funGL 758 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoordP4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glMultiTexCoordP4ui v0 v1 v2 = funGL 759 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoordP4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint -> m ()
glMultiTexCoordP4uiv v0 v1 v2 = funGL 760 >>= \f -> liftIO $ f v0 v1 v2

glNormalP3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glNormalP3ui v0 v1 = funGL 761 >>= \f -> liftIO $ f v0 v1

glNormalP3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glNormalP3uiv v0 v1 = funGL 762 >>= \f -> liftIO $ f v0 v1

glSecondaryColorP3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glSecondaryColorP3ui v0 v1 = funGL 763 >>= \f -> liftIO $ f v0 v1

glSecondaryColorP3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glSecondaryColorP3uiv v0 v1 = funGL 764 >>= \f -> liftIO $ f v0 v1

glTexCoordP1ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glTexCoordP1ui v0 v1 = funGL 765 >>= \f -> liftIO $ f v0 v1

glTexCoordP1uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glTexCoordP1uiv v0 v1 = funGL 766 >>= \f -> liftIO $ f v0 v1

glTexCoordP2ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glTexCoordP2ui v0 v1 = funGL 767 >>= \f -> liftIO $ f v0 v1

glTexCoordP2uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glTexCoordP2uiv v0 v1 = funGL 768 >>= \f -> liftIO $ f v0 v1

glTexCoordP3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glTexCoordP3ui v0 v1 = funGL 769 >>= \f -> liftIO $ f v0 v1

glTexCoordP3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glTexCoordP3uiv v0 v1 = funGL 770 >>= \f -> liftIO $ f v0 v1

glTexCoordP4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glTexCoordP4ui v0 v1 = funGL 771 >>= \f -> liftIO $ f v0 v1

glTexCoordP4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glTexCoordP4uiv v0 v1 = funGL 772 >>= \f -> liftIO $ f v0 v1

glVertexAttribP1ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLboolean -> GLuint -> m ()
glVertexAttribP1ui v0 v1 v2 v3 = funGL 773 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribP1uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLboolean -> Ptr GLuint -> m ()
glVertexAttribP1uiv v0 v1 v2 v3 = funGL 774 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribP2ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLboolean -> GLuint -> m ()
glVertexAttribP2ui v0 v1 v2 v3 = funGL 775 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribP2uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLboolean -> Ptr GLuint -> m ()
glVertexAttribP2uiv v0 v1 v2 v3 = funGL 776 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribP3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLboolean -> GLuint -> m ()
glVertexAttribP3ui v0 v1 v2 v3 = funGL 777 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribP3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLboolean -> Ptr GLuint -> m ()
glVertexAttribP3uiv v0 v1 v2 v3 = funGL 778 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribP4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLboolean -> GLuint -> m ()
glVertexAttribP4ui v0 v1 v2 v3 = funGL 779 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribP4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLboolean -> Ptr GLuint -> m ()
glVertexAttribP4uiv v0 v1 v2 v3 = funGL 780 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexP2ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glVertexP2ui v0 v1 = funGL 781 >>= \f -> liftIO $ f v0 v1

glVertexP2uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glVertexP2uiv v0 v1 = funGL 782 >>= \f -> liftIO $ f v0 v1

glVertexP3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glVertexP3ui v0 v1 = funGL 783 >>= \f -> liftIO $ f v0 v1

glVertexP3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glVertexP3uiv v0 v1 = funGL 784 >>= \f -> liftIO $ f v0 v1

glVertexP4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glVertexP4ui v0 v1 = funGL 785 >>= \f -> liftIO $ f v0 v1

glVertexP4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glVertexP4uiv v0 v1 = funGL 786 >>= \f -> liftIO $ f v0 v1

gl_INT_2_10_10_10_REV :: GLenum
gl_INT_2_10_10_10_REV = 0x8D9F

gl_UNSIGNED_INT_2_10_10_10_REV :: GLenum
gl_UNSIGNED_INT_2_10_10_10_REV = 0x8368

glDepthRangeArrayv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLdouble -> m ()
glDepthRangeArrayv v0 v1 v2 = funGL 787 >>= \f -> liftIO $ f v0 v1 v2

glDepthRangeIndexed :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> m ()
glDepthRangeIndexed v0 v1 v2 = funGL 788 >>= \f -> liftIO $ f v0 v1 v2

glGetDoublei_v :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLdouble -> m ()
glGetDoublei_v v0 v1 v2 = funGL 789 >>= \f -> liftIO $ f v0 v1 v2

glGetFloati_v :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glGetFloati_v v0 v1 v2 = funGL 790 >>= \f -> liftIO $ f v0 v1 v2

glScissorArrayv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLint -> m ()
glScissorArrayv v0 v1 v2 = funGL 791 >>= \f -> liftIO $ f v0 v1 v2

glScissorIndexed :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glScissorIndexed v0 v1 v2 v3 v4 = funGL 792 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glScissorIndexedv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glScissorIndexedv v0 v1 = funGL 793 >>= \f -> liftIO $ f v0 v1

glViewportArrayv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLfloat -> m ()
glViewportArrayv v0 v1 v2 = funGL 794 >>= \f -> liftIO $ f v0 v1 v2

glViewportIndexedf :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glViewportIndexedf v0 v1 v2 v3 v4 = funGL 795 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glViewportIndexedfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glViewportIndexedfv v0 v1 = funGL 796 >>= \f -> liftIO $ f v0 v1

gl_DEPTH_RANGE :: GLenum
gl_DEPTH_RANGE = 0x0B70

gl_LAYER_PROVOKING_VERTEX :: GLenum
gl_LAYER_PROVOKING_VERTEX = 0x825E

gl_MAX_VIEWPORTS :: GLenum
gl_MAX_VIEWPORTS = 0x825B

gl_SCISSOR_BOX :: GLenum
gl_SCISSOR_BOX = 0x0C10

gl_SCISSOR_TEST :: GLenum
gl_SCISSOR_TEST = 0x0C11

gl_UNDEFINED_VERTEX :: GLenum
gl_UNDEFINED_VERTEX = 0x8260

gl_VIEWPORT :: GLenum
gl_VIEWPORT = 0x0BA2

gl_VIEWPORT_BOUNDS_RANGE :: GLenum
gl_VIEWPORT_BOUNDS_RANGE = 0x825D

gl_VIEWPORT_INDEX_PROVOKING_VERTEX :: GLenum
gl_VIEWPORT_INDEX_PROVOKING_VERTEX = 0x825F

gl_VIEWPORT_SUBPIXEL_BITS :: GLenum
gl_VIEWPORT_SUBPIXEL_BITS = 0x825C

gl_R16F_EXT :: GLenum
gl_R16F_EXT = 0x822D

gl_RG16F_EXT :: GLenum
gl_RG16F_EXT = 0x822F

gl_RGB16F_EXT :: GLenum
gl_RGB16F_EXT = 0x881B

gl_RGBA16F_EXT :: GLenum
gl_RGBA16F_EXT = 0x881A

gl_SAMPLER :: GLenum
gl_SAMPLER = 0x82E6

glDisableIndexedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glDisableIndexedEXT v0 v1 = funGL 990 >>= \f -> liftIO $ f v0 v1

glEnableIndexedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glEnableIndexedEXT v0 v1 = funGL 995 >>= \f -> liftIO $ f v0 v1

glGetBooleanIndexedvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLboolean -> m ()
glGetBooleanIndexedvEXT v0 v1 v2 = funGL 1004 >>= \f -> liftIO $ f v0 v1 v2

glGetIntegerIndexedvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLint -> m ()
glGetIntegerIndexedvEXT v0 v1 v2 = funGL 1012 >>= \f -> liftIO $ f v0 v1 v2

glIsEnabledIndexedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m GLboolean
glIsEnabledIndexedEXT v0 v1 = funGL 1050 >>= \f -> liftIO $ f v0 v1

glProgramUniform1fEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLfloat -> m ()
glProgramUniform1fEXT v0 v1 v2 = funGL 1126 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glProgramUniform1fvEXT v0 v1 v2 v3 = funGL 1127 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform1iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> m ()
glProgramUniform1iEXT v0 v1 v2 = funGL 1128 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glProgramUniform1ivEXT v0 v1 v2 v3 = funGL 1129 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform1uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> m ()
glProgramUniform1uiEXT v0 v1 v2 = funGL 1130 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glProgramUniform1uivEXT v0 v1 v2 v3 = funGL 1131 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2fEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLfloat -> GLfloat -> m ()
glProgramUniform2fEXT v0 v1 v2 v3 = funGL 1134 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glProgramUniform2fvEXT v0 v1 v2 v3 = funGL 1135 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> m ()
glProgramUniform2iEXT v0 v1 v2 v3 = funGL 1136 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glProgramUniform2ivEXT v0 v1 v2 v3 = funGL 1137 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> GLuint -> m ()
glProgramUniform2uiEXT v0 v1 v2 v3 = funGL 1138 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glProgramUniform2uivEXT v0 v1 v2 v3 = funGL 1139 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3fEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> m ()
glProgramUniform3fEXT v0 v1 v2 v3 v4 = funGL 1142 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glProgramUniform3fvEXT v0 v1 v2 v3 = funGL 1143 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
glProgramUniform3iEXT v0 v1 v2 v3 v4 = funGL 1144 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glProgramUniform3ivEXT v0 v1 v2 v3 = funGL 1145 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> GLuint -> GLuint -> m ()
glProgramUniform3uiEXT v0 v1 v2 v3 v4 = funGL 1146 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glProgramUniform3uivEXT v0 v1 v2 v3 = funGL 1147 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4fEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glProgramUniform4fEXT v0 v1 v2 v3 v4 v5 = funGL 1150 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glProgramUniform4fvEXT v0 v1 v2 v3 = funGL 1151 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLint -> m ()
glProgramUniform4iEXT v0 v1 v2 v3 v4 v5 = funGL 1152 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glProgramUniform4ivEXT v0 v1 v2 v3 = funGL 1153 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glProgramUniform4uiEXT v0 v1 v2 v3 v4 v5 = funGL 1154 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glProgramUniform4uivEXT v0 v1 v2 v3 = funGL 1155 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniformMatrix2fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix2fvEXT v0 v1 v2 v3 v4 = funGL 1157 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2x3fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix2x3fvEXT v0 v1 v2 v3 v4 = funGL 1159 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2x4fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix2x4fvEXT v0 v1 v2 v3 v4 = funGL 1161 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix3fvEXT v0 v1 v2 v3 v4 = funGL 1163 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3x2fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix3x2fvEXT v0 v1 v2 v3 v4 = funGL 1165 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3x4fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix3x4fvEXT v0 v1 v2 v3 v4 = funGL 1167 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix4fvEXT v0 v1 v2 v3 v4 = funGL 1169 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4x2fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix4x2fvEXT v0 v1 v2 v3 v4 = funGL 1171 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4x3fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glProgramUniformMatrix4x3fvEXT v0 v1 v2 v3 v4 = funGL 1173 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTextureStorage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> m ()
glTextureStorage1DEXT v0 v1 v2 v3 v4 = funGL 1188 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTextureStorage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glTextureStorage2DEXT v0 v1 v2 v3 v4 v5 = funGL 1189 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glTextureStorage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> m ()
glTextureStorage3DEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1191 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glBeginQueryEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBeginQueryEXT v0 v1 = funGL 1217 >>= \f -> liftIO $ f v0 v1

glDeleteQueriesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteQueriesEXT v0 v1 = funGL 1218 >>= \f -> liftIO $ f v0 v1

glEndQueryEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glEndQueryEXT v0 = funGL 1219 >>= \f -> liftIO $ f v0

glGenQueriesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenQueriesEXT v0 v1 = funGL 1220 >>= \f -> liftIO $ f v0 v1

glGetQueryObjecti64vEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint64 -> m ()
glGetQueryObjecti64vEXT v0 v1 v2 = funGL 1221 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryObjectui64vEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint64 -> m ()
glGetQueryObjectui64vEXT v0 v1 v2 = funGL 1223 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryObjectuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetQueryObjectuivEXT v0 v1 v2 = funGL 1224 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetQueryivEXT v0 v1 v2 = funGL 1225 >>= \f -> liftIO $ f v0 v1 v2

glIsQueryEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsQueryEXT v0 = funGL 1226 >>= \f -> liftIO $ f v0

gl_CURRENT_QUERY_EXT :: GLenum
gl_CURRENT_QUERY_EXT = 0x8865

gl_QUERY_RESULT_AVAILABLE_EXT :: GLenum
gl_QUERY_RESULT_AVAILABLE_EXT = 0x8867

gl_QUERY_RESULT_EXT :: GLenum
gl_QUERY_RESULT_EXT = 0x8866

gl_TIME_ELAPSED_EXT :: GLenum
gl_TIME_ELAPSED_EXT = 0x88BF

gl_COLOR_ATTACHMENT0_EXT :: GLenum
gl_COLOR_ATTACHMENT0_EXT = 0x8CE0

gl_COLOR_ATTACHMENT10_EXT :: GLenum
gl_COLOR_ATTACHMENT10_EXT = 0x8CEA

gl_COLOR_ATTACHMENT11_EXT :: GLenum
gl_COLOR_ATTACHMENT11_EXT = 0x8CEB

gl_COLOR_ATTACHMENT12_EXT :: GLenum
gl_COLOR_ATTACHMENT12_EXT = 0x8CEC

gl_COLOR_ATTACHMENT13_EXT :: GLenum
gl_COLOR_ATTACHMENT13_EXT = 0x8CED

gl_COLOR_ATTACHMENT14_EXT :: GLenum
gl_COLOR_ATTACHMENT14_EXT = 0x8CEE

gl_COLOR_ATTACHMENT15_EXT :: GLenum
gl_COLOR_ATTACHMENT15_EXT = 0x8CEF

gl_COLOR_ATTACHMENT1_EXT :: GLenum
gl_COLOR_ATTACHMENT1_EXT = 0x8CE1

gl_COLOR_ATTACHMENT2_EXT :: GLenum
gl_COLOR_ATTACHMENT2_EXT = 0x8CE2

gl_COLOR_ATTACHMENT3_EXT :: GLenum
gl_COLOR_ATTACHMENT3_EXT = 0x8CE3

gl_COLOR_ATTACHMENT4_EXT :: GLenum
gl_COLOR_ATTACHMENT4_EXT = 0x8CE4

gl_COLOR_ATTACHMENT5_EXT :: GLenum
gl_COLOR_ATTACHMENT5_EXT = 0x8CE5

gl_COLOR_ATTACHMENT6_EXT :: GLenum
gl_COLOR_ATTACHMENT6_EXT = 0x8CE6

gl_COLOR_ATTACHMENT7_EXT :: GLenum
gl_COLOR_ATTACHMENT7_EXT = 0x8CE7

gl_COLOR_ATTACHMENT8_EXT :: GLenum
gl_COLOR_ATTACHMENT8_EXT = 0x8CE8

gl_COLOR_ATTACHMENT9_EXT :: GLenum
gl_COLOR_ATTACHMENT9_EXT = 0x8CE9

gl_MAX_COLOR_ATTACHMENTS_EXT :: GLenum
gl_MAX_COLOR_ATTACHMENTS_EXT = 0x8CDF

gl_BLEND :: GLenum
gl_BLEND = 0x0BE2

gl_BLEND_DST_ALPHA :: GLenum
gl_BLEND_DST_ALPHA = 0x80CA

gl_BLEND_DST_RGB :: GLenum
gl_BLEND_DST_RGB = 0x80C8

gl_BLEND_EQUATION_ALPHA :: GLenum
gl_BLEND_EQUATION_ALPHA = 0x883D

gl_BLEND_EQUATION_RGB :: GLenum
gl_BLEND_EQUATION_RGB = 0x8009

gl_BLEND_SRC_ALPHA :: GLenum
gl_BLEND_SRC_ALPHA = 0x80CB

gl_BLEND_SRC_RGB :: GLenum
gl_BLEND_SRC_RGB = 0x80C9

gl_COLOR_WRITEMASK :: GLenum
gl_COLOR_WRITEMASK = 0x0C23

gl_DST_ALPHA :: GLenum
gl_DST_ALPHA = 0x0304

gl_DST_COLOR :: GLenum
gl_DST_COLOR = 0x0306

gl_ONE :: GLenum
gl_ONE = 1

gl_ONE_MINUS_DST_ALPHA :: GLenum
gl_ONE_MINUS_DST_ALPHA = 0x0305

gl_ONE_MINUS_DST_COLOR :: GLenum
gl_ONE_MINUS_DST_COLOR = 0x0307

gl_ONE_MINUS_SRC_ALPHA :: GLenum
gl_ONE_MINUS_SRC_ALPHA = 0x0303

gl_ONE_MINUS_SRC_COLOR :: GLenum
gl_ONE_MINUS_SRC_COLOR = 0x0301

gl_SRC_ALPHA :: GLenum
gl_SRC_ALPHA = 0x0302

gl_SRC_ALPHA_SATURATE :: GLenum
gl_SRC_ALPHA_SATURATE = 0x0308

gl_SRC_COLOR :: GLenum
gl_SRC_COLOR = 0x0300

gl_ZERO :: GLenum
gl_ZERO = 0

glDrawArraysInstancedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> GLsizei -> m ()
glDrawArraysInstancedEXT v0 v1 v2 v3 = funGL 1238 >>= \f -> liftIO $ f v0 v1 v2 v3

glDrawElementsInstancedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> m ()
glDrawElementsInstancedEXT v0 v1 v2 v3 v4 = funGL 1239 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_FRAGMENT_DEPTH_EXT :: GLenum
gl_FRAGMENT_DEPTH_EXT = 0x8452

glRenderbufferStorageMultisampleEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageMultisampleEXT v0 v1 v2 v3 v4 = funGL 1247 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT = 0x8D56

gl_MAX_SAMPLES_EXT :: GLenum
gl_MAX_SAMPLES_EXT = 0x8D57

gl_RENDERBUFFER_SAMPLES_EXT :: GLenum
gl_RENDERBUFFER_SAMPLES_EXT = 0x8CAB

gl_FRAMEBUFFER_SRGB_EXT :: GLenum
gl_FRAMEBUFFER_SRGB_EXT = 0x8DB9

glFramebufferTextureEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLint -> m ()
glFramebufferTextureEXT v0 v1 v2 v3 = funGL 1265 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_FIRST_VERTEX_CONVENTION_EXT :: GLenum
gl_FIRST_VERTEX_CONVENTION_EXT = 0x8E4D

gl_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT = 0x8DA7

gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT = 0x8DA8

gl_GEOMETRY_SHADER_EXT :: GLenum
gl_GEOMETRY_SHADER_EXT = 0x8DD9

gl_LAST_VERTEX_CONVENTION_EXT :: GLenum
gl_LAST_VERTEX_CONVENTION_EXT = 0x8E4E

gl_LINES_ADJACENCY_EXT :: GLenum
gl_LINES_ADJACENCY_EXT = 0x000A

gl_LINE_STRIP_ADJACENCY_EXT :: GLenum
gl_LINE_STRIP_ADJACENCY_EXT = 0x000B

gl_MAX_GEOMETRY_OUTPUT_VERTICES_EXT :: GLenum
gl_MAX_GEOMETRY_OUTPUT_VERTICES_EXT = 0x8DE0

gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT :: GLenum
gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT = 0x8C29

gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT :: GLenum
gl_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT = 0x8DE1

gl_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT :: GLenum
gl_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT = 0x8DDF

gl_PRIMITIVES_GENERATED_EXT :: GLenum
gl_PRIMITIVES_GENERATED_EXT = 0x8C87

gl_TRIANGLES_ADJACENCY_EXT :: GLenum
gl_TRIANGLES_ADJACENCY_EXT = 0x000C

gl_TRIANGLE_STRIP_ADJACENCY_EXT :: GLenum
gl_TRIANGLE_STRIP_ADJACENCY_EXT = 0x000D

glProgramParameteriEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glProgramParameteriEXT v0 v1 v2 = funGL 1266 >>= \f -> liftIO $ f v0 v1 v2

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT = 0x8CD4

gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT = 0x8DA9

gl_GEOMETRY_INPUT_TYPE_EXT :: GLenum
gl_GEOMETRY_INPUT_TYPE_EXT = 0x8DDB

gl_GEOMETRY_OUTPUT_TYPE_EXT :: GLenum
gl_GEOMETRY_OUTPUT_TYPE_EXT = 0x8DDC

gl_GEOMETRY_VERTICES_OUT_EXT :: GLenum
gl_GEOMETRY_VERTICES_OUT_EXT = 0x8DDA

gl_PROGRAM_POINT_SIZE_EXT :: GLenum
gl_PROGRAM_POINT_SIZE_EXT = 0x8642

gl_INT_SAMPLER_BUFFER_EXT :: GLenum
gl_INT_SAMPLER_BUFFER_EXT = 0x8DD0

gl_SAMPLER_BUFFER_EXT :: GLenum
gl_SAMPLER_BUFFER_EXT = 0x8DC2

gl_UNSIGNED_INT_SAMPLER_BUFFER_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_BUFFER_EXT = 0x8DD8

glRasterSamplesEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLboolean -> m ()
glRasterSamplesEXT v0 v1 = funGL 1322 >>= \f -> liftIO $ f v0 v1

gl_EFFECTIVE_RASTER_SAMPLES_EXT :: GLenum
gl_EFFECTIVE_RASTER_SAMPLES_EXT = 0x932C

gl_MAX_RASTER_SAMPLES_EXT :: GLenum
gl_MAX_RASTER_SAMPLES_EXT = 0x9329

gl_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT :: GLenum
gl_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT = 0x932B

gl_RASTER_FIXED_SAMPLE_LOCATIONS_EXT :: GLenum
gl_RASTER_FIXED_SAMPLE_LOCATIONS_EXT = 0x932A

gl_RASTER_MULTISAMPLE_EXT :: GLenum
gl_RASTER_MULTISAMPLE_EXT = 0x9327

gl_RASTER_SAMPLES_EXT :: GLenum
gl_RASTER_SAMPLES_EXT = 0x9328

gl_SRGB8_ALPHA8_EXT :: GLenum
gl_SRGB8_ALPHA8_EXT = 0x8C43

gl_SRGB_ALPHA_EXT :: GLenum
gl_SRGB_ALPHA_EXT = 0x8C42

gl_SRGB_EXT :: GLenum
gl_SRGB_EXT = 0x8C40

gl_IMAGE_BUFFER_EXT :: GLenum
gl_IMAGE_BUFFER_EXT = 0x9051

gl_IMAGE_CUBE_MAP_ARRAY_EXT :: GLenum
gl_IMAGE_CUBE_MAP_ARRAY_EXT = 0x9054

gl_INT_IMAGE_BUFFER_EXT :: GLenum
gl_INT_IMAGE_BUFFER_EXT = 0x905C

gl_INT_IMAGE_CUBE_MAP_ARRAY_EXT :: GLenum
gl_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 0x905F

gl_UNSIGNED_INT_IMAGE_BUFFER_EXT :: GLenum
gl_UNSIGNED_INT_IMAGE_BUFFER_EXT = 0x9067

gl_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT :: GLenum
gl_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT = 0x906A

gl_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED :: GLenum
gl_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = 0x8221

gl_ALPHA8_EXT :: GLenum
gl_ALPHA8_EXT = 0x803C

gl_LUMINANCE8_ALPHA8_EXT :: GLenum
gl_LUMINANCE8_ALPHA8_EXT = 0x8045

gl_LUMINANCE8_EXT :: GLenum
gl_LUMINANCE8_EXT = 0x8040

gl_RGB10_A2_EXT :: GLenum
gl_RGB10_A2_EXT = 0x8059

gl_RGB10_EXT :: GLenum
gl_RGB10_EXT = 0x8052

glFramebufferTextureLayerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLint -> GLint -> m ()
glFramebufferTextureLayerEXT v0 v1 v2 v3 v4 = funGL 1366 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetTexParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetTexParameterIivEXT v0 v1 v2 = funGL 1369 >>= \f -> liftIO $ f v0 v1 v2

glGetTexParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint -> m ()
glGetTexParameterIuivEXT v0 v1 v2 = funGL 1370 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glTexParameterIivEXT v0 v1 v2 = funGL 1373 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint -> m ()
glTexParameterIuivEXT v0 v1 v2 = funGL 1374 >>= \f -> liftIO $ f v0 v1 v2

glTexBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glTexBufferEXT v0 v1 v2 = funGL 1375 >>= \f -> liftIO $ f v0 v1 v2

gl_MAX_TEXTURE_BUFFER_SIZE_EXT :: GLenum
gl_MAX_TEXTURE_BUFFER_SIZE_EXT = 0x8C2B

gl_TEXTURE_BINDING_BUFFER_EXT :: GLenum
gl_TEXTURE_BINDING_BUFFER_EXT = 0x8C2C

gl_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT :: GLenum
gl_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT = 0x8C2D

gl_TEXTURE_BUFFER_EXT :: GLenum
gl_TEXTURE_BUFFER_EXT = 0x8C2A

gl_COMPRESSED_RGBA_S3TC_DXT1_EXT :: GLenum
gl_COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1

gl_COMPRESSED_RGB_S3TC_DXT1_EXT :: GLenum
gl_COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0

gl_R8_EXT :: GLenum
gl_R8_EXT = 0x8229

gl_RG8_EXT :: GLenum
gl_RG8_EXT = 0x822B

gl_R16_SNORM :: GLenum
gl_R16_SNORM = 0x8F98

gl_R8_SNORM :: GLenum
gl_R8_SNORM = 0x8F94

gl_RG16_SNORM :: GLenum
gl_RG16_SNORM = 0x8F99

gl_RG8_SNORM :: GLenum
gl_RG8_SNORM = 0x8F95

gl_RGB16_SNORM :: GLenum
gl_RGB16_SNORM = 0x8F9A

gl_RGB8_SNORM :: GLenum
gl_RGB8_SNORM = 0x8F96

gl_RGBA16_SNORM :: GLenum
gl_RGBA16_SNORM = 0x8F9B

gl_RGBA8_SNORM :: GLenum
gl_RGBA8_SNORM = 0x8F97

gl_SIGNED_NORMALIZED :: GLenum
gl_SIGNED_NORMALIZED = 0x8F9C

gl_CONTEXT_RELEASE_BEHAVIOR :: GLenum
gl_CONTEXT_RELEASE_BEHAVIOR = 0x82FB

gl_CONTEXT_RELEASE_BEHAVIOR_FLUSH :: GLenum
gl_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x82FC

gl_NONE :: GLenum
gl_NONE = 0

glDebugMessageCallback :: (MonadIO m, MonadReader e m, HasScope e) => GLDEBUGPROC -> Ptr () -> m ()
glDebugMessageCallback v0 v1 = funGL 1504 >>= \f -> liftIO $ f v0 v1

glDebugMessageControl :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr GLuint -> GLboolean -> m ()
glDebugMessageControl v0 v1 v2 v3 v4 v5 = funGL 1506 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glDebugMessageInsert :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> m ()
glDebugMessageInsert v0 v1 v2 v3 v4 v5 = funGL 1508 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetDebugMessageLog :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLenum -> Ptr GLenum -> Ptr GLuint -> Ptr GLenum -> Ptr GLsizei -> Ptr GLchar -> m GLuint
glGetDebugMessageLog v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1510 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glGetObjectLabel :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetObjectLabel v0 v1 v2 v3 v4 = funGL 1512 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetObjectPtrLabel :: (MonadIO m, MonadReader e m, HasScope e) => Ptr () -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetObjectPtrLabel v0 v1 v2 v3 = funGL 1514 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetPointerv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glGetPointerv v0 v1 = funGL 1516 >>= \f -> liftIO $ f v0 v1

glObjectLabel :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLchar -> m ()
glObjectLabel v0 v1 v2 v3 = funGL 1518 >>= \f -> liftIO $ f v0 v1 v2 v3

glObjectPtrLabel :: (MonadIO m, MonadReader e m, HasScope e) => Ptr () -> GLsizei -> Ptr GLchar -> m ()
glObjectPtrLabel v0 v1 v2 = funGL 1520 >>= \f -> liftIO $ f v0 v1 v2

glPopDebugGroup :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPopDebugGroup = funGL 1522 >>= \f -> liftIO $ f

glPushDebugGroup :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLchar -> m ()
glPushDebugGroup v0 v1 v2 v3 = funGL 1524 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_BUFFER :: GLenum
gl_BUFFER = 0x82E0

gl_CONTEXT_FLAG_DEBUG_BIT :: GLenum
gl_CONTEXT_FLAG_DEBUG_BIT = 0x00000002

gl_DEBUG_CALLBACK_FUNCTION :: GLenum
gl_DEBUG_CALLBACK_FUNCTION = 0x8244

gl_DEBUG_CALLBACK_USER_PARAM :: GLenum
gl_DEBUG_CALLBACK_USER_PARAM = 0x8245

gl_DEBUG_GROUP_STACK_DEPTH :: GLenum
gl_DEBUG_GROUP_STACK_DEPTH = 0x826D

gl_DEBUG_LOGGED_MESSAGES :: GLenum
gl_DEBUG_LOGGED_MESSAGES = 0x9145

gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH :: GLenum
gl_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH = 0x8243

gl_DEBUG_OUTPUT :: GLenum
gl_DEBUG_OUTPUT = 0x92E0

gl_DEBUG_OUTPUT_SYNCHRONOUS :: GLenum
gl_DEBUG_OUTPUT_SYNCHRONOUS = 0x8242

gl_DEBUG_SEVERITY_HIGH :: GLenum
gl_DEBUG_SEVERITY_HIGH = 0x9146

gl_DEBUG_SEVERITY_LOW :: GLenum
gl_DEBUG_SEVERITY_LOW = 0x9148

gl_DEBUG_SEVERITY_MEDIUM :: GLenum
gl_DEBUG_SEVERITY_MEDIUM = 0x9147

gl_DEBUG_SEVERITY_NOTIFICATION :: GLenum
gl_DEBUG_SEVERITY_NOTIFICATION = 0x826B

gl_DEBUG_SOURCE_API :: GLenum
gl_DEBUG_SOURCE_API = 0x8246

gl_DEBUG_SOURCE_APPLICATION :: GLenum
gl_DEBUG_SOURCE_APPLICATION = 0x824A

gl_DEBUG_SOURCE_OTHER :: GLenum
gl_DEBUG_SOURCE_OTHER = 0x824B

gl_DEBUG_SOURCE_SHADER_COMPILER :: GLenum
gl_DEBUG_SOURCE_SHADER_COMPILER = 0x8248

gl_DEBUG_SOURCE_THIRD_PARTY :: GLenum
gl_DEBUG_SOURCE_THIRD_PARTY = 0x8249

gl_DEBUG_SOURCE_WINDOW_SYSTEM :: GLenum
gl_DEBUG_SOURCE_WINDOW_SYSTEM = 0x8247

gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR :: GLenum
gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR = 0x824D

gl_DEBUG_TYPE_ERROR :: GLenum
gl_DEBUG_TYPE_ERROR = 0x824C

gl_DEBUG_TYPE_MARKER :: GLenum
gl_DEBUG_TYPE_MARKER = 0x8268

gl_DEBUG_TYPE_OTHER :: GLenum
gl_DEBUG_TYPE_OTHER = 0x8251

gl_DEBUG_TYPE_PERFORMANCE :: GLenum
gl_DEBUG_TYPE_PERFORMANCE = 0x8250

gl_DEBUG_TYPE_POP_GROUP :: GLenum
gl_DEBUG_TYPE_POP_GROUP = 0x826A

gl_DEBUG_TYPE_PORTABILITY :: GLenum
gl_DEBUG_TYPE_PORTABILITY = 0x824F

gl_DEBUG_TYPE_PUSH_GROUP :: GLenum
gl_DEBUG_TYPE_PUSH_GROUP = 0x8269

gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR :: GLenum
gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR = 0x824E

gl_DISPLAY_LIST :: GLenum
gl_DISPLAY_LIST = 0x82E7

gl_MAX_DEBUG_GROUP_STACK_DEPTH :: GLenum
gl_MAX_DEBUG_GROUP_STACK_DEPTH = 0x826C

gl_MAX_DEBUG_LOGGED_MESSAGES :: GLenum
gl_MAX_DEBUG_LOGGED_MESSAGES = 0x9144

gl_MAX_DEBUG_MESSAGE_LENGTH :: GLenum
gl_MAX_DEBUG_MESSAGE_LENGTH = 0x9143

gl_MAX_LABEL_LENGTH :: GLenum
gl_MAX_LABEL_LENGTH = 0x82E8

gl_PROGRAM :: GLenum
gl_PROGRAM = 0x82E2

gl_PROGRAM_PIPELINE :: GLenum
gl_PROGRAM_PIPELINE = 0x82E4

gl_QUERY :: GLenum
gl_QUERY = 0x82E3

gl_SHADER :: GLenum
gl_SHADER = 0x82E1

gl_STACK_OVERFLOW :: GLenum
gl_STACK_OVERFLOW = 0x0503

gl_STACK_UNDERFLOW :: GLenum
gl_STACK_UNDERFLOW = 0x0504

gl_VERTEX_ARRAY :: GLenum
gl_VERTEX_ARRAY = 0x8074

glGetGraphicsResetStatus :: (MonadIO m, MonadReader e m, HasScope e) => m GLenum
glGetGraphicsResetStatus = funGL 1526 >>= \f -> liftIO $ f

glGetnUniformfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glGetnUniformfv v0 v1 v2 v3 = funGL 1528 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnUniformiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glGetnUniformiv v0 v1 v2 v3 = funGL 1530 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnUniformuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glGetnUniformuiv v0 v1 v2 v3 = funGL 1532 >>= \f -> liftIO $ f v0 v1 v2 v3

glReadnPixels :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glReadnPixels v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1534 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_CONTEXT_LOST :: GLenum
gl_CONTEXT_LOST = 0x0507

gl_GUILTY_CONTEXT_RESET :: GLenum
gl_GUILTY_CONTEXT_RESET = 0x8253

gl_INNOCENT_CONTEXT_RESET :: GLenum
gl_INNOCENT_CONTEXT_RESET = 0x8254

gl_LOSE_CONTEXT_ON_RESET :: GLenum
gl_LOSE_CONTEXT_ON_RESET = 0x8252

gl_NO_RESET_NOTIFICATION :: GLenum
gl_NO_RESET_NOTIFICATION = 0x8261

gl_RESET_NOTIFICATION_STRATEGY :: GLenum
gl_RESET_NOTIFICATION_STRATEGY = 0x8256

gl_UNKNOWN_CONTEXT_RESET :: GLenum
gl_UNKNOWN_CONTEXT_RESET = 0x8255

gl_COMPRESSED_RGBA_ASTC_10x10_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_10x10_KHR = 0x93BB

gl_COMPRESSED_RGBA_ASTC_10x5_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_10x5_KHR = 0x93B8

gl_COMPRESSED_RGBA_ASTC_10x6_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_10x6_KHR = 0x93B9

gl_COMPRESSED_RGBA_ASTC_10x8_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_10x8_KHR = 0x93BA

gl_COMPRESSED_RGBA_ASTC_12x10_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_12x10_KHR = 0x93BC

gl_COMPRESSED_RGBA_ASTC_12x12_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_12x12_KHR = 0x93BD

gl_COMPRESSED_RGBA_ASTC_4x4_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_4x4_KHR = 0x93B0

gl_COMPRESSED_RGBA_ASTC_5x4_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_5x4_KHR = 0x93B1

gl_COMPRESSED_RGBA_ASTC_5x5_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_5x5_KHR = 0x93B2

gl_COMPRESSED_RGBA_ASTC_6x5_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_6x5_KHR = 0x93B3

gl_COMPRESSED_RGBA_ASTC_6x6_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_6x6_KHR = 0x93B4

gl_COMPRESSED_RGBA_ASTC_8x5_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_8x5_KHR = 0x93B5

gl_COMPRESSED_RGBA_ASTC_8x6_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_8x6_KHR = 0x93B6

gl_COMPRESSED_RGBA_ASTC_8x8_KHR :: GLenum
gl_COMPRESSED_RGBA_ASTC_8x8_KHR = 0x93B7

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = 0x93DB

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = 0x93D8

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = 0x93D9

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = 0x93DA

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = 0x93DC

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = 0x93DD

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = 0x93D0

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = 0x93D1

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = 0x93D2

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = 0x93D3

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = 0x93D4

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = 0x93D5

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = 0x93D6

gl_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR :: GLenum
gl_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = 0x93D7

gl_INVERT :: GLenum
gl_INVERT = 0x150A

gl_COLOR_ATTACHMENT0_NV :: GLenum
gl_COLOR_ATTACHMENT0_NV = 0x8CE0

gl_COLOR_ATTACHMENT10_NV :: GLenum
gl_COLOR_ATTACHMENT10_NV = 0x8CEA

gl_COLOR_ATTACHMENT11_NV :: GLenum
gl_COLOR_ATTACHMENT11_NV = 0x8CEB

gl_COLOR_ATTACHMENT12_NV :: GLenum
gl_COLOR_ATTACHMENT12_NV = 0x8CEC

gl_COLOR_ATTACHMENT13_NV :: GLenum
gl_COLOR_ATTACHMENT13_NV = 0x8CED

gl_COLOR_ATTACHMENT14_NV :: GLenum
gl_COLOR_ATTACHMENT14_NV = 0x8CEE

gl_COLOR_ATTACHMENT15_NV :: GLenum
gl_COLOR_ATTACHMENT15_NV = 0x8CEF

gl_COLOR_ATTACHMENT1_NV :: GLenum
gl_COLOR_ATTACHMENT1_NV = 0x8CE1

gl_COLOR_ATTACHMENT2_NV :: GLenum
gl_COLOR_ATTACHMENT2_NV = 0x8CE2

gl_COLOR_ATTACHMENT3_NV :: GLenum
gl_COLOR_ATTACHMENT3_NV = 0x8CE3

gl_COLOR_ATTACHMENT4_NV :: GLenum
gl_COLOR_ATTACHMENT4_NV = 0x8CE4

gl_COLOR_ATTACHMENT5_NV :: GLenum
gl_COLOR_ATTACHMENT5_NV = 0x8CE5

gl_COLOR_ATTACHMENT6_NV :: GLenum
gl_COLOR_ATTACHMENT6_NV = 0x8CE6

gl_COLOR_ATTACHMENT7_NV :: GLenum
gl_COLOR_ATTACHMENT7_NV = 0x8CE7

gl_COLOR_ATTACHMENT8_NV :: GLenum
gl_COLOR_ATTACHMENT8_NV = 0x8CE8

gl_COLOR_ATTACHMENT9_NV :: GLenum
gl_COLOR_ATTACHMENT9_NV = 0x8CE9

gl_EYE_PLANE :: GLenum
gl_EYE_PLANE = 0x2502

gl_MAX_PROGRAM_CALL_DEPTH_NV :: GLenum
gl_MAX_PROGRAM_CALL_DEPTH_NV = 0x88F5

gl_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV :: GLenum
gl_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV = 0x88F4

gl_COLOR_SAMPLES_NV :: GLenum
gl_COLOR_SAMPLES_NV = 0x8E20

gl_PRIMARY_COLOR :: GLenum
gl_PRIMARY_COLOR = 0x8577

gl_PRIMARY_COLOR_NV :: GLenum
gl_PRIMARY_COLOR_NV = 0x852C

gl_SECONDARY_COLOR_NV :: GLenum
gl_SECONDARY_COLOR_NV = 0x852D

gl_FOG :: GLenum
gl_FOG = 0x0B60

gl_READ_WRITE :: GLenum
gl_READ_WRITE = 0x88BA

gl_WRITE_ONLY :: GLenum
gl_WRITE_ONLY = 0x88B9

gl_BYTE :: GLenum
gl_BYTE = 0x1400

gl_DEPTH_COMPONENT24_OES :: GLenum
gl_DEPTH_COMPONENT24_OES = 0x81A6

glGetTexGenxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetTexGenxvOES v0 v1 v2 = funGL 2057 >>= \f -> liftIO $ f v0 v1 v2

glTexGenxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glTexGenxOES v0 v1 v2 = funGL 2120 >>= \f -> liftIO $ f v0 v1 v2

glTexGenxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glTexGenxvOES v0 v1 v2 = funGL 2121 >>= \f -> liftIO $ f v0 v1 v2

gl_DEPTH_COMPONENT16_OES :: GLenum
gl_DEPTH_COMPONENT16_OES = 0x81A5

gl_RGB565_OES :: GLenum
gl_RGB565_OES = 0x8D62

gl_RGB5_A1_OES :: GLenum
gl_RGB5_A1_OES = 0x8057

gl_RGBA4_OES :: GLenum
gl_RGBA4_OES = 0x8056

gl_RGB8_OES :: GLenum
gl_RGB8_OES = 0x8051

gl_RGBA8_OES :: GLenum
gl_RGBA8_OES = 0x8058

gl_STENCIL_INDEX8_OES :: GLenum
gl_STENCIL_INDEX8_OES = 0x8D48

gl_HALF_FLOAT_OES :: GLenum
gl_HALF_FLOAT_OES = 0x8D61

glAccum :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glAccum v0 v1 = funGL 2337 >>= \f -> liftIO $ f v0 v1

glAlphaFunc :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glAlphaFunc v0 v1 = funGL 2338 >>= \f -> liftIO $ f v0 v1

glAreTexturesResident :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> Ptr GLboolean -> m GLboolean
glAreTexturesResident v0 v1 v2 = funGL 2339 >>= \f -> liftIO $ f v0 v1 v2

glArrayElement :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glArrayElement v0 = funGL 2340 >>= \f -> liftIO $ f v0

glBegin :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glBegin v0 = funGL 2341 >>= \f -> liftIO $ f v0

glBitmap :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLsizei -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Ptr GLubyte -> m ()
glBitmap v0 v1 v2 v3 v4 v5 v6 = funGL 2342 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCallList :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glCallList v0 = funGL 2343 >>= \f -> liftIO $ f v0

glCallLists :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr () -> m ()
glCallLists v0 v1 v2 = funGL 2344 >>= \f -> liftIO $ f v0 v1 v2

glClearAccum :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glClearAccum v0 v1 v2 v3 = funGL 2345 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearIndex :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glClearIndex v0 = funGL 2346 >>= \f -> liftIO $ f v0

glClientActiveTexture :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glClientActiveTexture v0 = funGL 2347 >>= \f -> liftIO $ f v0

glClipPlane :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glClipPlane v0 v1 = funGL 2348 >>= \f -> liftIO $ f v0 v1

glColor3b :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> m ()
glColor3b v0 v1 v2 = funGL 2349 >>= \f -> liftIO $ f v0 v1 v2

glColor3bv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glColor3bv v0 = funGL 2350 >>= \f -> liftIO $ f v0

glColor3d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glColor3d v0 v1 v2 = funGL 2351 >>= \f -> liftIO $ f v0 v1 v2

glColor3dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glColor3dv v0 = funGL 2352 >>= \f -> liftIO $ f v0

glColor3f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glColor3f v0 v1 v2 = funGL 2353 >>= \f -> liftIO $ f v0 v1 v2

glColor3fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glColor3fv v0 = funGL 2354 >>= \f -> liftIO $ f v0

glColor3i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glColor3i v0 v1 v2 = funGL 2355 >>= \f -> liftIO $ f v0 v1 v2

glColor3iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glColor3iv v0 = funGL 2356 >>= \f -> liftIO $ f v0

glColor3s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glColor3s v0 v1 v2 = funGL 2357 >>= \f -> liftIO $ f v0 v1 v2

glColor3sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glColor3sv v0 = funGL 2358 >>= \f -> liftIO $ f v0

glColor3ub :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> GLubyte -> GLubyte -> m ()
glColor3ub v0 v1 v2 = funGL 2359 >>= \f -> liftIO $ f v0 v1 v2

glColor3ubv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> m ()
glColor3ubv v0 = funGL 2360 >>= \f -> liftIO $ f v0

glColor3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glColor3ui v0 v1 v2 = funGL 2361 >>= \f -> liftIO $ f v0 v1 v2

glColor3uiv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> m ()
glColor3uiv v0 = funGL 2362 >>= \f -> liftIO $ f v0

glColor3us :: (MonadIO m, MonadReader e m, HasScope e) => GLushort -> GLushort -> GLushort -> m ()
glColor3us v0 v1 v2 = funGL 2363 >>= \f -> liftIO $ f v0 v1 v2

glColor3usv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLushort -> m ()
glColor3usv v0 = funGL 2364 >>= \f -> liftIO $ f v0

glColor4b :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> GLbyte -> m ()
glColor4b v0 v1 v2 v3 = funGL 2365 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4bv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glColor4bv v0 = funGL 2366 >>= \f -> liftIO $ f v0

glColor4d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glColor4d v0 v1 v2 v3 = funGL 2367 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glColor4dv v0 = funGL 2368 >>= \f -> liftIO $ f v0

glColor4f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glColor4f v0 v1 v2 v3 = funGL 2369 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glColor4fv v0 = funGL 2370 >>= \f -> liftIO $ f v0

glColor4i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> m ()
glColor4i v0 v1 v2 v3 = funGL 2371 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glColor4iv v0 = funGL 2372 >>= \f -> liftIO $ f v0

glColor4s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> GLshort -> m ()
glColor4s v0 v1 v2 v3 = funGL 2373 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glColor4sv v0 = funGL 2374 >>= \f -> liftIO $ f v0

glColor4ub :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> GLubyte -> GLubyte -> GLubyte -> m ()
glColor4ub v0 v1 v2 v3 = funGL 2375 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4ubv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> m ()
glColor4ubv v0 = funGL 2376 >>= \f -> liftIO $ f v0

glColor4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLuint -> m ()
glColor4ui v0 v1 v2 v3 = funGL 2377 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4uiv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> m ()
glColor4uiv v0 = funGL 2378 >>= \f -> liftIO $ f v0

glColor4us :: (MonadIO m, MonadReader e m, HasScope e) => GLushort -> GLushort -> GLushort -> GLushort -> m ()
glColor4us v0 v1 v2 v3 = funGL 2379 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4usv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLushort -> m ()
glColor4usv v0 = funGL 2380 >>= \f -> liftIO $ f v0

glColorMaterial :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glColorMaterial v0 v1 = funGL 2381 >>= \f -> liftIO $ f v0 v1

glColorPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glColorPointer v0 v1 v2 v3 = funGL 2382 >>= \f -> liftIO $ f v0 v1 v2 v3

glCopyPixels :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> m ()
glCopyPixels v0 v1 v2 v3 v4 = funGL 2383 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDeleteLists :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> m ()
glDeleteLists v0 v1 = funGL 2384 >>= \f -> liftIO $ f v0 v1

glDisableClientState :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glDisableClientState v0 = funGL 2385 >>= \f -> liftIO $ f v0

glDrawPixels :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glDrawPixels v0 v1 v2 v3 v4 = funGL 2386 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glEdgeFlag :: (MonadIO m, MonadReader e m, HasScope e) => GLboolean -> m ()
glEdgeFlag v0 = funGL 2387 >>= \f -> liftIO $ f v0

glEdgeFlagPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr () -> m ()
glEdgeFlagPointer v0 v1 = funGL 2388 >>= \f -> liftIO $ f v0 v1

glEdgeFlagv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLboolean -> m ()
glEdgeFlagv v0 = funGL 2389 >>= \f -> liftIO $ f v0

glEnableClientState :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glEnableClientState v0 = funGL 2390 >>= \f -> liftIO $ f v0

glEnd :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEnd = funGL 2391 >>= \f -> liftIO $ f

glEndList :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndList = funGL 2392 >>= \f -> liftIO $ f

glEvalCoord1d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> m ()
glEvalCoord1d v0 = funGL 2393 >>= \f -> liftIO $ f v0

glEvalCoord1dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glEvalCoord1dv v0 = funGL 2394 >>= \f -> liftIO $ f v0

glEvalCoord1f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glEvalCoord1f v0 = funGL 2395 >>= \f -> liftIO $ f v0

glEvalCoord1fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glEvalCoord1fv v0 = funGL 2396 >>= \f -> liftIO $ f v0

glEvalCoord2d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glEvalCoord2d v0 v1 = funGL 2397 >>= \f -> liftIO $ f v0 v1

glEvalCoord2dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glEvalCoord2dv v0 = funGL 2398 >>= \f -> liftIO $ f v0

glEvalCoord2f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glEvalCoord2f v0 v1 = funGL 2399 >>= \f -> liftIO $ f v0 v1

glEvalCoord2fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glEvalCoord2fv v0 = funGL 2400 >>= \f -> liftIO $ f v0

glEvalMesh1 :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> m ()
glEvalMesh1 v0 v1 v2 = funGL 2401 >>= \f -> liftIO $ f v0 v1 v2

glEvalMesh2 :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> m ()
glEvalMesh2 v0 v1 v2 v3 v4 = funGL 2402 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glEvalPoint1 :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glEvalPoint1 v0 = funGL 2403 >>= \f -> liftIO $ f v0

glEvalPoint2 :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glEvalPoint2 v0 v1 = funGL 2404 >>= \f -> liftIO $ f v0 v1

glFeedbackBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr GLfloat -> m ()
glFeedbackBuffer v0 v1 v2 = funGL 2405 >>= \f -> liftIO $ f v0 v1 v2

glFogCoordPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glFogCoordPointer v0 v1 v2 = funGL 2406 >>= \f -> liftIO $ f v0 v1 v2

glFogCoordd :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> m ()
glFogCoordd v0 = funGL 2407 >>= \f -> liftIO $ f v0

glFogCoorddv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glFogCoorddv v0 = funGL 2408 >>= \f -> liftIO $ f v0

glFogCoordf :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glFogCoordf v0 = funGL 2409 >>= \f -> liftIO $ f v0

glFogCoordfv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glFogCoordfv v0 = funGL 2410 >>= \f -> liftIO $ f v0

glFogf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glFogf v0 v1 = funGL 2411 >>= \f -> liftIO $ f v0 v1

glFogfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glFogfv v0 v1 = funGL 2412 >>= \f -> liftIO $ f v0 v1

glFogi :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glFogi v0 v1 = funGL 2413 >>= \f -> liftIO $ f v0 v1

glFogiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glFogiv v0 v1 = funGL 2414 >>= \f -> liftIO $ f v0 v1

glFrustum :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glFrustum v0 v1 v2 v3 v4 v5 = funGL 2415 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGenLists :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> m GLuint
glGenLists v0 = funGL 2416 >>= \f -> liftIO $ f v0

glGetClipPlane :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glGetClipPlane v0 v1 = funGL 2417 >>= \f -> liftIO $ f v0 v1

glGetLightfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetLightfv v0 v1 v2 = funGL 2418 >>= \f -> liftIO $ f v0 v1 v2

glGetLightiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetLightiv v0 v1 v2 = funGL 2419 >>= \f -> liftIO $ f v0 v1 v2

glGetMapdv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLdouble -> m ()
glGetMapdv v0 v1 v2 = funGL 2420 >>= \f -> liftIO $ f v0 v1 v2

glGetMapfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetMapfv v0 v1 v2 = funGL 2421 >>= \f -> liftIO $ f v0 v1 v2

glGetMapiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetMapiv v0 v1 v2 = funGL 2422 >>= \f -> liftIO $ f v0 v1 v2

glGetMaterialfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetMaterialfv v0 v1 v2 = funGL 2423 >>= \f -> liftIO $ f v0 v1 v2

glGetMaterialiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetMaterialiv v0 v1 v2 = funGL 2424 >>= \f -> liftIO $ f v0 v1 v2

glGetPixelMapfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glGetPixelMapfv v0 v1 = funGL 2425 >>= \f -> liftIO $ f v0 v1

glGetPixelMapuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLuint -> m ()
glGetPixelMapuiv v0 v1 = funGL 2426 >>= \f -> liftIO $ f v0 v1

glGetPixelMapusv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLushort -> m ()
glGetPixelMapusv v0 v1 = funGL 2427 >>= \f -> liftIO $ f v0 v1

glGetPolygonStipple :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> m ()
glGetPolygonStipple v0 = funGL 2428 >>= \f -> liftIO $ f v0

glGetTexEnvfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetTexEnvfv v0 v1 v2 = funGL 2429 >>= \f -> liftIO $ f v0 v1 v2

glGetTexEnviv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetTexEnviv v0 v1 v2 = funGL 2430 >>= \f -> liftIO $ f v0 v1 v2

glGetTexGendv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLdouble -> m ()
glGetTexGendv v0 v1 v2 = funGL 2431 >>= \f -> liftIO $ f v0 v1 v2

glGetTexGenfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetTexGenfv v0 v1 v2 = funGL 2432 >>= \f -> liftIO $ f v0 v1 v2

glGetTexGeniv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetTexGeniv v0 v1 v2 = funGL 2433 >>= \f -> liftIO $ f v0 v1 v2

glIndexMask :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glIndexMask v0 = funGL 2434 >>= \f -> liftIO $ f v0

glIndexPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glIndexPointer v0 v1 v2 = funGL 2435 >>= \f -> liftIO $ f v0 v1 v2

glIndexd :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> m ()
glIndexd v0 = funGL 2436 >>= \f -> liftIO $ f v0

glIndexdv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glIndexdv v0 = funGL 2437 >>= \f -> liftIO $ f v0

glIndexf :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glIndexf v0 = funGL 2438 >>= \f -> liftIO $ f v0

glIndexfv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glIndexfv v0 = funGL 2439 >>= \f -> liftIO $ f v0

glIndexi :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glIndexi v0 = funGL 2440 >>= \f -> liftIO $ f v0

glIndexiv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glIndexiv v0 = funGL 2441 >>= \f -> liftIO $ f v0

glIndexs :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> m ()
glIndexs v0 = funGL 2442 >>= \f -> liftIO $ f v0

glIndexsv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glIndexsv v0 = funGL 2443 >>= \f -> liftIO $ f v0

glIndexub :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> m ()
glIndexub v0 = funGL 2444 >>= \f -> liftIO $ f v0

glIndexubv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> m ()
glIndexubv v0 = funGL 2445 >>= \f -> liftIO $ f v0

glInitNames :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glInitNames = funGL 2446 >>= \f -> liftIO $ f

glInterleavedArrays :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glInterleavedArrays v0 v1 v2 = funGL 2447 >>= \f -> liftIO $ f v0 v1 v2

glIsList :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsList v0 = funGL 2448 >>= \f -> liftIO $ f v0

glLightModelf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glLightModelf v0 v1 = funGL 2449 >>= \f -> liftIO $ f v0 v1

glLightModelfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glLightModelfv v0 v1 = funGL 2450 >>= \f -> liftIO $ f v0 v1

glLightModeli :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glLightModeli v0 v1 = funGL 2451 >>= \f -> liftIO $ f v0 v1

glLightModeliv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glLightModeliv v0 v1 = funGL 2452 >>= \f -> liftIO $ f v0 v1

glLightf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glLightf v0 v1 v2 = funGL 2453 >>= \f -> liftIO $ f v0 v1 v2

glLightfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glLightfv v0 v1 v2 = funGL 2454 >>= \f -> liftIO $ f v0 v1 v2

glLighti :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glLighti v0 v1 v2 = funGL 2455 >>= \f -> liftIO $ f v0 v1 v2

glLightiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glLightiv v0 v1 v2 = funGL 2456 >>= \f -> liftIO $ f v0 v1 v2

glLineStipple :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLushort -> m ()
glLineStipple v0 v1 = funGL 2457 >>= \f -> liftIO $ f v0 v1

glListBase :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glListBase v0 = funGL 2458 >>= \f -> liftIO $ f v0

glLoadIdentity :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glLoadIdentity = funGL 2459 >>= \f -> liftIO $ f

glLoadMatrixd :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glLoadMatrixd v0 = funGL 2460 >>= \f -> liftIO $ f v0

glLoadMatrixf :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glLoadMatrixf v0 = funGL 2461 >>= \f -> liftIO $ f v0

glLoadName :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glLoadName v0 = funGL 2462 >>= \f -> liftIO $ f v0

glLoadTransposeMatrixd :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glLoadTransposeMatrixd v0 = funGL 2463 >>= \f -> liftIO $ f v0

glLoadTransposeMatrixf :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glLoadTransposeMatrixf v0 = funGL 2464 >>= \f -> liftIO $ f v0

glMap1d :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> m ()
glMap1d v0 v1 v2 v3 v4 v5 = funGL 2465 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glMap1f :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> m ()
glMap1f v0 v1 v2 v3 v4 v5 = funGL 2466 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glMap2d :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> m ()
glMap2d v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 2467 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glMap2f :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> m ()
glMap2f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 2468 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glMapGrid1d :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLdouble -> GLdouble -> m ()
glMapGrid1d v0 v1 v2 = funGL 2469 >>= \f -> liftIO $ f v0 v1 v2

glMapGrid1f :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> GLfloat -> m ()
glMapGrid1f v0 v1 v2 = funGL 2470 >>= \f -> liftIO $ f v0 v1 v2

glMapGrid2d :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLdouble -> GLdouble -> GLint -> GLdouble -> GLdouble -> m ()
glMapGrid2d v0 v1 v2 v3 v4 v5 = funGL 2471 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glMapGrid2f :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> GLfloat -> GLint -> GLfloat -> GLfloat -> m ()
glMapGrid2f v0 v1 v2 v3 v4 v5 = funGL 2472 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glMaterialf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glMaterialf v0 v1 v2 = funGL 2473 >>= \f -> liftIO $ f v0 v1 v2

glMaterialfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glMaterialfv v0 v1 v2 = funGL 2474 >>= \f -> liftIO $ f v0 v1 v2

glMateriali :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glMateriali v0 v1 v2 = funGL 2475 >>= \f -> liftIO $ f v0 v1 v2

glMaterialiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glMaterialiv v0 v1 v2 = funGL 2476 >>= \f -> liftIO $ f v0 v1 v2

glMatrixMode :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glMatrixMode v0 = funGL 2477 >>= \f -> liftIO $ f v0

glMultMatrixd :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glMultMatrixd v0 = funGL 2478 >>= \f -> liftIO $ f v0

glMultMatrixf :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glMultMatrixf v0 = funGL 2479 >>= \f -> liftIO $ f v0

glMultTransposeMatrixd :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glMultTransposeMatrixd v0 = funGL 2480 >>= \f -> liftIO $ f v0

glMultTransposeMatrixf :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glMultTransposeMatrixf v0 = funGL 2481 >>= \f -> liftIO $ f v0

glMultiTexCoord1d :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> m ()
glMultiTexCoord1d v0 v1 = funGL 2482 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1dv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMultiTexCoord1dv v0 v1 = funGL 2483 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1f :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glMultiTexCoord1f v0 v1 = funGL 2484 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1fv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMultiTexCoord1fv v0 v1 = funGL 2485 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1i :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glMultiTexCoord1i v0 v1 = funGL 2486 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1iv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glMultiTexCoord1iv v0 v1 = funGL 2487 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1s :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> m ()
glMultiTexCoord1s v0 v1 = funGL 2488 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1sv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glMultiTexCoord1sv v0 v1 = funGL 2489 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2d :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> m ()
glMultiTexCoord2d v0 v1 v2 = funGL 2490 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMultiTexCoord2dv v0 v1 = funGL 2491 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2f :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> m ()
glMultiTexCoord2f v0 v1 v2 = funGL 2492 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMultiTexCoord2fv v0 v1 = funGL 2493 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2i :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> m ()
glMultiTexCoord2i v0 v1 v2 = funGL 2494 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2iv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glMultiTexCoord2iv v0 v1 = funGL 2495 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2s :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> m ()
glMultiTexCoord2s v0 v1 v2 = funGL 2496 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2sv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glMultiTexCoord2sv v0 v1 = funGL 2497 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3d :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> m ()
glMultiTexCoord3d v0 v1 v2 v3 = funGL 2498 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMultiTexCoord3dv v0 v1 = funGL 2499 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3f :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> m ()
glMultiTexCoord3f v0 v1 v2 v3 = funGL 2500 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMultiTexCoord3fv v0 v1 = funGL 2501 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3i :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> m ()
glMultiTexCoord3i v0 v1 v2 v3 = funGL 2502 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3iv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glMultiTexCoord3iv v0 v1 = funGL 2503 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3s :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> GLshort -> m ()
glMultiTexCoord3s v0 v1 v2 v3 = funGL 2504 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3sv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glMultiTexCoord3sv v0 v1 = funGL 2505 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4d :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glMultiTexCoord4d v0 v1 v2 v3 v4 = funGL 2506 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMultiTexCoord4dv v0 v1 = funGL 2507 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4f :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glMultiTexCoord4f v0 v1 v2 v3 v4 = funGL 2508 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMultiTexCoord4fv v0 v1 = funGL 2509 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4i :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> m ()
glMultiTexCoord4i v0 v1 v2 v3 v4 = funGL 2510 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4iv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glMultiTexCoord4iv v0 v1 = funGL 2511 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4s :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> m ()
glMultiTexCoord4s v0 v1 v2 v3 v4 = funGL 2512 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4sv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glMultiTexCoord4sv v0 v1 = funGL 2513 >>= \f -> liftIO $ f v0 v1

glNewList :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glNewList v0 v1 = funGL 2514 >>= \f -> liftIO $ f v0 v1

glNormal3b :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> m ()
glNormal3b v0 v1 v2 = funGL 2515 >>= \f -> liftIO $ f v0 v1 v2

glNormal3bv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glNormal3bv v0 = funGL 2516 >>= \f -> liftIO $ f v0

glNormal3d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glNormal3d v0 v1 v2 = funGL 2517 >>= \f -> liftIO $ f v0 v1 v2

glNormal3dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glNormal3dv v0 = funGL 2518 >>= \f -> liftIO $ f v0

glNormal3f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glNormal3f v0 v1 v2 = funGL 2519 >>= \f -> liftIO $ f v0 v1 v2

glNormal3fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glNormal3fv v0 = funGL 2520 >>= \f -> liftIO $ f v0

glNormal3i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glNormal3i v0 v1 v2 = funGL 2521 >>= \f -> liftIO $ f v0 v1 v2

glNormal3iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glNormal3iv v0 = funGL 2522 >>= \f -> liftIO $ f v0

glNormal3s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glNormal3s v0 v1 v2 = funGL 2523 >>= \f -> liftIO $ f v0 v1 v2

glNormal3sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glNormal3sv v0 = funGL 2524 >>= \f -> liftIO $ f v0

glNormalPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glNormalPointer v0 v1 v2 = funGL 2525 >>= \f -> liftIO $ f v0 v1 v2

glOrtho :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glOrtho v0 v1 v2 v3 v4 v5 = funGL 2526 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glPassThrough :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glPassThrough v0 = funGL 2527 >>= \f -> liftIO $ f v0

glPixelMapfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLfloat -> m ()
glPixelMapfv v0 v1 v2 = funGL 2528 >>= \f -> liftIO $ f v0 v1 v2

glPixelMapuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLuint -> m ()
glPixelMapuiv v0 v1 v2 = funGL 2529 >>= \f -> liftIO $ f v0 v1 v2

glPixelMapusv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLushort -> m ()
glPixelMapusv v0 v1 v2 = funGL 2530 >>= \f -> liftIO $ f v0 v1 v2

glPixelTransferf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glPixelTransferf v0 v1 = funGL 2531 >>= \f -> liftIO $ f v0 v1

glPixelTransferi :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glPixelTransferi v0 v1 = funGL 2532 >>= \f -> liftIO $ f v0 v1

glPixelZoom :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glPixelZoom v0 v1 = funGL 2533 >>= \f -> liftIO $ f v0 v1

glPolygonStipple :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> m ()
glPolygonStipple v0 = funGL 2534 >>= \f -> liftIO $ f v0

glPopAttrib :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPopAttrib = funGL 2535 >>= \f -> liftIO $ f

glPopClientAttrib :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPopClientAttrib = funGL 2536 >>= \f -> liftIO $ f

glPopMatrix :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPopMatrix = funGL 2537 >>= \f -> liftIO $ f

glPopName :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPopName = funGL 2538 >>= \f -> liftIO $ f

glPrioritizeTextures :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> Ptr GLfloat -> m ()
glPrioritizeTextures v0 v1 v2 = funGL 2539 >>= \f -> liftIO $ f v0 v1 v2

glPushAttrib :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glPushAttrib v0 = funGL 2540 >>= \f -> liftIO $ f v0

glPushClientAttrib :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glPushClientAttrib v0 = funGL 2541 >>= \f -> liftIO $ f v0

glPushMatrix :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glPushMatrix = funGL 2542 >>= \f -> liftIO $ f

glPushName :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glPushName v0 = funGL 2543 >>= \f -> liftIO $ f v0

glRasterPos2d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glRasterPos2d v0 v1 = funGL 2544 >>= \f -> liftIO $ f v0 v1

glRasterPos2dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glRasterPos2dv v0 = funGL 2545 >>= \f -> liftIO $ f v0

glRasterPos2f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glRasterPos2f v0 v1 = funGL 2546 >>= \f -> liftIO $ f v0 v1

glRasterPos2fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glRasterPos2fv v0 = funGL 2547 >>= \f -> liftIO $ f v0

glRasterPos2i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glRasterPos2i v0 v1 = funGL 2548 >>= \f -> liftIO $ f v0 v1

glRasterPos2iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glRasterPos2iv v0 = funGL 2549 >>= \f -> liftIO $ f v0

glRasterPos2s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> m ()
glRasterPos2s v0 v1 = funGL 2550 >>= \f -> liftIO $ f v0 v1

glRasterPos2sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glRasterPos2sv v0 = funGL 2551 >>= \f -> liftIO $ f v0

glRasterPos3d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glRasterPos3d v0 v1 v2 = funGL 2552 >>= \f -> liftIO $ f v0 v1 v2

glRasterPos3dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glRasterPos3dv v0 = funGL 2553 >>= \f -> liftIO $ f v0

glRasterPos3f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glRasterPos3f v0 v1 v2 = funGL 2554 >>= \f -> liftIO $ f v0 v1 v2

glRasterPos3fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glRasterPos3fv v0 = funGL 2555 >>= \f -> liftIO $ f v0

glRasterPos3i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glRasterPos3i v0 v1 v2 = funGL 2556 >>= \f -> liftIO $ f v0 v1 v2

glRasterPos3iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glRasterPos3iv v0 = funGL 2557 >>= \f -> liftIO $ f v0

glRasterPos3s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glRasterPos3s v0 v1 v2 = funGL 2558 >>= \f -> liftIO $ f v0 v1 v2

glRasterPos3sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glRasterPos3sv v0 = funGL 2559 >>= \f -> liftIO $ f v0

glRasterPos4d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glRasterPos4d v0 v1 v2 v3 = funGL 2560 >>= \f -> liftIO $ f v0 v1 v2 v3

glRasterPos4dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glRasterPos4dv v0 = funGL 2561 >>= \f -> liftIO $ f v0

glRasterPos4f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glRasterPos4f v0 v1 v2 v3 = funGL 2562 >>= \f -> liftIO $ f v0 v1 v2 v3

glRasterPos4fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glRasterPos4fv v0 = funGL 2563 >>= \f -> liftIO $ f v0

glRasterPos4i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> m ()
glRasterPos4i v0 v1 v2 v3 = funGL 2564 >>= \f -> liftIO $ f v0 v1 v2 v3

glRasterPos4iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glRasterPos4iv v0 = funGL 2565 >>= \f -> liftIO $ f v0

glRasterPos4s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> GLshort -> m ()
glRasterPos4s v0 v1 v2 v3 = funGL 2566 >>= \f -> liftIO $ f v0 v1 v2 v3

glRasterPos4sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glRasterPos4sv v0 = funGL 2567 >>= \f -> liftIO $ f v0

glRectd :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glRectd v0 v1 v2 v3 = funGL 2568 >>= \f -> liftIO $ f v0 v1 v2 v3

glRectdv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> Ptr GLdouble -> m ()
glRectdv v0 v1 = funGL 2569 >>= \f -> liftIO $ f v0 v1

glRectf :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glRectf v0 v1 v2 v3 = funGL 2570 >>= \f -> liftIO $ f v0 v1 v2 v3

glRectfv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> m ()
glRectfv v0 v1 = funGL 2571 >>= \f -> liftIO $ f v0 v1

glRecti :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> m ()
glRecti v0 v1 v2 v3 = funGL 2572 >>= \f -> liftIO $ f v0 v1 v2 v3

glRectiv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> Ptr GLint -> m ()
glRectiv v0 v1 = funGL 2573 >>= \f -> liftIO $ f v0 v1

glRects :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> GLshort -> m ()
glRects v0 v1 v2 v3 = funGL 2574 >>= \f -> liftIO $ f v0 v1 v2 v3

glRectsv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> Ptr GLshort -> m ()
glRectsv v0 v1 = funGL 2575 >>= \f -> liftIO $ f v0 v1

glRenderMode :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLint
glRenderMode v0 = funGL 2576 >>= \f -> liftIO $ f v0

glRotated :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glRotated v0 v1 v2 v3 = funGL 2577 >>= \f -> liftIO $ f v0 v1 v2 v3

glRotatef :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glRotatef v0 v1 v2 v3 = funGL 2578 >>= \f -> liftIO $ f v0 v1 v2 v3

glScaled :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glScaled v0 v1 v2 = funGL 2579 >>= \f -> liftIO $ f v0 v1 v2

glScalef :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glScalef v0 v1 v2 = funGL 2580 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3b :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> m ()
glSecondaryColor3b v0 v1 v2 = funGL 2581 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3bv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glSecondaryColor3bv v0 = funGL 2582 >>= \f -> liftIO $ f v0

glSecondaryColor3d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glSecondaryColor3d v0 v1 v2 = funGL 2583 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glSecondaryColor3dv v0 = funGL 2584 >>= \f -> liftIO $ f v0

glSecondaryColor3f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glSecondaryColor3f v0 v1 v2 = funGL 2585 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glSecondaryColor3fv v0 = funGL 2586 >>= \f -> liftIO $ f v0

glSecondaryColor3i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glSecondaryColor3i v0 v1 v2 = funGL 2587 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glSecondaryColor3iv v0 = funGL 2588 >>= \f -> liftIO $ f v0

glSecondaryColor3s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glSecondaryColor3s v0 v1 v2 = funGL 2589 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glSecondaryColor3sv v0 = funGL 2590 >>= \f -> liftIO $ f v0

glSecondaryColor3ub :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> GLubyte -> GLubyte -> m ()
glSecondaryColor3ub v0 v1 v2 = funGL 2591 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3ubv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> m ()
glSecondaryColor3ubv v0 = funGL 2592 >>= \f -> liftIO $ f v0

glSecondaryColor3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glSecondaryColor3ui v0 v1 v2 = funGL 2593 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3uiv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> m ()
glSecondaryColor3uiv v0 = funGL 2594 >>= \f -> liftIO $ f v0

glSecondaryColor3us :: (MonadIO m, MonadReader e m, HasScope e) => GLushort -> GLushort -> GLushort -> m ()
glSecondaryColor3us v0 v1 v2 = funGL 2595 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3usv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLushort -> m ()
glSecondaryColor3usv v0 = funGL 2596 >>= \f -> liftIO $ f v0

glSecondaryColorPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glSecondaryColorPointer v0 v1 v2 v3 = funGL 2597 >>= \f -> liftIO $ f v0 v1 v2 v3

glSelectBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glSelectBuffer v0 v1 = funGL 2598 >>= \f -> liftIO $ f v0 v1

glShadeModel :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glShadeModel v0 = funGL 2599 >>= \f -> liftIO $ f v0

glTexCoord1d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> m ()
glTexCoord1d v0 = funGL 2600 >>= \f -> liftIO $ f v0

glTexCoord1dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glTexCoord1dv v0 = funGL 2601 >>= \f -> liftIO $ f v0

glTexCoord1f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glTexCoord1f v0 = funGL 2602 >>= \f -> liftIO $ f v0

glTexCoord1fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glTexCoord1fv v0 = funGL 2603 >>= \f -> liftIO $ f v0

glTexCoord1i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glTexCoord1i v0 = funGL 2604 >>= \f -> liftIO $ f v0

glTexCoord1iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glTexCoord1iv v0 = funGL 2605 >>= \f -> liftIO $ f v0

glTexCoord1s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> m ()
glTexCoord1s v0 = funGL 2606 >>= \f -> liftIO $ f v0

glTexCoord1sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glTexCoord1sv v0 = funGL 2607 >>= \f -> liftIO $ f v0

glTexCoord2d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glTexCoord2d v0 v1 = funGL 2608 >>= \f -> liftIO $ f v0 v1

glTexCoord2dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glTexCoord2dv v0 = funGL 2609 >>= \f -> liftIO $ f v0

glTexCoord2f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glTexCoord2f v0 v1 = funGL 2610 >>= \f -> liftIO $ f v0 v1

glTexCoord2fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glTexCoord2fv v0 = funGL 2611 >>= \f -> liftIO $ f v0

glTexCoord2i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glTexCoord2i v0 v1 = funGL 2612 >>= \f -> liftIO $ f v0 v1

glTexCoord2iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glTexCoord2iv v0 = funGL 2613 >>= \f -> liftIO $ f v0

glTexCoord2s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> m ()
glTexCoord2s v0 v1 = funGL 2614 >>= \f -> liftIO $ f v0 v1

glTexCoord2sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glTexCoord2sv v0 = funGL 2615 >>= \f -> liftIO $ f v0

glTexCoord3d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glTexCoord3d v0 v1 v2 = funGL 2616 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord3dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glTexCoord3dv v0 = funGL 2617 >>= \f -> liftIO $ f v0

glTexCoord3f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord3f v0 v1 v2 = funGL 2618 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord3fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glTexCoord3fv v0 = funGL 2619 >>= \f -> liftIO $ f v0

glTexCoord3i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glTexCoord3i v0 v1 v2 = funGL 2620 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord3iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glTexCoord3iv v0 = funGL 2621 >>= \f -> liftIO $ f v0

glTexCoord3s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glTexCoord3s v0 v1 v2 = funGL 2622 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord3sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glTexCoord3sv v0 = funGL 2623 >>= \f -> liftIO $ f v0

glTexCoord4d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glTexCoord4d v0 v1 v2 v3 = funGL 2624 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord4dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glTexCoord4dv v0 = funGL 2625 >>= \f -> liftIO $ f v0

glTexCoord4f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord4f v0 v1 v2 v3 = funGL 2626 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord4fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glTexCoord4fv v0 = funGL 2627 >>= \f -> liftIO $ f v0

glTexCoord4i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> m ()
glTexCoord4i v0 v1 v2 v3 = funGL 2628 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord4iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glTexCoord4iv v0 = funGL 2629 >>= \f -> liftIO $ f v0

glTexCoord4s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> GLshort -> m ()
glTexCoord4s v0 v1 v2 v3 = funGL 2630 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord4sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glTexCoord4sv v0 = funGL 2631 >>= \f -> liftIO $ f v0

glTexCoordPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glTexCoordPointer v0 v1 v2 v3 = funGL 2632 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexEnvf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glTexEnvf v0 v1 v2 = funGL 2633 >>= \f -> liftIO $ f v0 v1 v2

glTexEnvfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glTexEnvfv v0 v1 v2 = funGL 2634 >>= \f -> liftIO $ f v0 v1 v2

glTexEnvi :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glTexEnvi v0 v1 v2 = funGL 2635 >>= \f -> liftIO $ f v0 v1 v2

glTexEnviv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glTexEnviv v0 v1 v2 = funGL 2636 >>= \f -> liftIO $ f v0 v1 v2

glTexGend :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLdouble -> m ()
glTexGend v0 v1 v2 = funGL 2637 >>= \f -> liftIO $ f v0 v1 v2

glTexGendv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLdouble -> m ()
glTexGendv v0 v1 v2 = funGL 2638 >>= \f -> liftIO $ f v0 v1 v2

glTexGenf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glTexGenf v0 v1 v2 = funGL 2639 >>= \f -> liftIO $ f v0 v1 v2

glTexGenfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glTexGenfv v0 v1 v2 = funGL 2640 >>= \f -> liftIO $ f v0 v1 v2

glTexGeni :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glTexGeni v0 v1 v2 = funGL 2641 >>= \f -> liftIO $ f v0 v1 v2

glTexGeniv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glTexGeniv v0 v1 v2 = funGL 2642 >>= \f -> liftIO $ f v0 v1 v2

glTranslated :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glTranslated v0 v1 v2 = funGL 2643 >>= \f -> liftIO $ f v0 v1 v2

glTranslatef :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glTranslatef v0 v1 v2 = funGL 2644 >>= \f -> liftIO $ f v0 v1 v2

glVertex2d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glVertex2d v0 v1 = funGL 2645 >>= \f -> liftIO $ f v0 v1

glVertex2dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glVertex2dv v0 = funGL 2646 >>= \f -> liftIO $ f v0

glVertex2f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glVertex2f v0 v1 = funGL 2647 >>= \f -> liftIO $ f v0 v1

glVertex2fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glVertex2fv v0 = funGL 2648 >>= \f -> liftIO $ f v0

glVertex2i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glVertex2i v0 v1 = funGL 2649 >>= \f -> liftIO $ f v0 v1

glVertex2iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glVertex2iv v0 = funGL 2650 >>= \f -> liftIO $ f v0

glVertex2s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> m ()
glVertex2s v0 v1 = funGL 2651 >>= \f -> liftIO $ f v0 v1

glVertex2sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glVertex2sv v0 = funGL 2652 >>= \f -> liftIO $ f v0

glVertex3d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glVertex3d v0 v1 v2 = funGL 2653 >>= \f -> liftIO $ f v0 v1 v2

glVertex3dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glVertex3dv v0 = funGL 2654 >>= \f -> liftIO $ f v0

glVertex3f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glVertex3f v0 v1 v2 = funGL 2655 >>= \f -> liftIO $ f v0 v1 v2

glVertex3fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glVertex3fv v0 = funGL 2656 >>= \f -> liftIO $ f v0

glVertex3i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glVertex3i v0 v1 v2 = funGL 2657 >>= \f -> liftIO $ f v0 v1 v2

glVertex3iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glVertex3iv v0 = funGL 2658 >>= \f -> liftIO $ f v0

glVertex3s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glVertex3s v0 v1 v2 = funGL 2659 >>= \f -> liftIO $ f v0 v1 v2

glVertex3sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glVertex3sv v0 = funGL 2660 >>= \f -> liftIO $ f v0

glVertex4d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertex4d v0 v1 v2 v3 = funGL 2661 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertex4dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glVertex4dv v0 = funGL 2662 >>= \f -> liftIO $ f v0

glVertex4f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertex4f v0 v1 v2 v3 = funGL 2663 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertex4fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glVertex4fv v0 = funGL 2664 >>= \f -> liftIO $ f v0

glVertex4i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> m ()
glVertex4i v0 v1 v2 v3 = funGL 2665 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertex4iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glVertex4iv v0 = funGL 2666 >>= \f -> liftIO $ f v0

glVertex4s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> GLshort -> m ()
glVertex4s v0 v1 v2 v3 = funGL 2667 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertex4sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glVertex4sv v0 = funGL 2668 >>= \f -> liftIO $ f v0

glVertexPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glVertexPointer v0 v1 v2 v3 = funGL 2669 >>= \f -> liftIO $ f v0 v1 v2 v3

glWindowPos2d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glWindowPos2d v0 v1 = funGL 2670 >>= \f -> liftIO $ f v0 v1

glWindowPos2dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glWindowPos2dv v0 = funGL 2671 >>= \f -> liftIO $ f v0

glWindowPos2f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glWindowPos2f v0 v1 = funGL 2672 >>= \f -> liftIO $ f v0 v1

glWindowPos2fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glWindowPos2fv v0 = funGL 2673 >>= \f -> liftIO $ f v0

glWindowPos2i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glWindowPos2i v0 v1 = funGL 2674 >>= \f -> liftIO $ f v0 v1

glWindowPos2iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glWindowPos2iv v0 = funGL 2675 >>= \f -> liftIO $ f v0

glWindowPos2s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> m ()
glWindowPos2s v0 v1 = funGL 2676 >>= \f -> liftIO $ f v0 v1

glWindowPos2sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glWindowPos2sv v0 = funGL 2677 >>= \f -> liftIO $ f v0

glWindowPos3d :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glWindowPos3d v0 v1 v2 = funGL 2678 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3dv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glWindowPos3dv v0 = funGL 2679 >>= \f -> liftIO $ f v0

glWindowPos3f :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glWindowPos3f v0 v1 v2 = funGL 2680 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3fv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glWindowPos3fv v0 = funGL 2681 >>= \f -> liftIO $ f v0

glWindowPos3i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glWindowPos3i v0 v1 v2 = funGL 2682 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3iv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glWindowPos3iv v0 = funGL 2683 >>= \f -> liftIO $ f v0

glWindowPos3s :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glWindowPos3s v0 v1 v2 = funGL 2684 >>= \f -> liftIO $ f v0 v1 v2

glWindowPos3sv :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glWindowPos3sv v0 = funGL 2685 >>= \f -> liftIO $ f v0

gl_2D :: GLenum
gl_2D = 0x0600

gl_2_BYTES :: GLenum
gl_2_BYTES = 0x1407

gl_3D :: GLenum
gl_3D = 0x0601

gl_3D_COLOR :: GLenum
gl_3D_COLOR = 0x0602

gl_3D_COLOR_TEXTURE :: GLenum
gl_3D_COLOR_TEXTURE = 0x0603

gl_3_BYTES :: GLenum
gl_3_BYTES = 0x1408

gl_4D_COLOR_TEXTURE :: GLenum
gl_4D_COLOR_TEXTURE = 0x0604

gl_4_BYTES :: GLenum
gl_4_BYTES = 0x1409

gl_ACCUM :: GLenum
gl_ACCUM = 0x0100

gl_ACCUM_ALPHA_BITS :: GLenum
gl_ACCUM_ALPHA_BITS = 0x0D5B

gl_ACCUM_BLUE_BITS :: GLenum
gl_ACCUM_BLUE_BITS = 0x0D5A

gl_ACCUM_BUFFER_BIT :: GLenum
gl_ACCUM_BUFFER_BIT = 0x00000200

gl_ACCUM_CLEAR_VALUE :: GLenum
gl_ACCUM_CLEAR_VALUE = 0x0B80

gl_ACCUM_GREEN_BITS :: GLenum
gl_ACCUM_GREEN_BITS = 0x0D59

gl_ACCUM_RED_BITS :: GLenum
gl_ACCUM_RED_BITS = 0x0D58

gl_ADD :: GLenum
gl_ADD = 0x0104

gl_ADD_SIGNED :: GLenum
gl_ADD_SIGNED = 0x8574

gl_ALIASED_POINT_SIZE_RANGE :: GLenum
gl_ALIASED_POINT_SIZE_RANGE = 0x846D

gl_ALL_ATTRIB_BITS :: GLenum
gl_ALL_ATTRIB_BITS = 0xFFFFFFFF

gl_ALPHA12 :: GLenum
gl_ALPHA12 = 0x803D

gl_ALPHA16 :: GLenum
gl_ALPHA16 = 0x803E

gl_ALPHA4 :: GLenum
gl_ALPHA4 = 0x803B

gl_ALPHA8 :: GLenum
gl_ALPHA8 = 0x803C

gl_ALPHA_BIAS :: GLenum
gl_ALPHA_BIAS = 0x0D1D

gl_ALPHA_BITS :: GLenum
gl_ALPHA_BITS = 0x0D55

gl_ALPHA_INTEGER :: GLenum
gl_ALPHA_INTEGER = 0x8D97

gl_ALPHA_SCALE :: GLenum
gl_ALPHA_SCALE = 0x0D1C

gl_ALPHA_TEST :: GLenum
gl_ALPHA_TEST = 0x0BC0

gl_ALPHA_TEST_FUNC :: GLenum
gl_ALPHA_TEST_FUNC = 0x0BC1

gl_ALPHA_TEST_REF :: GLenum
gl_ALPHA_TEST_REF = 0x0BC2

gl_AMBIENT :: GLenum
gl_AMBIENT = 0x1200

gl_AMBIENT_AND_DIFFUSE :: GLenum
gl_AMBIENT_AND_DIFFUSE = 0x1602

gl_ATTRIB_STACK_DEPTH :: GLenum
gl_ATTRIB_STACK_DEPTH = 0x0BB0

gl_AUTO_NORMAL :: GLenum
gl_AUTO_NORMAL = 0x0D80

gl_AUX0 :: GLenum
gl_AUX0 = 0x0409

gl_AUX1 :: GLenum
gl_AUX1 = 0x040A

gl_AUX2 :: GLenum
gl_AUX2 = 0x040B

gl_AUX3 :: GLenum
gl_AUX3 = 0x040C

gl_AUX_BUFFERS :: GLenum
gl_AUX_BUFFERS = 0x0C00

gl_BITMAP :: GLenum
gl_BITMAP = 0x1A00

gl_BITMAP_TOKEN :: GLenum
gl_BITMAP_TOKEN = 0x0704

gl_BLUE_BIAS :: GLenum
gl_BLUE_BIAS = 0x0D1B

gl_BLUE_BITS :: GLenum
gl_BLUE_BITS = 0x0D54

gl_BLUE_SCALE :: GLenum
gl_BLUE_SCALE = 0x0D1A

gl_C3F_V3F :: GLenum
gl_C3F_V3F = 0x2A24

gl_C4F_N3F_V3F :: GLenum
gl_C4F_N3F_V3F = 0x2A26

gl_C4UB_V2F :: GLenum
gl_C4UB_V2F = 0x2A22

gl_C4UB_V3F :: GLenum
gl_C4UB_V3F = 0x2A23

gl_CLAMP :: GLenum
gl_CLAMP = 0x2900

gl_CLAMP_FRAGMENT_COLOR :: GLenum
gl_CLAMP_FRAGMENT_COLOR = 0x891B

gl_CLAMP_VERTEX_COLOR :: GLenum
gl_CLAMP_VERTEX_COLOR = 0x891A

gl_CLIENT_ACTIVE_TEXTURE :: GLenum
gl_CLIENT_ACTIVE_TEXTURE = 0x84E1

gl_CLIENT_ALL_ATTRIB_BITS :: GLenum
gl_CLIENT_ALL_ATTRIB_BITS = 0xFFFFFFFF

gl_CLIENT_ATTRIB_STACK_DEPTH :: GLenum
gl_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1

gl_CLIENT_PIXEL_STORE_BIT :: GLenum
gl_CLIENT_PIXEL_STORE_BIT = 0x00000001

gl_CLIENT_VERTEX_ARRAY_BIT :: GLenum
gl_CLIENT_VERTEX_ARRAY_BIT = 0x00000002

gl_CLIP_PLANE0 :: GLenum
gl_CLIP_PLANE0 = 0x3000

gl_CLIP_PLANE1 :: GLenum
gl_CLIP_PLANE1 = 0x3001

gl_CLIP_PLANE2 :: GLenum
gl_CLIP_PLANE2 = 0x3002

gl_CLIP_PLANE3 :: GLenum
gl_CLIP_PLANE3 = 0x3003

gl_CLIP_PLANE4 :: GLenum
gl_CLIP_PLANE4 = 0x3004

gl_CLIP_PLANE5 :: GLenum
gl_CLIP_PLANE5 = 0x3005

gl_COEFF :: GLenum
gl_COEFF = 0x0A00

gl_COLOR_ARRAY :: GLenum
gl_COLOR_ARRAY = 0x8076

gl_COLOR_ARRAY_BUFFER_BINDING :: GLenum
gl_COLOR_ARRAY_BUFFER_BINDING = 0x8898

gl_COLOR_ARRAY_POINTER :: GLenum
gl_COLOR_ARRAY_POINTER = 0x8090

gl_COLOR_ARRAY_SIZE :: GLenum
gl_COLOR_ARRAY_SIZE = 0x8081

gl_COLOR_ARRAY_STRIDE :: GLenum
gl_COLOR_ARRAY_STRIDE = 0x8083

gl_COLOR_ARRAY_TYPE :: GLenum
gl_COLOR_ARRAY_TYPE = 0x8082

gl_COLOR_INDEX :: GLenum
gl_COLOR_INDEX = 0x1900

gl_COLOR_INDEXES :: GLenum
gl_COLOR_INDEXES = 0x1603

gl_COLOR_MATERIAL :: GLenum
gl_COLOR_MATERIAL = 0x0B57

gl_COLOR_MATERIAL_FACE :: GLenum
gl_COLOR_MATERIAL_FACE = 0x0B55

gl_COLOR_MATERIAL_PARAMETER :: GLenum
gl_COLOR_MATERIAL_PARAMETER = 0x0B56

gl_COLOR_SUM :: GLenum
gl_COLOR_SUM = 0x8458

gl_COMBINE :: GLenum
gl_COMBINE = 0x8570

gl_COMBINE_ALPHA :: GLenum
gl_COMBINE_ALPHA = 0x8572

gl_COMBINE_RGB :: GLenum
gl_COMBINE_RGB = 0x8571

gl_COMPARE_R_TO_TEXTURE :: GLenum
gl_COMPARE_R_TO_TEXTURE = 0x884E

gl_COMPILE :: GLenum
gl_COMPILE = 0x1300

gl_COMPILE_AND_EXECUTE :: GLenum
gl_COMPILE_AND_EXECUTE = 0x1301

gl_COMPRESSED_ALPHA :: GLenum
gl_COMPRESSED_ALPHA = 0x84E9

gl_COMPRESSED_INTENSITY :: GLenum
gl_COMPRESSED_INTENSITY = 0x84EC

gl_COMPRESSED_LUMINANCE :: GLenum
gl_COMPRESSED_LUMINANCE = 0x84EA

gl_COMPRESSED_LUMINANCE_ALPHA :: GLenum
gl_COMPRESSED_LUMINANCE_ALPHA = 0x84EB

gl_COMPRESSED_SLUMINANCE :: GLenum
gl_COMPRESSED_SLUMINANCE = 0x8C4A

gl_COMPRESSED_SLUMINANCE_ALPHA :: GLenum
gl_COMPRESSED_SLUMINANCE_ALPHA = 0x8C4B

gl_CONSTANT :: GLenum
gl_CONSTANT = 0x8576

gl_CONSTANT_ATTENUATION :: GLenum
gl_CONSTANT_ATTENUATION = 0x1207

gl_COORD_REPLACE :: GLenum
gl_COORD_REPLACE = 0x8862

gl_COPY_PIXEL_TOKEN :: GLenum
gl_COPY_PIXEL_TOKEN = 0x0706

gl_CURRENT_BIT :: GLenum
gl_CURRENT_BIT = 0x00000001

gl_CURRENT_COLOR :: GLenum
gl_CURRENT_COLOR = 0x0B00

gl_CURRENT_FOG_COORD :: GLenum
gl_CURRENT_FOG_COORD = 0x8453

gl_CURRENT_FOG_COORDINATE :: GLenum
gl_CURRENT_FOG_COORDINATE = 0x8453

gl_CURRENT_INDEX :: GLenum
gl_CURRENT_INDEX = 0x0B01

gl_CURRENT_NORMAL :: GLenum
gl_CURRENT_NORMAL = 0x0B02

gl_CURRENT_RASTER_COLOR :: GLenum
gl_CURRENT_RASTER_COLOR = 0x0B04

gl_CURRENT_RASTER_DISTANCE :: GLenum
gl_CURRENT_RASTER_DISTANCE = 0x0B09

gl_CURRENT_RASTER_INDEX :: GLenum
gl_CURRENT_RASTER_INDEX = 0x0B05

gl_CURRENT_RASTER_POSITION :: GLenum
gl_CURRENT_RASTER_POSITION = 0x0B07

gl_CURRENT_RASTER_POSITION_VALID :: GLenum
gl_CURRENT_RASTER_POSITION_VALID = 0x0B08

gl_CURRENT_RASTER_SECONDARY_COLOR :: GLenum
gl_CURRENT_RASTER_SECONDARY_COLOR = 0x845F

gl_CURRENT_RASTER_TEXTURE_COORDS :: GLenum
gl_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06

gl_CURRENT_SECONDARY_COLOR :: GLenum
gl_CURRENT_SECONDARY_COLOR = 0x8459

gl_CURRENT_TEXTURE_COORDS :: GLenum
gl_CURRENT_TEXTURE_COORDS = 0x0B03

gl_DECAL :: GLenum
gl_DECAL = 0x2101

gl_DEPTH_BIAS :: GLenum
gl_DEPTH_BIAS = 0x0D1F

gl_DEPTH_BITS :: GLenum
gl_DEPTH_BITS = 0x0D56

gl_DEPTH_SCALE :: GLenum
gl_DEPTH_SCALE = 0x0D1E

gl_DEPTH_TEXTURE_MODE :: GLenum
gl_DEPTH_TEXTURE_MODE = 0x884B

gl_DIFFUSE :: GLenum
gl_DIFFUSE = 0x1201

gl_DOMAIN :: GLenum
gl_DOMAIN = 0x0A02

gl_DOT3_RGB :: GLenum
gl_DOT3_RGB = 0x86AE

gl_DOT3_RGBA :: GLenum
gl_DOT3_RGBA = 0x86AF

gl_DRAW_PIXEL_TOKEN :: GLenum
gl_DRAW_PIXEL_TOKEN = 0x0705

gl_EDGE_FLAG :: GLenum
gl_EDGE_FLAG = 0x0B43

gl_EDGE_FLAG_ARRAY :: GLenum
gl_EDGE_FLAG_ARRAY = 0x8079

gl_EDGE_FLAG_ARRAY_BUFFER_BINDING :: GLenum
gl_EDGE_FLAG_ARRAY_BUFFER_BINDING = 0x889B

gl_EDGE_FLAG_ARRAY_POINTER :: GLenum
gl_EDGE_FLAG_ARRAY_POINTER = 0x8093

gl_EDGE_FLAG_ARRAY_STRIDE :: GLenum
gl_EDGE_FLAG_ARRAY_STRIDE = 0x808C

gl_EMISSION :: GLenum
gl_EMISSION = 0x1600

gl_ENABLE_BIT :: GLenum
gl_ENABLE_BIT = 0x00002000

gl_EVAL_BIT :: GLenum
gl_EVAL_BIT = 0x00010000

gl_EXP :: GLenum
gl_EXP = 0x0800

gl_EXP2 :: GLenum
gl_EXP2 = 0x0801

gl_EYE_LINEAR :: GLenum
gl_EYE_LINEAR = 0x2400

gl_FEEDBACK :: GLenum
gl_FEEDBACK = 0x1C01

gl_FEEDBACK_BUFFER_POINTER :: GLenum
gl_FEEDBACK_BUFFER_POINTER = 0x0DF0

gl_FEEDBACK_BUFFER_SIZE :: GLenum
gl_FEEDBACK_BUFFER_SIZE = 0x0DF1

gl_FEEDBACK_BUFFER_TYPE :: GLenum
gl_FEEDBACK_BUFFER_TYPE = 0x0DF2

gl_FLAT :: GLenum
gl_FLAT = 0x1D00

gl_FOG_BIT :: GLenum
gl_FOG_BIT = 0x00000080

gl_FOG_COLOR :: GLenum
gl_FOG_COLOR = 0x0B66

gl_FOG_COORD :: GLenum
gl_FOG_COORD = 0x8451

gl_FOG_COORDINATE :: GLenum
gl_FOG_COORDINATE = 0x8451

gl_FOG_COORDINATE_ARRAY :: GLenum
gl_FOG_COORDINATE_ARRAY = 0x8457

gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING :: GLenum
gl_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 0x889D

gl_FOG_COORDINATE_ARRAY_POINTER :: GLenum
gl_FOG_COORDINATE_ARRAY_POINTER = 0x8456

gl_FOG_COORDINATE_ARRAY_STRIDE :: GLenum
gl_FOG_COORDINATE_ARRAY_STRIDE = 0x8455

gl_FOG_COORDINATE_ARRAY_TYPE :: GLenum
gl_FOG_COORDINATE_ARRAY_TYPE = 0x8454

gl_FOG_COORDINATE_SOURCE :: GLenum
gl_FOG_COORDINATE_SOURCE = 0x8450

gl_FOG_COORD_ARRAY :: GLenum
gl_FOG_COORD_ARRAY = 0x8457

gl_FOG_COORD_ARRAY_BUFFER_BINDING :: GLenum
gl_FOG_COORD_ARRAY_BUFFER_BINDING = 0x889D

gl_FOG_COORD_ARRAY_POINTER :: GLenum
gl_FOG_COORD_ARRAY_POINTER = 0x8456

gl_FOG_COORD_ARRAY_STRIDE :: GLenum
gl_FOG_COORD_ARRAY_STRIDE = 0x8455

gl_FOG_COORD_ARRAY_TYPE :: GLenum
gl_FOG_COORD_ARRAY_TYPE = 0x8454

gl_FOG_COORD_SRC :: GLenum
gl_FOG_COORD_SRC = 0x8450

gl_FOG_DENSITY :: GLenum
gl_FOG_DENSITY = 0x0B62

gl_FOG_END :: GLenum
gl_FOG_END = 0x0B64

gl_FOG_HINT :: GLenum
gl_FOG_HINT = 0x0C54

gl_FOG_INDEX :: GLenum
gl_FOG_INDEX = 0x0B61

gl_FOG_MODE :: GLenum
gl_FOG_MODE = 0x0B65

gl_FOG_START :: GLenum
gl_FOG_START = 0x0B63

gl_FRAGMENT_DEPTH :: GLenum
gl_FRAGMENT_DEPTH = 0x8452

gl_GENERATE_MIPMAP :: GLenum
gl_GENERATE_MIPMAP = 0x8191

gl_GENERATE_MIPMAP_HINT :: GLenum
gl_GENERATE_MIPMAP_HINT = 0x8192

gl_GREEN_BIAS :: GLenum
gl_GREEN_BIAS = 0x0D19

gl_GREEN_BITS :: GLenum
gl_GREEN_BITS = 0x0D53

gl_GREEN_SCALE :: GLenum
gl_GREEN_SCALE = 0x0D18

gl_HINT_BIT :: GLenum
gl_HINT_BIT = 0x00008000

gl_INDEX_ARRAY :: GLenum
gl_INDEX_ARRAY = 0x8077

gl_INDEX_ARRAY_BUFFER_BINDING :: GLenum
gl_INDEX_ARRAY_BUFFER_BINDING = 0x8899

gl_INDEX_ARRAY_POINTER :: GLenum
gl_INDEX_ARRAY_POINTER = 0x8091

gl_INDEX_ARRAY_STRIDE :: GLenum
gl_INDEX_ARRAY_STRIDE = 0x8086

gl_INDEX_ARRAY_TYPE :: GLenum
gl_INDEX_ARRAY_TYPE = 0x8085

gl_INDEX_BITS :: GLenum
gl_INDEX_BITS = 0x0D51

gl_INDEX_CLEAR_VALUE :: GLenum
gl_INDEX_CLEAR_VALUE = 0x0C20

gl_INDEX_LOGIC_OP :: GLenum
gl_INDEX_LOGIC_OP = 0x0BF1

gl_INDEX_MODE :: GLenum
gl_INDEX_MODE = 0x0C30

gl_INDEX_OFFSET :: GLenum
gl_INDEX_OFFSET = 0x0D13

gl_INDEX_SHIFT :: GLenum
gl_INDEX_SHIFT = 0x0D12

gl_INDEX_WRITEMASK :: GLenum
gl_INDEX_WRITEMASK = 0x0C21

gl_INTENSITY :: GLenum
gl_INTENSITY = 0x8049

gl_INTENSITY12 :: GLenum
gl_INTENSITY12 = 0x804C

gl_INTENSITY16 :: GLenum
gl_INTENSITY16 = 0x804D

gl_INTENSITY4 :: GLenum
gl_INTENSITY4 = 0x804A

gl_INTENSITY8 :: GLenum
gl_INTENSITY8 = 0x804B

gl_INTERPOLATE :: GLenum
gl_INTERPOLATE = 0x8575

gl_LIGHT0 :: GLenum
gl_LIGHT0 = 0x4000

gl_LIGHT1 :: GLenum
gl_LIGHT1 = 0x4001

gl_LIGHT2 :: GLenum
gl_LIGHT2 = 0x4002

gl_LIGHT3 :: GLenum
gl_LIGHT3 = 0x4003

gl_LIGHT4 :: GLenum
gl_LIGHT4 = 0x4004

gl_LIGHT5 :: GLenum
gl_LIGHT5 = 0x4005

gl_LIGHT6 :: GLenum
gl_LIGHT6 = 0x4006

gl_LIGHT7 :: GLenum
gl_LIGHT7 = 0x4007

gl_LIGHTING :: GLenum
gl_LIGHTING = 0x0B50

gl_LIGHTING_BIT :: GLenum
gl_LIGHTING_BIT = 0x00000040

gl_LIGHT_MODEL_AMBIENT :: GLenum
gl_LIGHT_MODEL_AMBIENT = 0x0B53

gl_LIGHT_MODEL_COLOR_CONTROL :: GLenum
gl_LIGHT_MODEL_COLOR_CONTROL = 0x81F8

gl_LIGHT_MODEL_LOCAL_VIEWER :: GLenum
gl_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51

gl_LIGHT_MODEL_TWO_SIDE :: GLenum
gl_LIGHT_MODEL_TWO_SIDE = 0x0B52

gl_LINEAR_ATTENUATION :: GLenum
gl_LINEAR_ATTENUATION = 0x1208

gl_LINE_BIT :: GLenum
gl_LINE_BIT = 0x00000004

gl_LINE_RESET_TOKEN :: GLenum
gl_LINE_RESET_TOKEN = 0x0707

gl_LINE_STIPPLE :: GLenum
gl_LINE_STIPPLE = 0x0B24

gl_LINE_STIPPLE_PATTERN :: GLenum
gl_LINE_STIPPLE_PATTERN = 0x0B25

gl_LINE_STIPPLE_REPEAT :: GLenum
gl_LINE_STIPPLE_REPEAT = 0x0B26

gl_LINE_TOKEN :: GLenum
gl_LINE_TOKEN = 0x0702

gl_LIST_BASE :: GLenum
gl_LIST_BASE = 0x0B32

gl_LIST_BIT :: GLenum
gl_LIST_BIT = 0x00020000

gl_LIST_INDEX :: GLenum
gl_LIST_INDEX = 0x0B33

gl_LIST_MODE :: GLenum
gl_LIST_MODE = 0x0B30

gl_LOAD :: GLenum
gl_LOAD = 0x0101

gl_LOGIC_OP :: GLenum
gl_LOGIC_OP = 0x0BF1

gl_LUMINANCE :: GLenum
gl_LUMINANCE = 0x1909

gl_LUMINANCE12 :: GLenum
gl_LUMINANCE12 = 0x8041

gl_LUMINANCE12_ALPHA12 :: GLenum
gl_LUMINANCE12_ALPHA12 = 0x8047

gl_LUMINANCE12_ALPHA4 :: GLenum
gl_LUMINANCE12_ALPHA4 = 0x8046

gl_LUMINANCE16 :: GLenum
gl_LUMINANCE16 = 0x8042

gl_LUMINANCE16_ALPHA16 :: GLenum
gl_LUMINANCE16_ALPHA16 = 0x8048

gl_LUMINANCE4 :: GLenum
gl_LUMINANCE4 = 0x803F

gl_LUMINANCE4_ALPHA4 :: GLenum
gl_LUMINANCE4_ALPHA4 = 0x8043

gl_LUMINANCE6_ALPHA2 :: GLenum
gl_LUMINANCE6_ALPHA2 = 0x8044

gl_LUMINANCE8 :: GLenum
gl_LUMINANCE8 = 0x8040

gl_LUMINANCE8_ALPHA8 :: GLenum
gl_LUMINANCE8_ALPHA8 = 0x8045

gl_LUMINANCE_ALPHA :: GLenum
gl_LUMINANCE_ALPHA = 0x190A

gl_MAP1_COLOR_4 :: GLenum
gl_MAP1_COLOR_4 = 0x0D90

gl_MAP1_GRID_DOMAIN :: GLenum
gl_MAP1_GRID_DOMAIN = 0x0DD0

gl_MAP1_GRID_SEGMENTS :: GLenum
gl_MAP1_GRID_SEGMENTS = 0x0DD1

gl_MAP1_INDEX :: GLenum
gl_MAP1_INDEX = 0x0D91

gl_MAP1_NORMAL :: GLenum
gl_MAP1_NORMAL = 0x0D92

gl_MAP1_TEXTURE_COORD_1 :: GLenum
gl_MAP1_TEXTURE_COORD_1 = 0x0D93

gl_MAP1_TEXTURE_COORD_2 :: GLenum
gl_MAP1_TEXTURE_COORD_2 = 0x0D94

gl_MAP1_TEXTURE_COORD_3 :: GLenum
gl_MAP1_TEXTURE_COORD_3 = 0x0D95

gl_MAP1_TEXTURE_COORD_4 :: GLenum
gl_MAP1_TEXTURE_COORD_4 = 0x0D96

gl_MAP1_VERTEX_3 :: GLenum
gl_MAP1_VERTEX_3 = 0x0D97

gl_MAP1_VERTEX_4 :: GLenum
gl_MAP1_VERTEX_4 = 0x0D98

gl_MAP2_COLOR_4 :: GLenum
gl_MAP2_COLOR_4 = 0x0DB0

gl_MAP2_GRID_DOMAIN :: GLenum
gl_MAP2_GRID_DOMAIN = 0x0DD2

gl_MAP2_GRID_SEGMENTS :: GLenum
gl_MAP2_GRID_SEGMENTS = 0x0DD3

gl_MAP2_INDEX :: GLenum
gl_MAP2_INDEX = 0x0DB1

gl_MAP2_NORMAL :: GLenum
gl_MAP2_NORMAL = 0x0DB2

gl_MAP2_TEXTURE_COORD_1 :: GLenum
gl_MAP2_TEXTURE_COORD_1 = 0x0DB3

gl_MAP2_TEXTURE_COORD_2 :: GLenum
gl_MAP2_TEXTURE_COORD_2 = 0x0DB4

gl_MAP2_TEXTURE_COORD_3 :: GLenum
gl_MAP2_TEXTURE_COORD_3 = 0x0DB5

gl_MAP2_TEXTURE_COORD_4 :: GLenum
gl_MAP2_TEXTURE_COORD_4 = 0x0DB6

gl_MAP2_VERTEX_3 :: GLenum
gl_MAP2_VERTEX_3 = 0x0DB7

gl_MAP2_VERTEX_4 :: GLenum
gl_MAP2_VERTEX_4 = 0x0DB8

gl_MAP_COLOR :: GLenum
gl_MAP_COLOR = 0x0D10

gl_MAP_STENCIL :: GLenum
gl_MAP_STENCIL = 0x0D11

gl_MATRIX_MODE :: GLenum
gl_MATRIX_MODE = 0x0BA0

gl_MAX_ATTRIB_STACK_DEPTH :: GLenum
gl_MAX_ATTRIB_STACK_DEPTH = 0x0D35

gl_MAX_CLIENT_ATTRIB_STACK_DEPTH :: GLenum
gl_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B

gl_MAX_CLIP_PLANES :: GLenum
gl_MAX_CLIP_PLANES = 0x0D32

gl_MAX_EVAL_ORDER :: GLenum
gl_MAX_EVAL_ORDER = 0x0D30

gl_MAX_LIGHTS :: GLenum
gl_MAX_LIGHTS = 0x0D31

gl_MAX_LIST_NESTING :: GLenum
gl_MAX_LIST_NESTING = 0x0B31

gl_MAX_MODELVIEW_STACK_DEPTH :: GLenum
gl_MAX_MODELVIEW_STACK_DEPTH = 0x0D36

gl_MAX_NAME_STACK_DEPTH :: GLenum
gl_MAX_NAME_STACK_DEPTH = 0x0D37

gl_MAX_PIXEL_MAP_TABLE :: GLenum
gl_MAX_PIXEL_MAP_TABLE = 0x0D34

gl_MAX_PROJECTION_STACK_DEPTH :: GLenum
gl_MAX_PROJECTION_STACK_DEPTH = 0x0D38

gl_MAX_TEXTURE_COORDS :: GLenum
gl_MAX_TEXTURE_COORDS = 0x8871

gl_MAX_TEXTURE_STACK_DEPTH :: GLenum
gl_MAX_TEXTURE_STACK_DEPTH = 0x0D39

gl_MAX_TEXTURE_UNITS :: GLenum
gl_MAX_TEXTURE_UNITS = 0x84E2

gl_MODELVIEW :: GLenum
gl_MODELVIEW = 0x1700

gl_MODELVIEW_MATRIX :: GLenum
gl_MODELVIEW_MATRIX = 0x0BA6

gl_MODELVIEW_STACK_DEPTH :: GLenum
gl_MODELVIEW_STACK_DEPTH = 0x0BA3

gl_MODULATE :: GLenum
gl_MODULATE = 0x2100

gl_MULT :: GLenum
gl_MULT = 0x0103

gl_MULTISAMPLE_BIT :: GLenum
gl_MULTISAMPLE_BIT = 0x20000000

gl_N3F_V3F :: GLenum
gl_N3F_V3F = 0x2A25

gl_NAME_STACK_DEPTH :: GLenum
gl_NAME_STACK_DEPTH = 0x0D70

gl_NORMALIZE :: GLenum
gl_NORMALIZE = 0x0BA1

gl_NORMAL_ARRAY :: GLenum
gl_NORMAL_ARRAY = 0x8075

gl_NORMAL_ARRAY_BUFFER_BINDING :: GLenum
gl_NORMAL_ARRAY_BUFFER_BINDING = 0x8897

gl_NORMAL_ARRAY_POINTER :: GLenum
gl_NORMAL_ARRAY_POINTER = 0x808F

gl_NORMAL_ARRAY_STRIDE :: GLenum
gl_NORMAL_ARRAY_STRIDE = 0x807F

gl_NORMAL_ARRAY_TYPE :: GLenum
gl_NORMAL_ARRAY_TYPE = 0x807E

gl_NORMAL_MAP :: GLenum
gl_NORMAL_MAP = 0x8511

gl_OBJECT_LINEAR :: GLenum
gl_OBJECT_LINEAR = 0x2401

gl_OBJECT_PLANE :: GLenum
gl_OBJECT_PLANE = 0x2501

gl_OPERAND0_ALPHA :: GLenum
gl_OPERAND0_ALPHA = 0x8598

gl_OPERAND0_RGB :: GLenum
gl_OPERAND0_RGB = 0x8590

gl_OPERAND1_ALPHA :: GLenum
gl_OPERAND1_ALPHA = 0x8599

gl_OPERAND1_RGB :: GLenum
gl_OPERAND1_RGB = 0x8591

gl_OPERAND2_ALPHA :: GLenum
gl_OPERAND2_ALPHA = 0x859A

gl_OPERAND2_RGB :: GLenum
gl_OPERAND2_RGB = 0x8592

gl_ORDER :: GLenum
gl_ORDER = 0x0A01

gl_PASS_THROUGH_TOKEN :: GLenum
gl_PASS_THROUGH_TOKEN = 0x0700

gl_PERSPECTIVE_CORRECTION_HINT :: GLenum
gl_PERSPECTIVE_CORRECTION_HINT = 0x0C50

gl_PIXEL_MAP_A_TO_A :: GLenum
gl_PIXEL_MAP_A_TO_A = 0x0C79

gl_PIXEL_MAP_A_TO_A_SIZE :: GLenum
gl_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9

gl_PIXEL_MAP_B_TO_B :: GLenum
gl_PIXEL_MAP_B_TO_B = 0x0C78

gl_PIXEL_MAP_B_TO_B_SIZE :: GLenum
gl_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8

gl_PIXEL_MAP_G_TO_G :: GLenum
gl_PIXEL_MAP_G_TO_G = 0x0C77

gl_PIXEL_MAP_G_TO_G_SIZE :: GLenum
gl_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7

gl_PIXEL_MAP_I_TO_A :: GLenum
gl_PIXEL_MAP_I_TO_A = 0x0C75

gl_PIXEL_MAP_I_TO_A_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5

gl_PIXEL_MAP_I_TO_B :: GLenum
gl_PIXEL_MAP_I_TO_B = 0x0C74

gl_PIXEL_MAP_I_TO_B_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4

gl_PIXEL_MAP_I_TO_G :: GLenum
gl_PIXEL_MAP_I_TO_G = 0x0C73

gl_PIXEL_MAP_I_TO_G_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3

gl_PIXEL_MAP_I_TO_I :: GLenum
gl_PIXEL_MAP_I_TO_I = 0x0C70

gl_PIXEL_MAP_I_TO_I_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0

gl_PIXEL_MAP_I_TO_R :: GLenum
gl_PIXEL_MAP_I_TO_R = 0x0C72

gl_PIXEL_MAP_I_TO_R_SIZE :: GLenum
gl_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2

gl_PIXEL_MAP_R_TO_R :: GLenum
gl_PIXEL_MAP_R_TO_R = 0x0C76

gl_PIXEL_MAP_R_TO_R_SIZE :: GLenum
gl_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6

gl_PIXEL_MAP_S_TO_S :: GLenum
gl_PIXEL_MAP_S_TO_S = 0x0C71

gl_PIXEL_MAP_S_TO_S_SIZE :: GLenum
gl_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1

gl_PIXEL_MODE_BIT :: GLenum
gl_PIXEL_MODE_BIT = 0x00000020

gl_POINT_BIT :: GLenum
gl_POINT_BIT = 0x00000002

gl_POINT_DISTANCE_ATTENUATION :: GLenum
gl_POINT_DISTANCE_ATTENUATION = 0x8129

gl_POINT_SIZE_MAX :: GLenum
gl_POINT_SIZE_MAX = 0x8127

gl_POINT_SIZE_MIN :: GLenum
gl_POINT_SIZE_MIN = 0x8126

gl_POINT_SMOOTH :: GLenum
gl_POINT_SMOOTH = 0x0B10

gl_POINT_SMOOTH_HINT :: GLenum
gl_POINT_SMOOTH_HINT = 0x0C51

gl_POINT_SPRITE :: GLenum
gl_POINT_SPRITE = 0x8861

gl_POINT_TOKEN :: GLenum
gl_POINT_TOKEN = 0x0701

gl_POLYGON :: GLenum
gl_POLYGON = 0x0009

gl_POLYGON_BIT :: GLenum
gl_POLYGON_BIT = 0x00000008

gl_POLYGON_STIPPLE :: GLenum
gl_POLYGON_STIPPLE = 0x0B42

gl_POLYGON_STIPPLE_BIT :: GLenum
gl_POLYGON_STIPPLE_BIT = 0x00000010

gl_POLYGON_TOKEN :: GLenum
gl_POLYGON_TOKEN = 0x0703

gl_POSITION :: GLenum
gl_POSITION = 0x1203

gl_PREVIOUS :: GLenum
gl_PREVIOUS = 0x8578

gl_PROJECTION :: GLenum
gl_PROJECTION = 0x1701

gl_PROJECTION_MATRIX :: GLenum
gl_PROJECTION_MATRIX = 0x0BA7

gl_PROJECTION_STACK_DEPTH :: GLenum
gl_PROJECTION_STACK_DEPTH = 0x0BA4

gl_Q :: GLenum
gl_Q = 0x2003

gl_QUADRATIC_ATTENUATION :: GLenum
gl_QUADRATIC_ATTENUATION = 0x1209

gl_QUAD_STRIP :: GLenum
gl_QUAD_STRIP = 0x0008

gl_R :: GLenum
gl_R = 0x2002

gl_RED_BIAS :: GLenum
gl_RED_BIAS = 0x0D15

gl_RED_BITS :: GLenum
gl_RED_BITS = 0x0D52

gl_RED_SCALE :: GLenum
gl_RED_SCALE = 0x0D14

gl_REFLECTION_MAP :: GLenum
gl_REFLECTION_MAP = 0x8512

gl_RENDER :: GLenum
gl_RENDER = 0x1C00

gl_RENDER_MODE :: GLenum
gl_RENDER_MODE = 0x0C40

gl_RESCALE_NORMAL :: GLenum
gl_RESCALE_NORMAL = 0x803A

gl_RETURN :: GLenum
gl_RETURN = 0x0102

gl_RGBA_MODE :: GLenum
gl_RGBA_MODE = 0x0C31

gl_RGB_SCALE :: GLenum
gl_RGB_SCALE = 0x8573

gl_S :: GLenum
gl_S = 0x2000

gl_SCISSOR_BIT :: GLenum
gl_SCISSOR_BIT = 0x00080000

gl_SECONDARY_COLOR_ARRAY :: GLenum
gl_SECONDARY_COLOR_ARRAY = 0x845E

gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING :: GLenum
gl_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 0x889C

gl_SECONDARY_COLOR_ARRAY_POINTER :: GLenum
gl_SECONDARY_COLOR_ARRAY_POINTER = 0x845D

gl_SECONDARY_COLOR_ARRAY_SIZE :: GLenum
gl_SECONDARY_COLOR_ARRAY_SIZE = 0x845A

gl_SECONDARY_COLOR_ARRAY_STRIDE :: GLenum
gl_SECONDARY_COLOR_ARRAY_STRIDE = 0x845C

gl_SECONDARY_COLOR_ARRAY_TYPE :: GLenum
gl_SECONDARY_COLOR_ARRAY_TYPE = 0x845B

gl_SELECT :: GLenum
gl_SELECT = 0x1C02

gl_SELECTION_BUFFER_POINTER :: GLenum
gl_SELECTION_BUFFER_POINTER = 0x0DF3

gl_SELECTION_BUFFER_SIZE :: GLenum
gl_SELECTION_BUFFER_SIZE = 0x0DF4

gl_SEPARATE_SPECULAR_COLOR :: GLenum
gl_SEPARATE_SPECULAR_COLOR = 0x81FA

gl_SHADE_MODEL :: GLenum
gl_SHADE_MODEL = 0x0B54

gl_SHININESS :: GLenum
gl_SHININESS = 0x1601

gl_SINGLE_COLOR :: GLenum
gl_SINGLE_COLOR = 0x81F9

gl_SLUMINANCE :: GLenum
gl_SLUMINANCE = 0x8C46

gl_SLUMINANCE8 :: GLenum
gl_SLUMINANCE8 = 0x8C47

gl_SLUMINANCE8_ALPHA8 :: GLenum
gl_SLUMINANCE8_ALPHA8 = 0x8C45

gl_SLUMINANCE_ALPHA :: GLenum
gl_SLUMINANCE_ALPHA = 0x8C44

gl_SMOOTH :: GLenum
gl_SMOOTH = 0x1D01

gl_SOURCE0_ALPHA :: GLenum
gl_SOURCE0_ALPHA = 0x8588

gl_SOURCE0_RGB :: GLenum
gl_SOURCE0_RGB = 0x8580

gl_SOURCE1_ALPHA :: GLenum
gl_SOURCE1_ALPHA = 0x8589

gl_SOURCE1_RGB :: GLenum
gl_SOURCE1_RGB = 0x8581

gl_SOURCE2_ALPHA :: GLenum
gl_SOURCE2_ALPHA = 0x858A

gl_SOURCE2_RGB :: GLenum
gl_SOURCE2_RGB = 0x8582

gl_SPECULAR :: GLenum
gl_SPECULAR = 0x1202

gl_SPHERE_MAP :: GLenum
gl_SPHERE_MAP = 0x2402

gl_SPOT_CUTOFF :: GLenum
gl_SPOT_CUTOFF = 0x1206

gl_SPOT_DIRECTION :: GLenum
gl_SPOT_DIRECTION = 0x1204

gl_SPOT_EXPONENT :: GLenum
gl_SPOT_EXPONENT = 0x1205

gl_SRC0_ALPHA :: GLenum
gl_SRC0_ALPHA = 0x8588

gl_SRC0_RGB :: GLenum
gl_SRC0_RGB = 0x8580

gl_SRC1_RGB :: GLenum
gl_SRC1_RGB = 0x8581

gl_SRC2_ALPHA :: GLenum
gl_SRC2_ALPHA = 0x858A

gl_SRC2_RGB :: GLenum
gl_SRC2_RGB = 0x8582

gl_STENCIL_BITS :: GLenum
gl_STENCIL_BITS = 0x0D57

gl_SUBTRACT :: GLenum
gl_SUBTRACT = 0x84E7

gl_T :: GLenum
gl_T = 0x2001

gl_T2F_C3F_V3F :: GLenum
gl_T2F_C3F_V3F = 0x2A2A

gl_T2F_C4F_N3F_V3F :: GLenum
gl_T2F_C4F_N3F_V3F = 0x2A2C

gl_T2F_C4UB_V3F :: GLenum
gl_T2F_C4UB_V3F = 0x2A29

gl_T2F_N3F_V3F :: GLenum
gl_T2F_N3F_V3F = 0x2A2B

gl_T2F_V3F :: GLenum
gl_T2F_V3F = 0x2A27

gl_T4F_C4F_N3F_V4F :: GLenum
gl_T4F_C4F_N3F_V4F = 0x2A2D

gl_T4F_V4F :: GLenum
gl_T4F_V4F = 0x2A28

gl_TEXTURE_BIT :: GLenum
gl_TEXTURE_BIT = 0x00040000

gl_TEXTURE_BORDER :: GLenum
gl_TEXTURE_BORDER = 0x1005

gl_TEXTURE_COMPONENTS :: GLenum
gl_TEXTURE_COMPONENTS = 0x1003

gl_TEXTURE_COORD_ARRAY :: GLenum
gl_TEXTURE_COORD_ARRAY = 0x8078

gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING :: GLenum
gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 0x889A

gl_TEXTURE_COORD_ARRAY_POINTER :: GLenum
gl_TEXTURE_COORD_ARRAY_POINTER = 0x8092

gl_TEXTURE_COORD_ARRAY_SIZE :: GLenum
gl_TEXTURE_COORD_ARRAY_SIZE = 0x8088

gl_TEXTURE_COORD_ARRAY_STRIDE :: GLenum
gl_TEXTURE_COORD_ARRAY_STRIDE = 0x808A

gl_TEXTURE_COORD_ARRAY_TYPE :: GLenum
gl_TEXTURE_COORD_ARRAY_TYPE = 0x8089

gl_TEXTURE_ENV :: GLenum
gl_TEXTURE_ENV = 0x2300

gl_TEXTURE_ENV_COLOR :: GLenum
gl_TEXTURE_ENV_COLOR = 0x2201

gl_TEXTURE_ENV_MODE :: GLenum
gl_TEXTURE_ENV_MODE = 0x2200

gl_TEXTURE_FILTER_CONTROL :: GLenum
gl_TEXTURE_FILTER_CONTROL = 0x8500

gl_TEXTURE_GEN_MODE :: GLenum
gl_TEXTURE_GEN_MODE = 0x2500

gl_TEXTURE_GEN_Q :: GLenum
gl_TEXTURE_GEN_Q = 0x0C63

gl_TEXTURE_GEN_R :: GLenum
gl_TEXTURE_GEN_R = 0x0C62

gl_TEXTURE_GEN_S :: GLenum
gl_TEXTURE_GEN_S = 0x0C60

gl_TEXTURE_GEN_T :: GLenum
gl_TEXTURE_GEN_T = 0x0C61

gl_TEXTURE_INTENSITY_SIZE :: GLenum
gl_TEXTURE_INTENSITY_SIZE = 0x8061

gl_TEXTURE_INTENSITY_TYPE :: GLenum
gl_TEXTURE_INTENSITY_TYPE = 0x8C15

gl_TEXTURE_LUMINANCE_SIZE :: GLenum
gl_TEXTURE_LUMINANCE_SIZE = 0x8060

gl_TEXTURE_LUMINANCE_TYPE :: GLenum
gl_TEXTURE_LUMINANCE_TYPE = 0x8C14

gl_TEXTURE_MATRIX :: GLenum
gl_TEXTURE_MATRIX = 0x0BA8

gl_TEXTURE_PRIORITY :: GLenum
gl_TEXTURE_PRIORITY = 0x8066

gl_TEXTURE_RESIDENT :: GLenum
gl_TEXTURE_RESIDENT = 0x8067

gl_TEXTURE_STACK_DEPTH :: GLenum
gl_TEXTURE_STACK_DEPTH = 0x0BA5

gl_TRANSFORM_BIT :: GLenum
gl_TRANSFORM_BIT = 0x00001000

gl_TRANSPOSE_COLOR_MATRIX :: GLenum
gl_TRANSPOSE_COLOR_MATRIX = 0x84E6

gl_TRANSPOSE_MODELVIEW_MATRIX :: GLenum
gl_TRANSPOSE_MODELVIEW_MATRIX = 0x84E3

gl_TRANSPOSE_PROJECTION_MATRIX :: GLenum
gl_TRANSPOSE_PROJECTION_MATRIX = 0x84E4

gl_TRANSPOSE_TEXTURE_MATRIX :: GLenum
gl_TRANSPOSE_TEXTURE_MATRIX = 0x84E5

gl_V2F :: GLenum
gl_V2F = 0x2A20

gl_V3F :: GLenum
gl_V3F = 0x2A21

gl_VERTEX_ARRAY_BUFFER_BINDING :: GLenum
gl_VERTEX_ARRAY_BUFFER_BINDING = 0x8896

gl_VERTEX_ARRAY_POINTER :: GLenum
gl_VERTEX_ARRAY_POINTER = 0x808E

gl_VERTEX_ARRAY_SIZE :: GLenum
gl_VERTEX_ARRAY_SIZE = 0x807A

gl_VERTEX_ARRAY_STRIDE :: GLenum
gl_VERTEX_ARRAY_STRIDE = 0x807C

gl_VERTEX_ARRAY_TYPE :: GLenum
gl_VERTEX_ARRAY_TYPE = 0x807B

gl_VERTEX_PROGRAM_TWO_SIDE :: GLenum
gl_VERTEX_PROGRAM_TWO_SIDE = 0x8643

gl_VIEWPORT_BIT :: GLenum
gl_VIEWPORT_BIT = 0x00000800

gl_WEIGHT_ARRAY_BUFFER_BINDING :: GLenum
gl_WEIGHT_ARRAY_BUFFER_BINDING = 0x889E

gl_ZOOM_X :: GLenum
gl_ZOOM_X = 0x0D16

gl_ZOOM_Y :: GLenum
gl_ZOOM_Y = 0x0D17

glActiveTexture :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glActiveTexture v0 = funGL 2698 >>= \f -> liftIO $ f v0

glAttachShader :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glAttachShader v0 v1 = funGL 2699 >>= \f -> liftIO $ f v0 v1

glBeginConditionalRender :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glBeginConditionalRender v0 v1 = funGL 2700 >>= \f -> liftIO $ f v0 v1

glBeginQuery :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBeginQuery v0 v1 = funGL 2701 >>= \f -> liftIO $ f v0 v1

glBeginTransformFeedback :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glBeginTransformFeedback v0 = funGL 2702 >>= \f -> liftIO $ f v0

glBindAttribLocation :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> Ptr GLchar -> m ()
glBindAttribLocation v0 v1 v2 = funGL 2703 >>= \f -> liftIO $ f v0 v1 v2

glBindBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindBuffer v0 v1 = funGL 2704 >>= \f -> liftIO $ f v0 v1

glBindBufferBase :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> m ()
glBindBufferBase v0 v1 v2 = funGL 2705 >>= \f -> liftIO $ f v0 v1 v2

glBindBufferRange :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLintptr -> GLsizeiptr -> m ()
glBindBufferRange v0 v1 v2 v3 v4 = funGL 2706 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glBindFragDataLocation :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> Ptr GLchar -> m ()
glBindFragDataLocation v0 v1 v2 = funGL 2707 >>= \f -> liftIO $ f v0 v1 v2

glBindTexture :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindTexture v0 v1 = funGL 2708 >>= \f -> liftIO $ f v0 v1

glBlendEquationSeparate :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glBlendEquationSeparate v0 v1 = funGL 2709 >>= \f -> liftIO $ f v0 v1

glBlendFunc :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glBlendFunc v0 v1 = funGL 2710 >>= \f -> liftIO $ f v0 v1

glBlendFuncSeparate :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> m ()
glBlendFuncSeparate v0 v1 v2 v3 = funGL 2711 >>= \f -> liftIO $ f v0 v1 v2 v3

glBufferData :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizeiptr -> Ptr () -> GLenum -> m ()
glBufferData v0 v1 v2 v3 = funGL 2712 >>= \f -> liftIO $ f v0 v1 v2 v3

glBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLsizeiptr -> Ptr () -> m ()
glBufferSubData v0 v1 v2 v3 = funGL 2713 >>= \f -> liftIO $ f v0 v1 v2 v3

glClampColor :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glClampColor v0 v1 = funGL 2714 >>= \f -> liftIO $ f v0 v1

glClear :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glClear v0 = funGL 2715 >>= \f -> liftIO $ f v0

glClearBufferfi :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLfloat -> GLint -> m ()
glClearBufferfi v0 v1 v2 v3 = funGL 2716 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearBufferfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr GLfloat -> m ()
glClearBufferfv v0 v1 v2 = funGL 2717 >>= \f -> liftIO $ f v0 v1 v2

glClearBufferiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr GLint -> m ()
glClearBufferiv v0 v1 v2 = funGL 2718 >>= \f -> liftIO $ f v0 v1 v2

glClearBufferuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr GLuint -> m ()
glClearBufferuiv v0 v1 v2 = funGL 2719 >>= \f -> liftIO $ f v0 v1 v2

glClearColor :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glClearColor v0 v1 v2 v3 = funGL 2720 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearDepth :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> m ()
glClearDepth v0 = funGL 2721 >>= \f -> liftIO $ f v0

glClearStencil :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glClearStencil v0 = funGL 2722 >>= \f -> liftIO $ f v0

glColorMask :: (MonadIO m, MonadReader e m, HasScope e) => GLboolean -> GLboolean -> GLboolean -> GLboolean -> m ()
glColorMask v0 v1 v2 v3 = funGL 2723 >>= \f -> liftIO $ f v0 v1 v2 v3

glColorMaski :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> m ()
glColorMaski v0 v1 v2 v3 v4 = funGL 2724 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glCompileShader :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glCompileShader v0 = funGL 2725 >>= \f -> liftIO $ f v0

glCompressedTexImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTexImage1D v0 v1 v2 v3 v4 v5 v6 = funGL 2726 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCompressedTexImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTexImage2D v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2727 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCompressedTexImage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTexImage3D v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2728 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCompressedTexSubImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTexSubImage1D v0 v1 v2 v3 v4 v5 v6 = funGL 2729 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCompressedTexSubImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTexSubImage2D v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2730 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCompressedTexSubImage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTexSubImage3D v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 2731 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glCopyTexImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> m ()
glCopyTexImage1D v0 v1 v2 v3 v4 v5 v6 = funGL 2732 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCopyTexImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> m ()
glCopyTexImage2D v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2733 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCopyTexSubImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> m ()
glCopyTexSubImage1D v0 v1 v2 v3 v4 v5 = funGL 2734 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glCopyTexSubImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTexSubImage2D v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2735 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCopyTexSubImage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTexSubImage3D v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2736 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCreateProgram :: (MonadIO m, MonadReader e m, HasScope e) => m GLuint
glCreateProgram = funGL 2737 >>= \f -> liftIO $ f

glCreateShader :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLuint
glCreateShader v0 = funGL 2738 >>= \f -> liftIO $ f v0

glCullFace :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glCullFace v0 = funGL 2739 >>= \f -> liftIO $ f v0

glDeleteBuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteBuffers v0 v1 = funGL 2740 >>= \f -> liftIO $ f v0 v1

glDeleteProgram :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDeleteProgram v0 = funGL 2741 >>= \f -> liftIO $ f v0

glDeleteQueries :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteQueries v0 v1 = funGL 2742 >>= \f -> liftIO $ f v0 v1

glDeleteShader :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDeleteShader v0 = funGL 2743 >>= \f -> liftIO $ f v0

glDeleteTextures :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteTextures v0 v1 = funGL 2744 >>= \f -> liftIO $ f v0 v1

glDepthFunc :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glDepthFunc v0 = funGL 2745 >>= \f -> liftIO $ f v0

glDepthMask :: (MonadIO m, MonadReader e m, HasScope e) => GLboolean -> m ()
glDepthMask v0 = funGL 2746 >>= \f -> liftIO $ f v0

glDepthRange :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> m ()
glDepthRange v0 v1 = funGL 2747 >>= \f -> liftIO $ f v0 v1

glDetachShader :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glDetachShader v0 v1 = funGL 2748 >>= \f -> liftIO $ f v0 v1

glDisable :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glDisable v0 = funGL 2749 >>= \f -> liftIO $ f v0

glDisableVertexAttribArray :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDisableVertexAttribArray v0 = funGL 2750 >>= \f -> liftIO $ f v0

glDisablei :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glDisablei v0 v1 = funGL 2751 >>= \f -> liftIO $ f v0 v1

glDrawArrays :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> m ()
glDrawArrays v0 v1 v2 = funGL 2752 >>= \f -> liftIO $ f v0 v1 v2

glDrawArraysInstanced :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> GLsizei -> m ()
glDrawArraysInstanced v0 v1 v2 v3 = funGL 2753 >>= \f -> liftIO $ f v0 v1 v2 v3

glDrawBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glDrawBuffer v0 = funGL 2754 >>= \f -> liftIO $ f v0

glDrawBuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLenum -> m ()
glDrawBuffers v0 v1 = funGL 2755 >>= \f -> liftIO $ f v0 v1

glDrawElements :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> m ()
glDrawElements v0 v1 v2 v3 = funGL 2756 >>= \f -> liftIO $ f v0 v1 v2 v3

glDrawElementsInstanced :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> m ()
glDrawElementsInstanced v0 v1 v2 v3 v4 = funGL 2757 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDrawRangeElements :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr () -> m ()
glDrawRangeElements v0 v1 v2 v3 v4 v5 = funGL 2758 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glEnable :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glEnable v0 = funGL 2759 >>= \f -> liftIO $ f v0

glEnableVertexAttribArray :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glEnableVertexAttribArray v0 = funGL 2760 >>= \f -> liftIO $ f v0

glEnablei :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glEnablei v0 v1 = funGL 2761 >>= \f -> liftIO $ f v0 v1

glEndConditionalRender :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndConditionalRender = funGL 2762 >>= \f -> liftIO $ f

glEndQuery :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glEndQuery v0 = funGL 2763 >>= \f -> liftIO $ f v0

glEndTransformFeedback :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndTransformFeedback = funGL 2764 >>= \f -> liftIO $ f

glFinish :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glFinish = funGL 2765 >>= \f -> liftIO $ f

glFlush :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glFlush = funGL 2766 >>= \f -> liftIO $ f

glFrontFace :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glFrontFace v0 = funGL 2768 >>= \f -> liftIO $ f v0

glGenBuffers :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenBuffers v0 v1 = funGL 2769 >>= \f -> liftIO $ f v0 v1

glGenQueries :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenQueries v0 v1 = funGL 2770 >>= \f -> liftIO $ f v0 v1

glGenTextures :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenTextures v0 v1 = funGL 2771 >>= \f -> liftIO $ f v0 v1

glGetActiveAttrib :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> m ()
glGetActiveAttrib v0 v1 v2 v3 v4 v5 v6 = funGL 2772 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glGetActiveUniform :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLchar -> m ()
glGetActiveUniform v0 v1 v2 v3 v4 v5 v6 = funGL 2773 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glGetAttachedShaders :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLuint -> m ()
glGetAttachedShaders v0 v1 v2 v3 = funGL 2774 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetAttribLocation :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLchar -> m GLint
glGetAttribLocation v0 v1 = funGL 2775 >>= \f -> liftIO $ f v0 v1

glGetBooleani_v :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLboolean -> m ()
glGetBooleani_v v0 v1 v2 = funGL 2776 >>= \f -> liftIO $ f v0 v1 v2

glGetBooleanv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLboolean -> m ()
glGetBooleanv v0 v1 = funGL 2777 >>= \f -> liftIO $ f v0 v1

glGetBufferParameteri64v :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint64 -> m ()
glGetBufferParameteri64v v0 v1 v2 = funGL 2778 >>= \f -> liftIO $ f v0 v1 v2

glGetBufferParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetBufferParameteriv v0 v1 v2 = funGL 2779 >>= \f -> liftIO $ f v0 v1 v2

glGetBufferPointerv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr () -> m ()
glGetBufferPointerv v0 v1 v2 = funGL 2780 >>= \f -> liftIO $ f v0 v1 v2

glGetBufferSubData :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLsizeiptr -> Ptr () -> m ()
glGetBufferSubData v0 v1 v2 v3 = funGL 2781 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetCompressedTexImage :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr () -> m ()
glGetCompressedTexImage v0 v1 v2 = funGL 2782 >>= \f -> liftIO $ f v0 v1 v2

glGetDoublev :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glGetDoublev v0 v1 = funGL 2783 >>= \f -> liftIO $ f v0 v1

glGetError :: (MonadIO m, MonadReader e m, HasScope e) => m GLenum
glGetError = funGL 2784 >>= \f -> liftIO $ f

glGetFloatv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glGetFloatv v0 v1 = funGL 2785 >>= \f -> liftIO $ f v0 v1

glGetFragDataLocation :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLchar -> m GLint
glGetFragDataLocation v0 v1 = funGL 2786 >>= \f -> liftIO $ f v0 v1

glGetInteger64i_v :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLint64 -> m ()
glGetInteger64i_v v0 v1 v2 = funGL 2787 >>= \f -> liftIO $ f v0 v1 v2

glGetIntegeri_v :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLint -> m ()
glGetIntegeri_v v0 v1 v2 = funGL 2788 >>= \f -> liftIO $ f v0 v1 v2

glGetIntegerv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glGetIntegerv v0 v1 = funGL 2789 >>= \f -> liftIO $ f v0 v1

glGetProgramInfoLog :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetProgramInfoLog v0 v1 v2 v3 = funGL 2790 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetProgramiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetProgramiv v0 v1 v2 = funGL 2791 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryObjectiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetQueryObjectiv v0 v1 v2 = funGL 2792 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryObjectuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetQueryObjectuiv v0 v1 v2 = funGL 2793 >>= \f -> liftIO $ f v0 v1 v2

glGetQueryiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetQueryiv v0 v1 v2 = funGL 2794 >>= \f -> liftIO $ f v0 v1 v2

glGetShaderInfoLog :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetShaderInfoLog v0 v1 v2 v3 = funGL 2795 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetShaderSource :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetShaderSource v0 v1 v2 v3 = funGL 2796 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetShaderiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetShaderiv v0 v1 v2 = funGL 2797 >>= \f -> liftIO $ f v0 v1 v2

glGetString :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m (Ptr GLubyte)
glGetString v0 = funGL 2798 >>= \f -> liftIO $ f v0

glGetStringi :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m (Ptr GLubyte)
glGetStringi v0 v1 = funGL 2799 >>= \f -> liftIO $ f v0 v1

glGetTexImage :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glGetTexImage v0 v1 v2 v3 v4 = funGL 2800 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetTexLevelParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> Ptr GLfloat -> m ()
glGetTexLevelParameterfv v0 v1 v2 v3 = funGL 2801 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTexLevelParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> Ptr GLint -> m ()
glGetTexLevelParameteriv v0 v1 v2 v3 = funGL 2802 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTexParameterIiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetTexParameterIiv v0 v1 v2 = funGL 2803 >>= \f -> liftIO $ f v0 v1 v2

glGetTexParameterIuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint -> m ()
glGetTexParameterIuiv v0 v1 v2 = funGL 2804 >>= \f -> liftIO $ f v0 v1 v2

glGetTexParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetTexParameterfv v0 v1 v2 = funGL 2805 >>= \f -> liftIO $ f v0 v1 v2

glGetTexParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetTexParameteriv v0 v1 v2 = funGL 2806 >>= \f -> liftIO $ f v0 v1 v2

glGetTransformFeedbackVarying :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr GLchar -> m ()
glGetTransformFeedbackVarying v0 v1 v2 v3 v4 v5 v6 = funGL 2807 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glGetUniformLocation :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLchar -> m GLint
glGetUniformLocation v0 v1 = funGL 2808 >>= \f -> liftIO $ f v0 v1

glGetUniformfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> Ptr GLfloat -> m ()
glGetUniformfv v0 v1 v2 = funGL 2809 >>= \f -> liftIO $ f v0 v1 v2

glGetUniformiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> Ptr GLint -> m ()
glGetUniformiv v0 v1 v2 = funGL 2810 >>= \f -> liftIO $ f v0 v1 v2

glGetUniformuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> Ptr GLuint -> m ()
glGetUniformuiv v0 v1 v2 = funGL 2811 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribIiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexAttribIiv v0 v1 v2 = funGL 2812 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribIuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetVertexAttribIuiv v0 v1 v2 = funGL 2813 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribPointerv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glGetVertexAttribPointerv v0 v1 v2 = funGL 2814 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribdv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLdouble -> m ()
glGetVertexAttribdv v0 v1 v2 = funGL 2815 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribfv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetVertexAttribfv v0 v1 v2 = funGL 2816 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexAttribiv v0 v1 v2 = funGL 2817 >>= \f -> liftIO $ f v0 v1 v2

glHint :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glHint v0 v1 = funGL 2818 >>= \f -> liftIO $ f v0 v1

glIsBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsBuffer v0 = funGL 2819 >>= \f -> liftIO $ f v0

glIsEnabled :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLboolean
glIsEnabled v0 = funGL 2820 >>= \f -> liftIO $ f v0

glIsEnabledi :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m GLboolean
glIsEnabledi v0 v1 = funGL 2821 >>= \f -> liftIO $ f v0 v1

glIsProgram :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsProgram v0 = funGL 2822 >>= \f -> liftIO $ f v0

glIsQuery :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsQuery v0 = funGL 2823 >>= \f -> liftIO $ f v0

glIsShader :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsShader v0 = funGL 2824 >>= \f -> liftIO $ f v0

glIsTexture :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsTexture v0 = funGL 2825 >>= \f -> liftIO $ f v0

glLineWidth :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glLineWidth v0 = funGL 2826 >>= \f -> liftIO $ f v0

glLinkProgram :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glLinkProgram v0 = funGL 2827 >>= \f -> liftIO $ f v0

glLogicOp :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glLogicOp v0 = funGL 2828 >>= \f -> liftIO $ f v0

glMapBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m (Ptr ())
glMapBuffer v0 v1 = funGL 2829 >>= \f -> liftIO $ f v0 v1

glMultiDrawArrays :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> m ()
glMultiDrawArrays v0 v1 v2 v3 = funGL 2830 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiDrawElements :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLsizei -> GLenum -> Ptr () -> GLsizei -> m ()
glMultiDrawElements v0 v1 v2 v3 v4 = funGL 2831 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glPixelStoref :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glPixelStoref v0 v1 = funGL 2832 >>= \f -> liftIO $ f v0 v1

glPixelStorei :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glPixelStorei v0 v1 = funGL 2833 >>= \f -> liftIO $ f v0 v1

glPointParameterf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glPointParameterf v0 v1 = funGL 2834 >>= \f -> liftIO $ f v0 v1

glPointParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glPointParameterfv v0 v1 = funGL 2835 >>= \f -> liftIO $ f v0 v1

glPointParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glPointParameteri v0 v1 = funGL 2836 >>= \f -> liftIO $ f v0 v1

glPointParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glPointParameteriv v0 v1 = funGL 2837 >>= \f -> liftIO $ f v0 v1

glPointSize :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glPointSize v0 = funGL 2838 >>= \f -> liftIO $ f v0

glPolygonMode :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glPolygonMode v0 v1 = funGL 2839 >>= \f -> liftIO $ f v0 v1

glPolygonOffset :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glPolygonOffset v0 v1 = funGL 2840 >>= \f -> liftIO $ f v0 v1

glPrimitiveRestartIndex :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glPrimitiveRestartIndex v0 = funGL 2841 >>= \f -> liftIO $ f v0

glReadBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glReadBuffer v0 = funGL 2842 >>= \f -> liftIO $ f v0

glReadPixels :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glReadPixels v0 v1 v2 v3 v4 v5 v6 = funGL 2843 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glSampleCoverage :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLboolean -> m ()
glSampleCoverage v0 v1 = funGL 2844 >>= \f -> liftIO $ f v0 v1

glScissor :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLsizei -> GLsizei -> m ()
glScissor v0 v1 v2 v3 = funGL 2845 >>= \f -> liftIO $ f v0 v1 v2 v3

glShaderSource :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLchar -> Ptr GLint -> m ()
glShaderSource v0 v1 v2 v3 = funGL 2846 >>= \f -> liftIO $ f v0 v1 v2 v3

glStencilFunc :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLuint -> m ()
glStencilFunc v0 v1 v2 = funGL 2847 >>= \f -> liftIO $ f v0 v1 v2

glStencilFuncSeparate :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLuint -> m ()
glStencilFuncSeparate v0 v1 v2 v3 = funGL 2848 >>= \f -> liftIO $ f v0 v1 v2 v3

glStencilMask :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glStencilMask v0 = funGL 2849 >>= \f -> liftIO $ f v0

glStencilMaskSeparate :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glStencilMaskSeparate v0 v1 = funGL 2850 >>= \f -> liftIO $ f v0 v1

glStencilOp :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> m ()
glStencilOp v0 v1 v2 = funGL 2851 >>= \f -> liftIO $ f v0 v1 v2

glStencilOpSeparate :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> m ()
glStencilOpSeparate v0 v1 v2 v3 = funGL 2852 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glTexBuffer v0 v1 v2 = funGL 2853 >>= \f -> liftIO $ f v0 v1 v2

glTexImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTexImage1D v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2854 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glTexImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTexImage2D v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2855 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glTexImage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTexImage3D v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 2856 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glTexParameterIiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glTexParameterIiv v0 v1 v2 = funGL 2857 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterIuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLuint -> m ()
glTexParameterIuiv v0 v1 v2 = funGL 2858 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterf :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glTexParameterf v0 v1 v2 = funGL 2859 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glTexParameterfv v0 v1 v2 = funGL 2860 >>= \f -> liftIO $ f v0 v1 v2

glTexParameteri :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glTexParameteri v0 v1 v2 = funGL 2861 >>= \f -> liftIO $ f v0 v1 v2

glTexParameteriv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glTexParameteriv v0 v1 v2 = funGL 2862 >>= \f -> liftIO $ f v0 v1 v2

glTexSubImage1D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTexSubImage1D v0 v1 v2 v3 v4 v5 v6 = funGL 2863 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTexSubImage2D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTexSubImage2D v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2864 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glTexSubImage3D :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTexSubImage3D v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 2865 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glTransformFeedbackVaryings :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLchar -> GLenum -> m ()
glTransformFeedbackVaryings v0 v1 v2 v3 = funGL 2866 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform1f :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> m ()
glUniform1f v0 v1 = funGL 2867 >>= \f -> liftIO $ f v0 v1

glUniform1fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLfloat -> m ()
glUniform1fv v0 v1 v2 = funGL 2868 >>= \f -> liftIO $ f v0 v1 v2

glUniform1i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glUniform1i v0 v1 = funGL 2869 >>= \f -> liftIO $ f v0 v1

glUniform1iv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint -> m ()
glUniform1iv v0 v1 v2 = funGL 2870 >>= \f -> liftIO $ f v0 v1 v2

glUniform1ui :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint -> m ()
glUniform1ui v0 v1 = funGL 2871 >>= \f -> liftIO $ f v0 v1

glUniform1uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint -> m ()
glUniform1uiv v0 v1 v2 = funGL 2872 >>= \f -> liftIO $ f v0 v1 v2

glUniform2f :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> GLfloat -> m ()
glUniform2f v0 v1 v2 = funGL 2873 >>= \f -> liftIO $ f v0 v1 v2

glUniform2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLfloat -> m ()
glUniform2fv v0 v1 v2 = funGL 2874 >>= \f -> liftIO $ f v0 v1 v2

glUniform2i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glUniform2i v0 v1 v2 = funGL 2875 >>= \f -> liftIO $ f v0 v1 v2

glUniform2iv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint -> m ()
glUniform2iv v0 v1 v2 = funGL 2876 >>= \f -> liftIO $ f v0 v1 v2

glUniform2ui :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint -> GLuint -> m ()
glUniform2ui v0 v1 v2 = funGL 2877 >>= \f -> liftIO $ f v0 v1 v2

glUniform2uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint -> m ()
glUniform2uiv v0 v1 v2 = funGL 2878 >>= \f -> liftIO $ f v0 v1 v2

glUniform3f :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> GLfloat -> GLfloat -> m ()
glUniform3f v0 v1 v2 v3 = funGL 2879 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLfloat -> m ()
glUniform3fv v0 v1 v2 = funGL 2880 >>= \f -> liftIO $ f v0 v1 v2

glUniform3i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> m ()
glUniform3i v0 v1 v2 v3 = funGL 2881 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3iv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint -> m ()
glUniform3iv v0 v1 v2 = funGL 2882 >>= \f -> liftIO $ f v0 v1 v2

glUniform3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint -> GLuint -> GLuint -> m ()
glUniform3ui v0 v1 v2 v3 = funGL 2883 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint -> m ()
glUniform3uiv v0 v1 v2 = funGL 2884 >>= \f -> liftIO $ f v0 v1 v2

glUniform4f :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glUniform4f v0 v1 v2 v3 v4 = funGL 2885 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLfloat -> m ()
glUniform4fv v0 v1 v2 = funGL 2886 >>= \f -> liftIO $ f v0 v1 v2

glUniform4i :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> GLint -> m ()
glUniform4i v0 v1 v2 v3 v4 = funGL 2887 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4iv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint -> m ()
glUniform4iv v0 v1 v2 = funGL 2888 >>= \f -> liftIO $ f v0 v1 v2

glUniform4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glUniform4ui v0 v1 v2 v3 v4 = funGL 2889 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLuint -> m ()
glUniform4uiv v0 v1 v2 = funGL 2890 >>= \f -> liftIO $ f v0 v1 v2

glUniformMatrix2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix2fv v0 v1 v2 v3 = funGL 2891 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix2x3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix2x3fv v0 v1 v2 v3 = funGL 2892 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix2x4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix2x4fv v0 v1 v2 v3 = funGL 2893 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix3fv v0 v1 v2 v3 = funGL 2894 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3x2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix3x2fv v0 v1 v2 v3 = funGL 2895 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3x4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix3x4fv v0 v1 v2 v3 = funGL 2896 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix4fv v0 v1 v2 v3 = funGL 2897 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4x2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix4x2fv v0 v1 v2 v3 = funGL 2898 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4x3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix4x3fv v0 v1 v2 v3 = funGL 2899 >>= \f -> liftIO $ f v0 v1 v2 v3

glUnmapBuffer :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLboolean
glUnmapBuffer v0 = funGL 2900 >>= \f -> liftIO $ f v0

glUseProgram :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glUseProgram v0 = funGL 2901 >>= \f -> liftIO $ f v0

glValidateProgram :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glValidateProgram v0 = funGL 2902 >>= \f -> liftIO $ f v0

glVertexAttrib1d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> m ()
glVertexAttrib1d v0 v1 = funGL 2903 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib1dv v0 v1 = funGL 2904 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1f :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> m ()
glVertexAttrib1f v0 v1 = funGL 2905 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib1fv v0 v1 = funGL 2906 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1s :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> m ()
glVertexAttrib1s v0 v1 = funGL 2907 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1sv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib1sv v0 v1 = funGL 2908 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> m ()
glVertexAttrib2d v0 v1 v2 = funGL 2909 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib2dv v0 v1 = funGL 2910 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2f :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> m ()
glVertexAttrib2f v0 v1 v2 = funGL 2911 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib2fv v0 v1 = funGL 2912 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2s :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> m ()
glVertexAttrib2s v0 v1 v2 = funGL 2913 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2sv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib2sv v0 v1 = funGL 2914 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttrib3d v0 v1 v2 v3 = funGL 2915 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib3dv v0 v1 = funGL 2916 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3f :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertexAttrib3f v0 v1 v2 v3 = funGL 2917 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib3fv v0 v1 = funGL 2918 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3s :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> GLshort -> m ()
glVertexAttrib3s v0 v1 v2 v3 = funGL 2919 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3sv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib3sv v0 v1 = funGL 2920 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4Nbv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLbyte -> m ()
glVertexAttrib4Nbv v0 v1 = funGL 2921 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4Niv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttrib4Niv v0 v1 = funGL 2922 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4Nsv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib4Nsv v0 v1 = funGL 2923 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4Nub :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> m ()
glVertexAttrib4Nub v0 v1 v2 v3 v4 = funGL 2924 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4Nubv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glVertexAttrib4Nubv v0 v1 = funGL 2925 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4Nuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttrib4Nuiv v0 v1 = funGL 2926 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4Nusv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLushort -> m ()
glVertexAttrib4Nusv v0 v1 = funGL 2927 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4bv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLbyte -> m ()
glVertexAttrib4bv v0 v1 = funGL 2928 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4d :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttrib4d v0 v1 v2 v3 v4 = funGL 2929 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4dv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib4dv v0 v1 = funGL 2930 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4f :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertexAttrib4f v0 v1 v2 v3 v4 = funGL 2931 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4fv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib4fv v0 v1 = funGL 2932 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttrib4iv v0 v1 = funGL 2933 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4s :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> m ()
glVertexAttrib4s v0 v1 v2 v3 v4 = funGL 2934 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4sv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib4sv v0 v1 = funGL 2935 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4ubv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glVertexAttrib4ubv v0 v1 = funGL 2936 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttrib4uiv v0 v1 = funGL 2937 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4usv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLushort -> m ()
glVertexAttrib4usv v0 v1 = funGL 2938 >>= \f -> liftIO $ f v0 v1

glVertexAttribI1i :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> m ()
glVertexAttribI1i v0 v1 = funGL 2939 >>= \f -> liftIO $ f v0 v1

glVertexAttribI1iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttribI1iv v0 v1 = funGL 2940 >>= \f -> liftIO $ f v0 v1

glVertexAttribI1ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexAttribI1ui v0 v1 = funGL 2941 >>= \f -> liftIO $ f v0 v1

glVertexAttribI1uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttribI1uiv v0 v1 = funGL 2942 >>= \f -> liftIO $ f v0 v1

glVertexAttribI2i :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> m ()
glVertexAttribI2i v0 v1 v2 = funGL 2943 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribI2iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttribI2iv v0 v1 = funGL 2944 >>= \f -> liftIO $ f v0 v1

glVertexAttribI2ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glVertexAttribI2ui v0 v1 v2 = funGL 2945 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribI2uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttribI2uiv v0 v1 = funGL 2946 >>= \f -> liftIO $ f v0 v1

glVertexAttribI3i :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> m ()
glVertexAttribI3i v0 v1 v2 v3 = funGL 2947 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribI3iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttribI3iv v0 v1 = funGL 2948 >>= \f -> liftIO $ f v0 v1

glVertexAttribI3ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLuint -> m ()
glVertexAttribI3ui v0 v1 v2 v3 = funGL 2949 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttribI3uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttribI3uiv v0 v1 = funGL 2950 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4bv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLbyte -> m ()
glVertexAttribI4bv v0 v1 = funGL 2951 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4i :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
glVertexAttribI4i v0 v1 v2 v3 v4 = funGL 2952 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribI4iv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVertexAttribI4iv v0 v1 = funGL 2953 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4sv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttribI4sv v0 v1 = funGL 2954 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4ubv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glVertexAttribI4ubv v0 v1 = funGL 2955 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4ui :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glVertexAttribI4ui v0 v1 v2 v3 v4 = funGL 2956 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribI4uiv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVertexAttribI4uiv v0 v1 = funGL 2957 >>= \f -> liftIO $ f v0 v1

glVertexAttribI4usv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLushort -> m ()
glVertexAttribI4usv v0 v1 = funGL 2958 >>= \f -> liftIO $ f v0 v1

glVertexAttribIPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glVertexAttribIPointer v0 v1 v2 v3 v4 = funGL 2959 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribPointer :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> Ptr () -> m ()
glVertexAttribPointer v0 v1 v2 v3 v4 v5 = funGL 2960 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glViewport :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLsizei -> GLsizei -> m ()
glViewport v0 v1 v2 v3 = funGL 2961 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_ACTIVE_ATTRIBUTES :: GLenum
gl_ACTIVE_ATTRIBUTES = 0x8B89

gl_ACTIVE_ATTRIBUTE_MAX_LENGTH :: GLenum
gl_ACTIVE_ATTRIBUTE_MAX_LENGTH = 0x8B8A

gl_ACTIVE_TEXTURE :: GLenum
gl_ACTIVE_TEXTURE = 0x84E0

gl_ACTIVE_UNIFORMS :: GLenum
gl_ACTIVE_UNIFORMS = 0x8B86

gl_ACTIVE_UNIFORM_MAX_LENGTH :: GLenum
gl_ACTIVE_UNIFORM_MAX_LENGTH = 0x8B87

gl_ALIASED_LINE_WIDTH_RANGE :: GLenum
gl_ALIASED_LINE_WIDTH_RANGE = 0x846E

gl_ALWAYS :: GLenum
gl_ALWAYS = 0x0207

gl_AND :: GLenum
gl_AND = 0x1501

gl_AND_INVERTED :: GLenum
gl_AND_INVERTED = 0x1504

gl_AND_REVERSE :: GLenum
gl_AND_REVERSE = 0x1502

gl_ARRAY_BUFFER :: GLenum
gl_ARRAY_BUFFER = 0x8892

gl_ARRAY_BUFFER_BINDING :: GLenum
gl_ARRAY_BUFFER_BINDING = 0x8894

gl_ATTACHED_SHADERS :: GLenum
gl_ATTACHED_SHADERS = 0x8B85

gl_BACK_LEFT :: GLenum
gl_BACK_LEFT = 0x0402

gl_BACK_RIGHT :: GLenum
gl_BACK_RIGHT = 0x0403

gl_BGR :: GLenum
gl_BGR = 0x80E0

gl_BGRA_INTEGER :: GLenum
gl_BGRA_INTEGER = 0x8D9B

gl_BGR_INTEGER :: GLenum
gl_BGR_INTEGER = 0x8D9A

gl_BLEND_DST :: GLenum
gl_BLEND_DST = 0x0BE0

gl_BLEND_SRC :: GLenum
gl_BLEND_SRC = 0x0BE1

gl_BLUE_INTEGER :: GLenum
gl_BLUE_INTEGER = 0x8D96

gl_BOOL :: GLenum
gl_BOOL = 0x8B56

gl_BOOL_VEC2 :: GLenum
gl_BOOL_VEC2 = 0x8B57

gl_BOOL_VEC3 :: GLenum
gl_BOOL_VEC3 = 0x8B58

gl_BOOL_VEC4 :: GLenum
gl_BOOL_VEC4 = 0x8B59

gl_BUFFER_ACCESS :: GLenum
gl_BUFFER_ACCESS = 0x88BB

gl_BUFFER_ACCESS_FLAGS :: GLenum
gl_BUFFER_ACCESS_FLAGS = 0x911F

gl_BUFFER_MAPPED :: GLenum
gl_BUFFER_MAPPED = 0x88BC

gl_BUFFER_MAP_LENGTH :: GLenum
gl_BUFFER_MAP_LENGTH = 0x9120

gl_BUFFER_MAP_OFFSET :: GLenum
gl_BUFFER_MAP_OFFSET = 0x9121

gl_BUFFER_MAP_POINTER :: GLenum
gl_BUFFER_MAP_POINTER = 0x88BD

gl_BUFFER_SIZE :: GLenum
gl_BUFFER_SIZE = 0x8764

gl_BUFFER_USAGE :: GLenum
gl_BUFFER_USAGE = 0x8765

gl_CLAMP_READ_COLOR :: GLenum
gl_CLAMP_READ_COLOR = 0x891C

gl_CLAMP_TO_BORDER :: GLenum
gl_CLAMP_TO_BORDER = 0x812D

gl_CLAMP_TO_EDGE :: GLenum
gl_CLAMP_TO_EDGE = 0x812F

gl_CLEAR :: GLenum
gl_CLEAR = 0x1500

gl_CLIP_DISTANCE0 :: GLenum
gl_CLIP_DISTANCE0 = 0x3000

gl_CLIP_DISTANCE1 :: GLenum
gl_CLIP_DISTANCE1 = 0x3001

gl_CLIP_DISTANCE2 :: GLenum
gl_CLIP_DISTANCE2 = 0x3002

gl_CLIP_DISTANCE3 :: GLenum
gl_CLIP_DISTANCE3 = 0x3003

gl_CLIP_DISTANCE4 :: GLenum
gl_CLIP_DISTANCE4 = 0x3004

gl_CLIP_DISTANCE5 :: GLenum
gl_CLIP_DISTANCE5 = 0x3005

gl_CLIP_DISTANCE6 :: GLenum
gl_CLIP_DISTANCE6 = 0x3006

gl_CLIP_DISTANCE7 :: GLenum
gl_CLIP_DISTANCE7 = 0x3007

gl_COLOR :: GLenum
gl_COLOR = 0x1800

gl_COLOR_BUFFER_BIT :: GLenum
gl_COLOR_BUFFER_BIT = 0x00004000

gl_COLOR_CLEAR_VALUE :: GLenum
gl_COLOR_CLEAR_VALUE = 0x0C22

gl_COLOR_LOGIC_OP :: GLenum
gl_COLOR_LOGIC_OP = 0x0BF2

gl_COMPARE_REF_TO_TEXTURE :: GLenum
gl_COMPARE_REF_TO_TEXTURE = 0x884E

gl_COMPILE_STATUS :: GLenum
gl_COMPILE_STATUS = 0x8B81

gl_COMPRESSED_RED :: GLenum
gl_COMPRESSED_RED = 0x8225

gl_COMPRESSED_RG :: GLenum
gl_COMPRESSED_RG = 0x8226

gl_COMPRESSED_RGB :: GLenum
gl_COMPRESSED_RGB = 0x84ED

gl_COMPRESSED_RGBA :: GLenum
gl_COMPRESSED_RGBA = 0x84EE

gl_COMPRESSED_SRGB :: GLenum
gl_COMPRESSED_SRGB = 0x8C48

gl_COMPRESSED_SRGB_ALPHA :: GLenum
gl_COMPRESSED_SRGB_ALPHA = 0x8C49

gl_COMPRESSED_TEXTURE_FORMATS :: GLenum
gl_COMPRESSED_TEXTURE_FORMATS = 0x86A3

gl_CONTEXT_FLAGS :: GLenum
gl_CONTEXT_FLAGS = 0x821E

gl_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT :: GLenum
gl_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = 0x00000001

gl_COPY :: GLenum
gl_COPY = 0x1503

gl_COPY_INVERTED :: GLenum
gl_COPY_INVERTED = 0x150C

gl_CULL_FACE :: GLenum
gl_CULL_FACE = 0x0B44

gl_CULL_FACE_MODE :: GLenum
gl_CULL_FACE_MODE = 0x0B45

gl_CURRENT_PROGRAM :: GLenum
gl_CURRENT_PROGRAM = 0x8B8D

gl_CURRENT_QUERY :: GLenum
gl_CURRENT_QUERY = 0x8865

gl_CURRENT_VERTEX_ATTRIB :: GLenum
gl_CURRENT_VERTEX_ATTRIB = 0x8626

gl_DECR :: GLenum
gl_DECR = 0x1E03

gl_DECR_WRAP :: GLenum
gl_DECR_WRAP = 0x8508

gl_DELETE_STATUS :: GLenum
gl_DELETE_STATUS = 0x8B80

gl_DEPTH :: GLenum
gl_DEPTH = 0x1801

gl_DEPTH_BUFFER_BIT :: GLenum
gl_DEPTH_BUFFER_BIT = 0x00000100

gl_DEPTH_CLEAR_VALUE :: GLenum
gl_DEPTH_CLEAR_VALUE = 0x0B73

gl_DEPTH_COMPONENT24 :: GLenum
gl_DEPTH_COMPONENT24 = 0x81A6

gl_DEPTH_COMPONENT32 :: GLenum
gl_DEPTH_COMPONENT32 = 0x81A7

gl_DEPTH_FUNC :: GLenum
gl_DEPTH_FUNC = 0x0B74

gl_DEPTH_TEST :: GLenum
gl_DEPTH_TEST = 0x0B71

gl_DEPTH_WRITEMASK :: GLenum
gl_DEPTH_WRITEMASK = 0x0B72

gl_DITHER :: GLenum
gl_DITHER = 0x0BD0

gl_DONT_CARE :: GLenum
gl_DONT_CARE = 0x1100

gl_DOUBLEBUFFER :: GLenum
gl_DOUBLEBUFFER = 0x0C32

gl_DRAW_BUFFER :: GLenum
gl_DRAW_BUFFER = 0x0C01

gl_DRAW_BUFFER0 :: GLenum
gl_DRAW_BUFFER0 = 0x8825

gl_DRAW_BUFFER1 :: GLenum
gl_DRAW_BUFFER1 = 0x8826

gl_DRAW_BUFFER10 :: GLenum
gl_DRAW_BUFFER10 = 0x882F

gl_DRAW_BUFFER11 :: GLenum
gl_DRAW_BUFFER11 = 0x8830

gl_DRAW_BUFFER12 :: GLenum
gl_DRAW_BUFFER12 = 0x8831

gl_DRAW_BUFFER13 :: GLenum
gl_DRAW_BUFFER13 = 0x8832

gl_DRAW_BUFFER14 :: GLenum
gl_DRAW_BUFFER14 = 0x8833

gl_DRAW_BUFFER15 :: GLenum
gl_DRAW_BUFFER15 = 0x8834

gl_DRAW_BUFFER2 :: GLenum
gl_DRAW_BUFFER2 = 0x8827

gl_DRAW_BUFFER3 :: GLenum
gl_DRAW_BUFFER3 = 0x8828

gl_DRAW_BUFFER4 :: GLenum
gl_DRAW_BUFFER4 = 0x8829

gl_DRAW_BUFFER5 :: GLenum
gl_DRAW_BUFFER5 = 0x882A

gl_DRAW_BUFFER6 :: GLenum
gl_DRAW_BUFFER6 = 0x882B

gl_DRAW_BUFFER7 :: GLenum
gl_DRAW_BUFFER7 = 0x882C

gl_DRAW_BUFFER8 :: GLenum
gl_DRAW_BUFFER8 = 0x882D

gl_DRAW_BUFFER9 :: GLenum
gl_DRAW_BUFFER9 = 0x882E

gl_DYNAMIC_COPY :: GLenum
gl_DYNAMIC_COPY = 0x88EA

gl_DYNAMIC_DRAW :: GLenum
gl_DYNAMIC_DRAW = 0x88E8

gl_DYNAMIC_READ :: GLenum
gl_DYNAMIC_READ = 0x88E9

gl_ELEMENT_ARRAY_BUFFER :: GLenum
gl_ELEMENT_ARRAY_BUFFER = 0x8893

gl_ELEMENT_ARRAY_BUFFER_BINDING :: GLenum
gl_ELEMENT_ARRAY_BUFFER_BINDING = 0x8895

gl_EQUIV :: GLenum
gl_EQUIV = 0x1509

gl_EXTENSIONS :: GLenum
gl_EXTENSIONS = 0x1F03

gl_FALSE :: GLenum
gl_FALSE = 0

gl_FASTEST :: GLenum
gl_FASTEST = 0x1101

gl_FILL :: GLenum
gl_FILL = 0x1B02

gl_FIXED_ONLY :: GLenum
gl_FIXED_ONLY = 0x891D

gl_FLOAT_MAT2 :: GLenum
gl_FLOAT_MAT2 = 0x8B5A

gl_FLOAT_MAT2x3 :: GLenum
gl_FLOAT_MAT2x3 = 0x8B65

gl_FLOAT_MAT2x4 :: GLenum
gl_FLOAT_MAT2x4 = 0x8B66

gl_FLOAT_MAT3 :: GLenum
gl_FLOAT_MAT3 = 0x8B5B

gl_FLOAT_MAT3x2 :: GLenum
gl_FLOAT_MAT3x2 = 0x8B67

gl_FLOAT_MAT3x4 :: GLenum
gl_FLOAT_MAT3x4 = 0x8B68

gl_FLOAT_MAT4 :: GLenum
gl_FLOAT_MAT4 = 0x8B5C

gl_FLOAT_MAT4x2 :: GLenum
gl_FLOAT_MAT4x2 = 0x8B69

gl_FLOAT_MAT4x3 :: GLenum
gl_FLOAT_MAT4x3 = 0x8B6A

gl_FLOAT_VEC2 :: GLenum
gl_FLOAT_VEC2 = 0x8B50

gl_FLOAT_VEC3 :: GLenum
gl_FLOAT_VEC3 = 0x8B51

gl_FLOAT_VEC4 :: GLenum
gl_FLOAT_VEC4 = 0x8B52

gl_FRAGMENT_SHADER :: GLenum
gl_FRAGMENT_SHADER = 0x8B30

gl_FRAGMENT_SHADER_DERIVATIVE_HINT :: GLenum
gl_FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B

gl_FRONT :: GLenum
gl_FRONT = 0x0404

gl_FRONT_AND_BACK :: GLenum
gl_FRONT_AND_BACK = 0x0408

gl_FRONT_FACE :: GLenum
gl_FRONT_FACE = 0x0B46

gl_FRONT_LEFT :: GLenum
gl_FRONT_LEFT = 0x0400

gl_FRONT_RIGHT :: GLenum
gl_FRONT_RIGHT = 0x0401

gl_GEQUAL :: GLenum
gl_GEQUAL = 0x0206

gl_GREATER :: GLenum
gl_GREATER = 0x0204

gl_GREEN_INTEGER :: GLenum
gl_GREEN_INTEGER = 0x8D95

gl_INCR :: GLenum
gl_INCR = 0x1E02

gl_INCR_WRAP :: GLenum
gl_INCR_WRAP = 0x8507

gl_INFO_LOG_LENGTH :: GLenum
gl_INFO_LOG_LENGTH = 0x8B84

gl_INT :: GLenum
gl_INT = 0x1404

gl_INTERLEAVED_ATTRIBS :: GLenum
gl_INTERLEAVED_ATTRIBS = 0x8C8C

gl_INT_SAMPLER_1D :: GLenum
gl_INT_SAMPLER_1D = 0x8DC9

gl_INT_SAMPLER_1D_ARRAY :: GLenum
gl_INT_SAMPLER_1D_ARRAY = 0x8DCE

gl_INT_SAMPLER_2D :: GLenum
gl_INT_SAMPLER_2D = 0x8DCA

gl_INT_SAMPLER_2D_ARRAY :: GLenum
gl_INT_SAMPLER_2D_ARRAY = 0x8DCF

gl_INT_SAMPLER_2D_RECT :: GLenum
gl_INT_SAMPLER_2D_RECT = 0x8DCD

gl_INT_SAMPLER_3D :: GLenum
gl_INT_SAMPLER_3D = 0x8DCB

gl_INT_SAMPLER_BUFFER :: GLenum
gl_INT_SAMPLER_BUFFER = 0x8DD0

gl_INT_SAMPLER_CUBE :: GLenum
gl_INT_SAMPLER_CUBE = 0x8DCC

gl_INT_VEC2 :: GLenum
gl_INT_VEC2 = 0x8B53

gl_INT_VEC3 :: GLenum
gl_INT_VEC3 = 0x8B54

gl_INT_VEC4 :: GLenum
gl_INT_VEC4 = 0x8B55

gl_INVALID_ENUM :: GLenum
gl_INVALID_ENUM = 0x0500

gl_INVALID_OPERATION :: GLenum
gl_INVALID_OPERATION = 0x0502

gl_INVALID_VALUE :: GLenum
gl_INVALID_VALUE = 0x0501

gl_KEEP :: GLenum
gl_KEEP = 0x1E00

gl_LEFT :: GLenum
gl_LEFT = 0x0406

gl_LEQUAL :: GLenum
gl_LEQUAL = 0x0203

gl_LESS :: GLenum
gl_LESS = 0x0201

gl_LINE :: GLenum
gl_LINE = 0x1B01

gl_LINEAR :: GLenum
gl_LINEAR = 0x2601

gl_LINEAR_MIPMAP_LINEAR :: GLenum
gl_LINEAR_MIPMAP_LINEAR = 0x2703

gl_LINEAR_MIPMAP_NEAREST :: GLenum
gl_LINEAR_MIPMAP_NEAREST = 0x2701

gl_LINES :: GLenum
gl_LINES = 0x0001

gl_LINE_LOOP :: GLenum
gl_LINE_LOOP = 0x0002

gl_LINE_SMOOTH :: GLenum
gl_LINE_SMOOTH = 0x0B20

gl_LINE_SMOOTH_HINT :: GLenum
gl_LINE_SMOOTH_HINT = 0x0C52

gl_LINE_STRIP :: GLenum
gl_LINE_STRIP = 0x0003

gl_LINE_WIDTH :: GLenum
gl_LINE_WIDTH = 0x0B21

gl_LINE_WIDTH_GRANULARITY :: GLenum
gl_LINE_WIDTH_GRANULARITY = 0x0B23

gl_LINE_WIDTH_RANGE :: GLenum
gl_LINE_WIDTH_RANGE = 0x0B22

gl_LINK_STATUS :: GLenum
gl_LINK_STATUS = 0x8B82

gl_LOGIC_OP_MODE :: GLenum
gl_LOGIC_OP_MODE = 0x0BF0

gl_MAJOR_VERSION :: GLenum
gl_MAJOR_VERSION = 0x821B

gl_MAX_3D_TEXTURE_SIZE :: GLenum
gl_MAX_3D_TEXTURE_SIZE = 0x8073

gl_MAX_ARRAY_TEXTURE_LAYERS :: GLenum
gl_MAX_ARRAY_TEXTURE_LAYERS = 0x88FF

gl_MAX_CLIP_DISTANCES :: GLenum
gl_MAX_CLIP_DISTANCES = 0x0D32

gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D

gl_MAX_CUBE_MAP_TEXTURE_SIZE :: GLenum
gl_MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C

gl_MAX_DRAW_BUFFERS :: GLenum
gl_MAX_DRAW_BUFFERS = 0x8824

gl_MAX_ELEMENTS_INDICES :: GLenum
gl_MAX_ELEMENTS_INDICES = 0x80E9

gl_MAX_ELEMENTS_VERTICES :: GLenum
gl_MAX_ELEMENTS_VERTICES = 0x80E8

gl_MAX_FRAGMENT_INPUT_COMPONENTS :: GLenum
gl_MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125

gl_MAX_FRAGMENT_UNIFORM_COMPONENTS :: GLenum
gl_MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49

gl_MAX_PROGRAM_TEXEL_OFFSET :: GLenum
gl_MAX_PROGRAM_TEXEL_OFFSET = 0x8905

gl_MAX_RECTANGLE_TEXTURE_SIZE :: GLenum
gl_MAX_RECTANGLE_TEXTURE_SIZE = 0x84F8

gl_MAX_TEXTURE_BUFFER_SIZE :: GLenum
gl_MAX_TEXTURE_BUFFER_SIZE = 0x8C2B

gl_MAX_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_TEXTURE_IMAGE_UNITS = 0x8872

gl_MAX_TEXTURE_LOD_BIAS :: GLenum
gl_MAX_TEXTURE_LOD_BIAS = 0x84FD

gl_MAX_TEXTURE_SIZE :: GLenum
gl_MAX_TEXTURE_SIZE = 0x0D33

gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A

gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B

gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS :: GLenum
gl_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80

gl_MAX_VARYING_FLOATS :: GLenum
gl_MAX_VARYING_FLOATS = 0x8B4B

gl_MAX_VERTEX_ATTRIBS :: GLenum
gl_MAX_VERTEX_ATTRIBS = 0x8869

gl_MAX_VERTEX_OUTPUT_COMPONENTS :: GLenum
gl_MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122

gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS :: GLenum
gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C

gl_MAX_VERTEX_UNIFORM_COMPONENTS :: GLenum
gl_MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A

gl_MAX_VIEWPORT_DIMS :: GLenum
gl_MAX_VIEWPORT_DIMS = 0x0D3A

gl_MINOR_VERSION :: GLenum
gl_MINOR_VERSION = 0x821C

gl_MIN_PROGRAM_TEXEL_OFFSET :: GLenum
gl_MIN_PROGRAM_TEXEL_OFFSET = 0x8904

gl_MIRRORED_REPEAT :: GLenum
gl_MIRRORED_REPEAT = 0x8370

gl_MULTISAMPLE :: GLenum
gl_MULTISAMPLE = 0x809D

gl_NAND :: GLenum
gl_NAND = 0x150E

gl_NEAREST :: GLenum
gl_NEAREST = 0x2600

gl_NEAREST_MIPMAP_LINEAR :: GLenum
gl_NEAREST_MIPMAP_LINEAR = 0x2702

gl_NEAREST_MIPMAP_NEAREST :: GLenum
gl_NEAREST_MIPMAP_NEAREST = 0x2700

gl_NEVER :: GLenum
gl_NEVER = 0x0200

gl_NICEST :: GLenum
gl_NICEST = 0x1102

gl_NOOP :: GLenum
gl_NOOP = 0x1505

gl_NOR :: GLenum
gl_NOR = 0x1508

gl_NOTEQUAL :: GLenum
gl_NOTEQUAL = 0x0205

gl_NUM_COMPRESSED_TEXTURE_FORMATS :: GLenum
gl_NUM_COMPRESSED_TEXTURE_FORMATS = 0x86A2

gl_NUM_EXTENSIONS :: GLenum
gl_NUM_EXTENSIONS = 0x821D

gl_OR :: GLenum
gl_OR = 0x1507

gl_OR_INVERTED :: GLenum
gl_OR_INVERTED = 0x150D

gl_OR_REVERSE :: GLenum
gl_OR_REVERSE = 0x150B

gl_OUT_OF_MEMORY :: GLenum
gl_OUT_OF_MEMORY = 0x0505

gl_PACK_ALIGNMENT :: GLenum
gl_PACK_ALIGNMENT = 0x0D05

gl_PACK_IMAGE_HEIGHT :: GLenum
gl_PACK_IMAGE_HEIGHT = 0x806C

gl_PACK_LSB_FIRST :: GLenum
gl_PACK_LSB_FIRST = 0x0D01

gl_PACK_ROW_LENGTH :: GLenum
gl_PACK_ROW_LENGTH = 0x0D02

gl_PACK_SKIP_IMAGES :: GLenum
gl_PACK_SKIP_IMAGES = 0x806B

gl_PACK_SKIP_PIXELS :: GLenum
gl_PACK_SKIP_PIXELS = 0x0D04

gl_PACK_SKIP_ROWS :: GLenum
gl_PACK_SKIP_ROWS = 0x0D03

gl_PACK_SWAP_BYTES :: GLenum
gl_PACK_SWAP_BYTES = 0x0D00

gl_PIXEL_PACK_BUFFER :: GLenum
gl_PIXEL_PACK_BUFFER = 0x88EB

gl_PIXEL_PACK_BUFFER_BINDING :: GLenum
gl_PIXEL_PACK_BUFFER_BINDING = 0x88ED

gl_PIXEL_UNPACK_BUFFER :: GLenum
gl_PIXEL_UNPACK_BUFFER = 0x88EC

gl_PIXEL_UNPACK_BUFFER_BINDING :: GLenum
gl_PIXEL_UNPACK_BUFFER_BINDING = 0x88EF

gl_POINT :: GLenum
gl_POINT = 0x1B00

gl_POINTS :: GLenum
gl_POINTS = 0x0000

gl_POINT_FADE_THRESHOLD_SIZE :: GLenum
gl_POINT_FADE_THRESHOLD_SIZE = 0x8128

gl_POINT_SIZE :: GLenum
gl_POINT_SIZE = 0x0B11

gl_POINT_SIZE_GRANULARITY :: GLenum
gl_POINT_SIZE_GRANULARITY = 0x0B13

gl_POINT_SIZE_RANGE :: GLenum
gl_POINT_SIZE_RANGE = 0x0B12

gl_POINT_SPRITE_COORD_ORIGIN :: GLenum
gl_POINT_SPRITE_COORD_ORIGIN = 0x8CA0

gl_POLYGON_MODE :: GLenum
gl_POLYGON_MODE = 0x0B40

gl_POLYGON_OFFSET_FACTOR :: GLenum
gl_POLYGON_OFFSET_FACTOR = 0x8038

gl_POLYGON_OFFSET_FILL :: GLenum
gl_POLYGON_OFFSET_FILL = 0x8037

gl_POLYGON_OFFSET_LINE :: GLenum
gl_POLYGON_OFFSET_LINE = 0x2A02

gl_POLYGON_OFFSET_POINT :: GLenum
gl_POLYGON_OFFSET_POINT = 0x2A01

gl_POLYGON_OFFSET_UNITS :: GLenum
gl_POLYGON_OFFSET_UNITS = 0x2A00

gl_POLYGON_SMOOTH :: GLenum
gl_POLYGON_SMOOTH = 0x0B41

gl_POLYGON_SMOOTH_HINT :: GLenum
gl_POLYGON_SMOOTH_HINT = 0x0C53

gl_PRIMITIVES_GENERATED :: GLenum
gl_PRIMITIVES_GENERATED = 0x8C87

gl_PRIMITIVE_RESTART :: GLenum
gl_PRIMITIVE_RESTART = 0x8F9D

gl_PRIMITIVE_RESTART_INDEX :: GLenum
gl_PRIMITIVE_RESTART_INDEX = 0x8F9E

gl_PROXY_TEXTURE_1D :: GLenum
gl_PROXY_TEXTURE_1D = 0x8063

gl_PROXY_TEXTURE_1D_ARRAY :: GLenum
gl_PROXY_TEXTURE_1D_ARRAY = 0x8C19

gl_PROXY_TEXTURE_2D :: GLenum
gl_PROXY_TEXTURE_2D = 0x8064

gl_PROXY_TEXTURE_2D_ARRAY :: GLenum
gl_PROXY_TEXTURE_2D_ARRAY = 0x8C1B

gl_PROXY_TEXTURE_3D :: GLenum
gl_PROXY_TEXTURE_3D = 0x8070

gl_PROXY_TEXTURE_CUBE_MAP :: GLenum
gl_PROXY_TEXTURE_CUBE_MAP = 0x851B

gl_PROXY_TEXTURE_RECTANGLE :: GLenum
gl_PROXY_TEXTURE_RECTANGLE = 0x84F7

gl_QUERY_BY_REGION_NO_WAIT :: GLenum
gl_QUERY_BY_REGION_NO_WAIT = 0x8E16

gl_QUERY_BY_REGION_WAIT :: GLenum
gl_QUERY_BY_REGION_WAIT = 0x8E15

gl_QUERY_COUNTER_BITS :: GLenum
gl_QUERY_COUNTER_BITS = 0x8864

gl_QUERY_NO_WAIT :: GLenum
gl_QUERY_NO_WAIT = 0x8E14

gl_QUERY_RESULT :: GLenum
gl_QUERY_RESULT = 0x8866

gl_QUERY_RESULT_AVAILABLE :: GLenum
gl_QUERY_RESULT_AVAILABLE = 0x8867

gl_QUERY_WAIT :: GLenum
gl_QUERY_WAIT = 0x8E13

gl_R11F_G11F_B10F :: GLenum
gl_R11F_G11F_B10F = 0x8C3A

gl_R3_G3_B2 :: GLenum
gl_R3_G3_B2 = 0x2A10

gl_RASTERIZER_DISCARD :: GLenum
gl_RASTERIZER_DISCARD = 0x8C89

gl_READ_BUFFER :: GLenum
gl_READ_BUFFER = 0x0C02

gl_READ_ONLY :: GLenum
gl_READ_ONLY = 0x88B8

gl_RED_INTEGER :: GLenum
gl_RED_INTEGER = 0x8D94

gl_RENDERER :: GLenum
gl_RENDERER = 0x1F01

gl_REPEAT :: GLenum
gl_REPEAT = 0x2901

gl_REPLACE :: GLenum
gl_REPLACE = 0x1E01

gl_RGB :: GLenum
gl_RGB = 0x1907

gl_RGB10 :: GLenum
gl_RGB10 = 0x8052

gl_RGB10_A2 :: GLenum
gl_RGB10_A2 = 0x8059

gl_RGB12 :: GLenum
gl_RGB12 = 0x8053

gl_RGB16 :: GLenum
gl_RGB16 = 0x8054

gl_RGB16F :: GLenum
gl_RGB16F = 0x881B

gl_RGB16I :: GLenum
gl_RGB16I = 0x8D89

gl_RGB16UI :: GLenum
gl_RGB16UI = 0x8D77

gl_RGB4 :: GLenum
gl_RGB4 = 0x804F

gl_RGB5 :: GLenum
gl_RGB5 = 0x8050

gl_RGB5_A1 :: GLenum
gl_RGB5_A1 = 0x8057

gl_RGB8 :: GLenum
gl_RGB8 = 0x8051

gl_RGB8I :: GLenum
gl_RGB8I = 0x8D8F

gl_RGB8UI :: GLenum
gl_RGB8UI = 0x8D7D

gl_RGB9_E5 :: GLenum
gl_RGB9_E5 = 0x8C3D

gl_RGBA :: GLenum
gl_RGBA = 0x1908

gl_RGBA12 :: GLenum
gl_RGBA12 = 0x805A

gl_RGBA16 :: GLenum
gl_RGBA16 = 0x805B

gl_RGBA16F :: GLenum
gl_RGBA16F = 0x881A

gl_RGBA16I :: GLenum
gl_RGBA16I = 0x8D88

gl_RGBA16UI :: GLenum
gl_RGBA16UI = 0x8D76

gl_RGBA2 :: GLenum
gl_RGBA2 = 0x8055

gl_RGBA32F :: GLenum
gl_RGBA32F = 0x8814

gl_RGBA32I :: GLenum
gl_RGBA32I = 0x8D82

gl_RGBA32UI :: GLenum
gl_RGBA32UI = 0x8D70

gl_RGBA4 :: GLenum
gl_RGBA4 = 0x8056

gl_RGBA8 :: GLenum
gl_RGBA8 = 0x8058

gl_RGBA8I :: GLenum
gl_RGBA8I = 0x8D8E

gl_RGBA_INTEGER :: GLenum
gl_RGBA_INTEGER = 0x8D99

gl_RGB_INTEGER :: GLenum
gl_RGB_INTEGER = 0x8D98

gl_RIGHT :: GLenum
gl_RIGHT = 0x0407

gl_SAMPLER_1D :: GLenum
gl_SAMPLER_1D = 0x8B5D

gl_SAMPLER_1D_ARRAY :: GLenum
gl_SAMPLER_1D_ARRAY = 0x8DC0

gl_SAMPLER_1D_ARRAY_SHADOW :: GLenum
gl_SAMPLER_1D_ARRAY_SHADOW = 0x8DC3

gl_SAMPLER_1D_SHADOW :: GLenum
gl_SAMPLER_1D_SHADOW = 0x8B61

gl_SAMPLER_2D :: GLenum
gl_SAMPLER_2D = 0x8B5E

gl_SAMPLER_2D_ARRAY :: GLenum
gl_SAMPLER_2D_ARRAY = 0x8DC1

gl_SAMPLER_2D_ARRAY_SHADOW :: GLenum
gl_SAMPLER_2D_ARRAY_SHADOW = 0x8DC4

gl_SAMPLER_2D_RECT :: GLenum
gl_SAMPLER_2D_RECT = 0x8B63

gl_SAMPLER_2D_RECT_SHADOW :: GLenum
gl_SAMPLER_2D_RECT_SHADOW = 0x8B64

gl_SAMPLER_2D_SHADOW :: GLenum
gl_SAMPLER_2D_SHADOW = 0x8B62

gl_SAMPLER_3D :: GLenum
gl_SAMPLER_3D = 0x8B5F

gl_SAMPLER_BUFFER :: GLenum
gl_SAMPLER_BUFFER = 0x8DC2

gl_SAMPLER_CUBE :: GLenum
gl_SAMPLER_CUBE = 0x8B60

gl_SAMPLER_CUBE_SHADOW :: GLenum
gl_SAMPLER_CUBE_SHADOW = 0x8DC5

gl_SAMPLES_PASSED :: GLenum
gl_SAMPLES_PASSED = 0x8914

gl_SAMPLE_ALPHA_TO_COVERAGE :: GLenum
gl_SAMPLE_ALPHA_TO_COVERAGE = 0x809E

gl_SAMPLE_ALPHA_TO_ONE :: GLenum
gl_SAMPLE_ALPHA_TO_ONE = 0x809F

gl_SAMPLE_BUFFERS :: GLenum
gl_SAMPLE_BUFFERS = 0x80A8

gl_SAMPLE_COVERAGE :: GLenum
gl_SAMPLE_COVERAGE = 0x80A0

gl_SAMPLE_COVERAGE_INVERT :: GLenum
gl_SAMPLE_COVERAGE_INVERT = 0x80AB

gl_SAMPLE_COVERAGE_VALUE :: GLenum
gl_SAMPLE_COVERAGE_VALUE = 0x80AA

gl_SEPARATE_ATTRIBS :: GLenum
gl_SEPARATE_ATTRIBS = 0x8C8D

gl_SET :: GLenum
gl_SET = 0x150F

gl_SHADER_SOURCE_LENGTH :: GLenum
gl_SHADER_SOURCE_LENGTH = 0x8B88

gl_SHADER_TYPE :: GLenum
gl_SHADER_TYPE = 0x8B4F

gl_SHADING_LANGUAGE_VERSION :: GLenum
gl_SHADING_LANGUAGE_VERSION = 0x8B8C

gl_SHORT :: GLenum
gl_SHORT = 0x1402

gl_SMOOTH_LINE_WIDTH_GRANULARITY :: GLenum
gl_SMOOTH_LINE_WIDTH_GRANULARITY = 0x0B23

gl_SMOOTH_LINE_WIDTH_RANGE :: GLenum
gl_SMOOTH_LINE_WIDTH_RANGE = 0x0B22

gl_SMOOTH_POINT_SIZE_GRANULARITY :: GLenum
gl_SMOOTH_POINT_SIZE_GRANULARITY = 0x0B13

gl_SMOOTH_POINT_SIZE_RANGE :: GLenum
gl_SMOOTH_POINT_SIZE_RANGE = 0x0B12

gl_SRGB :: GLenum
gl_SRGB = 0x8C40

gl_SRGB8 :: GLenum
gl_SRGB8 = 0x8C41

gl_SRGB8_ALPHA8 :: GLenum
gl_SRGB8_ALPHA8 = 0x8C43

gl_SRGB_ALPHA :: GLenum
gl_SRGB_ALPHA = 0x8C42

gl_STATIC_COPY :: GLenum
gl_STATIC_COPY = 0x88E6

gl_STATIC_DRAW :: GLenum
gl_STATIC_DRAW = 0x88E4

gl_STATIC_READ :: GLenum
gl_STATIC_READ = 0x88E5

gl_STENCIL :: GLenum
gl_STENCIL = 0x1802

gl_STENCIL_BACK_FAIL :: GLenum
gl_STENCIL_BACK_FAIL = 0x8801

gl_STENCIL_BACK_FUNC :: GLenum
gl_STENCIL_BACK_FUNC = 0x8800

gl_STENCIL_BACK_PASS_DEPTH_FAIL :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802

gl_STENCIL_BACK_PASS_DEPTH_PASS :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_PASS = 0x8803

gl_STENCIL_BACK_REF :: GLenum
gl_STENCIL_BACK_REF = 0x8CA3

gl_STENCIL_BACK_VALUE_MASK :: GLenum
gl_STENCIL_BACK_VALUE_MASK = 0x8CA4

gl_STENCIL_BACK_WRITEMASK :: GLenum
gl_STENCIL_BACK_WRITEMASK = 0x8CA5

gl_STENCIL_BUFFER_BIT :: GLenum
gl_STENCIL_BUFFER_BIT = 0x00000400

gl_STENCIL_CLEAR_VALUE :: GLenum
gl_STENCIL_CLEAR_VALUE = 0x0B91

gl_STENCIL_FAIL :: GLenum
gl_STENCIL_FAIL = 0x0B94

gl_STENCIL_FUNC :: GLenum
gl_STENCIL_FUNC = 0x0B92

gl_STENCIL_PASS_DEPTH_FAIL :: GLenum
gl_STENCIL_PASS_DEPTH_FAIL = 0x0B95

gl_STENCIL_PASS_DEPTH_PASS :: GLenum
gl_STENCIL_PASS_DEPTH_PASS = 0x0B96

gl_STENCIL_REF :: GLenum
gl_STENCIL_REF = 0x0B97

gl_STENCIL_TEST :: GLenum
gl_STENCIL_TEST = 0x0B90

gl_STENCIL_VALUE_MASK :: GLenum
gl_STENCIL_VALUE_MASK = 0x0B93

gl_STENCIL_WRITEMASK :: GLenum
gl_STENCIL_WRITEMASK = 0x0B98

gl_STEREO :: GLenum
gl_STEREO = 0x0C33

gl_STREAM_COPY :: GLenum
gl_STREAM_COPY = 0x88E2

gl_STREAM_DRAW :: GLenum
gl_STREAM_DRAW = 0x88E0

gl_STREAM_READ :: GLenum
gl_STREAM_READ = 0x88E1

gl_SUBPIXEL_BITS :: GLenum
gl_SUBPIXEL_BITS = 0x0D50

gl_TEXTURE :: GLenum
gl_TEXTURE = 0x1702

gl_TEXTURE0 :: GLenum
gl_TEXTURE0 = 0x84C0

gl_TEXTURE1 :: GLenum
gl_TEXTURE1 = 0x84C1

gl_TEXTURE10 :: GLenum
gl_TEXTURE10 = 0x84CA

gl_TEXTURE11 :: GLenum
gl_TEXTURE11 = 0x84CB

gl_TEXTURE12 :: GLenum
gl_TEXTURE12 = 0x84CC

gl_TEXTURE13 :: GLenum
gl_TEXTURE13 = 0x84CD

gl_TEXTURE14 :: GLenum
gl_TEXTURE14 = 0x84CE

gl_TEXTURE15 :: GLenum
gl_TEXTURE15 = 0x84CF

gl_TEXTURE16 :: GLenum
gl_TEXTURE16 = 0x84D0

gl_TEXTURE17 :: GLenum
gl_TEXTURE17 = 0x84D1

gl_TEXTURE18 :: GLenum
gl_TEXTURE18 = 0x84D2

gl_TEXTURE19 :: GLenum
gl_TEXTURE19 = 0x84D3

gl_TEXTURE2 :: GLenum
gl_TEXTURE2 = 0x84C2

gl_TEXTURE20 :: GLenum
gl_TEXTURE20 = 0x84D4

gl_TEXTURE21 :: GLenum
gl_TEXTURE21 = 0x84D5

gl_TEXTURE22 :: GLenum
gl_TEXTURE22 = 0x84D6

gl_TEXTURE23 :: GLenum
gl_TEXTURE23 = 0x84D7

gl_TEXTURE24 :: GLenum
gl_TEXTURE24 = 0x84D8

gl_TEXTURE25 :: GLenum
gl_TEXTURE25 = 0x84D9

gl_TEXTURE26 :: GLenum
gl_TEXTURE26 = 0x84DA

gl_TEXTURE27 :: GLenum
gl_TEXTURE27 = 0x84DB

gl_TEXTURE28 :: GLenum
gl_TEXTURE28 = 0x84DC

gl_TEXTURE29 :: GLenum
gl_TEXTURE29 = 0x84DD

gl_TEXTURE3 :: GLenum
gl_TEXTURE3 = 0x84C3

gl_TEXTURE30 :: GLenum
gl_TEXTURE30 = 0x84DE

gl_TEXTURE31 :: GLenum
gl_TEXTURE31 = 0x84DF

gl_TEXTURE4 :: GLenum
gl_TEXTURE4 = 0x84C4

gl_TEXTURE5 :: GLenum
gl_TEXTURE5 = 0x84C5

gl_TEXTURE6 :: GLenum
gl_TEXTURE6 = 0x84C6

gl_TEXTURE7 :: GLenum
gl_TEXTURE7 = 0x84C7

gl_TEXTURE8 :: GLenum
gl_TEXTURE8 = 0x84C8

gl_TEXTURE9 :: GLenum
gl_TEXTURE9 = 0x84C9

gl_TEXTURE_ALPHA_SIZE :: GLenum
gl_TEXTURE_ALPHA_SIZE = 0x805F

gl_TEXTURE_ALPHA_TYPE :: GLenum
gl_TEXTURE_ALPHA_TYPE = 0x8C13

gl_TEXTURE_BASE_LEVEL :: GLenum
gl_TEXTURE_BASE_LEVEL = 0x813C

gl_TEXTURE_BLUE_SIZE :: GLenum
gl_TEXTURE_BLUE_SIZE = 0x805E

gl_TEXTURE_BLUE_TYPE :: GLenum
gl_TEXTURE_BLUE_TYPE = 0x8C12

gl_TEXTURE_BORDER_COLOR :: GLenum
gl_TEXTURE_BORDER_COLOR = 0x1004

gl_TEXTURE_BUFFER_DATA_STORE_BINDING :: GLenum
gl_TEXTURE_BUFFER_DATA_STORE_BINDING = 0x8C2D

gl_TEXTURE_COMPARE_FUNC :: GLenum
gl_TEXTURE_COMPARE_FUNC = 0x884D

gl_TEXTURE_COMPARE_MODE :: GLenum
gl_TEXTURE_COMPARE_MODE = 0x884C

gl_TEXTURE_COMPRESSED_IMAGE_SIZE :: GLenum
gl_TEXTURE_COMPRESSED_IMAGE_SIZE = 0x86A0

gl_TEXTURE_COMPRESSION_HINT :: GLenum
gl_TEXTURE_COMPRESSION_HINT = 0x84EF

gl_TEXTURE_CUBE_MAP_NEGATIVE_X :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516

gl_TEXTURE_CUBE_MAP_NEGATIVE_Y :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518

gl_TEXTURE_CUBE_MAP_NEGATIVE_Z :: GLenum
gl_TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A

gl_TEXTURE_CUBE_MAP_POSITIVE_X :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515

gl_TEXTURE_CUBE_MAP_POSITIVE_Y :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517

gl_TEXTURE_CUBE_MAP_POSITIVE_Z :: GLenum
gl_TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519

gl_TEXTURE_DEPTH :: GLenum
gl_TEXTURE_DEPTH = 0x8071

gl_TEXTURE_DEPTH_SIZE :: GLenum
gl_TEXTURE_DEPTH_SIZE = 0x884A

gl_TEXTURE_DEPTH_TYPE :: GLenum
gl_TEXTURE_DEPTH_TYPE = 0x8C16

gl_TEXTURE_GREEN_SIZE :: GLenum
gl_TEXTURE_GREEN_SIZE = 0x805D

gl_TEXTURE_GREEN_TYPE :: GLenum
gl_TEXTURE_GREEN_TYPE = 0x8C11

gl_TEXTURE_HEIGHT :: GLenum
gl_TEXTURE_HEIGHT = 0x1001

gl_TEXTURE_INTERNAL_FORMAT :: GLenum
gl_TEXTURE_INTERNAL_FORMAT = 0x1003

gl_TEXTURE_LOD_BIAS :: GLenum
gl_TEXTURE_LOD_BIAS = 0x8501

gl_TEXTURE_MAG_FILTER :: GLenum
gl_TEXTURE_MAG_FILTER = 0x2800

gl_TEXTURE_MAX_LEVEL :: GLenum
gl_TEXTURE_MAX_LEVEL = 0x813D

gl_TEXTURE_MAX_LOD :: GLenum
gl_TEXTURE_MAX_LOD = 0x813B

gl_TEXTURE_MIN_FILTER :: GLenum
gl_TEXTURE_MIN_FILTER = 0x2801

gl_TEXTURE_MIN_LOD :: GLenum
gl_TEXTURE_MIN_LOD = 0x813A

gl_TEXTURE_RED_SIZE :: GLenum
gl_TEXTURE_RED_SIZE = 0x805C

gl_TEXTURE_RED_TYPE :: GLenum
gl_TEXTURE_RED_TYPE = 0x8C10

gl_TEXTURE_SHARED_SIZE :: GLenum
gl_TEXTURE_SHARED_SIZE = 0x8C3F

gl_TEXTURE_WIDTH :: GLenum
gl_TEXTURE_WIDTH = 0x1000

gl_TEXTURE_WRAP_R :: GLenum
gl_TEXTURE_WRAP_R = 0x8072

gl_TEXTURE_WRAP_S :: GLenum
gl_TEXTURE_WRAP_S = 0x2802

gl_TEXTURE_WRAP_T :: GLenum
gl_TEXTURE_WRAP_T = 0x2803

gl_TRANSFORM_FEEDBACK_BUFFER_BINDING :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F

gl_TRANSFORM_FEEDBACK_BUFFER_MODE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F

gl_TRANSFORM_FEEDBACK_BUFFER_SIZE :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85

gl_TRANSFORM_FEEDBACK_BUFFER_START :: GLenum
gl_TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84

gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN :: GLenum
gl_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88

gl_TRANSFORM_FEEDBACK_VARYINGS :: GLenum
gl_TRANSFORM_FEEDBACK_VARYINGS = 0x8C83

gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH :: GLenum
gl_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH = 0x8C76

gl_TRIANGLE_FAN :: GLenum
gl_TRIANGLE_FAN = 0x0006

gl_TRIANGLE_STRIP :: GLenum
gl_TRIANGLE_STRIP = 0x0005

gl_TRUE :: GLenum
gl_TRUE = 1

gl_UNPACK_ALIGNMENT :: GLenum
gl_UNPACK_ALIGNMENT = 0x0CF5

gl_UNPACK_IMAGE_HEIGHT :: GLenum
gl_UNPACK_IMAGE_HEIGHT = 0x806E

gl_UNPACK_LSB_FIRST :: GLenum
gl_UNPACK_LSB_FIRST = 0x0CF1

gl_UNPACK_ROW_LENGTH :: GLenum
gl_UNPACK_ROW_LENGTH = 0x0CF2

gl_UNPACK_SKIP_IMAGES :: GLenum
gl_UNPACK_SKIP_IMAGES = 0x806D

gl_UNPACK_SKIP_PIXELS :: GLenum
gl_UNPACK_SKIP_PIXELS = 0x0CF4

gl_UNPACK_SKIP_ROWS :: GLenum
gl_UNPACK_SKIP_ROWS = 0x0CF3

gl_UNPACK_SWAP_BYTES :: GLenum
gl_UNPACK_SWAP_BYTES = 0x0CF0

gl_UNSIGNED_BYTE :: GLenum
gl_UNSIGNED_BYTE = 0x1401

gl_UNSIGNED_BYTE_2_3_3_REV :: GLenum
gl_UNSIGNED_BYTE_2_3_3_REV = 0x8362

gl_UNSIGNED_BYTE_3_3_2 :: GLenum
gl_UNSIGNED_BYTE_3_3_2 = 0x8032

gl_UNSIGNED_INT_10_10_10_2 :: GLenum
gl_UNSIGNED_INT_10_10_10_2 = 0x8036

gl_UNSIGNED_INT_5_9_9_9_REV :: GLenum
gl_UNSIGNED_INT_5_9_9_9_REV = 0x8C3E

gl_UNSIGNED_INT_8_8_8_8 :: GLenum
gl_UNSIGNED_INT_8_8_8_8 = 0x8035

gl_UNSIGNED_INT_8_8_8_8_REV :: GLenum
gl_UNSIGNED_INT_8_8_8_8_REV = 0x8367

gl_UNSIGNED_INT_SAMPLER_1D :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D = 0x8DD1

gl_UNSIGNED_INT_SAMPLER_1D_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_1D_ARRAY = 0x8DD6

gl_UNSIGNED_INT_SAMPLER_2D :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D = 0x8DD2

gl_UNSIGNED_INT_SAMPLER_2D_ARRAY :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7

gl_UNSIGNED_INT_SAMPLER_2D_RECT :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_RECT = 0x8DD5

gl_UNSIGNED_INT_SAMPLER_3D :: GLenum
gl_UNSIGNED_INT_SAMPLER_3D = 0x8DD3

gl_UNSIGNED_INT_SAMPLER_BUFFER :: GLenum
gl_UNSIGNED_INT_SAMPLER_BUFFER = 0x8DD8

gl_UNSIGNED_INT_SAMPLER_CUBE :: GLenum
gl_UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4

gl_UNSIGNED_INT_VEC2 :: GLenum
gl_UNSIGNED_INT_VEC2 = 0x8DC6

gl_UNSIGNED_INT_VEC3 :: GLenum
gl_UNSIGNED_INT_VEC3 = 0x8DC7

gl_UNSIGNED_INT_VEC4 :: GLenum
gl_UNSIGNED_INT_VEC4 = 0x8DC8

gl_UNSIGNED_SHORT_1_5_5_5_REV :: GLenum
gl_UNSIGNED_SHORT_1_5_5_5_REV = 0x8366

gl_UNSIGNED_SHORT_4_4_4_4 :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4 = 0x8033

gl_UNSIGNED_SHORT_4_4_4_4_REV :: GLenum
gl_UNSIGNED_SHORT_4_4_4_4_REV = 0x8365

gl_UNSIGNED_SHORT_5_5_5_1 :: GLenum
gl_UNSIGNED_SHORT_5_5_5_1 = 0x8034

gl_UNSIGNED_SHORT_5_6_5 :: GLenum
gl_UNSIGNED_SHORT_5_6_5 = 0x8363

gl_UNSIGNED_SHORT_5_6_5_REV :: GLenum
gl_UNSIGNED_SHORT_5_6_5_REV = 0x8364

gl_VALIDATE_STATUS :: GLenum
gl_VALIDATE_STATUS = 0x8B83

gl_VENDOR :: GLenum
gl_VENDOR = 0x1F00

gl_VERSION :: GLenum
gl_VERSION = 0x1F02

gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING :: GLenum
gl_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F

gl_VERTEX_ATTRIB_ARRAY_ENABLED :: GLenum
gl_VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622

gl_VERTEX_ATTRIB_ARRAY_INTEGER :: GLenum
gl_VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD

gl_VERTEX_ATTRIB_ARRAY_NORMALIZED :: GLenum
gl_VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A

gl_VERTEX_ATTRIB_ARRAY_POINTER :: GLenum
gl_VERTEX_ATTRIB_ARRAY_POINTER = 0x8645

gl_VERTEX_ATTRIB_ARRAY_SIZE :: GLenum
gl_VERTEX_ATTRIB_ARRAY_SIZE = 0x8623

gl_VERTEX_ATTRIB_ARRAY_STRIDE :: GLenum
gl_VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624

gl_VERTEX_ATTRIB_ARRAY_TYPE :: GLenum
gl_VERTEX_ATTRIB_ARRAY_TYPE = 0x8625

gl_VERTEX_PROGRAM_POINT_SIZE :: GLenum
gl_VERTEX_PROGRAM_POINT_SIZE = 0x8642

gl_VERTEX_SHADER :: GLenum
gl_VERTEX_SHADER = 0x8B31

gl_XOR :: GLenum
gl_XOR = 0x1506

glVertexAttribDivisor :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexAttribDivisor v0 v1 = funGL 2962 >>= \f -> liftIO $ f v0 v1

gl_VERTEX_ATTRIB_ARRAY_DIVISOR :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE

gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5F

gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET :: GLenum
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET = 0x8E5E

gl_COPY_READ_BUFFER_BINDING :: GLenum
gl_COPY_READ_BUFFER_BINDING = 0x8F36

gl_COPY_WRITE_BUFFER_BINDING :: GLenum
gl_COPY_WRITE_BUFFER_BINDING = 0x8F37

gl_TRANSFORM_FEEDBACK_ACTIVE :: GLenum
gl_TRANSFORM_FEEDBACK_ACTIVE = 0x8E24

gl_TRANSFORM_FEEDBACK_PAUSED :: GLenum
gl_TRANSFORM_FEEDBACK_PAUSED = 0x8E23

gl_VERTEX_BINDING_BUFFER :: GLenum
gl_VERTEX_BINDING_BUFFER = 0x8F4F

gl_MAX_VERTEX_ATTRIB_STRIDE :: GLenum
gl_MAX_VERTEX_ATTRIB_STRIDE = 0x82E5