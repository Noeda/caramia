-- | Automatically generated raw OpenGL bindings using flextGL
--
-- <https://github.com/Noeda/flextGL>
--

{-# LANGUAGE FlexibleContexts #-}



module Graphics.Caramia.Internal.FlextGLReader
    (
      FlextGL()
    , glCullFace
    , glFrontFace
    , glHint
    , glLineWidth
    , glPointSize
    , glPolygonMode
    , glScissor
    , glTexParameterf
    , glTexParameterfv
    , glTexParameteri
    , glTexParameteriv
    , glTexImage1D
    , glTexImage2D
    , glDrawBuffer
    , glClear
    , glClearColor
    , glClearStencil
    , glClearDepth
    , glStencilMask
    , glColorMask
    , glDepthMask
    , glDisable
    , glEnable
    , glFinish
    , glFlush
    , glBlendFunc
    , glLogicOp
    , glStencilFunc
    , glStencilOp
    , glDepthFunc
    , glPixelStoref
    , glPixelStorei
    , glReadBuffer
    , glReadPixels
    , glGetBooleanv
    , glGetDoublev
    , glGetError
    , glGetFloatv
    , glGetIntegerv
    , glGetString
    , glGetTexImage
    , glGetTexParameterfv
    , glGetTexParameteriv
    , glGetTexLevelParameterfv
    , glGetTexLevelParameteriv
    , glIsEnabled
    , glDepthRange
    , glViewport
    , glDrawArrays
    , glDrawElements
    , glPolygonOffset
    , glCopyTexImage1D
    , glCopyTexImage2D
    , glCopyTexSubImage1D
    , glCopyTexSubImage2D
    , glTexSubImage1D
    , glTexSubImage2D
    , glBindTexture
    , glDeleteTextures
    , glGenTextures
    , glIsTexture
    , glDrawRangeElements
    , glTexImage3D
    , glTexSubImage3D
    , glCopyTexSubImage3D
    , glActiveTexture
    , glSampleCoverage
    , glCompressedTexImage3D
    , glCompressedTexImage2D
    , glCompressedTexImage1D
    , glCompressedTexSubImage3D
    , glCompressedTexSubImage2D
    , glCompressedTexSubImage1D
    , glGetCompressedTexImage
    , glBlendFuncSeparate
    , glMultiDrawArrays
    , glMultiDrawElements
    , glPointParameterf
    , glPointParameterfv
    , glPointParameteri
    , glPointParameteriv
    , glBlendColor
    , glBlendEquation
    , glGenQueries
    , glDeleteQueries
    , glIsQuery
    , glBeginQuery
    , glEndQuery
    , glGetQueryiv
    , glGetQueryObjectiv
    , glGetQueryObjectuiv
    , glBindBuffer
    , glDeleteBuffers
    , glGenBuffers
    , glIsBuffer
    , glBufferData
    , glBufferSubData
    , glGetBufferSubData
    , glMapBuffer
    , glUnmapBuffer
    , glGetBufferParameteriv
    , glGetBufferPointerv
    , glBlendEquationSeparate
    , glDrawBuffers
    , glStencilOpSeparate
    , glStencilFuncSeparate
    , glStencilMaskSeparate
    , glAttachShader
    , glBindAttribLocation
    , glCompileShader
    , glCreateProgram
    , glCreateShader
    , glDeleteProgram
    , glDeleteShader
    , glDetachShader
    , glDisableVertexAttribArray
    , glEnableVertexAttribArray
    , glGetActiveAttrib
    , glGetActiveUniform
    , glGetAttachedShaders
    , glGetAttribLocation
    , glGetProgramiv
    , glGetProgramInfoLog
    , glGetShaderiv
    , glGetShaderInfoLog
    , glGetShaderSource
    , glGetUniformLocation
    , glGetUniformfv
    , glGetUniformiv
    , glGetVertexAttribdv
    , glGetVertexAttribfv
    , glGetVertexAttribiv
    , glGetVertexAttribPointerv
    , glIsProgram
    , glIsShader
    , glLinkProgram
    , glShaderSource
    , glUseProgram
    , glUniform1f
    , glUniform2f
    , glUniform3f
    , glUniform4f
    , glUniform1i
    , glUniform2i
    , glUniform3i
    , glUniform4i
    , glUniform1fv
    , glUniform2fv
    , glUniform3fv
    , glUniform4fv
    , glUniform1iv
    , glUniform2iv
    , glUniform3iv
    , glUniform4iv
    , glUniformMatrix2fv
    , glUniformMatrix3fv
    , glUniformMatrix4fv
    , glValidateProgram
    , glVertexAttrib1d
    , glVertexAttrib1dv
    , glVertexAttrib1f
    , glVertexAttrib1fv
    , glVertexAttrib1s
    , glVertexAttrib1sv
    , glVertexAttrib2d
    , glVertexAttrib2dv
    , glVertexAttrib2f
    , glVertexAttrib2fv
    , glVertexAttrib2s
    , glVertexAttrib2sv
    , glVertexAttrib3d
    , glVertexAttrib3dv
    , glVertexAttrib3f
    , glVertexAttrib3fv
    , glVertexAttrib3s
    , glVertexAttrib3sv
    , glVertexAttrib4Nbv
    , glVertexAttrib4Niv
    , glVertexAttrib4Nsv
    , glVertexAttrib4Nub
    , glVertexAttrib4Nubv
    , glVertexAttrib4Nuiv
    , glVertexAttrib4Nusv
    , glVertexAttrib4bv
    , glVertexAttrib4d
    , glVertexAttrib4dv
    , glVertexAttrib4f
    , glVertexAttrib4fv
    , glVertexAttrib4iv
    , glVertexAttrib4s
    , glVertexAttrib4sv
    , glVertexAttrib4ubv
    , glVertexAttrib4uiv
    , glVertexAttrib4usv
    , glVertexAttribPointer
    , glUniformMatrix2x3fv
    , glUniformMatrix3x2fv
    , glUniformMatrix2x4fv
    , glUniformMatrix4x2fv
    , glUniformMatrix3x4fv
    , glUniformMatrix4x3fv
    , glColorMaski
    , glGetBooleani_v
    , glGetIntegeri_v
    , glEnablei
    , glDisablei
    , glIsEnabledi
    , glBeginTransformFeedback
    , glEndTransformFeedback
    , glBindBufferRange
    , glBindBufferBase
    , glTransformFeedbackVaryings
    , glGetTransformFeedbackVarying
    , glClampColor
    , glBeginConditionalRender
    , glEndConditionalRender
    , glVertexAttribIPointer
    , glGetVertexAttribIiv
    , glGetVertexAttribIuiv
    , glVertexAttribI1i
    , glVertexAttribI2i
    , glVertexAttribI3i
    , glVertexAttribI4i
    , glVertexAttribI1ui
    , glVertexAttribI2ui
    , glVertexAttribI3ui
    , glVertexAttribI4ui
    , glVertexAttribI1iv
    , glVertexAttribI2iv
    , glVertexAttribI3iv
    , glVertexAttribI4iv
    , glVertexAttribI1uiv
    , glVertexAttribI2uiv
    , glVertexAttribI3uiv
    , glVertexAttribI4uiv
    , glVertexAttribI4bv
    , glVertexAttribI4sv
    , glVertexAttribI4ubv
    , glVertexAttribI4usv
    , glGetUniformuiv
    , glBindFragDataLocation
    , glGetFragDataLocation
    , glUniform1ui
    , glUniform2ui
    , glUniform3ui
    , glUniform4ui
    , glUniform1uiv
    , glUniform2uiv
    , glUniform3uiv
    , glUniform4uiv
    , glTexParameterIiv
    , glTexParameterIuiv
    , glGetTexParameterIiv
    , glGetTexParameterIuiv
    , glClearBufferiv
    , glClearBufferuiv
    , glClearBufferfv
    , glClearBufferfi
    , glGetStringi
    , glIsRenderbuffer
    , glBindRenderbuffer
    , glDeleteRenderbuffers
    , glGenRenderbuffers
    , glRenderbufferStorage
    , glGetRenderbufferParameteriv
    , glIsFramebuffer
    , glBindFramebuffer
    , glDeleteFramebuffers
    , glGenFramebuffers
    , glCheckFramebufferStatus
    , glFramebufferTexture1D
    , glFramebufferTexture2D
    , glFramebufferTexture3D
    , glFramebufferRenderbuffer
    , glGetFramebufferAttachmentParameteriv
    , glGenerateMipmap
    , glBlitFramebuffer
    , glRenderbufferStorageMultisample
    , glFramebufferTextureLayer
    , glMapBufferRange
    , glFlushMappedBufferRange
    , glBindVertexArray
    , glDeleteVertexArrays
    , glGenVertexArrays
    , glIsVertexArray
    , glDrawArraysInstanced
    , glDrawElementsInstanced
    , glTexBuffer
    , glPrimitiveRestartIndex
    , glCopyBufferSubData
    , glGetUniformIndices
    , glGetActiveUniformsiv
    , glGetActiveUniformName
    , glGetUniformBlockIndex
    , glGetActiveUniformBlockiv
    , glGetActiveUniformBlockName
    , glUniformBlockBinding
    , glDrawElementsBaseVertex
    , glDrawRangeElementsBaseVertex
    , glDrawElementsInstancedBaseVertex
    , glMultiDrawElementsBaseVertex
    , glProvokingVertex
    , glFenceSync
    , glIsSync
    , glDeleteSync
    , glClientWaitSync
    , glWaitSync
    , glGetInteger64v
    , glGetSynciv
    , glGetInteger64i_v
    , glGetBufferParameteri64v
    , glFramebufferTexture
    , glTexImage2DMultisample
    , glTexImage3DMultisample
    , glGetMultisamplefv
    , glSampleMaski
    , glBindFragDataLocationIndexed
    , glGetFragDataIndex
    , glGenSamplers
    , glDeleteSamplers
    , glIsSampler
    , glBindSampler
    , glSamplerParameteri
    , glSamplerParameteriv
    , glSamplerParameterf
    , glSamplerParameterfv
    , glSamplerParameterIiv
    , glSamplerParameterIuiv
    , glGetSamplerParameteriv
    , glGetSamplerParameterIiv
    , glGetSamplerParameterfv
    , glGetSamplerParameterIuiv
    , glQueryCounter
    , glGetQueryObjecti64v
    , glGetQueryObjectui64v
    , glVertexAttribDivisor
    , glVertexAttribP1ui
    , glVertexAttribP1uiv
    , glVertexAttribP2ui
    , glVertexAttribP2uiv
    , glVertexAttribP3ui
    , glVertexAttribP3uiv
    , glVertexAttribP4ui
    , glVertexAttribP4uiv
    , glTexStorage1D
    , glTexStorage2D
    , glTexStorage3D
    , glDebugMessageControl
    , glDebugMessageInsert
    , glDebugMessageCallback
    , glGetDebugMessageLog
    , glPushDebugGroup
    , glPopDebugGroup
    , glObjectLabel
    , glGetObjectLabel
    , glObjectPtrLabel
    , glGetObjectPtrLabel
    , glGetPointerv
    , glDebugMessageControlKHR
    , glDebugMessageInsertKHR
    , glDebugMessageCallbackKHR
    , glGetDebugMessageLogKHR
    , glPushDebugGroupKHR
    , glPopDebugGroupKHR
    , glObjectLabelKHR
    , glGetObjectLabelKHR
    , glObjectPtrLabelKHR
    , glGetObjectPtrLabelKHR
    , glGetPointervKHR
    , glMatrixLoadfEXT
    , glMatrixLoaddEXT
    , glMatrixMultfEXT
    , glMatrixMultdEXT
    , glMatrixLoadIdentityEXT
    , glMatrixRotatefEXT
    , glMatrixRotatedEXT
    , glMatrixScalefEXT
    , glMatrixScaledEXT
    , glMatrixTranslatefEXT
    , glMatrixTranslatedEXT
    , glMatrixFrustumEXT
    , glMatrixOrthoEXT
    , glMatrixPopEXT
    , glMatrixPushEXT
    , glClientAttribDefaultEXT
    , glPushClientAttribDefaultEXT
    , glTextureParameterfEXT
    , glTextureParameterfvEXT
    , glTextureParameteriEXT
    , glTextureParameterivEXT
    , glTextureImage1DEXT
    , glTextureImage2DEXT
    , glTextureSubImage1DEXT
    , glTextureSubImage2DEXT
    , glCopyTextureImage1DEXT
    , glCopyTextureImage2DEXT
    , glCopyTextureSubImage1DEXT
    , glCopyTextureSubImage2DEXT
    , glGetTextureImageEXT
    , glGetTextureParameterfvEXT
    , glGetTextureParameterivEXT
    , glGetTextureLevelParameterfvEXT
    , glGetTextureLevelParameterivEXT
    , glTextureImage3DEXT
    , glTextureSubImage3DEXT
    , glCopyTextureSubImage3DEXT
    , glBindMultiTextureEXT
    , glMultiTexCoordPointerEXT
    , glMultiTexEnvfEXT
    , glMultiTexEnvfvEXT
    , glMultiTexEnviEXT
    , glMultiTexEnvivEXT
    , glMultiTexGendEXT
    , glMultiTexGendvEXT
    , glMultiTexGenfEXT
    , glMultiTexGenfvEXT
    , glMultiTexGeniEXT
    , glMultiTexGenivEXT
    , glGetMultiTexEnvfvEXT
    , glGetMultiTexEnvivEXT
    , glGetMultiTexGendvEXT
    , glGetMultiTexGenfvEXT
    , glGetMultiTexGenivEXT
    , glMultiTexParameteriEXT
    , glMultiTexParameterivEXT
    , glMultiTexParameterfEXT
    , glMultiTexParameterfvEXT
    , glMultiTexImage1DEXT
    , glMultiTexImage2DEXT
    , glMultiTexSubImage1DEXT
    , glMultiTexSubImage2DEXT
    , glCopyMultiTexImage1DEXT
    , glCopyMultiTexImage2DEXT
    , glCopyMultiTexSubImage1DEXT
    , glCopyMultiTexSubImage2DEXT
    , glGetMultiTexImageEXT
    , glGetMultiTexParameterfvEXT
    , glGetMultiTexParameterivEXT
    , glGetMultiTexLevelParameterfvEXT
    , glGetMultiTexLevelParameterivEXT
    , glMultiTexImage3DEXT
    , glMultiTexSubImage3DEXT
    , glCopyMultiTexSubImage3DEXT
    , glEnableClientStateIndexedEXT
    , glDisableClientStateIndexedEXT
    , glGetFloatIndexedvEXT
    , glGetDoubleIndexedvEXT
    , glGetPointerIndexedvEXT
    , glEnableIndexedEXT
    , glDisableIndexedEXT
    , glIsEnabledIndexedEXT
    , glGetIntegerIndexedvEXT
    , glGetBooleanIndexedvEXT
    , glCompressedTextureImage3DEXT
    , glCompressedTextureImage2DEXT
    , glCompressedTextureImage1DEXT
    , glCompressedTextureSubImage3DEXT
    , glCompressedTextureSubImage2DEXT
    , glCompressedTextureSubImage1DEXT
    , glGetCompressedTextureImageEXT
    , glCompressedMultiTexImage3DEXT
    , glCompressedMultiTexImage2DEXT
    , glCompressedMultiTexImage1DEXT
    , glCompressedMultiTexSubImage3DEXT
    , glCompressedMultiTexSubImage2DEXT
    , glCompressedMultiTexSubImage1DEXT
    , glGetCompressedMultiTexImageEXT
    , glMatrixLoadTransposefEXT
    , glMatrixLoadTransposedEXT
    , glMatrixMultTransposefEXT
    , glMatrixMultTransposedEXT
    , glNamedBufferDataEXT
    , glNamedBufferSubDataEXT
    , glMapNamedBufferEXT
    , glUnmapNamedBufferEXT
    , glGetNamedBufferParameterivEXT
    , glGetNamedBufferPointervEXT
    , glGetNamedBufferSubDataEXT
    , glProgramUniform1fEXT
    , glProgramUniform2fEXT
    , glProgramUniform3fEXT
    , glProgramUniform4fEXT
    , glProgramUniform1iEXT
    , glProgramUniform2iEXT
    , glProgramUniform3iEXT
    , glProgramUniform4iEXT
    , glProgramUniform1fvEXT
    , glProgramUniform2fvEXT
    , glProgramUniform3fvEXT
    , glProgramUniform4fvEXT
    , glProgramUniform1ivEXT
    , glProgramUniform2ivEXT
    , glProgramUniform3ivEXT
    , glProgramUniform4ivEXT
    , glProgramUniformMatrix2fvEXT
    , glProgramUniformMatrix3fvEXT
    , glProgramUniformMatrix4fvEXT
    , glProgramUniformMatrix2x3fvEXT
    , glProgramUniformMatrix3x2fvEXT
    , glProgramUniformMatrix2x4fvEXT
    , glProgramUniformMatrix4x2fvEXT
    , glProgramUniformMatrix3x4fvEXT
    , glProgramUniformMatrix4x3fvEXT
    , glTextureBufferEXT
    , glMultiTexBufferEXT
    , glTextureParameterIivEXT
    , glTextureParameterIuivEXT
    , glGetTextureParameterIivEXT
    , glGetTextureParameterIuivEXT
    , glMultiTexParameterIivEXT
    , glMultiTexParameterIuivEXT
    , glGetMultiTexParameterIivEXT
    , glGetMultiTexParameterIuivEXT
    , glProgramUniform1uiEXT
    , glProgramUniform2uiEXT
    , glProgramUniform3uiEXT
    , glProgramUniform4uiEXT
    , glProgramUniform1uivEXT
    , glProgramUniform2uivEXT
    , glProgramUniform3uivEXT
    , glProgramUniform4uivEXT
    , glNamedProgramLocalParameters4fvEXT
    , glNamedProgramLocalParameterI4iEXT
    , glNamedProgramLocalParameterI4ivEXT
    , glNamedProgramLocalParametersI4ivEXT
    , glNamedProgramLocalParameterI4uiEXT
    , glNamedProgramLocalParameterI4uivEXT
    , glNamedProgramLocalParametersI4uivEXT
    , glGetNamedProgramLocalParameterIivEXT
    , glGetNamedProgramLocalParameterIuivEXT
    , glEnableClientStateiEXT
    , glDisableClientStateiEXT
    , glGetFloati_vEXT
    , glGetDoublei_vEXT
    , glGetPointeri_vEXT
    , glNamedProgramStringEXT
    , glNamedProgramLocalParameter4dEXT
    , glNamedProgramLocalParameter4dvEXT
    , glNamedProgramLocalParameter4fEXT
    , glNamedProgramLocalParameter4fvEXT
    , glGetNamedProgramLocalParameterdvEXT
    , glGetNamedProgramLocalParameterfvEXT
    , glGetNamedProgramivEXT
    , glGetNamedProgramStringEXT
    , glNamedRenderbufferStorageEXT
    , glGetNamedRenderbufferParameterivEXT
    , glNamedRenderbufferStorageMultisampleEXT
    , glNamedRenderbufferStorageMultisampleCoverageEXT
    , glCheckNamedFramebufferStatusEXT
    , glNamedFramebufferTexture1DEXT
    , glNamedFramebufferTexture2DEXT
    , glNamedFramebufferTexture3DEXT
    , glNamedFramebufferRenderbufferEXT
    , glGetNamedFramebufferAttachmentParameterivEXT
    , glGenerateTextureMipmapEXT
    , glGenerateMultiTexMipmapEXT
    , glFramebufferDrawBufferEXT
    , glFramebufferDrawBuffersEXT
    , glFramebufferReadBufferEXT
    , glGetFramebufferParameterivEXT
    , glNamedCopyBufferSubDataEXT
    , glNamedFramebufferTextureEXT
    , glNamedFramebufferTextureLayerEXT
    , glNamedFramebufferTextureFaceEXT
    , glTextureRenderbufferEXT
    , glMultiTexRenderbufferEXT
    , glVertexArrayVertexOffsetEXT
    , glVertexArrayColorOffsetEXT
    , glVertexArrayEdgeFlagOffsetEXT
    , glVertexArrayIndexOffsetEXT
    , glVertexArrayNormalOffsetEXT
    , glVertexArrayTexCoordOffsetEXT
    , glVertexArrayMultiTexCoordOffsetEXT
    , glVertexArrayFogCoordOffsetEXT
    , glVertexArraySecondaryColorOffsetEXT
    , glVertexArrayVertexAttribOffsetEXT
    , glVertexArrayVertexAttribIOffsetEXT
    , glEnableVertexArrayEXT
    , glDisableVertexArrayEXT
    , glEnableVertexArrayAttribEXT
    , glDisableVertexArrayAttribEXT
    , glGetVertexArrayIntegervEXT
    , glGetVertexArrayPointervEXT
    , glGetVertexArrayIntegeri_vEXT
    , glGetVertexArrayPointeri_vEXT
    , glMapNamedBufferRangeEXT
    , glFlushMappedNamedBufferRangeEXT
    , glNamedBufferStorageEXT
    , glClearNamedBufferDataEXT
    , glClearNamedBufferSubDataEXT
    , glNamedFramebufferParameteriEXT
    , glGetNamedFramebufferParameterivEXT
    , glProgramUniform1dEXT
    , glProgramUniform2dEXT
    , glProgramUniform3dEXT
    , glProgramUniform4dEXT
    , glProgramUniform1dvEXT
    , glProgramUniform2dvEXT
    , glProgramUniform3dvEXT
    , glProgramUniform4dvEXT
    , glProgramUniformMatrix2dvEXT
    , glProgramUniformMatrix3dvEXT
    , glProgramUniformMatrix4dvEXT
    , glProgramUniformMatrix2x3dvEXT
    , glProgramUniformMatrix2x4dvEXT
    , glProgramUniformMatrix3x2dvEXT
    , glProgramUniformMatrix3x4dvEXT
    , glProgramUniformMatrix4x2dvEXT
    , glProgramUniformMatrix4x3dvEXT
    , glTextureBufferRangeEXT
    , glTextureStorage1DEXT
    , glTextureStorage2DEXT
    , glTextureStorage3DEXT
    , glTextureStorage2DMultisampleEXT
    , glTextureStorage3DMultisampleEXT
    , glVertexArrayBindVertexBufferEXT
    , glVertexArrayVertexAttribFormatEXT
    , glVertexArrayVertexAttribIFormatEXT
    , glVertexArrayVertexAttribLFormatEXT
    , glVertexArrayVertexAttribBindingEXT
    , glVertexArrayVertexBindingDivisorEXT
    , glVertexArrayVertexAttribLOffsetEXT
    , glTexturePageCommitmentEXT
    , glVertexArrayVertexAttribDivisorEXT
    , glBufferStorage
    , glUseProgramStages
    , glActiveShaderProgram
    , glCreateShaderProgramv
    , glBindProgramPipeline
    , glDeleteProgramPipelines
    , glGenProgramPipelines
    , glIsProgramPipeline
    , glGetProgramPipelineiv
    , glProgramUniform1i
    , glProgramUniform1iv
    , glProgramUniform1f
    , glProgramUniform1fv
    , glProgramUniform1d
    , glProgramUniform1dv
    , glProgramUniform1ui
    , glProgramUniform1uiv
    , glProgramUniform2i
    , glProgramUniform2iv
    , glProgramUniform2f
    , glProgramUniform2fv
    , glProgramUniform2d
    , glProgramUniform2dv
    , glProgramUniform2ui
    , glProgramUniform2uiv
    , glProgramUniform3i
    , glProgramUniform3iv
    , glProgramUniform3f
    , glProgramUniform3fv
    , glProgramUniform3d
    , glProgramUniform3dv
    , glProgramUniform3ui
    , glProgramUniform3uiv
    , glProgramUniform4i
    , glProgramUniform4iv
    , glProgramUniform4f
    , glProgramUniform4fv
    , glProgramUniform4d
    , glProgramUniform4dv
    , glProgramUniform4ui
    , glProgramUniform4uiv
    , glProgramUniformMatrix2fv
    , glProgramUniformMatrix3fv
    , glProgramUniformMatrix4fv
    , glProgramUniformMatrix2dv
    , glProgramUniformMatrix3dv
    , glProgramUniformMatrix4dv
    , glProgramUniformMatrix2x3fv
    , glProgramUniformMatrix3x2fv
    , glProgramUniformMatrix2x4fv
    , glProgramUniformMatrix4x2fv
    , glProgramUniformMatrix3x4fv
    , glProgramUniformMatrix4x3fv
    , glProgramUniformMatrix2x3dv
    , glProgramUniformMatrix3x2dv
    , glProgramUniformMatrix2x4dv
    , glProgramUniformMatrix4x2dv
    , glProgramUniformMatrix3x4dv
    , glProgramUniformMatrix4x3dv
    , glValidateProgramPipeline
    , glGetProgramPipelineInfoLog
    , glInvalidateTexSubImage
    , glInvalidateTexImage
    , glInvalidateBufferSubData
    , glInvalidateBufferData
    , glInvalidateFramebuffer
    , glInvalidateSubFramebuffer
    )
    where

import Graphics.Caramia.Internal.FlextGLReentrant
import Graphics.Caramia.Internal.FlextGLTypes
import Control.Monad.Reader
import Foreign.Ptr

glCullFace :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glCullFace
    a0
    = ask >>= \fgl -> (liftIO $ rglCullFace fgl

    a0
    )
glFrontFace :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glFrontFace
    a0
    = ask >>= \fgl -> (liftIO $ rglFrontFace fgl

    a0
    )
glHint :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    m ( () )
glHint
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglHint fgl

    a0
    a1
    )
glLineWidth :: (MonadIO m, MonadReader FlextGL m) =>
    GLfloat ->
    m ( () )
glLineWidth
    a0
    = ask >>= \fgl -> (liftIO $ rglLineWidth fgl

    a0
    )
glPointSize :: (MonadIO m, MonadReader FlextGL m) =>
    GLfloat ->
    m ( () )
glPointSize
    a0
    = ask >>= \fgl -> (liftIO $ rglPointSize fgl

    a0
    )
glPolygonMode :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    m ( () )
glPolygonMode
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglPolygonMode fgl

    a0
    a1
    )
glScissor :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glScissor
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglScissor fgl

    a0
    a1
    a2
    a3
    )
glTexParameterf :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLfloat ->
    m ( () )
glTexParameterf
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglTexParameterf fgl

    a0
    a1
    a2
    )
glTexParameterfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glTexParameterfv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglTexParameterfv fgl

    a0
    a1
    a2
    )
glTexParameteri :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    m ( () )
glTexParameteri
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglTexParameteri fgl

    a0
    a1
    a2
    )
glTexParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glTexParameteriv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglTexParameteriv fgl

    a0
    a1
    a2
    )
glTexImage1D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTexImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglTexImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glTexImage2D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTexImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglTexImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glDrawBuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glDrawBuffer
    a0
    = ask >>= \fgl -> (liftIO $ rglDrawBuffer fgl

    a0
    )
glClear :: (MonadIO m, MonadReader FlextGL m) =>
    GLbitfield ->
    m ( () )
glClear
    a0
    = ask >>= \fgl -> (liftIO $ rglClear fgl

    a0
    )
glClearColor :: (MonadIO m, MonadReader FlextGL m) =>
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glClearColor
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglClearColor fgl

    a0
    a1
    a2
    a3
    )
glClearStencil :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    m ( () )
glClearStencil
    a0
    = ask >>= \fgl -> (liftIO $ rglClearStencil fgl

    a0
    )
glClearDepth :: (MonadIO m, MonadReader FlextGL m) =>
    GLdouble ->
    m ( () )
glClearDepth
    a0
    = ask >>= \fgl -> (liftIO $ rglClearDepth fgl

    a0
    )
glStencilMask :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glStencilMask
    a0
    = ask >>= \fgl -> (liftIO $ rglStencilMask fgl

    a0
    )
glColorMask :: (MonadIO m, MonadReader FlextGL m) =>
    GLboolean ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    m ( () )
glColorMask
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglColorMask fgl

    a0
    a1
    a2
    a3
    )
glDepthMask :: (MonadIO m, MonadReader FlextGL m) =>
    GLboolean ->
    m ( () )
glDepthMask
    a0
    = ask >>= \fgl -> (liftIO $ rglDepthMask fgl

    a0
    )
glDisable :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glDisable
    a0
    = ask >>= \fgl -> (liftIO $ rglDisable fgl

    a0
    )
glEnable :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glEnable
    a0
    = ask >>= \fgl -> (liftIO $ rglEnable fgl

    a0
    )
glFinish :: (MonadIO m, MonadReader FlextGL m) =>
    m ( () )
glFinish
    = ask >>= \fgl -> (liftIO $ rglFinish fgl

    )
glFlush :: (MonadIO m, MonadReader FlextGL m) =>
    m ( () )
glFlush
    = ask >>= \fgl -> (liftIO $ rglFlush fgl

    )
glBlendFunc :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    m ( () )
glBlendFunc
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBlendFunc fgl

    a0
    a1
    )
glLogicOp :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glLogicOp
    a0
    = ask >>= \fgl -> (liftIO $ rglLogicOp fgl

    a0
    )
glStencilFunc :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLuint ->
    m ( () )
glStencilFunc
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglStencilFunc fgl

    a0
    a1
    a2
    )
glStencilOp :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    m ( () )
glStencilOp
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglStencilOp fgl

    a0
    a1
    a2
    )
glDepthFunc :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glDepthFunc
    a0
    = ask >>= \fgl -> (liftIO $ rglDepthFunc fgl

    a0
    )
glPixelStoref :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLfloat ->
    m ( () )
glPixelStoref
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglPixelStoref fgl

    a0
    a1
    )
glPixelStorei :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    m ( () )
glPixelStorei
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglPixelStorei fgl

    a0
    a1
    )
glReadBuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glReadBuffer
    a0
    = ask >>= \fgl -> (liftIO $ rglReadBuffer fgl

    a0
    )
glReadPixels :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glReadPixels
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglReadPixels fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glGetBooleanv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLboolean) ->
    m ( () )
glGetBooleanv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetBooleanv fgl

    a0
    a1
    )
glGetDoublev :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLdouble) ->
    m ( () )
glGetDoublev
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetDoublev fgl

    a0
    a1
    )
glGetError :: (MonadIO m, MonadReader FlextGL m) =>
    m ( GLenum )
glGetError
    = ask >>= \fgl -> (liftIO $ rglGetError fgl

    )
glGetFloatv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetFloatv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetFloatv fgl

    a0
    a1
    )
glGetIntegerv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetIntegerv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetIntegerv fgl

    a0
    a1
    )
glGetString :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( Ptr (GLubyte) )
glGetString
    a0
    = ask >>= \fgl -> (liftIO $ rglGetString fgl

    a0
    )
glGetTexImage :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glGetTexImage
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetTexImage fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetTexParameterfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetTexParameterfv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetTexParameterfv fgl

    a0
    a1
    a2
    )
glGetTexParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetTexParameteriv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetTexParameteriv fgl

    a0
    a1
    a2
    )
glGetTexLevelParameterfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetTexLevelParameterfv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetTexLevelParameterfv fgl

    a0
    a1
    a2
    a3
    )
glGetTexLevelParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetTexLevelParameteriv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetTexLevelParameteriv fgl

    a0
    a1
    a2
    a3
    )
glIsEnabled :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( GLboolean )
glIsEnabled
    a0
    = ask >>= \fgl -> (liftIO $ rglIsEnabled fgl

    a0
    )
glDepthRange :: (MonadIO m, MonadReader FlextGL m) =>
    GLdouble ->
    GLdouble ->
    m ( () )
glDepthRange
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDepthRange fgl

    a0
    a1
    )
glViewport :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glViewport
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglViewport fgl

    a0
    a1
    a2
    a3
    )
glDrawArrays :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLsizei ->
    m ( () )
glDrawArrays
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglDrawArrays fgl

    a0
    a1
    a2
    )
glDrawElements :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    m ( () )
glDrawElements
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglDrawElements fgl

    a0
    a1
    a2
    a3
    )
glPolygonOffset :: (MonadIO m, MonadReader FlextGL m) =>
    GLfloat ->
    GLfloat ->
    m ( () )
glPolygonOffset
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglPolygonOffset fgl

    a0
    a1
    )
glCopyTexImage1D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    m ( () )
glCopyTexImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglCopyTexImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glCopyTexImage2D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    m ( () )
glCopyTexImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCopyTexImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glCopyTexSubImage1D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    m ( () )
glCopyTexSubImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglCopyTexSubImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glCopyTexSubImage2D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glCopyTexSubImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCopyTexSubImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glTexSubImage1D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTexSubImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglTexSubImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glTexSubImage2D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTexSubImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglTexSubImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glBindTexture :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glBindTexture
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBindTexture fgl

    a0
    a1
    )
glDeleteTextures :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glDeleteTextures
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDeleteTextures fgl

    a0
    a1
    )
glGenTextures :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glGenTextures
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenTextures fgl

    a0
    a1
    )
glIsTexture :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsTexture
    a0
    = ask >>= \fgl -> (liftIO $ rglIsTexture fgl

    a0
    )
glDrawRangeElements :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLuint ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    m ( () )
glDrawRangeElements
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglDrawRangeElements fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glTexImage3D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTexImage3D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglTexImage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glTexSubImage3D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTexSubImage3D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    = ask >>= \fgl -> (liftIO $ rglTexSubImage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    )
glCopyTexSubImage3D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glCopyTexSubImage3D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCopyTexSubImage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glActiveTexture :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glActiveTexture
    a0
    = ask >>= \fgl -> (liftIO $ rglActiveTexture fgl

    a0
    )
glSampleCoverage :: (MonadIO m, MonadReader FlextGL m) =>
    GLfloat ->
    GLboolean ->
    m ( () )
glSampleCoverage
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglSampleCoverage fgl

    a0
    a1
    )
glCompressedTexImage3D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTexImage3D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCompressedTexImage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glCompressedTexImage2D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTexImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCompressedTexImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glCompressedTexImage1D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTexImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglCompressedTexImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glCompressedTexSubImage3D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTexSubImage3D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    = ask >>= \fgl -> (liftIO $ rglCompressedTexSubImage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    )
glCompressedTexSubImage2D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTexSubImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCompressedTexSubImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glCompressedTexSubImage1D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTexSubImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglCompressedTexSubImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glGetCompressedTexImage :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    Ptr () ->
    m ( () )
glGetCompressedTexImage
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetCompressedTexImage fgl

    a0
    a1
    a2
    )
glBlendFuncSeparate :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLenum ->
    m ( () )
glBlendFuncSeparate
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglBlendFuncSeparate fgl

    a0
    a1
    a2
    a3
    )
glMultiDrawArrays :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLint) ->
    Ptr (GLsizei) ->
    GLsizei ->
    m ( () )
glMultiDrawArrays
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiDrawArrays fgl

    a0
    a1
    a2
    a3
    )
glMultiDrawElements :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLsizei) ->
    GLenum ->
    Ptr (Ptr ()) ->
    GLsizei ->
    m ( () )
glMultiDrawElements
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglMultiDrawElements fgl

    a0
    a1
    a2
    a3
    a4
    )
glPointParameterf :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLfloat ->
    m ( () )
glPointParameterf
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglPointParameterf fgl

    a0
    a1
    )
glPointParameterfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glPointParameterfv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglPointParameterfv fgl

    a0
    a1
    )
glPointParameteri :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    m ( () )
glPointParameteri
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglPointParameteri fgl

    a0
    a1
    )
glPointParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glPointParameteriv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglPointParameteriv fgl

    a0
    a1
    )
glBlendColor :: (MonadIO m, MonadReader FlextGL m) =>
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glBlendColor
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglBlendColor fgl

    a0
    a1
    a2
    a3
    )
glBlendEquation :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glBlendEquation
    a0
    = ask >>= \fgl -> (liftIO $ rglBlendEquation fgl

    a0
    )
glGenQueries :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glGenQueries
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenQueries fgl

    a0
    a1
    )
glDeleteQueries :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glDeleteQueries
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDeleteQueries fgl

    a0
    a1
    )
glIsQuery :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsQuery
    a0
    = ask >>= \fgl -> (liftIO $ rglIsQuery fgl

    a0
    )
glBeginQuery :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glBeginQuery
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBeginQuery fgl

    a0
    a1
    )
glEndQuery :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glEndQuery
    a0
    = ask >>= \fgl -> (liftIO $ rglEndQuery fgl

    a0
    )
glGetQueryiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetQueryiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetQueryiv fgl

    a0
    a1
    a2
    )
glGetQueryObjectiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetQueryObjectiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetQueryObjectiv fgl

    a0
    a1
    a2
    )
glGetQueryObjectuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glGetQueryObjectuiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetQueryObjectuiv fgl

    a0
    a1
    a2
    )
glBindBuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glBindBuffer
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBindBuffer fgl

    a0
    a1
    )
glDeleteBuffers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glDeleteBuffers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDeleteBuffers fgl

    a0
    a1
    )
glGenBuffers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glGenBuffers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenBuffers fgl

    a0
    a1
    )
glIsBuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsBuffer
    a0
    = ask >>= \fgl -> (liftIO $ rglIsBuffer fgl

    a0
    )
glBufferData :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizeiptr ->
    Ptr () ->
    GLenum ->
    m ( () )
glBufferData
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglBufferData fgl

    a0
    a1
    a2
    a3
    )
glBufferSubData :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    m ( () )
glBufferSubData
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglBufferSubData fgl

    a0
    a1
    a2
    a3
    )
glGetBufferSubData :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    m ( () )
glGetBufferSubData
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetBufferSubData fgl

    a0
    a1
    a2
    a3
    )
glMapBuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    m ( Ptr () )
glMapBuffer
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMapBuffer fgl

    a0
    a1
    )
glUnmapBuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( GLboolean )
glUnmapBuffer
    a0
    = ask >>= \fgl -> (liftIO $ rglUnmapBuffer fgl

    a0
    )
glGetBufferParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetBufferParameteriv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetBufferParameteriv fgl

    a0
    a1
    a2
    )
glGetBufferPointerv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (Ptr ()) ->
    m ( () )
glGetBufferPointerv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetBufferPointerv fgl

    a0
    a1
    a2
    )
glBlendEquationSeparate :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    m ( () )
glBlendEquationSeparate
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBlendEquationSeparate fgl

    a0
    a1
    )
glDrawBuffers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLenum) ->
    m ( () )
glDrawBuffers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDrawBuffers fgl

    a0
    a1
    )
glStencilOpSeparate :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLenum ->
    m ( () )
glStencilOpSeparate
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglStencilOpSeparate fgl

    a0
    a1
    a2
    a3
    )
glStencilFuncSeparate :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLuint ->
    m ( () )
glStencilFuncSeparate
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglStencilFuncSeparate fgl

    a0
    a1
    a2
    a3
    )
glStencilMaskSeparate :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glStencilMaskSeparate
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglStencilMaskSeparate fgl

    a0
    a1
    )
glAttachShader :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    m ( () )
glAttachShader
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglAttachShader fgl

    a0
    a1
    )
glBindAttribLocation :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    m ( () )
glBindAttribLocation
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglBindAttribLocation fgl

    a0
    a1
    a2
    )
glCompileShader :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glCompileShader
    a0
    = ask >>= \fgl -> (liftIO $ rglCompileShader fgl

    a0
    )
glCreateProgram :: (MonadIO m, MonadReader FlextGL m) =>
    m ( GLuint )
glCreateProgram
    = ask >>= \fgl -> (liftIO $ rglCreateProgram fgl

    )
glCreateShader :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( GLuint )
glCreateShader
    a0
    = ask >>= \fgl -> (liftIO $ rglCreateShader fgl

    a0
    )
glDeleteProgram :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glDeleteProgram
    a0
    = ask >>= \fgl -> (liftIO $ rglDeleteProgram fgl

    a0
    )
glDeleteShader :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glDeleteShader
    a0
    = ask >>= \fgl -> (liftIO $ rglDeleteShader fgl

    a0
    )
glDetachShader :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    m ( () )
glDetachShader
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDetachShader fgl

    a0
    a1
    )
glDisableVertexAttribArray :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glDisableVertexAttribArray
    a0
    = ask >>= \fgl -> (liftIO $ rglDisableVertexAttribArray fgl

    a0
    )
glEnableVertexAttribArray :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glEnableVertexAttribArray
    a0
    = ask >>= \fgl -> (liftIO $ rglEnableVertexAttribArray fgl

    a0
    )
glGetActiveAttrib :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    m ( () )
glGetActiveAttrib
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglGetActiveAttrib fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glGetActiveUniform :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    m ( () )
glGetActiveUniform
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglGetActiveUniform fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glGetAttachedShaders :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLuint) ->
    m ( () )
glGetAttachedShaders
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetAttachedShaders fgl

    a0
    a1
    a2
    a3
    )
glGetAttribLocation :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLchar) ->
    m ( GLint )
glGetAttribLocation
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetAttribLocation fgl

    a0
    a1
    )
glGetProgramiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetProgramiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetProgramiv fgl

    a0
    a1
    a2
    )
glGetProgramInfoLog :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetProgramInfoLog
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetProgramInfoLog fgl

    a0
    a1
    a2
    a3
    )
glGetShaderiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetShaderiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetShaderiv fgl

    a0
    a1
    a2
    )
glGetShaderInfoLog :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetShaderInfoLog
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetShaderInfoLog fgl

    a0
    a1
    a2
    a3
    )
glGetShaderSource :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetShaderSource
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetShaderSource fgl

    a0
    a1
    a2
    a3
    )
glGetUniformLocation :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLchar) ->
    m ( GLint )
glGetUniformLocation
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetUniformLocation fgl

    a0
    a1
    )
glGetUniformfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    Ptr (GLfloat) ->
    m ( () )
glGetUniformfv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetUniformfv fgl

    a0
    a1
    a2
    )
glGetUniformiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    Ptr (GLint) ->
    m ( () )
glGetUniformiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetUniformiv fgl

    a0
    a1
    a2
    )
glGetVertexAttribdv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLdouble) ->
    m ( () )
glGetVertexAttribdv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetVertexAttribdv fgl

    a0
    a1
    a2
    )
glGetVertexAttribfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetVertexAttribfv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetVertexAttribfv fgl

    a0
    a1
    a2
    )
glGetVertexAttribiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetVertexAttribiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetVertexAttribiv fgl

    a0
    a1
    a2
    )
glGetVertexAttribPointerv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    m ( () )
glGetVertexAttribPointerv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetVertexAttribPointerv fgl

    a0
    a1
    a2
    )
glIsProgram :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsProgram
    a0
    = ask >>= \fgl -> (liftIO $ rglIsProgram fgl

    a0
    )
glIsShader :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsShader
    a0
    = ask >>= \fgl -> (liftIO $ rglIsShader fgl

    a0
    )
glLinkProgram :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glLinkProgram
    a0
    = ask >>= \fgl -> (liftIO $ rglLinkProgram fgl

    a0
    )
glShaderSource :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    Ptr (GLint) ->
    m ( () )
glShaderSource
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglShaderSource fgl

    a0
    a1
    a2
    a3
    )
glUseProgram :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glUseProgram
    a0
    = ask >>= \fgl -> (liftIO $ rglUseProgram fgl

    a0
    )
glUniform1f :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLfloat ->
    m ( () )
glUniform1f
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglUniform1f fgl

    a0
    a1
    )
glUniform2f :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLfloat ->
    GLfloat ->
    m ( () )
glUniform2f
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform2f fgl

    a0
    a1
    a2
    )
glUniform3f :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glUniform3f
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniform3f fgl

    a0
    a1
    a2
    a3
    )
glUniform4f :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glUniform4f
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglUniform4f fgl

    a0
    a1
    a2
    a3
    a4
    )
glUniform1i :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLint ->
    m ( () )
glUniform1i
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglUniform1i fgl

    a0
    a1
    )
glUniform2i :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glUniform2i
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform2i fgl

    a0
    a1
    a2
    )
glUniform3i :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glUniform3i
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniform3i fgl

    a0
    a1
    a2
    a3
    )
glUniform4i :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glUniform4i
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglUniform4i fgl

    a0
    a1
    a2
    a3
    a4
    )
glUniform1fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glUniform1fv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform1fv fgl

    a0
    a1
    a2
    )
glUniform2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glUniform2fv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform2fv fgl

    a0
    a1
    a2
    )
glUniform3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glUniform3fv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform3fv fgl

    a0
    a1
    a2
    )
glUniform4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glUniform4fv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform4fv fgl

    a0
    a1
    a2
    )
glUniform1iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glUniform1iv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform1iv fgl

    a0
    a1
    a2
    )
glUniform2iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glUniform2iv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform2iv fgl

    a0
    a1
    a2
    )
glUniform3iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glUniform3iv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform3iv fgl

    a0
    a1
    a2
    )
glUniform4iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glUniform4iv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform4iv fgl

    a0
    a1
    a2
    )
glUniformMatrix2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix2fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix2fv fgl

    a0
    a1
    a2
    a3
    )
glUniformMatrix3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix3fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix3fv fgl

    a0
    a1
    a2
    a3
    )
glUniformMatrix4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix4fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix4fv fgl

    a0
    a1
    a2
    a3
    )
glValidateProgram :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glValidateProgram
    a0
    = ask >>= \fgl -> (liftIO $ rglValidateProgram fgl

    a0
    )
glVertexAttrib1d :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLdouble ->
    m ( () )
glVertexAttrib1d
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib1d fgl

    a0
    a1
    )
glVertexAttrib1dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLdouble) ->
    m ( () )
glVertexAttrib1dv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib1dv fgl

    a0
    a1
    )
glVertexAttrib1f :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLfloat ->
    m ( () )
glVertexAttrib1f
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib1f fgl

    a0
    a1
    )
glVertexAttrib1fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glVertexAttrib1fv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib1fv fgl

    a0
    a1
    )
glVertexAttrib1s :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLshort ->
    m ( () )
glVertexAttrib1s
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib1s fgl

    a0
    a1
    )
glVertexAttrib1sv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLshort) ->
    m ( () )
glVertexAttrib1sv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib1sv fgl

    a0
    a1
    )
glVertexAttrib2d :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLdouble ->
    GLdouble ->
    m ( () )
glVertexAttrib2d
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib2d fgl

    a0
    a1
    a2
    )
glVertexAttrib2dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLdouble) ->
    m ( () )
glVertexAttrib2dv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib2dv fgl

    a0
    a1
    )
glVertexAttrib2f :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLfloat ->
    GLfloat ->
    m ( () )
glVertexAttrib2f
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib2f fgl

    a0
    a1
    a2
    )
glVertexAttrib2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glVertexAttrib2fv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib2fv fgl

    a0
    a1
    )
glVertexAttrib2s :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLshort ->
    GLshort ->
    m ( () )
glVertexAttrib2s
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib2s fgl

    a0
    a1
    a2
    )
glVertexAttrib2sv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLshort) ->
    m ( () )
glVertexAttrib2sv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib2sv fgl

    a0
    a1
    )
glVertexAttrib3d :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glVertexAttrib3d
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib3d fgl

    a0
    a1
    a2
    a3
    )
glVertexAttrib3dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLdouble) ->
    m ( () )
glVertexAttrib3dv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib3dv fgl

    a0
    a1
    )
glVertexAttrib3f :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glVertexAttrib3f
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib3f fgl

    a0
    a1
    a2
    a3
    )
glVertexAttrib3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glVertexAttrib3fv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib3fv fgl

    a0
    a1
    )
glVertexAttrib3s :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLshort ->
    GLshort ->
    GLshort ->
    m ( () )
glVertexAttrib3s
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib3s fgl

    a0
    a1
    a2
    a3
    )
glVertexAttrib3sv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLshort) ->
    m ( () )
glVertexAttrib3sv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib3sv fgl

    a0
    a1
    )
glVertexAttrib4Nbv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLbyte) ->
    m ( () )
glVertexAttrib4Nbv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4Nbv fgl

    a0
    a1
    )
glVertexAttrib4Niv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glVertexAttrib4Niv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4Niv fgl

    a0
    a1
    )
glVertexAttrib4Nsv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLshort) ->
    m ( () )
glVertexAttrib4Nsv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4Nsv fgl

    a0
    a1
    )
glVertexAttrib4Nub :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLubyte ->
    GLubyte ->
    GLubyte ->
    GLubyte ->
    m ( () )
glVertexAttrib4Nub
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4Nub fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexAttrib4Nubv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLubyte) ->
    m ( () )
glVertexAttrib4Nubv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4Nubv fgl

    a0
    a1
    )
glVertexAttrib4Nuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttrib4Nuiv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4Nuiv fgl

    a0
    a1
    )
glVertexAttrib4Nusv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLushort) ->
    m ( () )
glVertexAttrib4Nusv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4Nusv fgl

    a0
    a1
    )
glVertexAttrib4bv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLbyte) ->
    m ( () )
glVertexAttrib4bv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4bv fgl

    a0
    a1
    )
glVertexAttrib4d :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glVertexAttrib4d
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4d fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexAttrib4dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLdouble) ->
    m ( () )
glVertexAttrib4dv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4dv fgl

    a0
    a1
    )
glVertexAttrib4f :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glVertexAttrib4f
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4f fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexAttrib4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glVertexAttrib4fv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4fv fgl

    a0
    a1
    )
glVertexAttrib4iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glVertexAttrib4iv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4iv fgl

    a0
    a1
    )
glVertexAttrib4s :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLshort ->
    GLshort ->
    GLshort ->
    GLshort ->
    m ( () )
glVertexAttrib4s
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4s fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexAttrib4sv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLshort) ->
    m ( () )
glVertexAttrib4sv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4sv fgl

    a0
    a1
    )
glVertexAttrib4ubv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLubyte) ->
    m ( () )
glVertexAttrib4ubv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4ubv fgl

    a0
    a1
    )
glVertexAttrib4uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttrib4uiv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4uiv fgl

    a0
    a1
    )
glVertexAttrib4usv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLushort) ->
    m ( () )
glVertexAttrib4usv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttrib4usv fgl

    a0
    a1
    )
glVertexAttribPointer :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLsizei ->
    Ptr () ->
    m ( () )
glVertexAttribPointer
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglVertexAttribPointer fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glUniformMatrix2x3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix2x3fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix2x3fv fgl

    a0
    a1
    a2
    a3
    )
glUniformMatrix3x2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix3x2fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix3x2fv fgl

    a0
    a1
    a2
    a3
    )
glUniformMatrix2x4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix2x4fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix2x4fv fgl

    a0
    a1
    a2
    a3
    )
glUniformMatrix4x2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix4x2fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix4x2fv fgl

    a0
    a1
    a2
    a3
    )
glUniformMatrix3x4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix3x4fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix3x4fv fgl

    a0
    a1
    a2
    a3
    )
glUniformMatrix4x3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glUniformMatrix4x3fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniformMatrix4x3fv fgl

    a0
    a1
    a2
    a3
    )
glColorMaski :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    m ( () )
glColorMaski
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglColorMaski fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetBooleani_v :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLboolean) ->
    m ( () )
glGetBooleani_v
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetBooleani_v fgl

    a0
    a1
    a2
    )
glGetIntegeri_v :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glGetIntegeri_v
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetIntegeri_v fgl

    a0
    a1
    a2
    )
glEnablei :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glEnablei
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglEnablei fgl

    a0
    a1
    )
glDisablei :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glDisablei
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDisablei fgl

    a0
    a1
    )
glIsEnabledi :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( GLboolean )
glIsEnabledi
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglIsEnabledi fgl

    a0
    a1
    )
glBeginTransformFeedback :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glBeginTransformFeedback
    a0
    = ask >>= \fgl -> (liftIO $ rglBeginTransformFeedback fgl

    a0
    )
glEndTransformFeedback :: (MonadIO m, MonadReader FlextGL m) =>
    m ( () )
glEndTransformFeedback
    = ask >>= \fgl -> (liftIO $ rglEndTransformFeedback fgl

    )
glBindBufferRange :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    m ( () )
glBindBufferRange
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglBindBufferRange fgl

    a0
    a1
    a2
    a3
    a4
    )
glBindBufferBase :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLuint ->
    m ( () )
glBindBufferBase
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglBindBufferBase fgl

    a0
    a1
    a2
    )
glTransformFeedbackVaryings :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    GLenum ->
    m ( () )
glTransformFeedbackVaryings
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTransformFeedbackVaryings fgl

    a0
    a1
    a2
    a3
    )
glGetTransformFeedbackVarying :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLsizei) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    m ( () )
glGetTransformFeedbackVarying
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglGetTransformFeedbackVarying fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glClampColor :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    m ( () )
glClampColor
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglClampColor fgl

    a0
    a1
    )
glBeginConditionalRender :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( () )
glBeginConditionalRender
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBeginConditionalRender fgl

    a0
    a1
    )
glEndConditionalRender :: (MonadIO m, MonadReader FlextGL m) =>
    m ( () )
glEndConditionalRender
    = ask >>= \fgl -> (liftIO $ rglEndConditionalRender fgl

    )
glVertexAttribIPointer :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glVertexAttribIPointer
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexAttribIPointer fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetVertexAttribIiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetVertexAttribIiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetVertexAttribIiv fgl

    a0
    a1
    a2
    )
glGetVertexAttribIuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glGetVertexAttribIuiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetVertexAttribIuiv fgl

    a0
    a1
    a2
    )
glVertexAttribI1i :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    m ( () )
glVertexAttribI1i
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI1i fgl

    a0
    a1
    )
glVertexAttribI2i :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    m ( () )
glVertexAttribI2i
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI2i fgl

    a0
    a1
    a2
    )
glVertexAttribI3i :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glVertexAttribI3i
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI3i fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribI4i :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glVertexAttribI4i
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI4i fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexAttribI1ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    m ( () )
glVertexAttribI1ui
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI1ui fgl

    a0
    a1
    )
glVertexAttribI2ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glVertexAttribI2ui
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI2ui fgl

    a0
    a1
    a2
    )
glVertexAttribI3ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glVertexAttribI3ui
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI3ui fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribI4ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glVertexAttribI4ui
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI4ui fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexAttribI1iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glVertexAttribI1iv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI1iv fgl

    a0
    a1
    )
glVertexAttribI2iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glVertexAttribI2iv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI2iv fgl

    a0
    a1
    )
glVertexAttribI3iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glVertexAttribI3iv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI3iv fgl

    a0
    a1
    )
glVertexAttribI4iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glVertexAttribI4iv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI4iv fgl

    a0
    a1
    )
glVertexAttribI1uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttribI1uiv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI1uiv fgl

    a0
    a1
    )
glVertexAttribI2uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttribI2uiv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI2uiv fgl

    a0
    a1
    )
glVertexAttribI3uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttribI3uiv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI3uiv fgl

    a0
    a1
    )
glVertexAttribI4uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttribI4uiv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI4uiv fgl

    a0
    a1
    )
glVertexAttribI4bv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLbyte) ->
    m ( () )
glVertexAttribI4bv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI4bv fgl

    a0
    a1
    )
glVertexAttribI4sv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLshort) ->
    m ( () )
glVertexAttribI4sv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI4sv fgl

    a0
    a1
    )
glVertexAttribI4ubv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLubyte) ->
    m ( () )
glVertexAttribI4ubv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI4ubv fgl

    a0
    a1
    )
glVertexAttribI4usv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLushort) ->
    m ( () )
glVertexAttribI4usv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribI4usv fgl

    a0
    a1
    )
glGetUniformuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    Ptr (GLuint) ->
    m ( () )
glGetUniformuiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetUniformuiv fgl

    a0
    a1
    a2
    )
glBindFragDataLocation :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    m ( () )
glBindFragDataLocation
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglBindFragDataLocation fgl

    a0
    a1
    a2
    )
glGetFragDataLocation :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLchar) ->
    m ( GLint )
glGetFragDataLocation
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetFragDataLocation fgl

    a0
    a1
    )
glUniform1ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLuint ->
    m ( () )
glUniform1ui
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglUniform1ui fgl

    a0
    a1
    )
glUniform2ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLuint ->
    GLuint ->
    m ( () )
glUniform2ui
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform2ui fgl

    a0
    a1
    a2
    )
glUniform3ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glUniform3ui
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglUniform3ui fgl

    a0
    a1
    a2
    a3
    )
glUniform4ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glUniform4ui
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglUniform4ui fgl

    a0
    a1
    a2
    a3
    a4
    )
glUniform1uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glUniform1uiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform1uiv fgl

    a0
    a1
    a2
    )
glUniform2uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glUniform2uiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform2uiv fgl

    a0
    a1
    a2
    )
glUniform3uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glUniform3uiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform3uiv fgl

    a0
    a1
    a2
    )
glUniform4uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glUniform4uiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniform4uiv fgl

    a0
    a1
    a2
    )
glTexParameterIiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glTexParameterIiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglTexParameterIiv fgl

    a0
    a1
    a2
    )
glTexParameterIuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glTexParameterIuiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglTexParameterIuiv fgl

    a0
    a1
    a2
    )
glGetTexParameterIiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetTexParameterIiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetTexParameterIiv fgl

    a0
    a1
    a2
    )
glGetTexParameterIuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glGetTexParameterIuiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetTexParameterIuiv fgl

    a0
    a1
    a2
    )
glClearBufferiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    Ptr (GLint) ->
    m ( () )
glClearBufferiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglClearBufferiv fgl

    a0
    a1
    a2
    )
glClearBufferuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    Ptr (GLuint) ->
    m ( () )
glClearBufferuiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglClearBufferuiv fgl

    a0
    a1
    a2
    )
glClearBufferfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    Ptr (GLfloat) ->
    m ( () )
glClearBufferfv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglClearBufferfv fgl

    a0
    a1
    a2
    )
glClearBufferfi :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLfloat ->
    GLint ->
    m ( () )
glClearBufferfi
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglClearBufferfi fgl

    a0
    a1
    a2
    a3
    )
glGetStringi :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( Ptr (GLubyte) )
glGetStringi
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetStringi fgl

    a0
    a1
    )
glIsRenderbuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsRenderbuffer
    a0
    = ask >>= \fgl -> (liftIO $ rglIsRenderbuffer fgl

    a0
    )
glBindRenderbuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glBindRenderbuffer
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBindRenderbuffer fgl

    a0
    a1
    )
glDeleteRenderbuffers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glDeleteRenderbuffers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDeleteRenderbuffers fgl

    a0
    a1
    )
glGenRenderbuffers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glGenRenderbuffers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenRenderbuffers fgl

    a0
    a1
    )
glRenderbufferStorage :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    m ( () )
glRenderbufferStorage
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglRenderbufferStorage fgl

    a0
    a1
    a2
    a3
    )
glGetRenderbufferParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetRenderbufferParameteriv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetRenderbufferParameteriv fgl

    a0
    a1
    a2
    )
glIsFramebuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsFramebuffer
    a0
    = ask >>= \fgl -> (liftIO $ rglIsFramebuffer fgl

    a0
    )
glBindFramebuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glBindFramebuffer
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBindFramebuffer fgl

    a0
    a1
    )
glDeleteFramebuffers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glDeleteFramebuffers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDeleteFramebuffers fgl

    a0
    a1
    )
glGenFramebuffers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glGenFramebuffers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenFramebuffers fgl

    a0
    a1
    )
glCheckFramebufferStatus :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( GLenum )
glCheckFramebufferStatus
    a0
    = ask >>= \fgl -> (liftIO $ rglCheckFramebufferStatus fgl

    a0
    )
glFramebufferTexture1D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    m ( () )
glFramebufferTexture1D
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglFramebufferTexture1D fgl

    a0
    a1
    a2
    a3
    a4
    )
glFramebufferTexture2D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    m ( () )
glFramebufferTexture2D
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglFramebufferTexture2D fgl

    a0
    a1
    a2
    a3
    a4
    )
glFramebufferTexture3D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    m ( () )
glFramebufferTexture3D
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglFramebufferTexture3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glFramebufferRenderbuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    m ( () )
glFramebufferRenderbuffer
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglFramebufferRenderbuffer fgl

    a0
    a1
    a2
    a3
    )
glGetFramebufferAttachmentParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetFramebufferAttachmentParameteriv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetFramebufferAttachmentParameteriv fgl

    a0
    a1
    a2
    a3
    )
glGenerateMipmap :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glGenerateMipmap
    a0
    = ask >>= \fgl -> (liftIO $ rglGenerateMipmap fgl

    a0
    )
glBlitFramebuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLbitfield ->
    GLenum ->
    m ( () )
glBlitFramebuffer
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglBlitFramebuffer fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glRenderbufferStorageMultisample :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    m ( () )
glRenderbufferStorageMultisample
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglRenderbufferStorageMultisample fgl

    a0
    a1
    a2
    a3
    a4
    )
glFramebufferTextureLayer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    m ( () )
glFramebufferTextureLayer
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglFramebufferTextureLayer fgl

    a0
    a1
    a2
    a3
    a4
    )
glMapBufferRange :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    GLbitfield ->
    m ( Ptr () )
glMapBufferRange
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMapBufferRange fgl

    a0
    a1
    a2
    a3
    )
glFlushMappedBufferRange :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    m ( () )
glFlushMappedBufferRange
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglFlushMappedBufferRange fgl

    a0
    a1
    a2
    )
glBindVertexArray :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glBindVertexArray
    a0
    = ask >>= \fgl -> (liftIO $ rglBindVertexArray fgl

    a0
    )
glDeleteVertexArrays :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glDeleteVertexArrays
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDeleteVertexArrays fgl

    a0
    a1
    )
glGenVertexArrays :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glGenVertexArrays
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenVertexArrays fgl

    a0
    a1
    )
glIsVertexArray :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsVertexArray
    a0
    = ask >>= \fgl -> (liftIO $ rglIsVertexArray fgl

    a0
    )
glDrawArraysInstanced :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glDrawArraysInstanced
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglDrawArraysInstanced fgl

    a0
    a1
    a2
    a3
    )
glDrawElementsInstanced :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLsizei ->
    m ( () )
glDrawElementsInstanced
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglDrawElementsInstanced fgl

    a0
    a1
    a2
    a3
    a4
    )
glTexBuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLuint ->
    m ( () )
glTexBuffer
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglTexBuffer fgl

    a0
    a1
    a2
    )
glPrimitiveRestartIndex :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glPrimitiveRestartIndex
    a0
    = ask >>= \fgl -> (liftIO $ rglPrimitiveRestartIndex fgl

    a0
    )
glCopyBufferSubData :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLintptr ->
    GLintptr ->
    GLsizeiptr ->
    m ( () )
glCopyBufferSubData
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglCopyBufferSubData fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetUniformIndices :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    Ptr (GLuint) ->
    m ( () )
glGetUniformIndices
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetUniformIndices fgl

    a0
    a1
    a2
    a3
    )
glGetActiveUniformsiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLuint) ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetActiveUniformsiv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetActiveUniformsiv fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetActiveUniformName :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetActiveUniformName
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetActiveUniformName fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetUniformBlockIndex :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLchar) ->
    m ( GLuint )
glGetUniformBlockIndex
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetUniformBlockIndex fgl

    a0
    a1
    )
glGetActiveUniformBlockiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetActiveUniformBlockiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetActiveUniformBlockiv fgl

    a0
    a1
    a2
    a3
    )
glGetActiveUniformBlockName :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetActiveUniformBlockName
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetActiveUniformBlockName fgl

    a0
    a1
    a2
    a3
    a4
    )
glUniformBlockBinding :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glUniformBlockBinding
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUniformBlockBinding fgl

    a0
    a1
    a2
    )
glDrawElementsBaseVertex :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLint ->
    m ( () )
glDrawElementsBaseVertex
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglDrawElementsBaseVertex fgl

    a0
    a1
    a2
    a3
    a4
    )
glDrawRangeElementsBaseVertex :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLuint ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLint ->
    m ( () )
glDrawRangeElementsBaseVertex
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglDrawRangeElementsBaseVertex fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glDrawElementsInstancedBaseVertex :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLsizei ->
    GLint ->
    m ( () )
glDrawElementsInstancedBaseVertex
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglDrawElementsInstancedBaseVertex fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glMultiDrawElementsBaseVertex :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLsizei) ->
    GLenum ->
    Ptr (Ptr ()) ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glMultiDrawElementsBaseVertex
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglMultiDrawElementsBaseVertex fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProvokingVertex :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glProvokingVertex
    a0
    = ask >>= \fgl -> (liftIO $ rglProvokingVertex fgl

    a0
    )
glFenceSync :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLbitfield ->
    m ( GLsync )
glFenceSync
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglFenceSync fgl

    a0
    a1
    )
glIsSync :: (MonadIO m, MonadReader FlextGL m) =>
    GLsync ->
    m ( GLboolean )
glIsSync
    a0
    = ask >>= \fgl -> (liftIO $ rglIsSync fgl

    a0
    )
glDeleteSync :: (MonadIO m, MonadReader FlextGL m) =>
    GLsync ->
    m ( () )
glDeleteSync
    a0
    = ask >>= \fgl -> (liftIO $ rglDeleteSync fgl

    a0
    )
glClientWaitSync :: (MonadIO m, MonadReader FlextGL m) =>
    GLsync ->
    GLbitfield ->
    GLuint64 ->
    m ( GLenum )
glClientWaitSync
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglClientWaitSync fgl

    a0
    a1
    a2
    )
glWaitSync :: (MonadIO m, MonadReader FlextGL m) =>
    GLsync ->
    GLbitfield ->
    GLuint64 ->
    m ( () )
glWaitSync
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglWaitSync fgl

    a0
    a1
    a2
    )
glGetInteger64v :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLint64) ->
    m ( () )
glGetInteger64v
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetInteger64v fgl

    a0
    a1
    )
glGetSynciv :: (MonadIO m, MonadReader FlextGL m) =>
    GLsync ->
    GLenum ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    m ( () )
glGetSynciv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetSynciv fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetInteger64i_v :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLint64) ->
    m ( () )
glGetInteger64i_v
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetInteger64i_v fgl

    a0
    a1
    a2
    )
glGetBufferParameteri64v :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    Ptr (GLint64) ->
    m ( () )
glGetBufferParameteri64v
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetBufferParameteri64v fgl

    a0
    a1
    a2
    )
glFramebufferTexture :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    m ( () )
glFramebufferTexture
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglFramebufferTexture fgl

    a0
    a1
    a2
    a3
    )
glTexImage2DMultisample :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    m ( () )
glTexImage2DMultisample
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglTexImage2DMultisample fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glTexImage3DMultisample :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    m ( () )
glTexImage3DMultisample
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglTexImage3DMultisample fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glGetMultisamplefv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glGetMultisamplefv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetMultisamplefv fgl

    a0
    a1
    a2
    )
glSampleMaski :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLbitfield ->
    m ( () )
glSampleMaski
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglSampleMaski fgl

    a0
    a1
    )
glBindFragDataLocationIndexed :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    m ( () )
glBindFragDataLocationIndexed
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglBindFragDataLocationIndexed fgl

    a0
    a1
    a2
    a3
    )
glGetFragDataIndex :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    Ptr (GLchar) ->
    m ( GLint )
glGetFragDataIndex
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetFragDataIndex fgl

    a0
    a1
    )
glGenSamplers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glGenSamplers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenSamplers fgl

    a0
    a1
    )
glDeleteSamplers :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glDeleteSamplers
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDeleteSamplers fgl

    a0
    a1
    )
glIsSampler :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsSampler
    a0
    = ask >>= \fgl -> (liftIO $ rglIsSampler fgl

    a0
    )
glBindSampler :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    m ( () )
glBindSampler
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglBindSampler fgl

    a0
    a1
    )
glSamplerParameteri :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    m ( () )
glSamplerParameteri
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglSamplerParameteri fgl

    a0
    a1
    a2
    )
glSamplerParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glSamplerParameteriv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglSamplerParameteriv fgl

    a0
    a1
    a2
    )
glSamplerParameterf :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLfloat ->
    m ( () )
glSamplerParameterf
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglSamplerParameterf fgl

    a0
    a1
    a2
    )
glSamplerParameterfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glSamplerParameterfv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglSamplerParameterfv fgl

    a0
    a1
    a2
    )
glSamplerParameterIiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glSamplerParameterIiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglSamplerParameterIiv fgl

    a0
    a1
    a2
    )
glSamplerParameterIuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glSamplerParameterIuiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglSamplerParameterIuiv fgl

    a0
    a1
    a2
    )
glGetSamplerParameteriv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetSamplerParameteriv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetSamplerParameteriv fgl

    a0
    a1
    a2
    )
glGetSamplerParameterIiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetSamplerParameterIiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetSamplerParameterIiv fgl

    a0
    a1
    a2
    )
glGetSamplerParameterfv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetSamplerParameterfv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetSamplerParameterfv fgl

    a0
    a1
    a2
    )
glGetSamplerParameterIuiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glGetSamplerParameterIuiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetSamplerParameterIuiv fgl

    a0
    a1
    a2
    )
glQueryCounter :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( () )
glQueryCounter
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglQueryCounter fgl

    a0
    a1
    )
glGetQueryObjecti64v :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint64) ->
    m ( () )
glGetQueryObjecti64v
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetQueryObjecti64v fgl

    a0
    a1
    a2
    )
glGetQueryObjectui64v :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLuint64) ->
    m ( () )
glGetQueryObjectui64v
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetQueryObjectui64v fgl

    a0
    a1
    a2
    )
glVertexAttribDivisor :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    m ( () )
glVertexAttribDivisor
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglVertexAttribDivisor fgl

    a0
    a1
    )
glVertexAttribP1ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    m ( () )
glVertexAttribP1ui
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribP1ui fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribP1uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttribP1uiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribP1uiv fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribP2ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    m ( () )
glVertexAttribP2ui
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribP2ui fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribP2uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttribP2uiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribP2uiv fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribP3ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    m ( () )
glVertexAttribP3ui
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribP3ui fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribP3uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttribP3uiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribP3uiv fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribP4ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    m ( () )
glVertexAttribP4ui
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribP4ui fgl

    a0
    a1
    a2
    a3
    )
glVertexAttribP4uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    m ( () )
glVertexAttribP4uiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexAttribP4uiv fgl

    a0
    a1
    a2
    a3
    )
glTexStorage1D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    m ( () )
glTexStorage1D
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTexStorage1D fgl

    a0
    a1
    a2
    a3
    )
glTexStorage2D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    m ( () )
glTexStorage2D
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglTexStorage2D fgl

    a0
    a1
    a2
    a3
    a4
    )
glTexStorage3D :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    m ( () )
glTexStorage3D
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglTexStorage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glDebugMessageControl :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr (GLuint) ->
    GLboolean ->
    m ( () )
glDebugMessageControl
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglDebugMessageControl fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glDebugMessageInsert :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLuint ->
    GLenum ->
    GLsizei ->
    Ptr (GLchar) ->
    m ( () )
glDebugMessageInsert
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglDebugMessageInsert fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glDebugMessageCallback :: (MonadIO m, MonadReader FlextGL m) =>
    GLDEBUGPROC ->
    Ptr () ->
    m ( () )
glDebugMessageCallback
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDebugMessageCallback fgl

    a0
    a1
    )
glGetDebugMessageLog :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    Ptr (GLenum) ->
    Ptr (GLuint) ->
    Ptr (GLenum) ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( GLuint )
glGetDebugMessageLog
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglGetDebugMessageLog fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glPushDebugGroup :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    m ( () )
glPushDebugGroup
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglPushDebugGroup fgl

    a0
    a1
    a2
    a3
    )
glPopDebugGroup :: (MonadIO m, MonadReader FlextGL m) =>
    m ( () )
glPopDebugGroup
    = ask >>= \fgl -> (liftIO $ rglPopDebugGroup fgl

    )
glObjectLabel :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    m ( () )
glObjectLabel
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglObjectLabel fgl

    a0
    a1
    a2
    a3
    )
glGetObjectLabel :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetObjectLabel
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetObjectLabel fgl

    a0
    a1
    a2
    a3
    a4
    )
glObjectPtrLabel :: (MonadIO m, MonadReader FlextGL m) =>
    Ptr () ->
    GLsizei ->
    Ptr (GLchar) ->
    m ( () )
glObjectPtrLabel
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglObjectPtrLabel fgl

    a0
    a1
    a2
    )
glGetObjectPtrLabel :: (MonadIO m, MonadReader FlextGL m) =>
    Ptr () ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetObjectPtrLabel
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetObjectPtrLabel fgl

    a0
    a1
    a2
    a3
    )
glGetPointerv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (Ptr ()) ->
    m ( () )
glGetPointerv
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetPointerv fgl

    a0
    a1
    )
glDebugMessageControlKHR :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr (GLuint) ->
    GLboolean ->
    m ( () )
glDebugMessageControlKHR
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglDebugMessageControlKHR fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glDebugMessageInsertKHR :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLuint ->
    GLenum ->
    GLsizei ->
    Ptr (GLchar) ->
    m ( () )
glDebugMessageInsertKHR
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglDebugMessageInsertKHR fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glDebugMessageCallbackKHR :: (MonadIO m, MonadReader FlextGL m) =>
    GLDEBUGPROCKHR ->
    Ptr () ->
    m ( () )
glDebugMessageCallbackKHR
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDebugMessageCallbackKHR fgl

    a0
    a1
    )
glGetDebugMessageLogKHR :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    Ptr (GLenum) ->
    Ptr (GLuint) ->
    Ptr (GLenum) ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( GLuint )
glGetDebugMessageLogKHR
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglGetDebugMessageLogKHR fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glPushDebugGroupKHR :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    m ( () )
glPushDebugGroupKHR
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglPushDebugGroupKHR fgl

    a0
    a1
    a2
    a3
    )
glPopDebugGroupKHR :: (MonadIO m, MonadReader FlextGL m) =>
    m ( () )
glPopDebugGroupKHR
    = ask >>= \fgl -> (liftIO $ rglPopDebugGroupKHR fgl

    )
glObjectLabelKHR :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    m ( () )
glObjectLabelKHR
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglObjectLabelKHR fgl

    a0
    a1
    a2
    a3
    )
glGetObjectLabelKHR :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetObjectLabelKHR
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetObjectLabelKHR fgl

    a0
    a1
    a2
    a3
    a4
    )
glObjectPtrLabelKHR :: (MonadIO m, MonadReader FlextGL m) =>
    Ptr () ->
    GLsizei ->
    Ptr (GLchar) ->
    m ( () )
glObjectPtrLabelKHR
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglObjectPtrLabelKHR fgl

    a0
    a1
    a2
    )
glGetObjectPtrLabelKHR :: (MonadIO m, MonadReader FlextGL m) =>
    Ptr () ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetObjectPtrLabelKHR
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetObjectPtrLabelKHR fgl

    a0
    a1
    a2
    a3
    )
glGetPointervKHR :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (Ptr ()) ->
    m ( () )
glGetPointervKHR
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGetPointervKHR fgl

    a0
    a1
    )
glMatrixLoadfEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glMatrixLoadfEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMatrixLoadfEXT fgl

    a0
    a1
    )
glMatrixLoaddEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLdouble) ->
    m ( () )
glMatrixLoaddEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMatrixLoaddEXT fgl

    a0
    a1
    )
glMatrixMultfEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glMatrixMultfEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMatrixMultfEXT fgl

    a0
    a1
    )
glMatrixMultdEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLdouble) ->
    m ( () )
glMatrixMultdEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMatrixMultdEXT fgl

    a0
    a1
    )
glMatrixLoadIdentityEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glMatrixLoadIdentityEXT
    a0
    = ask >>= \fgl -> (liftIO $ rglMatrixLoadIdentityEXT fgl

    a0
    )
glMatrixRotatefEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glMatrixRotatefEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglMatrixRotatefEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glMatrixRotatedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glMatrixRotatedEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglMatrixRotatedEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glMatrixScalefEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glMatrixScalefEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMatrixScalefEXT fgl

    a0
    a1
    a2
    a3
    )
glMatrixScaledEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glMatrixScaledEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMatrixScaledEXT fgl

    a0
    a1
    a2
    a3
    )
glMatrixTranslatefEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glMatrixTranslatefEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMatrixTranslatefEXT fgl

    a0
    a1
    a2
    a3
    )
glMatrixTranslatedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glMatrixTranslatedEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMatrixTranslatedEXT fgl

    a0
    a1
    a2
    a3
    )
glMatrixFrustumEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glMatrixFrustumEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglMatrixFrustumEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glMatrixOrthoEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glMatrixOrthoEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglMatrixOrthoEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glMatrixPopEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glMatrixPopEXT
    a0
    = ask >>= \fgl -> (liftIO $ rglMatrixPopEXT fgl

    a0
    )
glMatrixPushEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    m ( () )
glMatrixPushEXT
    a0
    = ask >>= \fgl -> (liftIO $ rglMatrixPushEXT fgl

    a0
    )
glClientAttribDefaultEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLbitfield ->
    m ( () )
glClientAttribDefaultEXT
    a0
    = ask >>= \fgl -> (liftIO $ rglClientAttribDefaultEXT fgl

    a0
    )
glPushClientAttribDefaultEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLbitfield ->
    m ( () )
glPushClientAttribDefaultEXT
    a0
    = ask >>= \fgl -> (liftIO $ rglPushClientAttribDefaultEXT fgl

    a0
    )
glTextureParameterfEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLfloat ->
    m ( () )
glTextureParameterfEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTextureParameterfEXT fgl

    a0
    a1
    a2
    a3
    )
glTextureParameterfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glTextureParameterfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTextureParameterfvEXT fgl

    a0
    a1
    a2
    a3
    )
glTextureParameteriEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLint ->
    m ( () )
glTextureParameteriEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTextureParameteriEXT fgl

    a0
    a1
    a2
    a3
    )
glTextureParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glTextureParameterivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTextureParameterivEXT fgl

    a0
    a1
    a2
    a3
    )
glTextureImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTextureImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglTextureImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glTextureImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTextureImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglTextureImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glTextureSubImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTextureSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglTextureSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glTextureSubImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTextureSubImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglTextureSubImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glCopyTextureImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    m ( () )
glCopyTextureImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCopyTextureImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glCopyTextureImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    m ( () )
glCopyTextureImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCopyTextureImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glCopyTextureSubImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    m ( () )
glCopyTextureSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglCopyTextureSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glCopyTextureSubImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glCopyTextureSubImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCopyTextureSubImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glGetTextureImageEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glGetTextureImageEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglGetTextureImageEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glGetTextureParameterfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetTextureParameterfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetTextureParameterfvEXT fgl

    a0
    a1
    a2
    a3
    )
glGetTextureParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetTextureParameterivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetTextureParameterivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetTextureLevelParameterfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetTextureLevelParameterfvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetTextureLevelParameterfvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetTextureLevelParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetTextureLevelParameterivEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetTextureLevelParameterivEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glTextureImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTextureImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    = ask >>= \fgl -> (liftIO $ rglTextureImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    )
glTextureSubImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glTextureSubImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    a11
    = ask >>= \fgl -> (liftIO $ rglTextureSubImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    a11
    )
glCopyTextureSubImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glCopyTextureSubImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglCopyTextureSubImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glBindMultiTextureEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLuint ->
    m ( () )
glBindMultiTextureEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglBindMultiTextureEXT fgl

    a0
    a1
    a2
    )
glMultiTexCoordPointerEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glMultiTexCoordPointerEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglMultiTexCoordPointerEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glMultiTexEnvfEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    m ( () )
glMultiTexEnvfEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexEnvfEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexEnvfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glMultiTexEnvfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexEnvfvEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexEnviEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    m ( () )
glMultiTexEnviEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexEnviEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexEnvivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glMultiTexEnvivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexEnvivEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexGendEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLdouble ->
    m ( () )
glMultiTexGendEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexGendEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexGendvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLdouble) ->
    m ( () )
glMultiTexGendvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexGendvEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexGenfEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    m ( () )
glMultiTexGenfEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexGenfEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexGenfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glMultiTexGenfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexGenfvEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexGeniEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    m ( () )
glMultiTexGeniEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexGeniEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexGenivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glMultiTexGenivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexGenivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexEnvfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetMultiTexEnvfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexEnvfvEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexEnvivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetMultiTexEnvivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexEnvivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexGendvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLdouble) ->
    m ( () )
glGetMultiTexGendvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexGendvEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexGenfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetMultiTexGenfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexGenfvEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexGenivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetMultiTexGenivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexGenivEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexParameteriEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    m ( () )
glMultiTexParameteriEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexParameteriEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glMultiTexParameterivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexParameterivEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexParameterfEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    m ( () )
glMultiTexParameterfEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexParameterfEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexParameterfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glMultiTexParameterfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexParameterfvEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glMultiTexImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglMultiTexImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glMultiTexImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glMultiTexImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglMultiTexImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glMultiTexSubImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glMultiTexSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglMultiTexSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glMultiTexSubImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glMultiTexSubImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglMultiTexSubImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glCopyMultiTexImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    m ( () )
glCopyMultiTexImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCopyMultiTexImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glCopyMultiTexImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    m ( () )
glCopyMultiTexImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCopyMultiTexImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glCopyMultiTexSubImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    m ( () )
glCopyMultiTexSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglCopyMultiTexSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glCopyMultiTexSubImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glCopyMultiTexSubImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCopyMultiTexSubImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glGetMultiTexImageEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glGetMultiTexImageEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexImageEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glGetMultiTexParameterfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetMultiTexParameterfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexParameterfvEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetMultiTexParameterivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexParameterivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexLevelParameterfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glGetMultiTexLevelParameterfvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexLevelParameterfvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetMultiTexLevelParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetMultiTexLevelParameterivEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexLevelParameterivEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glMultiTexImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glMultiTexImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    = ask >>= \fgl -> (liftIO $ rglMultiTexImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    )
glMultiTexSubImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glMultiTexSubImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    a11
    = ask >>= \fgl -> (liftIO $ rglMultiTexSubImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    a11
    )
glCopyMultiTexSubImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glCopyMultiTexSubImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglCopyMultiTexSubImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glEnableClientStateIndexedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glEnableClientStateIndexedEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglEnableClientStateIndexedEXT fgl

    a0
    a1
    )
glDisableClientStateIndexedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glDisableClientStateIndexedEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDisableClientStateIndexedEXT fgl

    a0
    a1
    )
glGetFloatIndexedvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glGetFloatIndexedvEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetFloatIndexedvEXT fgl

    a0
    a1
    a2
    )
glGetDoubleIndexedvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    m ( () )
glGetDoubleIndexedvEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetDoubleIndexedvEXT fgl

    a0
    a1
    a2
    )
glGetPointerIndexedvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (Ptr ()) ->
    m ( () )
glGetPointerIndexedvEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetPointerIndexedvEXT fgl

    a0
    a1
    a2
    )
glEnableIndexedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glEnableIndexedEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglEnableIndexedEXT fgl

    a0
    a1
    )
glDisableIndexedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glDisableIndexedEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDisableIndexedEXT fgl

    a0
    a1
    )
glIsEnabledIndexedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( GLboolean )
glIsEnabledIndexedEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglIsEnabledIndexedEXT fgl

    a0
    a1
    )
glGetIntegerIndexedvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glGetIntegerIndexedvEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetIntegerIndexedvEXT fgl

    a0
    a1
    a2
    )
glGetBooleanIndexedvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLboolean) ->
    m ( () )
glGetBooleanIndexedvEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetBooleanIndexedvEXT fgl

    a0
    a1
    a2
    )
glCompressedTextureImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTextureImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglCompressedTextureImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glCompressedTextureImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTextureImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCompressedTextureImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glCompressedTextureImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTextureImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCompressedTextureImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glCompressedTextureSubImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTextureSubImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    a11
    = ask >>= \fgl -> (liftIO $ rglCompressedTextureSubImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    a11
    )
glCompressedTextureSubImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTextureSubImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglCompressedTextureSubImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glCompressedTextureSubImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedTextureSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCompressedTextureSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glGetCompressedTextureImageEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    Ptr () ->
    m ( () )
glGetCompressedTextureImageEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetCompressedTextureImageEXT fgl

    a0
    a1
    a2
    a3
    )
glCompressedMultiTexImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedMultiTexImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglCompressedMultiTexImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glCompressedMultiTexImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedMultiTexImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglCompressedMultiTexImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glCompressedMultiTexImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedMultiTexImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCompressedMultiTexImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glCompressedMultiTexSubImage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedMultiTexSubImage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    a11
    = ask >>= \fgl -> (liftIO $ rglCompressedMultiTexSubImage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    a10
    a11
    )
glCompressedMultiTexSubImage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedMultiTexSubImage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    = ask >>= \fgl -> (liftIO $ rglCompressedMultiTexSubImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    a9
    )
glCompressedMultiTexSubImage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glCompressedMultiTexSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglCompressedMultiTexSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glGetCompressedMultiTexImageEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLint ->
    Ptr () ->
    m ( () )
glGetCompressedMultiTexImageEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetCompressedMultiTexImageEXT fgl

    a0
    a1
    a2
    a3
    )
glMatrixLoadTransposefEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glMatrixLoadTransposefEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMatrixLoadTransposefEXT fgl

    a0
    a1
    )
glMatrixLoadTransposedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLdouble) ->
    m ( () )
glMatrixLoadTransposedEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMatrixLoadTransposedEXT fgl

    a0
    a1
    )
glMatrixMultTransposefEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLfloat) ->
    m ( () )
glMatrixMultTransposefEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMatrixMultTransposefEXT fgl

    a0
    a1
    )
glMatrixMultTransposedEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    Ptr (GLdouble) ->
    m ( () )
glMatrixMultTransposedEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMatrixMultTransposedEXT fgl

    a0
    a1
    )
glNamedBufferDataEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizeiptr ->
    Ptr () ->
    GLenum ->
    m ( () )
glNamedBufferDataEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedBufferDataEXT fgl

    a0
    a1
    a2
    a3
    )
glNamedBufferSubDataEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    m ( () )
glNamedBufferSubDataEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedBufferSubDataEXT fgl

    a0
    a1
    a2
    a3
    )
glMapNamedBufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( Ptr () )
glMapNamedBufferEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglMapNamedBufferEXT fgl

    a0
    a1
    )
glUnmapNamedBufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glUnmapNamedBufferEXT
    a0
    = ask >>= \fgl -> (liftIO $ rglUnmapNamedBufferEXT fgl

    a0
    )
glGetNamedBufferParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetNamedBufferParameterivEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetNamedBufferParameterivEXT fgl

    a0
    a1
    a2
    )
glGetNamedBufferPointervEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    m ( () )
glGetNamedBufferPointervEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetNamedBufferPointervEXT fgl

    a0
    a1
    a2
    )
glGetNamedBufferSubDataEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    m ( () )
glGetNamedBufferSubDataEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetNamedBufferSubDataEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform1fEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLfloat ->
    m ( () )
glProgramUniform1fEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1fEXT fgl

    a0
    a1
    a2
    )
glProgramUniform2fEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    m ( () )
glProgramUniform2fEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2fEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3fEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glProgramUniform3fEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3fEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniform4fEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glProgramUniform4fEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4fEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProgramUniform1iEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    m ( () )
glProgramUniform1iEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1iEXT fgl

    a0
    a1
    a2
    )
glProgramUniform2iEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glProgramUniform2iEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2iEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3iEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glProgramUniform3iEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3iEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniform4iEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glProgramUniform4iEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4iEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProgramUniform1fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniform1fvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1fvEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniform2fvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2fvEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniform3fvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3fvEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform4fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniform4fvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4fvEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform1ivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glProgramUniform1ivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1ivEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2ivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glProgramUniform2ivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2ivEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3ivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glProgramUniform3ivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3ivEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform4ivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glProgramUniform4ivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4ivEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniformMatrix2fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix2fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix3fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix4fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2x3fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix2x3fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2x3fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3x2fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix3x2fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3x2fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2x4fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix2x4fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2x4fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4x2fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix4x2fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4x2fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3x4fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix3x4fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3x4fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4x3fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix4x3fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4x3fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glTextureBufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    m ( () )
glTextureBufferEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTextureBufferEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexBufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    m ( () )
glMultiTexBufferEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexBufferEXT fgl

    a0
    a1
    a2
    a3
    )
glTextureParameterIivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glTextureParameterIivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTextureParameterIivEXT fgl

    a0
    a1
    a2
    a3
    )
glTextureParameterIuivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glTextureParameterIuivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglTextureParameterIuivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetTextureParameterIivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetTextureParameterIivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetTextureParameterIivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetTextureParameterIuivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glGetTextureParameterIuivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetTextureParameterIuivEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexParameterIivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glMultiTexParameterIivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexParameterIivEXT fgl

    a0
    a1
    a2
    a3
    )
glMultiTexParameterIuivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glMultiTexParameterIuivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMultiTexParameterIuivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexParameterIivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetMultiTexParameterIivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexParameterIivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetMultiTexParameterIuivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    m ( () )
glGetMultiTexParameterIuivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetMultiTexParameterIuivEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform1uiEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLuint ->
    m ( () )
glProgramUniform1uiEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1uiEXT fgl

    a0
    a1
    a2
    )
glProgramUniform2uiEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    m ( () )
glProgramUniform2uiEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2uiEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3uiEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glProgramUniform3uiEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3uiEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniform4uiEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glProgramUniform4uiEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4uiEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProgramUniform1uivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glProgramUniform1uivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1uivEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2uivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glProgramUniform2uivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2uivEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3uivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glProgramUniform3uivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3uivEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform4uivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glProgramUniform4uivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4uivEXT fgl

    a0
    a1
    a2
    a3
    )
glNamedProgramLocalParameters4fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glNamedProgramLocalParameters4fvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameters4fvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glNamedProgramLocalParameterI4iEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glNamedProgramLocalParameterI4iEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameterI4iEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glNamedProgramLocalParameterI4ivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glNamedProgramLocalParameterI4ivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameterI4ivEXT fgl

    a0
    a1
    a2
    a3
    )
glNamedProgramLocalParametersI4ivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glNamedProgramLocalParametersI4ivEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParametersI4ivEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glNamedProgramLocalParameterI4uiEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glNamedProgramLocalParameterI4uiEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameterI4uiEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glNamedProgramLocalParameterI4uivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLuint) ->
    m ( () )
glNamedProgramLocalParameterI4uivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameterI4uivEXT fgl

    a0
    a1
    a2
    a3
    )
glNamedProgramLocalParametersI4uivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glNamedProgramLocalParametersI4uivEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParametersI4uivEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glGetNamedProgramLocalParameterIivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    m ( () )
glGetNamedProgramLocalParameterIivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetNamedProgramLocalParameterIivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetNamedProgramLocalParameterIuivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLuint) ->
    m ( () )
glGetNamedProgramLocalParameterIuivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetNamedProgramLocalParameterIuivEXT fgl

    a0
    a1
    a2
    a3
    )
glEnableClientStateiEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glEnableClientStateiEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglEnableClientStateiEXT fgl

    a0
    a1
    )
glDisableClientStateiEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    m ( () )
glDisableClientStateiEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDisableClientStateiEXT fgl

    a0
    a1
    )
glGetFloati_vEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glGetFloati_vEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetFloati_vEXT fgl

    a0
    a1
    a2
    )
glGetDoublei_vEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    m ( () )
glGetDoublei_vEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetDoublei_vEXT fgl

    a0
    a1
    a2
    )
glGetPointeri_vEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLuint ->
    Ptr (Ptr ()) ->
    m ( () )
glGetPointeri_vEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetPointeri_vEXT fgl

    a0
    a1
    a2
    )
glNamedProgramStringEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    m ( () )
glNamedProgramStringEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedProgramStringEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glNamedProgramLocalParameter4dEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glNamedProgramLocalParameter4dEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameter4dEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glNamedProgramLocalParameter4dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    m ( () )
glNamedProgramLocalParameter4dvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameter4dvEXT fgl

    a0
    a1
    a2
    a3
    )
glNamedProgramLocalParameter4fEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glNamedProgramLocalParameter4fEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameter4fEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glNamedProgramLocalParameter4fvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glNamedProgramLocalParameter4fvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedProgramLocalParameter4fvEXT fgl

    a0
    a1
    a2
    a3
    )
glGetNamedProgramLocalParameterdvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    m ( () )
glGetNamedProgramLocalParameterdvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetNamedProgramLocalParameterdvEXT fgl

    a0
    a1
    a2
    a3
    )
glGetNamedProgramLocalParameterfvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    m ( () )
glGetNamedProgramLocalParameterfvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetNamedProgramLocalParameterfvEXT fgl

    a0
    a1
    a2
    a3
    )
glGetNamedProgramivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetNamedProgramivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetNamedProgramivEXT fgl

    a0
    a1
    a2
    a3
    )
glGetNamedProgramStringEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glGetNamedProgramStringEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetNamedProgramStringEXT fgl

    a0
    a1
    a2
    a3
    )
glNamedRenderbufferStorageEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    m ( () )
glNamedRenderbufferStorageEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedRenderbufferStorageEXT fgl

    a0
    a1
    a2
    a3
    )
glGetNamedRenderbufferParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetNamedRenderbufferParameterivEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetNamedRenderbufferParameterivEXT fgl

    a0
    a1
    a2
    )
glNamedRenderbufferStorageMultisampleEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    m ( () )
glNamedRenderbufferStorageMultisampleEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedRenderbufferStorageMultisampleEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glNamedRenderbufferStorageMultisampleCoverageEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    m ( () )
glNamedRenderbufferStorageMultisampleCoverageEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglNamedRenderbufferStorageMultisampleCoverageEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glCheckNamedFramebufferStatusEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( GLenum )
glCheckNamedFramebufferStatusEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglCheckNamedFramebufferStatusEXT fgl

    a0
    a1
    )
glNamedFramebufferTexture1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    m ( () )
glNamedFramebufferTexture1DEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedFramebufferTexture1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glNamedFramebufferTexture2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    m ( () )
glNamedFramebufferTexture2DEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedFramebufferTexture2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glNamedFramebufferTexture3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    m ( () )
glNamedFramebufferTexture3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglNamedFramebufferTexture3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glNamedFramebufferRenderbufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    m ( () )
glNamedFramebufferRenderbufferEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedFramebufferRenderbufferEXT fgl

    a0
    a1
    a2
    a3
    )
glGetNamedFramebufferAttachmentParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetNamedFramebufferAttachmentParameterivEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetNamedFramebufferAttachmentParameterivEXT fgl

    a0
    a1
    a2
    a3
    )
glGenerateTextureMipmapEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( () )
glGenerateTextureMipmapEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenerateTextureMipmapEXT fgl

    a0
    a1
    )
glGenerateMultiTexMipmapEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    m ( () )
glGenerateMultiTexMipmapEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenerateMultiTexMipmapEXT fgl

    a0
    a1
    )
glFramebufferDrawBufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( () )
glFramebufferDrawBufferEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglFramebufferDrawBufferEXT fgl

    a0
    a1
    )
glFramebufferDrawBuffersEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    m ( () )
glFramebufferDrawBuffersEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglFramebufferDrawBuffersEXT fgl

    a0
    a1
    a2
    )
glFramebufferReadBufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( () )
glFramebufferReadBufferEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglFramebufferReadBufferEXT fgl

    a0
    a1
    )
glGetFramebufferParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetFramebufferParameterivEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetFramebufferParameterivEXT fgl

    a0
    a1
    a2
    )
glNamedCopyBufferSubDataEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLintptr ->
    GLintptr ->
    GLsizeiptr ->
    m ( () )
glNamedCopyBufferSubDataEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedCopyBufferSubDataEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glNamedFramebufferTextureEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    m ( () )
glNamedFramebufferTextureEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedFramebufferTextureEXT fgl

    a0
    a1
    a2
    a3
    )
glNamedFramebufferTextureLayerEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    m ( () )
glNamedFramebufferTextureLayerEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedFramebufferTextureLayerEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glNamedFramebufferTextureFaceEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLenum ->
    m ( () )
glNamedFramebufferTextureFaceEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglNamedFramebufferTextureFaceEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glTextureRenderbufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLuint ->
    m ( () )
glTextureRenderbufferEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglTextureRenderbufferEXT fgl

    a0
    a1
    a2
    )
glMultiTexRenderbufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLenum ->
    GLuint ->
    m ( () )
glMultiTexRenderbufferEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglMultiTexRenderbufferEXT fgl

    a0
    a1
    a2
    )
glVertexArrayVertexOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayVertexOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glVertexArrayColorOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayColorOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglVertexArrayColorOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glVertexArrayEdgeFlagOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayEdgeFlagOffsetEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglVertexArrayEdgeFlagOffsetEXT fgl

    a0
    a1
    a2
    a3
    )
glVertexArrayIndexOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayIndexOffsetEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexArrayIndexOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexArrayNormalOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayNormalOffsetEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexArrayNormalOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexArrayTexCoordOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayTexCoordOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglVertexArrayTexCoordOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glVertexArrayMultiTexCoordOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayMultiTexCoordOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglVertexArrayMultiTexCoordOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glVertexArrayFogCoordOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayFogCoordOffsetEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexArrayFogCoordOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexArraySecondaryColorOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArraySecondaryColorOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglVertexArraySecondaryColorOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glVertexArrayVertexAttribOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayVertexAttribOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexAttribOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glVertexArrayVertexAttribIOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayVertexAttribIOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexAttribIOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glEnableVertexArrayEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( () )
glEnableVertexArrayEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglEnableVertexArrayEXT fgl

    a0
    a1
    )
glDisableVertexArrayEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    m ( () )
glDisableVertexArrayEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDisableVertexArrayEXT fgl

    a0
    a1
    )
glEnableVertexArrayAttribEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    m ( () )
glEnableVertexArrayAttribEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglEnableVertexArrayAttribEXT fgl

    a0
    a1
    )
glDisableVertexArrayAttribEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    m ( () )
glDisableVertexArrayAttribEXT
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDisableVertexArrayAttribEXT fgl

    a0
    a1
    )
glGetVertexArrayIntegervEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetVertexArrayIntegervEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetVertexArrayIntegervEXT fgl

    a0
    a1
    a2
    )
glGetVertexArrayPointervEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    m ( () )
glGetVertexArrayPointervEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetVertexArrayPointervEXT fgl

    a0
    a1
    a2
    )
glGetVertexArrayIntegeri_vEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetVertexArrayIntegeri_vEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetVertexArrayIntegeri_vEXT fgl

    a0
    a1
    a2
    a3
    )
glGetVertexArrayPointeri_vEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    m ( () )
glGetVertexArrayPointeri_vEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetVertexArrayPointeri_vEXT fgl

    a0
    a1
    a2
    a3
    )
glMapNamedBufferRangeEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    GLbitfield ->
    m ( Ptr () )
glMapNamedBufferRangeEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglMapNamedBufferRangeEXT fgl

    a0
    a1
    a2
    a3
    )
glFlushMappedNamedBufferRangeEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    m ( () )
glFlushMappedNamedBufferRangeEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglFlushMappedNamedBufferRangeEXT fgl

    a0
    a1
    a2
    )
glNamedBufferStorageEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizeiptr ->
    Ptr () ->
    GLbitfield ->
    m ( () )
glNamedBufferStorageEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglNamedBufferStorageEXT fgl

    a0
    a1
    a2
    a3
    )
glClearNamedBufferDataEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glClearNamedBufferDataEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglClearNamedBufferDataEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glClearNamedBufferSubDataEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLsizeiptr ->
    GLsizeiptr ->
    GLenum ->
    GLenum ->
    Ptr () ->
    m ( () )
glClearNamedBufferSubDataEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglClearNamedBufferSubDataEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glNamedFramebufferParameteriEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLint ->
    m ( () )
glNamedFramebufferParameteriEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglNamedFramebufferParameteriEXT fgl

    a0
    a1
    a2
    )
glGetNamedFramebufferParameterivEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetNamedFramebufferParameterivEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetNamedFramebufferParameterivEXT fgl

    a0
    a1
    a2
    )
glProgramUniform1dEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLdouble ->
    m ( () )
glProgramUniform1dEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1dEXT fgl

    a0
    a1
    a2
    )
glProgramUniform2dEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    m ( () )
glProgramUniform2dEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2dEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3dEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glProgramUniform3dEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3dEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniform4dEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glProgramUniform4dEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4dEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProgramUniform1dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniform1dvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1dvEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniform2dvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2dvEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniform3dvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3dvEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform4dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniform4dvEXT
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4dvEXT fgl

    a0
    a1
    a2
    a3
    )
glProgramUniformMatrix2dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix2dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix3dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix4dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2x3dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix2x3dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2x3dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2x4dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix2x4dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2x4dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3x2dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix3x2dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3x2dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3x4dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix3x4dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3x4dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4x2dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix4x2dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4x2dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4x3dvEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix4x3dvEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4x3dvEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glTextureBufferRangeEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    m ( () )
glTextureBufferRangeEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglTextureBufferRangeEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glTextureStorage1DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    m ( () )
glTextureStorage1DEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglTextureStorage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glTextureStorage2DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    m ( () )
glTextureStorage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglTextureStorage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glTextureStorage3DEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    m ( () )
glTextureStorage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglTextureStorage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glTextureStorage2DMultisampleEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    m ( () )
glTextureStorage2DMultisampleEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglTextureStorage2DMultisampleEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glTextureStorage3DMultisampleEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    m ( () )
glTextureStorage3DMultisampleEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglTextureStorage3DMultisampleEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glVertexArrayBindVertexBufferEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    GLintptr ->
    GLsizei ->
    m ( () )
glVertexArrayBindVertexBufferEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexArrayBindVertexBufferEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexArrayVertexAttribFormatEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    m ( () )
glVertexArrayVertexAttribFormatEXT
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexAttribFormatEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glVertexArrayVertexAttribIFormatEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLuint ->
    m ( () )
glVertexArrayVertexAttribIFormatEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexAttribIFormatEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexArrayVertexAttribLFormatEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLuint ->
    m ( () )
glVertexArrayVertexAttribLFormatEXT
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexAttribLFormatEXT fgl

    a0
    a1
    a2
    a3
    a4
    )
glVertexArrayVertexAttribBindingEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glVertexArrayVertexAttribBindingEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexAttribBindingEXT fgl

    a0
    a1
    a2
    )
glVertexArrayVertexBindingDivisorEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glVertexArrayVertexBindingDivisorEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexBindingDivisorEXT fgl

    a0
    a1
    a2
    )
glVertexArrayVertexAttribLOffsetEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    m ( () )
glVertexArrayVertexAttribLOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexAttribLOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )
glTexturePageCommitmentEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    m ( () )
glTexturePageCommitmentEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    = ask >>= \fgl -> (liftIO $ rglTexturePageCommitmentEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
    )
glVertexArrayVertexAttribDivisorEXT :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glVertexArrayVertexAttribDivisorEXT
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglVertexArrayVertexAttribDivisorEXT fgl

    a0
    a1
    a2
    )
glBufferStorage :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizeiptr ->
    Ptr () ->
    GLbitfield ->
    m ( () )
glBufferStorage
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglBufferStorage fgl

    a0
    a1
    a2
    a3
    )
glUseProgramStages :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLbitfield ->
    GLuint ->
    m ( () )
glUseProgramStages
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglUseProgramStages fgl

    a0
    a1
    a2
    )
glActiveShaderProgram :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLuint ->
    m ( () )
glActiveShaderProgram
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglActiveShaderProgram fgl

    a0
    a1
    )
glCreateShaderProgramv :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    m ( GLuint )
glCreateShaderProgramv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglCreateShaderProgramv fgl

    a0
    a1
    a2
    )
glBindProgramPipeline :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glBindProgramPipeline
    a0
    = ask >>= \fgl -> (liftIO $ rglBindProgramPipeline fgl

    a0
    )
glDeleteProgramPipelines :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glDeleteProgramPipelines
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglDeleteProgramPipelines fgl

    a0
    a1
    )
glGenProgramPipelines :: (MonadIO m, MonadReader FlextGL m) =>
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glGenProgramPipelines
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglGenProgramPipelines fgl

    a0
    a1
    )
glIsProgramPipeline :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( GLboolean )
glIsProgramPipeline
    a0
    = ask >>= \fgl -> (liftIO $ rglIsProgramPipeline fgl

    a0
    )
glGetProgramPipelineiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    m ( () )
glGetProgramPipelineiv
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglGetProgramPipelineiv fgl

    a0
    a1
    a2
    )
glProgramUniform1i :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    m ( () )
glProgramUniform1i
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1i fgl

    a0
    a1
    a2
    )
glProgramUniform1iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glProgramUniform1iv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1iv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform1f :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLfloat ->
    m ( () )
glProgramUniform1f
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1f fgl

    a0
    a1
    a2
    )
glProgramUniform1fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniform1fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1fv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform1d :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLdouble ->
    m ( () )
glProgramUniform1d
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1d fgl

    a0
    a1
    a2
    )
glProgramUniform1dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniform1dv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1dv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform1ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLuint ->
    m ( () )
glProgramUniform1ui
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1ui fgl

    a0
    a1
    a2
    )
glProgramUniform1uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glProgramUniform1uiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform1uiv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2i :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glProgramUniform2i
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2i fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glProgramUniform2iv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2iv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2f :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    m ( () )
glProgramUniform2f
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2f fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniform2fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2fv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2d :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    m ( () )
glProgramUniform2d
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2d fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniform2dv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2dv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    m ( () )
glProgramUniform2ui
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2ui fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform2uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glProgramUniform2uiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform2uiv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3i :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glProgramUniform3i
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3i fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniform3iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glProgramUniform3iv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3iv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3f :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glProgramUniform3f
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3f fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniform3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniform3fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3fv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3d :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glProgramUniform3d
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3d fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniform3dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniform3dv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3dv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform3ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glProgramUniform3ui
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3ui fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniform3uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glProgramUniform3uiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform3uiv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform4i :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    m ( () )
glProgramUniform4i
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4i fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProgramUniform4iv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    m ( () )
glProgramUniform4iv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4iv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform4f :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    m ( () )
glProgramUniform4f
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4f fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProgramUniform4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniform4fv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4fv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform4d :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    m ( () )
glProgramUniform4d
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4d fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProgramUniform4dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniform4dv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4dv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniform4ui :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    m ( () )
glProgramUniform4ui
    a0
    a1
    a2
    a3
    a4
    a5
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4ui fgl

    a0
    a1
    a2
    a3
    a4
    a5
    )
glProgramUniform4uiv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    m ( () )
glProgramUniform4uiv
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglProgramUniform4uiv fgl

    a0
    a1
    a2
    a3
    )
glProgramUniformMatrix2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix2fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix3fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix4fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix2dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix3dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix4dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2x3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix2x3fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2x3fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3x2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix3x2fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3x2fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2x4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix2x4fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2x4fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4x2fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix4x2fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4x2fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3x4fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix3x4fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3x4fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4x3fv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    m ( () )
glProgramUniformMatrix4x3fv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4x3fv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2x3dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix2x3dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2x3dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3x2dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix3x2dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3x2dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix2x4dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix2x4dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix2x4dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4x2dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix4x2dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4x2dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix3x4dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix3x4dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix3x4dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glProgramUniformMatrix4x3dv :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    m ( () )
glProgramUniformMatrix4x3dv
    a0
    a1
    a2
    a3
    a4
    = ask >>= \fgl -> (liftIO $ rglProgramUniformMatrix4x3dv fgl

    a0
    a1
    a2
    a3
    a4
    )
glValidateProgramPipeline :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glValidateProgramPipeline
    a0
    = ask >>= \fgl -> (liftIO $ rglValidateProgramPipeline fgl

    a0
    )
glGetProgramPipelineInfoLog :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    m ( () )
glGetProgramPipelineInfoLog
    a0
    a1
    a2
    a3
    = ask >>= \fgl -> (liftIO $ rglGetProgramPipelineInfoLog fgl

    a0
    a1
    a2
    a3
    )
glInvalidateTexSubImage :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    m ( () )
glInvalidateTexSubImage
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    = ask >>= \fgl -> (liftIO $ rglInvalidateTexSubImage fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    )
glInvalidateTexImage :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLint ->
    m ( () )
glInvalidateTexImage
    a0
    a1
    = ask >>= \fgl -> (liftIO $ rglInvalidateTexImage fgl

    a0
    a1
    )
glInvalidateBufferSubData :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    m ( () )
glInvalidateBufferSubData
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglInvalidateBufferSubData fgl

    a0
    a1
    a2
    )
glInvalidateBufferData :: (MonadIO m, MonadReader FlextGL m) =>
    GLuint ->
    m ( () )
glInvalidateBufferData
    a0
    = ask >>= \fgl -> (liftIO $ rglInvalidateBufferData fgl

    a0
    )
glInvalidateFramebuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    Ptr (GLenum) ->
    m ( () )
glInvalidateFramebuffer
    a0
    a1
    a2
    = ask >>= \fgl -> (liftIO $ rglInvalidateFramebuffer fgl

    a0
    a1
    a2
    )
glInvalidateSubFramebuffer :: (MonadIO m, MonadReader FlextGL m) =>
    GLenum ->
    GLsizei ->
    Ptr (GLenum) ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    m ( () )
glInvalidateSubFramebuffer
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    = ask >>= \fgl -> (liftIO $ rglInvalidateSubFramebuffer fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    )

