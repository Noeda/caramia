-- This file was automatically generated.
module Graphics.OpenGL.Profile.Core45 (
	-- * Graphics.OpenGL.Profile.Core45
	  module Graphics.OpenGL.Profile.Core44
	, glBindTextureUnit
	, glBlitNamedFramebuffer
	, glCheckNamedFramebufferStatus
	, glClearNamedBufferData
	, glClearNamedBufferSubData
	, glClearNamedFramebufferfi
	, glClearNamedFramebufferfv
	, glClearNamedFramebufferiv
	, glClearNamedFramebufferuiv
	, glClipControl
	, glCompressedTextureSubImage1D
	, glCompressedTextureSubImage2D
	, glCompressedTextureSubImage3D
	, glCopyNamedBufferSubData
	, glCopyTextureSubImage1D
	, glCopyTextureSubImage2D
	, glCopyTextureSubImage3D
	, glCreateBuffers
	, glCreateFramebuffers
	, glCreateProgramPipelines
	, glCreateQueries
	, glCreateRenderbuffers
	, glCreateSamplers
	, glCreateTextures
	, glCreateTransformFeedbacks
	, glCreateVertexArrays
	, glDisableVertexArrayAttrib
	, glEnableVertexArrayAttrib
	, glFlushMappedNamedBufferRange
	, glGenerateTextureMipmap
	, glGetCompressedTextureImage
	, glGetCompressedTextureSubImage
	, glGetGraphicsResetStatus
	, glGetNamedBufferParameteri64v
	, glGetNamedBufferParameteriv
	, glGetNamedBufferPointerv
	, glGetNamedBufferSubData
	, glGetNamedFramebufferAttachmentParameteriv
	, glGetNamedFramebufferParameteriv
	, glGetNamedRenderbufferParameteriv
	, glGetQueryBufferObjecti64v
	, glGetQueryBufferObjectiv
	, glGetQueryBufferObjectui64v
	, glGetQueryBufferObjectuiv
	, glGetTextureImage
	, glGetTextureLevelParameterfv
	, glGetTextureLevelParameteriv
	, glGetTextureParameterIiv
	, glGetTextureParameterIuiv
	, glGetTextureParameterfv
	, glGetTextureParameteriv
	, glGetTextureSubImage
	, glGetTransformFeedbacki64_v
	, glGetTransformFeedbacki_v
	, glGetTransformFeedbackiv
	, glGetVertexArrayIndexed64iv
	, glGetVertexArrayIndexediv
	, glGetVertexArrayiv
	, glGetnCompressedTexImage
	, glGetnTexImage
	, glGetnUniformdv
	, glGetnUniformfv
	, glGetnUniformiv
	, glGetnUniformuiv
	, glInvalidateNamedFramebufferData
	, glInvalidateNamedFramebufferSubData
	, glMapNamedBuffer
	, glMapNamedBufferRange
	, glMemoryBarrierByRegion
	, glNamedBufferData
	, glNamedBufferStorage
	, glNamedBufferSubData
	, glNamedFramebufferDrawBuffer
	, glNamedFramebufferDrawBuffers
	, glNamedFramebufferParameteri
	, glNamedFramebufferReadBuffer
	, glNamedFramebufferRenderbuffer
	, glNamedFramebufferTexture
	, glNamedFramebufferTextureLayer
	, glNamedRenderbufferStorage
	, glNamedRenderbufferStorageMultisample
	, glReadnPixels
	, glTextureBarrier
	, glTextureBuffer
	, glTextureBufferRange
	, glTextureParameterIiv
	, glTextureParameterIuiv
	, glTextureParameterf
	, glTextureParameterfv
	, glTextureParameteri
	, glTextureParameteriv
	, glTextureStorage1D
	, glTextureStorage2D
	, glTextureStorage2DMultisample
	, glTextureStorage3D
	, glTextureStorage3DMultisample
	, glTextureSubImage1D
	, glTextureSubImage2D
	, glTextureSubImage3D
	, glTransformFeedbackBufferBase
	, glTransformFeedbackBufferRange
	, glUnmapNamedBuffer
	, glVertexArrayAttribBinding
	, glVertexArrayAttribFormat
	, glVertexArrayAttribIFormat
	, glVertexArrayAttribLFormat
	, glVertexArrayBindingDivisor
	, glVertexArrayElementBuffer
	, glVertexArrayVertexBuffer
	, glVertexArrayVertexBuffers
	, gl_CLIP_DEPTH_MODE
	, gl_CLIP_ORIGIN
	, gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT
	, gl_CONTEXT_LOST
	, gl_CONTEXT_RELEASE_BEHAVIOR
	, gl_CONTEXT_RELEASE_BEHAVIOR_FLUSH
	, gl_GUILTY_CONTEXT_RESET
	, gl_INNOCENT_CONTEXT_RESET
	, gl_LOSE_CONTEXT_ON_RESET
	, gl_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
	, gl_MAX_CULL_DISTANCES
	, gl_NEGATIVE_ONE_TO_ONE
	, gl_NO_RESET_NOTIFICATION
	, gl_QUERY_BY_REGION_NO_WAIT_INVERTED
	, gl_QUERY_BY_REGION_WAIT_INVERTED
	, gl_QUERY_NO_WAIT_INVERTED
	, gl_QUERY_TARGET
	, gl_QUERY_WAIT_INVERTED
	, gl_RESET_NOTIFICATION_STRATEGY
	, gl_TEXTURE_BINDING
	, gl_TEXTURE_TARGET
	, gl_UNKNOWN_CONTEXT_RESET
	, gl_ZERO_TO_ONE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

import Graphics.OpenGL.Profile.Core44

glGetnCompressedTexImage :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> Ptr () -> m ()
glGetnCompressedTexImage v0 v1 v2 v3 = funGL 2968 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnTexImage :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnTexImage v0 v1 v2 v3 v4 v5 = funGL 2969 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetnUniformdv :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glGetnUniformdv v0 v1 v2 v3 = funGL 2970 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT :: GLenum
gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT = 0x00000004