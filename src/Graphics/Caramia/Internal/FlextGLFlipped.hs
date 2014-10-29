-- | Automatically generated raw OpenGL bindings using flextGL
--
-- <https://github.com/Noeda/flextGL>
--



module Graphics.Caramia.Internal.FlextGLFlipped
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
import Foreign.Ptr

glCullFace ::
    GLenum ->
    FlextGL -> IO ( () )
glCullFace
    a0
    fgl = rglCullFace fgl

    a0
glFrontFace ::
    GLenum ->
    FlextGL -> IO ( () )
glFrontFace
    a0
    fgl = rglFrontFace fgl

    a0
glHint ::
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glHint
    a0
    a1
    fgl = rglHint fgl

    a0
    a1
glLineWidth ::
    GLfloat ->
    FlextGL -> IO ( () )
glLineWidth
    a0
    fgl = rglLineWidth fgl

    a0
glPointSize ::
    GLfloat ->
    FlextGL -> IO ( () )
glPointSize
    a0
    fgl = rglPointSize fgl

    a0
glPolygonMode ::
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glPolygonMode
    a0
    a1
    fgl = rglPolygonMode fgl

    a0
    a1
glScissor ::
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glScissor
    a0
    a1
    a2
    a3
    fgl = rglScissor fgl

    a0
    a1
    a2
    a3
glTexParameterf ::
    GLenum ->
    GLenum ->
    GLfloat ->
    FlextGL -> IO ( () )
glTexParameterf
    a0
    a1
    a2
    fgl = rglTexParameterf fgl

    a0
    a1
    a2
glTexParameterfv ::
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glTexParameterfv
    a0
    a1
    a2
    fgl = rglTexParameterfv fgl

    a0
    a1
    a2
glTexParameteri ::
    GLenum ->
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glTexParameteri
    a0
    a1
    a2
    fgl = rglTexParameteri fgl

    a0
    a1
    a2
glTexParameteriv ::
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glTexParameteriv
    a0
    a1
    a2
    fgl = rglTexParameteriv fgl

    a0
    a1
    a2
glTexImage1D ::
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glTexImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglTexImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glTexImage2D ::
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
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
    fgl = rglTexImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glDrawBuffer ::
    GLenum ->
    FlextGL -> IO ( () )
glDrawBuffer
    a0
    fgl = rglDrawBuffer fgl

    a0
glClear ::
    GLbitfield ->
    FlextGL -> IO ( () )
glClear
    a0
    fgl = rglClear fgl

    a0
glClearColor ::
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glClearColor
    a0
    a1
    a2
    a3
    fgl = rglClearColor fgl

    a0
    a1
    a2
    a3
glClearStencil ::
    GLint ->
    FlextGL -> IO ( () )
glClearStencil
    a0
    fgl = rglClearStencil fgl

    a0
glClearDepth ::
    GLdouble ->
    FlextGL -> IO ( () )
glClearDepth
    a0
    fgl = rglClearDepth fgl

    a0
glStencilMask ::
    GLuint ->
    FlextGL -> IO ( () )
glStencilMask
    a0
    fgl = rglStencilMask fgl

    a0
glColorMask ::
    GLboolean ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    FlextGL -> IO ( () )
glColorMask
    a0
    a1
    a2
    a3
    fgl = rglColorMask fgl

    a0
    a1
    a2
    a3
glDepthMask ::
    GLboolean ->
    FlextGL -> IO ( () )
glDepthMask
    a0
    fgl = rglDepthMask fgl

    a0
glDisable ::
    GLenum ->
    FlextGL -> IO ( () )
glDisable
    a0
    fgl = rglDisable fgl

    a0
glEnable ::
    GLenum ->
    FlextGL -> IO ( () )
glEnable
    a0
    fgl = rglEnable fgl

    a0
glFinish ::
    FlextGL -> IO ( () )
glFinish
    fgl = rglFinish fgl

glFlush ::
    FlextGL -> IO ( () )
glFlush
    fgl = rglFlush fgl

glBlendFunc ::
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glBlendFunc
    a0
    a1
    fgl = rglBlendFunc fgl

    a0
    a1
glLogicOp ::
    GLenum ->
    FlextGL -> IO ( () )
glLogicOp
    a0
    fgl = rglLogicOp fgl

    a0
glStencilFunc ::
    GLenum ->
    GLint ->
    GLuint ->
    FlextGL -> IO ( () )
glStencilFunc
    a0
    a1
    a2
    fgl = rglStencilFunc fgl

    a0
    a1
    a2
glStencilOp ::
    GLenum ->
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glStencilOp
    a0
    a1
    a2
    fgl = rglStencilOp fgl

    a0
    a1
    a2
glDepthFunc ::
    GLenum ->
    FlextGL -> IO ( () )
glDepthFunc
    a0
    fgl = rglDepthFunc fgl

    a0
glPixelStoref ::
    GLenum ->
    GLfloat ->
    FlextGL -> IO ( () )
glPixelStoref
    a0
    a1
    fgl = rglPixelStoref fgl

    a0
    a1
glPixelStorei ::
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glPixelStorei
    a0
    a1
    fgl = rglPixelStorei fgl

    a0
    a1
glReadBuffer ::
    GLenum ->
    FlextGL -> IO ( () )
glReadBuffer
    a0
    fgl = rglReadBuffer fgl

    a0
glReadPixels ::
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glReadPixels
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglReadPixels fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glGetBooleanv ::
    GLenum ->
    Ptr (GLboolean) ->
    FlextGL -> IO ( () )
glGetBooleanv
    a0
    a1
    fgl = rglGetBooleanv fgl

    a0
    a1
glGetDoublev ::
    GLenum ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glGetDoublev
    a0
    a1
    fgl = rglGetDoublev fgl

    a0
    a1
glGetError ::
    FlextGL -> IO ( GLenum )
glGetError
    fgl = rglGetError fgl

glGetFloatv ::
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetFloatv
    a0
    a1
    fgl = rglGetFloatv fgl

    a0
    a1
glGetIntegerv ::
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetIntegerv
    a0
    a1
    fgl = rglGetIntegerv fgl

    a0
    a1
glGetString ::
    GLenum ->
    FlextGL -> IO ( Ptr (GLubyte) )
glGetString
    a0
    fgl = rglGetString fgl

    a0
glGetTexImage ::
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetTexImage
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetTexImage fgl

    a0
    a1
    a2
    a3
    a4
glGetTexParameterfv ::
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetTexParameterfv
    a0
    a1
    a2
    fgl = rglGetTexParameterfv fgl

    a0
    a1
    a2
glGetTexParameteriv ::
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetTexParameteriv
    a0
    a1
    a2
    fgl = rglGetTexParameteriv fgl

    a0
    a1
    a2
glGetTexLevelParameterfv ::
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetTexLevelParameterfv
    a0
    a1
    a2
    a3
    fgl = rglGetTexLevelParameterfv fgl

    a0
    a1
    a2
    a3
glGetTexLevelParameteriv ::
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetTexLevelParameteriv
    a0
    a1
    a2
    a3
    fgl = rglGetTexLevelParameteriv fgl

    a0
    a1
    a2
    a3
glIsEnabled ::
    GLenum ->
    FlextGL -> IO ( GLboolean )
glIsEnabled
    a0
    fgl = rglIsEnabled fgl

    a0
glDepthRange ::
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glDepthRange
    a0
    a1
    fgl = rglDepthRange fgl

    a0
    a1
glViewport ::
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glViewport
    a0
    a1
    a2
    a3
    fgl = rglViewport fgl

    a0
    a1
    a2
    a3
glDrawArrays ::
    GLenum ->
    GLint ->
    GLsizei ->
    FlextGL -> IO ( () )
glDrawArrays
    a0
    a1
    a2
    fgl = rglDrawArrays fgl

    a0
    a1
    a2
glDrawElements ::
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glDrawElements
    a0
    a1
    a2
    a3
    fgl = rglDrawElements fgl

    a0
    a1
    a2
    a3
glPolygonOffset ::
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glPolygonOffset
    a0
    a1
    fgl = rglPolygonOffset fgl

    a0
    a1
glCopyTexImage1D ::
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    FlextGL -> IO ( () )
glCopyTexImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglCopyTexImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glCopyTexImage2D ::
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    FlextGL -> IO ( () )
glCopyTexImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCopyTexImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glCopyTexSubImage1D ::
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    FlextGL -> IO ( () )
glCopyTexSubImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglCopyTexSubImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
glCopyTexSubImage2D ::
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glCopyTexSubImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCopyTexSubImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glTexSubImage1D ::
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glTexSubImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglTexSubImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glTexSubImage2D ::
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
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
    fgl = rglTexSubImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glBindTexture ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glBindTexture
    a0
    a1
    fgl = rglBindTexture fgl

    a0
    a1
glDeleteTextures ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glDeleteTextures
    a0
    a1
    fgl = rglDeleteTextures fgl

    a0
    a1
glGenTextures ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGenTextures
    a0
    a1
    fgl = rglGenTextures fgl

    a0
    a1
glIsTexture ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsTexture
    a0
    fgl = rglIsTexture fgl

    a0
glDrawRangeElements ::
    GLenum ->
    GLuint ->
    GLuint ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glDrawRangeElements
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglDrawRangeElements fgl

    a0
    a1
    a2
    a3
    a4
    a5
glTexImage3D ::
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
    FlextGL -> IO ( () )
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
    fgl = rglTexImage3D fgl

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
glTexSubImage3D ::
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
    FlextGL -> IO ( () )
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
    fgl = rglTexSubImage3D fgl

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
glCopyTexSubImage3D ::
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
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
    fgl = rglCopyTexSubImage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glActiveTexture ::
    GLenum ->
    FlextGL -> IO ( () )
glActiveTexture
    a0
    fgl = rglActiveTexture fgl

    a0
glSampleCoverage ::
    GLfloat ->
    GLboolean ->
    FlextGL -> IO ( () )
glSampleCoverage
    a0
    a1
    fgl = rglSampleCoverage fgl

    a0
    a1
glCompressedTexImage3D ::
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
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
    fgl = rglCompressedTexImage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glCompressedTexImage2D ::
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glCompressedTexImage2D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCompressedTexImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glCompressedTexImage1D ::
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glCompressedTexImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglCompressedTexImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glCompressedTexSubImage3D ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCompressedTexSubImage3D fgl

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
glCompressedTexSubImage2D ::
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
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
    fgl = rglCompressedTexSubImage2D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glCompressedTexSubImage1D ::
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glCompressedTexSubImage1D
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglCompressedTexSubImage1D fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glGetCompressedTexImage ::
    GLenum ->
    GLint ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetCompressedTexImage
    a0
    a1
    a2
    fgl = rglGetCompressedTexImage fgl

    a0
    a1
    a2
glBlendFuncSeparate ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glBlendFuncSeparate
    a0
    a1
    a2
    a3
    fgl = rglBlendFuncSeparate fgl

    a0
    a1
    a2
    a3
glMultiDrawArrays ::
    GLenum ->
    Ptr (GLint) ->
    Ptr (GLsizei) ->
    GLsizei ->
    FlextGL -> IO ( () )
glMultiDrawArrays
    a0
    a1
    a2
    a3
    fgl = rglMultiDrawArrays fgl

    a0
    a1
    a2
    a3
glMultiDrawElements ::
    GLenum ->
    Ptr (GLsizei) ->
    GLenum ->
    Ptr (Ptr ()) ->
    GLsizei ->
    FlextGL -> IO ( () )
glMultiDrawElements
    a0
    a1
    a2
    a3
    a4
    fgl = rglMultiDrawElements fgl

    a0
    a1
    a2
    a3
    a4
glPointParameterf ::
    GLenum ->
    GLfloat ->
    FlextGL -> IO ( () )
glPointParameterf
    a0
    a1
    fgl = rglPointParameterf fgl

    a0
    a1
glPointParameterfv ::
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glPointParameterfv
    a0
    a1
    fgl = rglPointParameterfv fgl

    a0
    a1
glPointParameteri ::
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glPointParameteri
    a0
    a1
    fgl = rglPointParameteri fgl

    a0
    a1
glPointParameteriv ::
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glPointParameteriv
    a0
    a1
    fgl = rglPointParameteriv fgl

    a0
    a1
glBlendColor ::
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glBlendColor
    a0
    a1
    a2
    a3
    fgl = rglBlendColor fgl

    a0
    a1
    a2
    a3
glBlendEquation ::
    GLenum ->
    FlextGL -> IO ( () )
glBlendEquation
    a0
    fgl = rglBlendEquation fgl

    a0
glGenQueries ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGenQueries
    a0
    a1
    fgl = rglGenQueries fgl

    a0
    a1
glDeleteQueries ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glDeleteQueries
    a0
    a1
    fgl = rglDeleteQueries fgl

    a0
    a1
glIsQuery ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsQuery
    a0
    fgl = rglIsQuery fgl

    a0
glBeginQuery ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glBeginQuery
    a0
    a1
    fgl = rglBeginQuery fgl

    a0
    a1
glEndQuery ::
    GLenum ->
    FlextGL -> IO ( () )
glEndQuery
    a0
    fgl = rglEndQuery fgl

    a0
glGetQueryiv ::
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetQueryiv
    a0
    a1
    a2
    fgl = rglGetQueryiv fgl

    a0
    a1
    a2
glGetQueryObjectiv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetQueryObjectiv
    a0
    a1
    a2
    fgl = rglGetQueryObjectiv fgl

    a0
    a1
    a2
glGetQueryObjectuiv ::
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetQueryObjectuiv
    a0
    a1
    a2
    fgl = rglGetQueryObjectuiv fgl

    a0
    a1
    a2
glBindBuffer ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glBindBuffer
    a0
    a1
    fgl = rglBindBuffer fgl

    a0
    a1
glDeleteBuffers ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glDeleteBuffers
    a0
    a1
    fgl = rglDeleteBuffers fgl

    a0
    a1
glGenBuffers ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGenBuffers
    a0
    a1
    fgl = rglGenBuffers fgl

    a0
    a1
glIsBuffer ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsBuffer
    a0
    fgl = rglIsBuffer fgl

    a0
glBufferData ::
    GLenum ->
    GLsizeiptr ->
    Ptr () ->
    GLenum ->
    FlextGL -> IO ( () )
glBufferData
    a0
    a1
    a2
    a3
    fgl = rglBufferData fgl

    a0
    a1
    a2
    a3
glBufferSubData ::
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    FlextGL -> IO ( () )
glBufferSubData
    a0
    a1
    a2
    a3
    fgl = rglBufferSubData fgl

    a0
    a1
    a2
    a3
glGetBufferSubData ::
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetBufferSubData
    a0
    a1
    a2
    a3
    fgl = rglGetBufferSubData fgl

    a0
    a1
    a2
    a3
glMapBuffer ::
    GLenum ->
    GLenum ->
    FlextGL -> IO ( Ptr () )
glMapBuffer
    a0
    a1
    fgl = rglMapBuffer fgl

    a0
    a1
glUnmapBuffer ::
    GLenum ->
    FlextGL -> IO ( GLboolean )
glUnmapBuffer
    a0
    fgl = rglUnmapBuffer fgl

    a0
glGetBufferParameteriv ::
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetBufferParameteriv
    a0
    a1
    a2
    fgl = rglGetBufferParameteriv fgl

    a0
    a1
    a2
glGetBufferPointerv ::
    GLenum ->
    GLenum ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetBufferPointerv
    a0
    a1
    a2
    fgl = rglGetBufferPointerv fgl

    a0
    a1
    a2
glBlendEquationSeparate ::
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glBlendEquationSeparate
    a0
    a1
    fgl = rglBlendEquationSeparate fgl

    a0
    a1
glDrawBuffers ::
    GLsizei ->
    Ptr (GLenum) ->
    FlextGL -> IO ( () )
glDrawBuffers
    a0
    a1
    fgl = rglDrawBuffers fgl

    a0
    a1
glStencilOpSeparate ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glStencilOpSeparate
    a0
    a1
    a2
    a3
    fgl = rglStencilOpSeparate fgl

    a0
    a1
    a2
    a3
glStencilFuncSeparate ::
    GLenum ->
    GLenum ->
    GLint ->
    GLuint ->
    FlextGL -> IO ( () )
glStencilFuncSeparate
    a0
    a1
    a2
    a3
    fgl = rglStencilFuncSeparate fgl

    a0
    a1
    a2
    a3
glStencilMaskSeparate ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glStencilMaskSeparate
    a0
    a1
    fgl = rglStencilMaskSeparate fgl

    a0
    a1
glAttachShader ::
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glAttachShader
    a0
    a1
    fgl = rglAttachShader fgl

    a0
    a1
glBindAttribLocation ::
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glBindAttribLocation
    a0
    a1
    a2
    fgl = rglBindAttribLocation fgl

    a0
    a1
    a2
glCompileShader ::
    GLuint ->
    FlextGL -> IO ( () )
glCompileShader
    a0
    fgl = rglCompileShader fgl

    a0
glCreateProgram ::
    FlextGL -> IO ( GLuint )
glCreateProgram
    fgl = rglCreateProgram fgl

glCreateShader ::
    GLenum ->
    FlextGL -> IO ( GLuint )
glCreateShader
    a0
    fgl = rglCreateShader fgl

    a0
glDeleteProgram ::
    GLuint ->
    FlextGL -> IO ( () )
glDeleteProgram
    a0
    fgl = rglDeleteProgram fgl

    a0
glDeleteShader ::
    GLuint ->
    FlextGL -> IO ( () )
glDeleteShader
    a0
    fgl = rglDeleteShader fgl

    a0
glDetachShader ::
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glDetachShader
    a0
    a1
    fgl = rglDetachShader fgl

    a0
    a1
glDisableVertexAttribArray ::
    GLuint ->
    FlextGL -> IO ( () )
glDisableVertexAttribArray
    a0
    fgl = rglDisableVertexAttribArray fgl

    a0
glEnableVertexAttribArray ::
    GLuint ->
    FlextGL -> IO ( () )
glEnableVertexAttribArray
    a0
    fgl = rglEnableVertexAttribArray fgl

    a0
glGetActiveAttrib ::
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetActiveAttrib
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglGetActiveAttrib fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glGetActiveUniform ::
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetActiveUniform
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglGetActiveUniform fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glGetAttachedShaders ::
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetAttachedShaders
    a0
    a1
    a2
    a3
    fgl = rglGetAttachedShaders fgl

    a0
    a1
    a2
    a3
glGetAttribLocation ::
    GLuint ->
    Ptr (GLchar) ->
    FlextGL -> IO ( GLint )
glGetAttribLocation
    a0
    a1
    fgl = rglGetAttribLocation fgl

    a0
    a1
glGetProgramiv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetProgramiv
    a0
    a1
    a2
    fgl = rglGetProgramiv fgl

    a0
    a1
    a2
glGetProgramInfoLog ::
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetProgramInfoLog
    a0
    a1
    a2
    a3
    fgl = rglGetProgramInfoLog fgl

    a0
    a1
    a2
    a3
glGetShaderiv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetShaderiv
    a0
    a1
    a2
    fgl = rglGetShaderiv fgl

    a0
    a1
    a2
glGetShaderInfoLog ::
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetShaderInfoLog
    a0
    a1
    a2
    a3
    fgl = rglGetShaderInfoLog fgl

    a0
    a1
    a2
    a3
glGetShaderSource ::
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetShaderSource
    a0
    a1
    a2
    a3
    fgl = rglGetShaderSource fgl

    a0
    a1
    a2
    a3
glGetUniformLocation ::
    GLuint ->
    Ptr (GLchar) ->
    FlextGL -> IO ( GLint )
glGetUniformLocation
    a0
    a1
    fgl = rglGetUniformLocation fgl

    a0
    a1
glGetUniformfv ::
    GLuint ->
    GLint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetUniformfv
    a0
    a1
    a2
    fgl = rglGetUniformfv fgl

    a0
    a1
    a2
glGetUniformiv ::
    GLuint ->
    GLint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetUniformiv
    a0
    a1
    a2
    fgl = rglGetUniformiv fgl

    a0
    a1
    a2
glGetVertexAttribdv ::
    GLuint ->
    GLenum ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glGetVertexAttribdv
    a0
    a1
    a2
    fgl = rglGetVertexAttribdv fgl

    a0
    a1
    a2
glGetVertexAttribfv ::
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetVertexAttribfv
    a0
    a1
    a2
    fgl = rglGetVertexAttribfv fgl

    a0
    a1
    a2
glGetVertexAttribiv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetVertexAttribiv
    a0
    a1
    a2
    fgl = rglGetVertexAttribiv fgl

    a0
    a1
    a2
glGetVertexAttribPointerv ::
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetVertexAttribPointerv
    a0
    a1
    a2
    fgl = rglGetVertexAttribPointerv fgl

    a0
    a1
    a2
glIsProgram ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsProgram
    a0
    fgl = rglIsProgram fgl

    a0
glIsShader ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsShader
    a0
    fgl = rglIsShader fgl

    a0
glLinkProgram ::
    GLuint ->
    FlextGL -> IO ( () )
glLinkProgram
    a0
    fgl = rglLinkProgram fgl

    a0
glShaderSource ::
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glShaderSource
    a0
    a1
    a2
    a3
    fgl = rglShaderSource fgl

    a0
    a1
    a2
    a3
glUseProgram ::
    GLuint ->
    FlextGL -> IO ( () )
glUseProgram
    a0
    fgl = rglUseProgram fgl

    a0
glUniform1f ::
    GLint ->
    GLfloat ->
    FlextGL -> IO ( () )
glUniform1f
    a0
    a1
    fgl = rglUniform1f fgl

    a0
    a1
glUniform2f ::
    GLint ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glUniform2f
    a0
    a1
    a2
    fgl = rglUniform2f fgl

    a0
    a1
    a2
glUniform3f ::
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glUniform3f
    a0
    a1
    a2
    a3
    fgl = rglUniform3f fgl

    a0
    a1
    a2
    a3
glUniform4f ::
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glUniform4f
    a0
    a1
    a2
    a3
    a4
    fgl = rglUniform4f fgl

    a0
    a1
    a2
    a3
    a4
glUniform1i ::
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glUniform1i
    a0
    a1
    fgl = rglUniform1i fgl

    a0
    a1
glUniform2i ::
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glUniform2i
    a0
    a1
    a2
    fgl = rglUniform2i fgl

    a0
    a1
    a2
glUniform3i ::
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glUniform3i
    a0
    a1
    a2
    a3
    fgl = rglUniform3i fgl

    a0
    a1
    a2
    a3
glUniform4i ::
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glUniform4i
    a0
    a1
    a2
    a3
    a4
    fgl = rglUniform4i fgl

    a0
    a1
    a2
    a3
    a4
glUniform1fv ::
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniform1fv
    a0
    a1
    a2
    fgl = rglUniform1fv fgl

    a0
    a1
    a2
glUniform2fv ::
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniform2fv
    a0
    a1
    a2
    fgl = rglUniform2fv fgl

    a0
    a1
    a2
glUniform3fv ::
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniform3fv
    a0
    a1
    a2
    fgl = rglUniform3fv fgl

    a0
    a1
    a2
glUniform4fv ::
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniform4fv
    a0
    a1
    a2
    fgl = rglUniform4fv fgl

    a0
    a1
    a2
glUniform1iv ::
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glUniform1iv
    a0
    a1
    a2
    fgl = rglUniform1iv fgl

    a0
    a1
    a2
glUniform2iv ::
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glUniform2iv
    a0
    a1
    a2
    fgl = rglUniform2iv fgl

    a0
    a1
    a2
glUniform3iv ::
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glUniform3iv
    a0
    a1
    a2
    fgl = rglUniform3iv fgl

    a0
    a1
    a2
glUniform4iv ::
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glUniform4iv
    a0
    a1
    a2
    fgl = rglUniform4iv fgl

    a0
    a1
    a2
glUniformMatrix2fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix2fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix2fv fgl

    a0
    a1
    a2
    a3
glUniformMatrix3fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix3fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix3fv fgl

    a0
    a1
    a2
    a3
glUniformMatrix4fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix4fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix4fv fgl

    a0
    a1
    a2
    a3
glValidateProgram ::
    GLuint ->
    FlextGL -> IO ( () )
glValidateProgram
    a0
    fgl = rglValidateProgram fgl

    a0
glVertexAttrib1d ::
    GLuint ->
    GLdouble ->
    FlextGL -> IO ( () )
glVertexAttrib1d
    a0
    a1
    fgl = rglVertexAttrib1d fgl

    a0
    a1
glVertexAttrib1dv ::
    GLuint ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glVertexAttrib1dv
    a0
    a1
    fgl = rglVertexAttrib1dv fgl

    a0
    a1
glVertexAttrib1f ::
    GLuint ->
    GLfloat ->
    FlextGL -> IO ( () )
glVertexAttrib1f
    a0
    a1
    fgl = rglVertexAttrib1f fgl

    a0
    a1
glVertexAttrib1fv ::
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glVertexAttrib1fv
    a0
    a1
    fgl = rglVertexAttrib1fv fgl

    a0
    a1
glVertexAttrib1s ::
    GLuint ->
    GLshort ->
    FlextGL -> IO ( () )
glVertexAttrib1s
    a0
    a1
    fgl = rglVertexAttrib1s fgl

    a0
    a1
glVertexAttrib1sv ::
    GLuint ->
    Ptr (GLshort) ->
    FlextGL -> IO ( () )
glVertexAttrib1sv
    a0
    a1
    fgl = rglVertexAttrib1sv fgl

    a0
    a1
glVertexAttrib2d ::
    GLuint ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glVertexAttrib2d
    a0
    a1
    a2
    fgl = rglVertexAttrib2d fgl

    a0
    a1
    a2
glVertexAttrib2dv ::
    GLuint ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glVertexAttrib2dv
    a0
    a1
    fgl = rglVertexAttrib2dv fgl

    a0
    a1
glVertexAttrib2f ::
    GLuint ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glVertexAttrib2f
    a0
    a1
    a2
    fgl = rglVertexAttrib2f fgl

    a0
    a1
    a2
glVertexAttrib2fv ::
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glVertexAttrib2fv
    a0
    a1
    fgl = rglVertexAttrib2fv fgl

    a0
    a1
glVertexAttrib2s ::
    GLuint ->
    GLshort ->
    GLshort ->
    FlextGL -> IO ( () )
glVertexAttrib2s
    a0
    a1
    a2
    fgl = rglVertexAttrib2s fgl

    a0
    a1
    a2
glVertexAttrib2sv ::
    GLuint ->
    Ptr (GLshort) ->
    FlextGL -> IO ( () )
glVertexAttrib2sv
    a0
    a1
    fgl = rglVertexAttrib2sv fgl

    a0
    a1
glVertexAttrib3d ::
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glVertexAttrib3d
    a0
    a1
    a2
    a3
    fgl = rglVertexAttrib3d fgl

    a0
    a1
    a2
    a3
glVertexAttrib3dv ::
    GLuint ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glVertexAttrib3dv
    a0
    a1
    fgl = rglVertexAttrib3dv fgl

    a0
    a1
glVertexAttrib3f ::
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glVertexAttrib3f
    a0
    a1
    a2
    a3
    fgl = rglVertexAttrib3f fgl

    a0
    a1
    a2
    a3
glVertexAttrib3fv ::
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glVertexAttrib3fv
    a0
    a1
    fgl = rglVertexAttrib3fv fgl

    a0
    a1
glVertexAttrib3s ::
    GLuint ->
    GLshort ->
    GLshort ->
    GLshort ->
    FlextGL -> IO ( () )
glVertexAttrib3s
    a0
    a1
    a2
    a3
    fgl = rglVertexAttrib3s fgl

    a0
    a1
    a2
    a3
glVertexAttrib3sv ::
    GLuint ->
    Ptr (GLshort) ->
    FlextGL -> IO ( () )
glVertexAttrib3sv
    a0
    a1
    fgl = rglVertexAttrib3sv fgl

    a0
    a1
glVertexAttrib4Nbv ::
    GLuint ->
    Ptr (GLbyte) ->
    FlextGL -> IO ( () )
glVertexAttrib4Nbv
    a0
    a1
    fgl = rglVertexAttrib4Nbv fgl

    a0
    a1
glVertexAttrib4Niv ::
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glVertexAttrib4Niv
    a0
    a1
    fgl = rglVertexAttrib4Niv fgl

    a0
    a1
glVertexAttrib4Nsv ::
    GLuint ->
    Ptr (GLshort) ->
    FlextGL -> IO ( () )
glVertexAttrib4Nsv
    a0
    a1
    fgl = rglVertexAttrib4Nsv fgl

    a0
    a1
glVertexAttrib4Nub ::
    GLuint ->
    GLubyte ->
    GLubyte ->
    GLubyte ->
    GLubyte ->
    FlextGL -> IO ( () )
glVertexAttrib4Nub
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexAttrib4Nub fgl

    a0
    a1
    a2
    a3
    a4
glVertexAttrib4Nubv ::
    GLuint ->
    Ptr (GLubyte) ->
    FlextGL -> IO ( () )
glVertexAttrib4Nubv
    a0
    a1
    fgl = rglVertexAttrib4Nubv fgl

    a0
    a1
glVertexAttrib4Nuiv ::
    GLuint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttrib4Nuiv
    a0
    a1
    fgl = rglVertexAttrib4Nuiv fgl

    a0
    a1
glVertexAttrib4Nusv ::
    GLuint ->
    Ptr (GLushort) ->
    FlextGL -> IO ( () )
glVertexAttrib4Nusv
    a0
    a1
    fgl = rglVertexAttrib4Nusv fgl

    a0
    a1
glVertexAttrib4bv ::
    GLuint ->
    Ptr (GLbyte) ->
    FlextGL -> IO ( () )
glVertexAttrib4bv
    a0
    a1
    fgl = rglVertexAttrib4bv fgl

    a0
    a1
glVertexAttrib4d ::
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glVertexAttrib4d
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexAttrib4d fgl

    a0
    a1
    a2
    a3
    a4
glVertexAttrib4dv ::
    GLuint ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glVertexAttrib4dv
    a0
    a1
    fgl = rglVertexAttrib4dv fgl

    a0
    a1
glVertexAttrib4f ::
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glVertexAttrib4f
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexAttrib4f fgl

    a0
    a1
    a2
    a3
    a4
glVertexAttrib4fv ::
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glVertexAttrib4fv
    a0
    a1
    fgl = rglVertexAttrib4fv fgl

    a0
    a1
glVertexAttrib4iv ::
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glVertexAttrib4iv
    a0
    a1
    fgl = rglVertexAttrib4iv fgl

    a0
    a1
glVertexAttrib4s ::
    GLuint ->
    GLshort ->
    GLshort ->
    GLshort ->
    GLshort ->
    FlextGL -> IO ( () )
glVertexAttrib4s
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexAttrib4s fgl

    a0
    a1
    a2
    a3
    a4
glVertexAttrib4sv ::
    GLuint ->
    Ptr (GLshort) ->
    FlextGL -> IO ( () )
glVertexAttrib4sv
    a0
    a1
    fgl = rglVertexAttrib4sv fgl

    a0
    a1
glVertexAttrib4ubv ::
    GLuint ->
    Ptr (GLubyte) ->
    FlextGL -> IO ( () )
glVertexAttrib4ubv
    a0
    a1
    fgl = rglVertexAttrib4ubv fgl

    a0
    a1
glVertexAttrib4uiv ::
    GLuint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttrib4uiv
    a0
    a1
    fgl = rglVertexAttrib4uiv fgl

    a0
    a1
glVertexAttrib4usv ::
    GLuint ->
    Ptr (GLushort) ->
    FlextGL -> IO ( () )
glVertexAttrib4usv
    a0
    a1
    fgl = rglVertexAttrib4usv fgl

    a0
    a1
glVertexAttribPointer ::
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glVertexAttribPointer
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglVertexAttribPointer fgl

    a0
    a1
    a2
    a3
    a4
    a5
glUniformMatrix2x3fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix2x3fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix2x3fv fgl

    a0
    a1
    a2
    a3
glUniformMatrix3x2fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix3x2fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix3x2fv fgl

    a0
    a1
    a2
    a3
glUniformMatrix2x4fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix2x4fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix2x4fv fgl

    a0
    a1
    a2
    a3
glUniformMatrix4x2fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix4x2fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix4x2fv fgl

    a0
    a1
    a2
    a3
glUniformMatrix3x4fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix3x4fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix3x4fv fgl

    a0
    a1
    a2
    a3
glUniformMatrix4x3fv ::
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glUniformMatrix4x3fv
    a0
    a1
    a2
    a3
    fgl = rglUniformMatrix4x3fv fgl

    a0
    a1
    a2
    a3
glColorMaski ::
    GLuint ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    FlextGL -> IO ( () )
glColorMaski
    a0
    a1
    a2
    a3
    a4
    fgl = rglColorMaski fgl

    a0
    a1
    a2
    a3
    a4
glGetBooleani_v ::
    GLenum ->
    GLuint ->
    Ptr (GLboolean) ->
    FlextGL -> IO ( () )
glGetBooleani_v
    a0
    a1
    a2
    fgl = rglGetBooleani_v fgl

    a0
    a1
    a2
glGetIntegeri_v ::
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetIntegeri_v
    a0
    a1
    a2
    fgl = rglGetIntegeri_v fgl

    a0
    a1
    a2
glEnablei ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glEnablei
    a0
    a1
    fgl = rglEnablei fgl

    a0
    a1
glDisablei ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glDisablei
    a0
    a1
    fgl = rglDisablei fgl

    a0
    a1
glIsEnabledi ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsEnabledi
    a0
    a1
    fgl = rglIsEnabledi fgl

    a0
    a1
glBeginTransformFeedback ::
    GLenum ->
    FlextGL -> IO ( () )
glBeginTransformFeedback
    a0
    fgl = rglBeginTransformFeedback fgl

    a0
glEndTransformFeedback ::
    FlextGL -> IO ( () )
glEndTransformFeedback
    fgl = rglEndTransformFeedback fgl

glBindBufferRange ::
    GLenum ->
    GLuint ->
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    FlextGL -> IO ( () )
glBindBufferRange
    a0
    a1
    a2
    a3
    a4
    fgl = rglBindBufferRange fgl

    a0
    a1
    a2
    a3
    a4
glBindBufferBase ::
    GLenum ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glBindBufferBase
    a0
    a1
    a2
    fgl = rglBindBufferBase fgl

    a0
    a1
    a2
glTransformFeedbackVaryings ::
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    GLenum ->
    FlextGL -> IO ( () )
glTransformFeedbackVaryings
    a0
    a1
    a2
    a3
    fgl = rglTransformFeedbackVaryings fgl

    a0
    a1
    a2
    a3
glGetTransformFeedbackVarying ::
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLsizei) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetTransformFeedbackVarying
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglGetTransformFeedbackVarying fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glClampColor ::
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glClampColor
    a0
    a1
    fgl = rglClampColor fgl

    a0
    a1
glBeginConditionalRender ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( () )
glBeginConditionalRender
    a0
    a1
    fgl = rglBeginConditionalRender fgl

    a0
    a1
glEndConditionalRender ::
    FlextGL -> IO ( () )
glEndConditionalRender
    fgl = rglEndConditionalRender fgl

glVertexAttribIPointer ::
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glVertexAttribIPointer
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexAttribIPointer fgl

    a0
    a1
    a2
    a3
    a4
glGetVertexAttribIiv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetVertexAttribIiv
    a0
    a1
    a2
    fgl = rglGetVertexAttribIiv fgl

    a0
    a1
    a2
glGetVertexAttribIuiv ::
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetVertexAttribIuiv
    a0
    a1
    a2
    fgl = rglGetVertexAttribIuiv fgl

    a0
    a1
    a2
glVertexAttribI1i ::
    GLuint ->
    GLint ->
    FlextGL -> IO ( () )
glVertexAttribI1i
    a0
    a1
    fgl = rglVertexAttribI1i fgl

    a0
    a1
glVertexAttribI2i ::
    GLuint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glVertexAttribI2i
    a0
    a1
    a2
    fgl = rglVertexAttribI2i fgl

    a0
    a1
    a2
glVertexAttribI3i ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glVertexAttribI3i
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribI3i fgl

    a0
    a1
    a2
    a3
glVertexAttribI4i ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glVertexAttribI4i
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexAttribI4i fgl

    a0
    a1
    a2
    a3
    a4
glVertexAttribI1ui ::
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribI1ui
    a0
    a1
    fgl = rglVertexAttribI1ui fgl

    a0
    a1
glVertexAttribI2ui ::
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribI2ui
    a0
    a1
    a2
    fgl = rglVertexAttribI2ui fgl

    a0
    a1
    a2
glVertexAttribI3ui ::
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribI3ui
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribI3ui fgl

    a0
    a1
    a2
    a3
glVertexAttribI4ui ::
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribI4ui
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexAttribI4ui fgl

    a0
    a1
    a2
    a3
    a4
glVertexAttribI1iv ::
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glVertexAttribI1iv
    a0
    a1
    fgl = rglVertexAttribI1iv fgl

    a0
    a1
glVertexAttribI2iv ::
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glVertexAttribI2iv
    a0
    a1
    fgl = rglVertexAttribI2iv fgl

    a0
    a1
glVertexAttribI3iv ::
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glVertexAttribI3iv
    a0
    a1
    fgl = rglVertexAttribI3iv fgl

    a0
    a1
glVertexAttribI4iv ::
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glVertexAttribI4iv
    a0
    a1
    fgl = rglVertexAttribI4iv fgl

    a0
    a1
glVertexAttribI1uiv ::
    GLuint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttribI1uiv
    a0
    a1
    fgl = rglVertexAttribI1uiv fgl

    a0
    a1
glVertexAttribI2uiv ::
    GLuint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttribI2uiv
    a0
    a1
    fgl = rglVertexAttribI2uiv fgl

    a0
    a1
glVertexAttribI3uiv ::
    GLuint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttribI3uiv
    a0
    a1
    fgl = rglVertexAttribI3uiv fgl

    a0
    a1
glVertexAttribI4uiv ::
    GLuint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttribI4uiv
    a0
    a1
    fgl = rglVertexAttribI4uiv fgl

    a0
    a1
glVertexAttribI4bv ::
    GLuint ->
    Ptr (GLbyte) ->
    FlextGL -> IO ( () )
glVertexAttribI4bv
    a0
    a1
    fgl = rglVertexAttribI4bv fgl

    a0
    a1
glVertexAttribI4sv ::
    GLuint ->
    Ptr (GLshort) ->
    FlextGL -> IO ( () )
glVertexAttribI4sv
    a0
    a1
    fgl = rglVertexAttribI4sv fgl

    a0
    a1
glVertexAttribI4ubv ::
    GLuint ->
    Ptr (GLubyte) ->
    FlextGL -> IO ( () )
glVertexAttribI4ubv
    a0
    a1
    fgl = rglVertexAttribI4ubv fgl

    a0
    a1
glVertexAttribI4usv ::
    GLuint ->
    Ptr (GLushort) ->
    FlextGL -> IO ( () )
glVertexAttribI4usv
    a0
    a1
    fgl = rglVertexAttribI4usv fgl

    a0
    a1
glGetUniformuiv ::
    GLuint ->
    GLint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetUniformuiv
    a0
    a1
    a2
    fgl = rglGetUniformuiv fgl

    a0
    a1
    a2
glBindFragDataLocation ::
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glBindFragDataLocation
    a0
    a1
    a2
    fgl = rglBindFragDataLocation fgl

    a0
    a1
    a2
glGetFragDataLocation ::
    GLuint ->
    Ptr (GLchar) ->
    FlextGL -> IO ( GLint )
glGetFragDataLocation
    a0
    a1
    fgl = rglGetFragDataLocation fgl

    a0
    a1
glUniform1ui ::
    GLint ->
    GLuint ->
    FlextGL -> IO ( () )
glUniform1ui
    a0
    a1
    fgl = rglUniform1ui fgl

    a0
    a1
glUniform2ui ::
    GLint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glUniform2ui
    a0
    a1
    a2
    fgl = rglUniform2ui fgl

    a0
    a1
    a2
glUniform3ui ::
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glUniform3ui
    a0
    a1
    a2
    a3
    fgl = rglUniform3ui fgl

    a0
    a1
    a2
    a3
glUniform4ui ::
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glUniform4ui
    a0
    a1
    a2
    a3
    a4
    fgl = rglUniform4ui fgl

    a0
    a1
    a2
    a3
    a4
glUniform1uiv ::
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glUniform1uiv
    a0
    a1
    a2
    fgl = rglUniform1uiv fgl

    a0
    a1
    a2
glUniform2uiv ::
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glUniform2uiv
    a0
    a1
    a2
    fgl = rglUniform2uiv fgl

    a0
    a1
    a2
glUniform3uiv ::
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glUniform3uiv
    a0
    a1
    a2
    fgl = rglUniform3uiv fgl

    a0
    a1
    a2
glUniform4uiv ::
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glUniform4uiv
    a0
    a1
    a2
    fgl = rglUniform4uiv fgl

    a0
    a1
    a2
glTexParameterIiv ::
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glTexParameterIiv
    a0
    a1
    a2
    fgl = rglTexParameterIiv fgl

    a0
    a1
    a2
glTexParameterIuiv ::
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glTexParameterIuiv
    a0
    a1
    a2
    fgl = rglTexParameterIuiv fgl

    a0
    a1
    a2
glGetTexParameterIiv ::
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetTexParameterIiv
    a0
    a1
    a2
    fgl = rglGetTexParameterIiv fgl

    a0
    a1
    a2
glGetTexParameterIuiv ::
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetTexParameterIuiv
    a0
    a1
    a2
    fgl = rglGetTexParameterIuiv fgl

    a0
    a1
    a2
glClearBufferiv ::
    GLenum ->
    GLint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glClearBufferiv
    a0
    a1
    a2
    fgl = rglClearBufferiv fgl

    a0
    a1
    a2
glClearBufferuiv ::
    GLenum ->
    GLint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glClearBufferuiv
    a0
    a1
    a2
    fgl = rglClearBufferuiv fgl

    a0
    a1
    a2
glClearBufferfv ::
    GLenum ->
    GLint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glClearBufferfv
    a0
    a1
    a2
    fgl = rglClearBufferfv fgl

    a0
    a1
    a2
glClearBufferfi ::
    GLenum ->
    GLint ->
    GLfloat ->
    GLint ->
    FlextGL -> IO ( () )
glClearBufferfi
    a0
    a1
    a2
    a3
    fgl = rglClearBufferfi fgl

    a0
    a1
    a2
    a3
glGetStringi ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( Ptr (GLubyte) )
glGetStringi
    a0
    a1
    fgl = rglGetStringi fgl

    a0
    a1
glIsRenderbuffer ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsRenderbuffer
    a0
    fgl = rglIsRenderbuffer fgl

    a0
glBindRenderbuffer ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glBindRenderbuffer
    a0
    a1
    fgl = rglBindRenderbuffer fgl

    a0
    a1
glDeleteRenderbuffers ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glDeleteRenderbuffers
    a0
    a1
    fgl = rglDeleteRenderbuffers fgl

    a0
    a1
glGenRenderbuffers ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGenRenderbuffers
    a0
    a1
    fgl = rglGenRenderbuffers fgl

    a0
    a1
glRenderbufferStorage ::
    GLenum ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glRenderbufferStorage
    a0
    a1
    a2
    a3
    fgl = rglRenderbufferStorage fgl

    a0
    a1
    a2
    a3
glGetRenderbufferParameteriv ::
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetRenderbufferParameteriv
    a0
    a1
    a2
    fgl = rglGetRenderbufferParameteriv fgl

    a0
    a1
    a2
glIsFramebuffer ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsFramebuffer
    a0
    fgl = rglIsFramebuffer fgl

    a0
glBindFramebuffer ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glBindFramebuffer
    a0
    a1
    fgl = rglBindFramebuffer fgl

    a0
    a1
glDeleteFramebuffers ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glDeleteFramebuffers
    a0
    a1
    fgl = rglDeleteFramebuffers fgl

    a0
    a1
glGenFramebuffers ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGenFramebuffers
    a0
    a1
    fgl = rglGenFramebuffers fgl

    a0
    a1
glCheckFramebufferStatus ::
    GLenum ->
    FlextGL -> IO ( GLenum )
glCheckFramebufferStatus
    a0
    fgl = rglCheckFramebufferStatus fgl

    a0
glFramebufferTexture1D ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    FlextGL -> IO ( () )
glFramebufferTexture1D
    a0
    a1
    a2
    a3
    a4
    fgl = rglFramebufferTexture1D fgl

    a0
    a1
    a2
    a3
    a4
glFramebufferTexture2D ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    FlextGL -> IO ( () )
glFramebufferTexture2D
    a0
    a1
    a2
    a3
    a4
    fgl = rglFramebufferTexture2D fgl

    a0
    a1
    a2
    a3
    a4
glFramebufferTexture3D ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glFramebufferTexture3D
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglFramebufferTexture3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
glFramebufferRenderbuffer ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glFramebufferRenderbuffer
    a0
    a1
    a2
    a3
    fgl = rglFramebufferRenderbuffer fgl

    a0
    a1
    a2
    a3
glGetFramebufferAttachmentParameteriv ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetFramebufferAttachmentParameteriv
    a0
    a1
    a2
    a3
    fgl = rglGetFramebufferAttachmentParameteriv fgl

    a0
    a1
    a2
    a3
glGenerateMipmap ::
    GLenum ->
    FlextGL -> IO ( () )
glGenerateMipmap
    a0
    fgl = rglGenerateMipmap fgl

    a0
glBlitFramebuffer ::
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
    FlextGL -> IO ( () )
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
    fgl = rglBlitFramebuffer fgl

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
glRenderbufferStorageMultisample ::
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glRenderbufferStorageMultisample
    a0
    a1
    a2
    a3
    a4
    fgl = rglRenderbufferStorageMultisample fgl

    a0
    a1
    a2
    a3
    a4
glFramebufferTextureLayer ::
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glFramebufferTextureLayer
    a0
    a1
    a2
    a3
    a4
    fgl = rglFramebufferTextureLayer fgl

    a0
    a1
    a2
    a3
    a4
glMapBufferRange ::
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    GLbitfield ->
    FlextGL -> IO ( Ptr () )
glMapBufferRange
    a0
    a1
    a2
    a3
    fgl = rglMapBufferRange fgl

    a0
    a1
    a2
    a3
glFlushMappedBufferRange ::
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    FlextGL -> IO ( () )
glFlushMappedBufferRange
    a0
    a1
    a2
    fgl = rglFlushMappedBufferRange fgl

    a0
    a1
    a2
glBindVertexArray ::
    GLuint ->
    FlextGL -> IO ( () )
glBindVertexArray
    a0
    fgl = rglBindVertexArray fgl

    a0
glDeleteVertexArrays ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glDeleteVertexArrays
    a0
    a1
    fgl = rglDeleteVertexArrays fgl

    a0
    a1
glGenVertexArrays ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGenVertexArrays
    a0
    a1
    fgl = rglGenVertexArrays fgl

    a0
    a1
glIsVertexArray ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsVertexArray
    a0
    fgl = rglIsVertexArray fgl

    a0
glDrawArraysInstanced ::
    GLenum ->
    GLint ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glDrawArraysInstanced
    a0
    a1
    a2
    a3
    fgl = rglDrawArraysInstanced fgl

    a0
    a1
    a2
    a3
glDrawElementsInstanced ::
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLsizei ->
    FlextGL -> IO ( () )
glDrawElementsInstanced
    a0
    a1
    a2
    a3
    a4
    fgl = rglDrawElementsInstanced fgl

    a0
    a1
    a2
    a3
    a4
glTexBuffer ::
    GLenum ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glTexBuffer
    a0
    a1
    a2
    fgl = rglTexBuffer fgl

    a0
    a1
    a2
glPrimitiveRestartIndex ::
    GLuint ->
    FlextGL -> IO ( () )
glPrimitiveRestartIndex
    a0
    fgl = rglPrimitiveRestartIndex fgl

    a0
glCopyBufferSubData ::
    GLenum ->
    GLenum ->
    GLintptr ->
    GLintptr ->
    GLsizeiptr ->
    FlextGL -> IO ( () )
glCopyBufferSubData
    a0
    a1
    a2
    a3
    a4
    fgl = rglCopyBufferSubData fgl

    a0
    a1
    a2
    a3
    a4
glGetUniformIndices ::
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetUniformIndices
    a0
    a1
    a2
    a3
    fgl = rglGetUniformIndices fgl

    a0
    a1
    a2
    a3
glGetActiveUniformsiv ::
    GLuint ->
    GLsizei ->
    Ptr (GLuint) ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetActiveUniformsiv
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetActiveUniformsiv fgl

    a0
    a1
    a2
    a3
    a4
glGetActiveUniformName ::
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetActiveUniformName
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetActiveUniformName fgl

    a0
    a1
    a2
    a3
    a4
glGetUniformBlockIndex ::
    GLuint ->
    Ptr (GLchar) ->
    FlextGL -> IO ( GLuint )
glGetUniformBlockIndex
    a0
    a1
    fgl = rglGetUniformBlockIndex fgl

    a0
    a1
glGetActiveUniformBlockiv ::
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetActiveUniformBlockiv
    a0
    a1
    a2
    a3
    fgl = rglGetActiveUniformBlockiv fgl

    a0
    a1
    a2
    a3
glGetActiveUniformBlockName ::
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetActiveUniformBlockName
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetActiveUniformBlockName fgl

    a0
    a1
    a2
    a3
    a4
glUniformBlockBinding ::
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glUniformBlockBinding
    a0
    a1
    a2
    fgl = rglUniformBlockBinding fgl

    a0
    a1
    a2
glDrawElementsBaseVertex ::
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLint ->
    FlextGL -> IO ( () )
glDrawElementsBaseVertex
    a0
    a1
    a2
    a3
    a4
    fgl = rglDrawElementsBaseVertex fgl

    a0
    a1
    a2
    a3
    a4
glDrawRangeElementsBaseVertex ::
    GLenum ->
    GLuint ->
    GLuint ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLint ->
    FlextGL -> IO ( () )
glDrawRangeElementsBaseVertex
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglDrawRangeElementsBaseVertex fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glDrawElementsInstancedBaseVertex ::
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLsizei ->
    GLint ->
    FlextGL -> IO ( () )
glDrawElementsInstancedBaseVertex
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglDrawElementsInstancedBaseVertex fgl

    a0
    a1
    a2
    a3
    a4
    a5
glMultiDrawElementsBaseVertex ::
    GLenum ->
    Ptr (GLsizei) ->
    GLenum ->
    Ptr (Ptr ()) ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glMultiDrawElementsBaseVertex
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglMultiDrawElementsBaseVertex fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProvokingVertex ::
    GLenum ->
    FlextGL -> IO ( () )
glProvokingVertex
    a0
    fgl = rglProvokingVertex fgl

    a0
glFenceSync ::
    GLenum ->
    GLbitfield ->
    FlextGL -> IO ( GLsync )
glFenceSync
    a0
    a1
    fgl = rglFenceSync fgl

    a0
    a1
glIsSync ::
    GLsync ->
    FlextGL -> IO ( GLboolean )
glIsSync
    a0
    fgl = rglIsSync fgl

    a0
glDeleteSync ::
    GLsync ->
    FlextGL -> IO ( () )
glDeleteSync
    a0
    fgl = rglDeleteSync fgl

    a0
glClientWaitSync ::
    GLsync ->
    GLbitfield ->
    GLuint64 ->
    FlextGL -> IO ( GLenum )
glClientWaitSync
    a0
    a1
    a2
    fgl = rglClientWaitSync fgl

    a0
    a1
    a2
glWaitSync ::
    GLsync ->
    GLbitfield ->
    GLuint64 ->
    FlextGL -> IO ( () )
glWaitSync
    a0
    a1
    a2
    fgl = rglWaitSync fgl

    a0
    a1
    a2
glGetInteger64v ::
    GLenum ->
    Ptr (GLint64) ->
    FlextGL -> IO ( () )
glGetInteger64v
    a0
    a1
    fgl = rglGetInteger64v fgl

    a0
    a1
glGetSynciv ::
    GLsync ->
    GLenum ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetSynciv
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetSynciv fgl

    a0
    a1
    a2
    a3
    a4
glGetInteger64i_v ::
    GLenum ->
    GLuint ->
    Ptr (GLint64) ->
    FlextGL -> IO ( () )
glGetInteger64i_v
    a0
    a1
    a2
    fgl = rglGetInteger64i_v fgl

    a0
    a1
    a2
glGetBufferParameteri64v ::
    GLenum ->
    GLenum ->
    Ptr (GLint64) ->
    FlextGL -> IO ( () )
glGetBufferParameteri64v
    a0
    a1
    a2
    fgl = rglGetBufferParameteri64v fgl

    a0
    a1
    a2
glFramebufferTexture ::
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    FlextGL -> IO ( () )
glFramebufferTexture
    a0
    a1
    a2
    a3
    fgl = rglFramebufferTexture fgl

    a0
    a1
    a2
    a3
glTexImage2DMultisample ::
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    FlextGL -> IO ( () )
glTexImage2DMultisample
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglTexImage2DMultisample fgl

    a0
    a1
    a2
    a3
    a4
    a5
glTexImage3DMultisample ::
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    FlextGL -> IO ( () )
glTexImage3DMultisample
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglTexImage3DMultisample fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glGetMultisamplefv ::
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetMultisamplefv
    a0
    a1
    a2
    fgl = rglGetMultisamplefv fgl

    a0
    a1
    a2
glSampleMaski ::
    GLuint ->
    GLbitfield ->
    FlextGL -> IO ( () )
glSampleMaski
    a0
    a1
    fgl = rglSampleMaski fgl

    a0
    a1
glBindFragDataLocationIndexed ::
    GLuint ->
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glBindFragDataLocationIndexed
    a0
    a1
    a2
    a3
    fgl = rglBindFragDataLocationIndexed fgl

    a0
    a1
    a2
    a3
glGetFragDataIndex ::
    GLuint ->
    Ptr (GLchar) ->
    FlextGL -> IO ( GLint )
glGetFragDataIndex
    a0
    a1
    fgl = rglGetFragDataIndex fgl

    a0
    a1
glGenSamplers ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGenSamplers
    a0
    a1
    fgl = rglGenSamplers fgl

    a0
    a1
glDeleteSamplers ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glDeleteSamplers
    a0
    a1
    fgl = rglDeleteSamplers fgl

    a0
    a1
glIsSampler ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsSampler
    a0
    fgl = rglIsSampler fgl

    a0
glBindSampler ::
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glBindSampler
    a0
    a1
    fgl = rglBindSampler fgl

    a0
    a1
glSamplerParameteri ::
    GLuint ->
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glSamplerParameteri
    a0
    a1
    a2
    fgl = rglSamplerParameteri fgl

    a0
    a1
    a2
glSamplerParameteriv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glSamplerParameteriv
    a0
    a1
    a2
    fgl = rglSamplerParameteriv fgl

    a0
    a1
    a2
glSamplerParameterf ::
    GLuint ->
    GLenum ->
    GLfloat ->
    FlextGL -> IO ( () )
glSamplerParameterf
    a0
    a1
    a2
    fgl = rglSamplerParameterf fgl

    a0
    a1
    a2
glSamplerParameterfv ::
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glSamplerParameterfv
    a0
    a1
    a2
    fgl = rglSamplerParameterfv fgl

    a0
    a1
    a2
glSamplerParameterIiv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glSamplerParameterIiv
    a0
    a1
    a2
    fgl = rglSamplerParameterIiv fgl

    a0
    a1
    a2
glSamplerParameterIuiv ::
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glSamplerParameterIuiv
    a0
    a1
    a2
    fgl = rglSamplerParameterIuiv fgl

    a0
    a1
    a2
glGetSamplerParameteriv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetSamplerParameteriv
    a0
    a1
    a2
    fgl = rglGetSamplerParameteriv fgl

    a0
    a1
    a2
glGetSamplerParameterIiv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetSamplerParameterIiv
    a0
    a1
    a2
    fgl = rglGetSamplerParameterIiv fgl

    a0
    a1
    a2
glGetSamplerParameterfv ::
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetSamplerParameterfv
    a0
    a1
    a2
    fgl = rglGetSamplerParameterfv fgl

    a0
    a1
    a2
glGetSamplerParameterIuiv ::
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetSamplerParameterIuiv
    a0
    a1
    a2
    fgl = rglGetSamplerParameterIuiv fgl

    a0
    a1
    a2
glQueryCounter ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( () )
glQueryCounter
    a0
    a1
    fgl = rglQueryCounter fgl

    a0
    a1
glGetQueryObjecti64v ::
    GLuint ->
    GLenum ->
    Ptr (GLint64) ->
    FlextGL -> IO ( () )
glGetQueryObjecti64v
    a0
    a1
    a2
    fgl = rglGetQueryObjecti64v fgl

    a0
    a1
    a2
glGetQueryObjectui64v ::
    GLuint ->
    GLenum ->
    Ptr (GLuint64) ->
    FlextGL -> IO ( () )
glGetQueryObjectui64v
    a0
    a1
    a2
    fgl = rglGetQueryObjectui64v fgl

    a0
    a1
    a2
glVertexAttribDivisor ::
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribDivisor
    a0
    a1
    fgl = rglVertexAttribDivisor fgl

    a0
    a1
glVertexAttribP1ui ::
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribP1ui
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribP1ui fgl

    a0
    a1
    a2
    a3
glVertexAttribP1uiv ::
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttribP1uiv
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribP1uiv fgl

    a0
    a1
    a2
    a3
glVertexAttribP2ui ::
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribP2ui
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribP2ui fgl

    a0
    a1
    a2
    a3
glVertexAttribP2uiv ::
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttribP2uiv
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribP2uiv fgl

    a0
    a1
    a2
    a3
glVertexAttribP3ui ::
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribP3ui
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribP3ui fgl

    a0
    a1
    a2
    a3
glVertexAttribP3uiv ::
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttribP3uiv
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribP3uiv fgl

    a0
    a1
    a2
    a3
glVertexAttribP4ui ::
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexAttribP4ui
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribP4ui fgl

    a0
    a1
    a2
    a3
glVertexAttribP4uiv ::
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glVertexAttribP4uiv
    a0
    a1
    a2
    a3
    fgl = rglVertexAttribP4uiv fgl

    a0
    a1
    a2
    a3
glTexStorage1D ::
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    FlextGL -> IO ( () )
glTexStorage1D
    a0
    a1
    a2
    a3
    fgl = rglTexStorage1D fgl

    a0
    a1
    a2
    a3
glTexStorage2D ::
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glTexStorage2D
    a0
    a1
    a2
    a3
    a4
    fgl = rglTexStorage2D fgl

    a0
    a1
    a2
    a3
    a4
glTexStorage3D ::
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glTexStorage3D
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglTexStorage3D fgl

    a0
    a1
    a2
    a3
    a4
    a5
glDebugMessageControl ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr (GLuint) ->
    GLboolean ->
    FlextGL -> IO ( () )
glDebugMessageControl
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglDebugMessageControl fgl

    a0
    a1
    a2
    a3
    a4
    a5
glDebugMessageInsert ::
    GLenum ->
    GLenum ->
    GLuint ->
    GLenum ->
    GLsizei ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glDebugMessageInsert
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglDebugMessageInsert fgl

    a0
    a1
    a2
    a3
    a4
    a5
glDebugMessageCallback ::
    GLDEBUGPROC ->
    Ptr () ->
    FlextGL -> IO ( () )
glDebugMessageCallback
    a0
    a1
    fgl = rglDebugMessageCallback fgl

    a0
    a1
glGetDebugMessageLog ::
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    Ptr (GLenum) ->
    Ptr (GLuint) ->
    Ptr (GLenum) ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( GLuint )
glGetDebugMessageLog
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglGetDebugMessageLog fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glPushDebugGroup ::
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glPushDebugGroup
    a0
    a1
    a2
    a3
    fgl = rglPushDebugGroup fgl

    a0
    a1
    a2
    a3
glPopDebugGroup ::
    FlextGL -> IO ( () )
glPopDebugGroup
    fgl = rglPopDebugGroup fgl

glObjectLabel ::
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glObjectLabel
    a0
    a1
    a2
    a3
    fgl = rglObjectLabel fgl

    a0
    a1
    a2
    a3
glGetObjectLabel ::
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetObjectLabel
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetObjectLabel fgl

    a0
    a1
    a2
    a3
    a4
glObjectPtrLabel ::
    Ptr () ->
    GLsizei ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glObjectPtrLabel
    a0
    a1
    a2
    fgl = rglObjectPtrLabel fgl

    a0
    a1
    a2
glGetObjectPtrLabel ::
    Ptr () ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetObjectPtrLabel
    a0
    a1
    a2
    a3
    fgl = rglGetObjectPtrLabel fgl

    a0
    a1
    a2
    a3
glGetPointerv ::
    GLenum ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetPointerv
    a0
    a1
    fgl = rglGetPointerv fgl

    a0
    a1
glDebugMessageControlKHR ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr (GLuint) ->
    GLboolean ->
    FlextGL -> IO ( () )
glDebugMessageControlKHR
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglDebugMessageControlKHR fgl

    a0
    a1
    a2
    a3
    a4
    a5
glDebugMessageInsertKHR ::
    GLenum ->
    GLenum ->
    GLuint ->
    GLenum ->
    GLsizei ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glDebugMessageInsertKHR
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglDebugMessageInsertKHR fgl

    a0
    a1
    a2
    a3
    a4
    a5
glDebugMessageCallbackKHR ::
    GLDEBUGPROCKHR ->
    Ptr () ->
    FlextGL -> IO ( () )
glDebugMessageCallbackKHR
    a0
    a1
    fgl = rglDebugMessageCallbackKHR fgl

    a0
    a1
glGetDebugMessageLogKHR ::
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    Ptr (GLenum) ->
    Ptr (GLuint) ->
    Ptr (GLenum) ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( GLuint )
glGetDebugMessageLogKHR
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglGetDebugMessageLogKHR fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glPushDebugGroupKHR ::
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glPushDebugGroupKHR
    a0
    a1
    a2
    a3
    fgl = rglPushDebugGroupKHR fgl

    a0
    a1
    a2
    a3
glPopDebugGroupKHR ::
    FlextGL -> IO ( () )
glPopDebugGroupKHR
    fgl = rglPopDebugGroupKHR fgl

glObjectLabelKHR ::
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glObjectLabelKHR
    a0
    a1
    a2
    a3
    fgl = rglObjectLabelKHR fgl

    a0
    a1
    a2
    a3
glGetObjectLabelKHR ::
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetObjectLabelKHR
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetObjectLabelKHR fgl

    a0
    a1
    a2
    a3
    a4
glObjectPtrLabelKHR ::
    Ptr () ->
    GLsizei ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glObjectPtrLabelKHR
    a0
    a1
    a2
    fgl = rglObjectPtrLabelKHR fgl

    a0
    a1
    a2
glGetObjectPtrLabelKHR ::
    Ptr () ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetObjectPtrLabelKHR
    a0
    a1
    a2
    a3
    fgl = rglGetObjectPtrLabelKHR fgl

    a0
    a1
    a2
    a3
glGetPointervKHR ::
    GLenum ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetPointervKHR
    a0
    a1
    fgl = rglGetPointervKHR fgl

    a0
    a1
glMatrixLoadfEXT ::
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glMatrixLoadfEXT
    a0
    a1
    fgl = rglMatrixLoadfEXT fgl

    a0
    a1
glMatrixLoaddEXT ::
    GLenum ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glMatrixLoaddEXT
    a0
    a1
    fgl = rglMatrixLoaddEXT fgl

    a0
    a1
glMatrixMultfEXT ::
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glMatrixMultfEXT
    a0
    a1
    fgl = rglMatrixMultfEXT fgl

    a0
    a1
glMatrixMultdEXT ::
    GLenum ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glMatrixMultdEXT
    a0
    a1
    fgl = rglMatrixMultdEXT fgl

    a0
    a1
glMatrixLoadIdentityEXT ::
    GLenum ->
    FlextGL -> IO ( () )
glMatrixLoadIdentityEXT
    a0
    fgl = rglMatrixLoadIdentityEXT fgl

    a0
glMatrixRotatefEXT ::
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glMatrixRotatefEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglMatrixRotatefEXT fgl

    a0
    a1
    a2
    a3
    a4
glMatrixRotatedEXT ::
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glMatrixRotatedEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglMatrixRotatedEXT fgl

    a0
    a1
    a2
    a3
    a4
glMatrixScalefEXT ::
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glMatrixScalefEXT
    a0
    a1
    a2
    a3
    fgl = rglMatrixScalefEXT fgl

    a0
    a1
    a2
    a3
glMatrixScaledEXT ::
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glMatrixScaledEXT
    a0
    a1
    a2
    a3
    fgl = rglMatrixScaledEXT fgl

    a0
    a1
    a2
    a3
glMatrixTranslatefEXT ::
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glMatrixTranslatefEXT
    a0
    a1
    a2
    a3
    fgl = rglMatrixTranslatefEXT fgl

    a0
    a1
    a2
    a3
glMatrixTranslatedEXT ::
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glMatrixTranslatedEXT
    a0
    a1
    a2
    a3
    fgl = rglMatrixTranslatedEXT fgl

    a0
    a1
    a2
    a3
glMatrixFrustumEXT ::
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glMatrixFrustumEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglMatrixFrustumEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glMatrixOrthoEXT ::
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glMatrixOrthoEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglMatrixOrthoEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glMatrixPopEXT ::
    GLenum ->
    FlextGL -> IO ( () )
glMatrixPopEXT
    a0
    fgl = rglMatrixPopEXT fgl

    a0
glMatrixPushEXT ::
    GLenum ->
    FlextGL -> IO ( () )
glMatrixPushEXT
    a0
    fgl = rglMatrixPushEXT fgl

    a0
glClientAttribDefaultEXT ::
    GLbitfield ->
    FlextGL -> IO ( () )
glClientAttribDefaultEXT
    a0
    fgl = rglClientAttribDefaultEXT fgl

    a0
glPushClientAttribDefaultEXT ::
    GLbitfield ->
    FlextGL -> IO ( () )
glPushClientAttribDefaultEXT
    a0
    fgl = rglPushClientAttribDefaultEXT fgl

    a0
glTextureParameterfEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLfloat ->
    FlextGL -> IO ( () )
glTextureParameterfEXT
    a0
    a1
    a2
    a3
    fgl = rglTextureParameterfEXT fgl

    a0
    a1
    a2
    a3
glTextureParameterfvEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glTextureParameterfvEXT
    a0
    a1
    a2
    a3
    fgl = rglTextureParameterfvEXT fgl

    a0
    a1
    a2
    a3
glTextureParameteriEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glTextureParameteriEXT
    a0
    a1
    a2
    a3
    fgl = rglTextureParameteriEXT fgl

    a0
    a1
    a2
    a3
glTextureParameterivEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glTextureParameterivEXT
    a0
    a1
    a2
    a3
    fgl = rglTextureParameterivEXT fgl

    a0
    a1
    a2
    a3
glTextureImage1DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
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
    fgl = rglTextureImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glTextureImage2DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglTextureImage2DEXT fgl

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
glTextureSubImage1DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glTextureSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglTextureSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glTextureSubImage2DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglTextureSubImage2DEXT fgl

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
glCopyTextureImage1DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    FlextGL -> IO ( () )
glCopyTextureImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCopyTextureImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glCopyTextureImage2DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    FlextGL -> IO ( () )
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
    fgl = rglCopyTextureImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glCopyTextureSubImage1DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    FlextGL -> IO ( () )
glCopyTextureSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglCopyTextureSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glCopyTextureSubImage2DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
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
    fgl = rglCopyTextureSubImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glGetTextureImageEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetTextureImageEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglGetTextureImageEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glGetTextureParameterfvEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetTextureParameterfvEXT
    a0
    a1
    a2
    a3
    fgl = rglGetTextureParameterfvEXT fgl

    a0
    a1
    a2
    a3
glGetTextureParameterivEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetTextureParameterivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetTextureParameterivEXT fgl

    a0
    a1
    a2
    a3
glGetTextureLevelParameterfvEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetTextureLevelParameterfvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetTextureLevelParameterfvEXT fgl

    a0
    a1
    a2
    a3
    a4
glGetTextureLevelParameterivEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetTextureLevelParameterivEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetTextureLevelParameterivEXT fgl

    a0
    a1
    a2
    a3
    a4
glTextureImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglTextureImage3DEXT fgl

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
glTextureSubImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglTextureSubImage3DEXT fgl

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
glCopyTextureSubImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCopyTextureSubImage3DEXT fgl

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
glBindMultiTextureEXT ::
    GLenum ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glBindMultiTextureEXT
    a0
    a1
    a2
    fgl = rglBindMultiTextureEXT fgl

    a0
    a1
    a2
glMultiTexCoordPointerEXT ::
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glMultiTexCoordPointerEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglMultiTexCoordPointerEXT fgl

    a0
    a1
    a2
    a3
    a4
glMultiTexEnvfEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    FlextGL -> IO ( () )
glMultiTexEnvfEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexEnvfEXT fgl

    a0
    a1
    a2
    a3
glMultiTexEnvfvEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glMultiTexEnvfvEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexEnvfvEXT fgl

    a0
    a1
    a2
    a3
glMultiTexEnviEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glMultiTexEnviEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexEnviEXT fgl

    a0
    a1
    a2
    a3
glMultiTexEnvivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glMultiTexEnvivEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexEnvivEXT fgl

    a0
    a1
    a2
    a3
glMultiTexGendEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLdouble ->
    FlextGL -> IO ( () )
glMultiTexGendEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexGendEXT fgl

    a0
    a1
    a2
    a3
glMultiTexGendvEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glMultiTexGendvEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexGendvEXT fgl

    a0
    a1
    a2
    a3
glMultiTexGenfEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    FlextGL -> IO ( () )
glMultiTexGenfEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexGenfEXT fgl

    a0
    a1
    a2
    a3
glMultiTexGenfvEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glMultiTexGenfvEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexGenfvEXT fgl

    a0
    a1
    a2
    a3
glMultiTexGeniEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glMultiTexGeniEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexGeniEXT fgl

    a0
    a1
    a2
    a3
glMultiTexGenivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glMultiTexGenivEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexGenivEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexEnvfvEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetMultiTexEnvfvEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexEnvfvEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexEnvivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetMultiTexEnvivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexEnvivEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexGendvEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glGetMultiTexGendvEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexGendvEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexGenfvEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetMultiTexGenfvEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexGenfvEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexGenivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetMultiTexGenivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexGenivEXT fgl

    a0
    a1
    a2
    a3
glMultiTexParameteriEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glMultiTexParameteriEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexParameteriEXT fgl

    a0
    a1
    a2
    a3
glMultiTexParameterivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glMultiTexParameterivEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexParameterivEXT fgl

    a0
    a1
    a2
    a3
glMultiTexParameterfEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    FlextGL -> IO ( () )
glMultiTexParameterfEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexParameterfEXT fgl

    a0
    a1
    a2
    a3
glMultiTexParameterfvEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glMultiTexParameterfvEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexParameterfvEXT fgl

    a0
    a1
    a2
    a3
glMultiTexImage1DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
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
    fgl = rglMultiTexImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glMultiTexImage2DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglMultiTexImage2DEXT fgl

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
glMultiTexSubImage1DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glMultiTexSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglMultiTexSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glMultiTexSubImage2DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglMultiTexSubImage2DEXT fgl

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
glCopyMultiTexImage1DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    FlextGL -> IO ( () )
glCopyMultiTexImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCopyMultiTexImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glCopyMultiTexImage2DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    FlextGL -> IO ( () )
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
    fgl = rglCopyMultiTexImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glCopyMultiTexSubImage1DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    FlextGL -> IO ( () )
glCopyMultiTexSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglCopyMultiTexSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glCopyMultiTexSubImage2DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
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
    fgl = rglCopyMultiTexSubImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glGetMultiTexImageEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetMultiTexImageEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglGetMultiTexImageEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glGetMultiTexParameterfvEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetMultiTexParameterfvEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexParameterfvEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexParameterivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetMultiTexParameterivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexParameterivEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexLevelParameterfvEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetMultiTexLevelParameterfvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetMultiTexLevelParameterfvEXT fgl

    a0
    a1
    a2
    a3
    a4
glGetMultiTexLevelParameterivEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetMultiTexLevelParameterivEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglGetMultiTexLevelParameterivEXT fgl

    a0
    a1
    a2
    a3
    a4
glMultiTexImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglMultiTexImage3DEXT fgl

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
glMultiTexSubImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglMultiTexSubImage3DEXT fgl

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
glCopyMultiTexSubImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCopyMultiTexSubImage3DEXT fgl

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
glEnableClientStateIndexedEXT ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glEnableClientStateIndexedEXT
    a0
    a1
    fgl = rglEnableClientStateIndexedEXT fgl

    a0
    a1
glDisableClientStateIndexedEXT ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glDisableClientStateIndexedEXT
    a0
    a1
    fgl = rglDisableClientStateIndexedEXT fgl

    a0
    a1
glGetFloatIndexedvEXT ::
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetFloatIndexedvEXT
    a0
    a1
    a2
    fgl = rglGetFloatIndexedvEXT fgl

    a0
    a1
    a2
glGetDoubleIndexedvEXT ::
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glGetDoubleIndexedvEXT
    a0
    a1
    a2
    fgl = rglGetDoubleIndexedvEXT fgl

    a0
    a1
    a2
glGetPointerIndexedvEXT ::
    GLenum ->
    GLuint ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetPointerIndexedvEXT
    a0
    a1
    a2
    fgl = rglGetPointerIndexedvEXT fgl

    a0
    a1
    a2
glEnableIndexedEXT ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glEnableIndexedEXT
    a0
    a1
    fgl = rglEnableIndexedEXT fgl

    a0
    a1
glDisableIndexedEXT ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glDisableIndexedEXT
    a0
    a1
    fgl = rglDisableIndexedEXT fgl

    a0
    a1
glIsEnabledIndexedEXT ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsEnabledIndexedEXT
    a0
    a1
    fgl = rglIsEnabledIndexedEXT fgl

    a0
    a1
glGetIntegerIndexedvEXT ::
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetIntegerIndexedvEXT
    a0
    a1
    a2
    fgl = rglGetIntegerIndexedvEXT fgl

    a0
    a1
    a2
glGetBooleanIndexedvEXT ::
    GLenum ->
    GLuint ->
    Ptr (GLboolean) ->
    FlextGL -> IO ( () )
glGetBooleanIndexedvEXT
    a0
    a1
    a2
    fgl = rglGetBooleanIndexedvEXT fgl

    a0
    a1
    a2
glCompressedTextureImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCompressedTextureImage3DEXT fgl

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
glCompressedTextureImage2DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
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
    fgl = rglCompressedTextureImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glCompressedTextureImage1DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glCompressedTextureImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCompressedTextureImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glCompressedTextureSubImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCompressedTextureSubImage3DEXT fgl

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
glCompressedTextureSubImage2DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCompressedTextureSubImage2DEXT fgl

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
glCompressedTextureSubImage1DEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glCompressedTextureSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCompressedTextureSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glGetCompressedTextureImageEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetCompressedTextureImageEXT
    a0
    a1
    a2
    a3
    fgl = rglGetCompressedTextureImageEXT fgl

    a0
    a1
    a2
    a3
glCompressedMultiTexImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCompressedMultiTexImage3DEXT fgl

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
glCompressedMultiTexImage2DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
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
    fgl = rglCompressedMultiTexImage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glCompressedMultiTexImage1DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glCompressedMultiTexImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCompressedMultiTexImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glCompressedMultiTexSubImage3DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCompressedMultiTexSubImage3DEXT fgl

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
glCompressedMultiTexSubImage2DEXT ::
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
    FlextGL -> IO ( () )
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
    fgl = rglCompressedMultiTexSubImage2DEXT fgl

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
glCompressedMultiTexSubImage1DEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glCompressedMultiTexSubImage1DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglCompressedMultiTexSubImage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glGetCompressedMultiTexImageEXT ::
    GLenum ->
    GLenum ->
    GLint ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetCompressedMultiTexImageEXT
    a0
    a1
    a2
    a3
    fgl = rglGetCompressedMultiTexImageEXT fgl

    a0
    a1
    a2
    a3
glMatrixLoadTransposefEXT ::
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glMatrixLoadTransposefEXT
    a0
    a1
    fgl = rglMatrixLoadTransposefEXT fgl

    a0
    a1
glMatrixLoadTransposedEXT ::
    GLenum ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glMatrixLoadTransposedEXT
    a0
    a1
    fgl = rglMatrixLoadTransposedEXT fgl

    a0
    a1
glMatrixMultTransposefEXT ::
    GLenum ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glMatrixMultTransposefEXT
    a0
    a1
    fgl = rglMatrixMultTransposefEXT fgl

    a0
    a1
glMatrixMultTransposedEXT ::
    GLenum ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glMatrixMultTransposedEXT
    a0
    a1
    fgl = rglMatrixMultTransposedEXT fgl

    a0
    a1
glNamedBufferDataEXT ::
    GLuint ->
    GLsizeiptr ->
    Ptr () ->
    GLenum ->
    FlextGL -> IO ( () )
glNamedBufferDataEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedBufferDataEXT fgl

    a0
    a1
    a2
    a3
glNamedBufferSubDataEXT ::
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    FlextGL -> IO ( () )
glNamedBufferSubDataEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedBufferSubDataEXT fgl

    a0
    a1
    a2
    a3
glMapNamedBufferEXT ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( Ptr () )
glMapNamedBufferEXT
    a0
    a1
    fgl = rglMapNamedBufferEXT fgl

    a0
    a1
glUnmapNamedBufferEXT ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glUnmapNamedBufferEXT
    a0
    fgl = rglUnmapNamedBufferEXT fgl

    a0
glGetNamedBufferParameterivEXT ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetNamedBufferParameterivEXT
    a0
    a1
    a2
    fgl = rglGetNamedBufferParameterivEXT fgl

    a0
    a1
    a2
glGetNamedBufferPointervEXT ::
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetNamedBufferPointervEXT
    a0
    a1
    a2
    fgl = rglGetNamedBufferPointervEXT fgl

    a0
    a1
    a2
glGetNamedBufferSubDataEXT ::
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetNamedBufferSubDataEXT
    a0
    a1
    a2
    a3
    fgl = rglGetNamedBufferSubDataEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform1fEXT ::
    GLuint ->
    GLint ->
    GLfloat ->
    FlextGL -> IO ( () )
glProgramUniform1fEXT
    a0
    a1
    a2
    fgl = rglProgramUniform1fEXT fgl

    a0
    a1
    a2
glProgramUniform2fEXT ::
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glProgramUniform2fEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2fEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform3fEXT ::
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glProgramUniform3fEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniform3fEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniform4fEXT ::
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glProgramUniform4fEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglProgramUniform4fEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProgramUniform1iEXT ::
    GLuint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glProgramUniform1iEXT
    a0
    a1
    a2
    fgl = rglProgramUniform1iEXT fgl

    a0
    a1
    a2
glProgramUniform2iEXT ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glProgramUniform2iEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2iEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform3iEXT ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glProgramUniform3iEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniform3iEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniform4iEXT ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glProgramUniform4iEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglProgramUniform4iEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProgramUniform1fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniform1fvEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform1fvEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform2fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniform2fvEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2fvEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform3fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniform3fvEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform3fvEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform4fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniform4fvEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform4fvEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform1ivEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glProgramUniform1ivEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform1ivEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform2ivEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glProgramUniform2ivEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2ivEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform3ivEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glProgramUniform3ivEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform3ivEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform4ivEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glProgramUniform4ivEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform4ivEXT fgl

    a0
    a1
    a2
    a3
glProgramUniformMatrix2fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2x3fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2x3fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2x3fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3x2fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3x2fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3x2fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2x4fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2x4fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2x4fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4x2fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4x2fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4x2fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3x4fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3x4fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3x4fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4x3fvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4x3fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4x3fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glTextureBufferEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glTextureBufferEXT
    a0
    a1
    a2
    a3
    fgl = rglTextureBufferEXT fgl

    a0
    a1
    a2
    a3
glMultiTexBufferEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glMultiTexBufferEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexBufferEXT fgl

    a0
    a1
    a2
    a3
glTextureParameterIivEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glTextureParameterIivEXT
    a0
    a1
    a2
    a3
    fgl = rglTextureParameterIivEXT fgl

    a0
    a1
    a2
    a3
glTextureParameterIuivEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glTextureParameterIuivEXT
    a0
    a1
    a2
    a3
    fgl = rglTextureParameterIuivEXT fgl

    a0
    a1
    a2
    a3
glGetTextureParameterIivEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetTextureParameterIivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetTextureParameterIivEXT fgl

    a0
    a1
    a2
    a3
glGetTextureParameterIuivEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetTextureParameterIuivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetTextureParameterIuivEXT fgl

    a0
    a1
    a2
    a3
glMultiTexParameterIivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glMultiTexParameterIivEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexParameterIivEXT fgl

    a0
    a1
    a2
    a3
glMultiTexParameterIuivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glMultiTexParameterIuivEXT
    a0
    a1
    a2
    a3
    fgl = rglMultiTexParameterIuivEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexParameterIivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetMultiTexParameterIivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexParameterIivEXT fgl

    a0
    a1
    a2
    a3
glGetMultiTexParameterIuivEXT ::
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetMultiTexParameterIuivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetMultiTexParameterIuivEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform1uiEXT ::
    GLuint ->
    GLint ->
    GLuint ->
    FlextGL -> IO ( () )
glProgramUniform1uiEXT
    a0
    a1
    a2
    fgl = rglProgramUniform1uiEXT fgl

    a0
    a1
    a2
glProgramUniform2uiEXT ::
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glProgramUniform2uiEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2uiEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform3uiEXT ::
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glProgramUniform3uiEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniform3uiEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniform4uiEXT ::
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glProgramUniform4uiEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglProgramUniform4uiEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProgramUniform1uivEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glProgramUniform1uivEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform1uivEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform2uivEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glProgramUniform2uivEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2uivEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform3uivEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glProgramUniform3uivEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform3uivEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform4uivEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glProgramUniform4uivEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform4uivEXT fgl

    a0
    a1
    a2
    a3
glNamedProgramLocalParameters4fvEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameters4fvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedProgramLocalParameters4fvEXT fgl

    a0
    a1
    a2
    a3
    a4
glNamedProgramLocalParameterI4iEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameterI4iEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglNamedProgramLocalParameterI4iEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glNamedProgramLocalParameterI4ivEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameterI4ivEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedProgramLocalParameterI4ivEXT fgl

    a0
    a1
    a2
    a3
glNamedProgramLocalParametersI4ivEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glNamedProgramLocalParametersI4ivEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedProgramLocalParametersI4ivEXT fgl

    a0
    a1
    a2
    a3
    a4
glNamedProgramLocalParameterI4uiEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameterI4uiEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglNamedProgramLocalParameterI4uiEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glNamedProgramLocalParameterI4uivEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameterI4uivEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedProgramLocalParameterI4uivEXT fgl

    a0
    a1
    a2
    a3
glNamedProgramLocalParametersI4uivEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glNamedProgramLocalParametersI4uivEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedProgramLocalParametersI4uivEXT fgl

    a0
    a1
    a2
    a3
    a4
glGetNamedProgramLocalParameterIivEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetNamedProgramLocalParameterIivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetNamedProgramLocalParameterIivEXT fgl

    a0
    a1
    a2
    a3
glGetNamedProgramLocalParameterIuivEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGetNamedProgramLocalParameterIuivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetNamedProgramLocalParameterIuivEXT fgl

    a0
    a1
    a2
    a3
glEnableClientStateiEXT ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glEnableClientStateiEXT
    a0
    a1
    fgl = rglEnableClientStateiEXT fgl

    a0
    a1
glDisableClientStateiEXT ::
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glDisableClientStateiEXT
    a0
    a1
    fgl = rglDisableClientStateiEXT fgl

    a0
    a1
glGetFloati_vEXT ::
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetFloati_vEXT
    a0
    a1
    a2
    fgl = rglGetFloati_vEXT fgl

    a0
    a1
    a2
glGetDoublei_vEXT ::
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glGetDoublei_vEXT
    a0
    a1
    a2
    fgl = rglGetDoublei_vEXT fgl

    a0
    a1
    a2
glGetPointeri_vEXT ::
    GLenum ->
    GLuint ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetPointeri_vEXT
    a0
    a1
    a2
    fgl = rglGetPointeri_vEXT fgl

    a0
    a1
    a2
glNamedProgramStringEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    FlextGL -> IO ( () )
glNamedProgramStringEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedProgramStringEXT fgl

    a0
    a1
    a2
    a3
    a4
glNamedProgramLocalParameter4dEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameter4dEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglNamedProgramLocalParameter4dEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glNamedProgramLocalParameter4dvEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameter4dvEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedProgramLocalParameter4dvEXT fgl

    a0
    a1
    a2
    a3
glNamedProgramLocalParameter4fEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameter4fEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglNamedProgramLocalParameter4fEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glNamedProgramLocalParameter4fvEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glNamedProgramLocalParameter4fvEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedProgramLocalParameter4fvEXT fgl

    a0
    a1
    a2
    a3
glGetNamedProgramLocalParameterdvEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glGetNamedProgramLocalParameterdvEXT
    a0
    a1
    a2
    a3
    fgl = rglGetNamedProgramLocalParameterdvEXT fgl

    a0
    a1
    a2
    a3
glGetNamedProgramLocalParameterfvEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glGetNamedProgramLocalParameterfvEXT
    a0
    a1
    a2
    a3
    fgl = rglGetNamedProgramLocalParameterfvEXT fgl

    a0
    a1
    a2
    a3
glGetNamedProgramivEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetNamedProgramivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetNamedProgramivEXT fgl

    a0
    a1
    a2
    a3
glGetNamedProgramStringEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glGetNamedProgramStringEXT
    a0
    a1
    a2
    a3
    fgl = rglGetNamedProgramStringEXT fgl

    a0
    a1
    a2
    a3
glNamedRenderbufferStorageEXT ::
    GLuint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glNamedRenderbufferStorageEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedRenderbufferStorageEXT fgl

    a0
    a1
    a2
    a3
glGetNamedRenderbufferParameterivEXT ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetNamedRenderbufferParameterivEXT
    a0
    a1
    a2
    fgl = rglGetNamedRenderbufferParameterivEXT fgl

    a0
    a1
    a2
glNamedRenderbufferStorageMultisampleEXT ::
    GLuint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glNamedRenderbufferStorageMultisampleEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedRenderbufferStorageMultisampleEXT fgl

    a0
    a1
    a2
    a3
    a4
glNamedRenderbufferStorageMultisampleCoverageEXT ::
    GLuint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glNamedRenderbufferStorageMultisampleCoverageEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglNamedRenderbufferStorageMultisampleCoverageEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glCheckNamedFramebufferStatusEXT ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( GLenum )
glCheckNamedFramebufferStatusEXT
    a0
    a1
    fgl = rglCheckNamedFramebufferStatusEXT fgl

    a0
    a1
glNamedFramebufferTexture1DEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    FlextGL -> IO ( () )
glNamedFramebufferTexture1DEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedFramebufferTexture1DEXT fgl

    a0
    a1
    a2
    a3
    a4
glNamedFramebufferTexture2DEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    FlextGL -> IO ( () )
glNamedFramebufferTexture2DEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedFramebufferTexture2DEXT fgl

    a0
    a1
    a2
    a3
    a4
glNamedFramebufferTexture3DEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glNamedFramebufferTexture3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglNamedFramebufferTexture3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glNamedFramebufferRenderbufferEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glNamedFramebufferRenderbufferEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedFramebufferRenderbufferEXT fgl

    a0
    a1
    a2
    a3
glGetNamedFramebufferAttachmentParameterivEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetNamedFramebufferAttachmentParameterivEXT
    a0
    a1
    a2
    a3
    fgl = rglGetNamedFramebufferAttachmentParameterivEXT fgl

    a0
    a1
    a2
    a3
glGenerateTextureMipmapEXT ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( () )
glGenerateTextureMipmapEXT
    a0
    a1
    fgl = rglGenerateTextureMipmapEXT fgl

    a0
    a1
glGenerateMultiTexMipmapEXT ::
    GLenum ->
    GLenum ->
    FlextGL -> IO ( () )
glGenerateMultiTexMipmapEXT
    a0
    a1
    fgl = rglGenerateMultiTexMipmapEXT fgl

    a0
    a1
glFramebufferDrawBufferEXT ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( () )
glFramebufferDrawBufferEXT
    a0
    a1
    fgl = rglFramebufferDrawBufferEXT fgl

    a0
    a1
glFramebufferDrawBuffersEXT ::
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    FlextGL -> IO ( () )
glFramebufferDrawBuffersEXT
    a0
    a1
    a2
    fgl = rglFramebufferDrawBuffersEXT fgl

    a0
    a1
    a2
glFramebufferReadBufferEXT ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( () )
glFramebufferReadBufferEXT
    a0
    a1
    fgl = rglFramebufferReadBufferEXT fgl

    a0
    a1
glGetFramebufferParameterivEXT ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetFramebufferParameterivEXT
    a0
    a1
    a2
    fgl = rglGetFramebufferParameterivEXT fgl

    a0
    a1
    a2
glNamedCopyBufferSubDataEXT ::
    GLuint ->
    GLuint ->
    GLintptr ->
    GLintptr ->
    GLsizeiptr ->
    FlextGL -> IO ( () )
glNamedCopyBufferSubDataEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedCopyBufferSubDataEXT fgl

    a0
    a1
    a2
    a3
    a4
glNamedFramebufferTextureEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    FlextGL -> IO ( () )
glNamedFramebufferTextureEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedFramebufferTextureEXT fgl

    a0
    a1
    a2
    a3
glNamedFramebufferTextureLayerEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glNamedFramebufferTextureLayerEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedFramebufferTextureLayerEXT fgl

    a0
    a1
    a2
    a3
    a4
glNamedFramebufferTextureFaceEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLenum ->
    FlextGL -> IO ( () )
glNamedFramebufferTextureFaceEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglNamedFramebufferTextureFaceEXT fgl

    a0
    a1
    a2
    a3
    a4
glTextureRenderbufferEXT ::
    GLuint ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glTextureRenderbufferEXT
    a0
    a1
    a2
    fgl = rglTextureRenderbufferEXT fgl

    a0
    a1
    a2
glMultiTexRenderbufferEXT ::
    GLenum ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glMultiTexRenderbufferEXT
    a0
    a1
    a2
    fgl = rglMultiTexRenderbufferEXT fgl

    a0
    a1
    a2
glVertexArrayVertexOffsetEXT ::
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayVertexOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglVertexArrayVertexOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glVertexArrayColorOffsetEXT ::
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayColorOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglVertexArrayColorOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glVertexArrayEdgeFlagOffsetEXT ::
    GLuint ->
    GLuint ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayEdgeFlagOffsetEXT
    a0
    a1
    a2
    a3
    fgl = rglVertexArrayEdgeFlagOffsetEXT fgl

    a0
    a1
    a2
    a3
glVertexArrayIndexOffsetEXT ::
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayIndexOffsetEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexArrayIndexOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
glVertexArrayNormalOffsetEXT ::
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayNormalOffsetEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexArrayNormalOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
glVertexArrayTexCoordOffsetEXT ::
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayTexCoordOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglVertexArrayTexCoordOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glVertexArrayMultiTexCoordOffsetEXT ::
    GLuint ->
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayMultiTexCoordOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglVertexArrayMultiTexCoordOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glVertexArrayFogCoordOffsetEXT ::
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayFogCoordOffsetEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexArrayFogCoordOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
glVertexArraySecondaryColorOffsetEXT ::
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArraySecondaryColorOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglVertexArraySecondaryColorOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glVertexArrayVertexAttribOffsetEXT ::
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayVertexAttribOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglVertexArrayVertexAttribOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glVertexArrayVertexAttribIOffsetEXT ::
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayVertexAttribIOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglVertexArrayVertexAttribIOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glEnableVertexArrayEXT ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( () )
glEnableVertexArrayEXT
    a0
    a1
    fgl = rglEnableVertexArrayEXT fgl

    a0
    a1
glDisableVertexArrayEXT ::
    GLuint ->
    GLenum ->
    FlextGL -> IO ( () )
glDisableVertexArrayEXT
    a0
    a1
    fgl = rglDisableVertexArrayEXT fgl

    a0
    a1
glEnableVertexArrayAttribEXT ::
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glEnableVertexArrayAttribEXT
    a0
    a1
    fgl = rglEnableVertexArrayAttribEXT fgl

    a0
    a1
glDisableVertexArrayAttribEXT ::
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glDisableVertexArrayAttribEXT
    a0
    a1
    fgl = rglDisableVertexArrayAttribEXT fgl

    a0
    a1
glGetVertexArrayIntegervEXT ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetVertexArrayIntegervEXT
    a0
    a1
    a2
    fgl = rglGetVertexArrayIntegervEXT fgl

    a0
    a1
    a2
glGetVertexArrayPointervEXT ::
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetVertexArrayPointervEXT
    a0
    a1
    a2
    fgl = rglGetVertexArrayPointervEXT fgl

    a0
    a1
    a2
glGetVertexArrayIntegeri_vEXT ::
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetVertexArrayIntegeri_vEXT
    a0
    a1
    a2
    a3
    fgl = rglGetVertexArrayIntegeri_vEXT fgl

    a0
    a1
    a2
    a3
glGetVertexArrayPointeri_vEXT ::
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    FlextGL -> IO ( () )
glGetVertexArrayPointeri_vEXT
    a0
    a1
    a2
    a3
    fgl = rglGetVertexArrayPointeri_vEXT fgl

    a0
    a1
    a2
    a3
glMapNamedBufferRangeEXT ::
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    GLbitfield ->
    FlextGL -> IO ( Ptr () )
glMapNamedBufferRangeEXT
    a0
    a1
    a2
    a3
    fgl = rglMapNamedBufferRangeEXT fgl

    a0
    a1
    a2
    a3
glFlushMappedNamedBufferRangeEXT ::
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    FlextGL -> IO ( () )
glFlushMappedNamedBufferRangeEXT
    a0
    a1
    a2
    fgl = rglFlushMappedNamedBufferRangeEXT fgl

    a0
    a1
    a2
glNamedBufferStorageEXT ::
    GLuint ->
    GLsizeiptr ->
    Ptr () ->
    GLbitfield ->
    FlextGL -> IO ( () )
glNamedBufferStorageEXT
    a0
    a1
    a2
    a3
    fgl = rglNamedBufferStorageEXT fgl

    a0
    a1
    a2
    a3
glClearNamedBufferDataEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glClearNamedBufferDataEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglClearNamedBufferDataEXT fgl

    a0
    a1
    a2
    a3
    a4
glClearNamedBufferSubDataEXT ::
    GLuint ->
    GLenum ->
    GLsizeiptr ->
    GLsizeiptr ->
    GLenum ->
    GLenum ->
    Ptr () ->
    FlextGL -> IO ( () )
glClearNamedBufferSubDataEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglClearNamedBufferSubDataEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glNamedFramebufferParameteriEXT ::
    GLuint ->
    GLenum ->
    GLint ->
    FlextGL -> IO ( () )
glNamedFramebufferParameteriEXT
    a0
    a1
    a2
    fgl = rglNamedFramebufferParameteriEXT fgl

    a0
    a1
    a2
glGetNamedFramebufferParameterivEXT ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetNamedFramebufferParameterivEXT
    a0
    a1
    a2
    fgl = rglGetNamedFramebufferParameterivEXT fgl

    a0
    a1
    a2
glProgramUniform1dEXT ::
    GLuint ->
    GLint ->
    GLdouble ->
    FlextGL -> IO ( () )
glProgramUniform1dEXT
    a0
    a1
    a2
    fgl = rglProgramUniform1dEXT fgl

    a0
    a1
    a2
glProgramUniform2dEXT ::
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glProgramUniform2dEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2dEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform3dEXT ::
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glProgramUniform3dEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniform3dEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniform4dEXT ::
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glProgramUniform4dEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglProgramUniform4dEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProgramUniform1dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniform1dvEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform1dvEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform2dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniform2dvEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2dvEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform3dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniform3dvEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform3dvEXT fgl

    a0
    a1
    a2
    a3
glProgramUniform4dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniform4dvEXT
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform4dvEXT fgl

    a0
    a1
    a2
    a3
glProgramUniformMatrix2dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2x3dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2x3dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2x3dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2x4dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2x4dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2x4dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3x2dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3x2dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3x2dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3x4dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3x4dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3x4dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4x2dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4x2dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4x2dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4x3dvEXT ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4x3dvEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4x3dvEXT fgl

    a0
    a1
    a2
    a3
    a4
glTextureBufferRangeEXT ::
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    FlextGL -> IO ( () )
glTextureBufferRangeEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglTextureBufferRangeEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glTextureStorage1DEXT ::
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    FlextGL -> IO ( () )
glTextureStorage1DEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglTextureStorage1DEXT fgl

    a0
    a1
    a2
    a3
    a4
glTextureStorage2DEXT ::
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glTextureStorage2DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglTextureStorage2DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glTextureStorage3DEXT ::
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glTextureStorage3DEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglTextureStorage3DEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glTextureStorage2DMultisampleEXT ::
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    FlextGL -> IO ( () )
glTextureStorage2DMultisampleEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglTextureStorage2DMultisampleEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glTextureStorage3DMultisampleEXT ::
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    FlextGL -> IO ( () )
glTextureStorage3DMultisampleEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglTextureStorage3DMultisampleEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glVertexArrayBindVertexBufferEXT ::
    GLuint ->
    GLuint ->
    GLuint ->
    GLintptr ->
    GLsizei ->
    FlextGL -> IO ( () )
glVertexArrayBindVertexBufferEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexArrayBindVertexBufferEXT fgl

    a0
    a1
    a2
    a3
    a4
glVertexArrayVertexAttribFormatEXT ::
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexArrayVertexAttribFormatEXT
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglVertexArrayVertexAttribFormatEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
glVertexArrayVertexAttribIFormatEXT ::
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexArrayVertexAttribIFormatEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexArrayVertexAttribIFormatEXT fgl

    a0
    a1
    a2
    a3
    a4
glVertexArrayVertexAttribLFormatEXT ::
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexArrayVertexAttribLFormatEXT
    a0
    a1
    a2
    a3
    a4
    fgl = rglVertexArrayVertexAttribLFormatEXT fgl

    a0
    a1
    a2
    a3
    a4
glVertexArrayVertexAttribBindingEXT ::
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexArrayVertexAttribBindingEXT
    a0
    a1
    a2
    fgl = rglVertexArrayVertexAttribBindingEXT fgl

    a0
    a1
    a2
glVertexArrayVertexBindingDivisorEXT ::
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexArrayVertexBindingDivisorEXT
    a0
    a1
    a2
    fgl = rglVertexArrayVertexBindingDivisorEXT fgl

    a0
    a1
    a2
glVertexArrayVertexAttribLOffsetEXT ::
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    FlextGL -> IO ( () )
glVertexArrayVertexAttribLOffsetEXT
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglVertexArrayVertexAttribLOffsetEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
glTexturePageCommitmentEXT ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    FlextGL -> IO ( () )
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
    fgl = rglTexturePageCommitmentEXT fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    a8
glVertexArrayVertexAttribDivisorEXT ::
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glVertexArrayVertexAttribDivisorEXT
    a0
    a1
    a2
    fgl = rglVertexArrayVertexAttribDivisorEXT fgl

    a0
    a1
    a2
glBufferStorage ::
    GLenum ->
    GLsizeiptr ->
    Ptr () ->
    GLbitfield ->
    FlextGL -> IO ( () )
glBufferStorage
    a0
    a1
    a2
    a3
    fgl = rglBufferStorage fgl

    a0
    a1
    a2
    a3
glUseProgramStages ::
    GLuint ->
    GLbitfield ->
    GLuint ->
    FlextGL -> IO ( () )
glUseProgramStages
    a0
    a1
    a2
    fgl = rglUseProgramStages fgl

    a0
    a1
    a2
glActiveShaderProgram ::
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glActiveShaderProgram
    a0
    a1
    fgl = rglActiveShaderProgram fgl

    a0
    a1
glCreateShaderProgramv ::
    GLenum ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    FlextGL -> IO ( GLuint )
glCreateShaderProgramv
    a0
    a1
    a2
    fgl = rglCreateShaderProgramv fgl

    a0
    a1
    a2
glBindProgramPipeline ::
    GLuint ->
    FlextGL -> IO ( () )
glBindProgramPipeline
    a0
    fgl = rglBindProgramPipeline fgl

    a0
glDeleteProgramPipelines ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glDeleteProgramPipelines
    a0
    a1
    fgl = rglDeleteProgramPipelines fgl

    a0
    a1
glGenProgramPipelines ::
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glGenProgramPipelines
    a0
    a1
    fgl = rglGenProgramPipelines fgl

    a0
    a1
glIsProgramPipeline ::
    GLuint ->
    FlextGL -> IO ( GLboolean )
glIsProgramPipeline
    a0
    fgl = rglIsProgramPipeline fgl

    a0
glGetProgramPipelineiv ::
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glGetProgramPipelineiv
    a0
    a1
    a2
    fgl = rglGetProgramPipelineiv fgl

    a0
    a1
    a2
glProgramUniform1i ::
    GLuint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glProgramUniform1i
    a0
    a1
    a2
    fgl = rglProgramUniform1i fgl

    a0
    a1
    a2
glProgramUniform1iv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glProgramUniform1iv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform1iv fgl

    a0
    a1
    a2
    a3
glProgramUniform1f ::
    GLuint ->
    GLint ->
    GLfloat ->
    FlextGL -> IO ( () )
glProgramUniform1f
    a0
    a1
    a2
    fgl = rglProgramUniform1f fgl

    a0
    a1
    a2
glProgramUniform1fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniform1fv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform1fv fgl

    a0
    a1
    a2
    a3
glProgramUniform1d ::
    GLuint ->
    GLint ->
    GLdouble ->
    FlextGL -> IO ( () )
glProgramUniform1d
    a0
    a1
    a2
    fgl = rglProgramUniform1d fgl

    a0
    a1
    a2
glProgramUniform1dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniform1dv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform1dv fgl

    a0
    a1
    a2
    a3
glProgramUniform1ui ::
    GLuint ->
    GLint ->
    GLuint ->
    FlextGL -> IO ( () )
glProgramUniform1ui
    a0
    a1
    a2
    fgl = rglProgramUniform1ui fgl

    a0
    a1
    a2
glProgramUniform1uiv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glProgramUniform1uiv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform1uiv fgl

    a0
    a1
    a2
    a3
glProgramUniform2i ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glProgramUniform2i
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2i fgl

    a0
    a1
    a2
    a3
glProgramUniform2iv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glProgramUniform2iv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2iv fgl

    a0
    a1
    a2
    a3
glProgramUniform2f ::
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glProgramUniform2f
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2f fgl

    a0
    a1
    a2
    a3
glProgramUniform2fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniform2fv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2fv fgl

    a0
    a1
    a2
    a3
glProgramUniform2d ::
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glProgramUniform2d
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2d fgl

    a0
    a1
    a2
    a3
glProgramUniform2dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniform2dv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2dv fgl

    a0
    a1
    a2
    a3
glProgramUniform2ui ::
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glProgramUniform2ui
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2ui fgl

    a0
    a1
    a2
    a3
glProgramUniform2uiv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glProgramUniform2uiv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform2uiv fgl

    a0
    a1
    a2
    a3
glProgramUniform3i ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glProgramUniform3i
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniform3i fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniform3iv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glProgramUniform3iv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform3iv fgl

    a0
    a1
    a2
    a3
glProgramUniform3f ::
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glProgramUniform3f
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniform3f fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniform3fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniform3fv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform3fv fgl

    a0
    a1
    a2
    a3
glProgramUniform3d ::
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glProgramUniform3d
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniform3d fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniform3dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniform3dv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform3dv fgl

    a0
    a1
    a2
    a3
glProgramUniform3ui ::
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glProgramUniform3ui
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniform3ui fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniform3uiv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glProgramUniform3uiv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform3uiv fgl

    a0
    a1
    a2
    a3
glProgramUniform4i ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    FlextGL -> IO ( () )
glProgramUniform4i
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglProgramUniform4i fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProgramUniform4iv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    FlextGL -> IO ( () )
glProgramUniform4iv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform4iv fgl

    a0
    a1
    a2
    a3
glProgramUniform4f ::
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    FlextGL -> IO ( () )
glProgramUniform4f
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglProgramUniform4f fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProgramUniform4fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniform4fv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform4fv fgl

    a0
    a1
    a2
    a3
glProgramUniform4d ::
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    FlextGL -> IO ( () )
glProgramUniform4d
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglProgramUniform4d fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProgramUniform4dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniform4dv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform4dv fgl

    a0
    a1
    a2
    a3
glProgramUniform4ui ::
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    FlextGL -> IO ( () )
glProgramUniform4ui
    a0
    a1
    a2
    a3
    a4
    a5
    fgl = rglProgramUniform4ui fgl

    a0
    a1
    a2
    a3
    a4
    a5
glProgramUniform4uiv ::
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    FlextGL -> IO ( () )
glProgramUniform4uiv
    a0
    a1
    a2
    a3
    fgl = rglProgramUniform4uiv fgl

    a0
    a1
    a2
    a3
glProgramUniformMatrix2fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2dv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3dv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4dv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2x3fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2x3fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2x3fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3x2fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3x2fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3x2fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2x4fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2x4fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2x4fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4x2fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4x2fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4x2fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3x4fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3x4fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3x4fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4x3fv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4x3fv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4x3fv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2x3dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2x3dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2x3dv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3x2dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3x2dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3x2dv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix2x4dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix2x4dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix2x4dv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4x2dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4x2dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4x2dv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix3x4dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix3x4dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix3x4dv fgl

    a0
    a1
    a2
    a3
    a4
glProgramUniformMatrix4x3dv ::
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    FlextGL -> IO ( () )
glProgramUniformMatrix4x3dv
    a0
    a1
    a2
    a3
    a4
    fgl = rglProgramUniformMatrix4x3dv fgl

    a0
    a1
    a2
    a3
    a4
glValidateProgramPipeline ::
    GLuint ->
    FlextGL -> IO ( () )
glValidateProgramPipeline
    a0
    fgl = rglValidateProgramPipeline fgl

    a0
glGetProgramPipelineInfoLog ::
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    FlextGL -> IO ( () )
glGetProgramPipelineInfoLog
    a0
    a1
    a2
    a3
    fgl = rglGetProgramPipelineInfoLog fgl

    a0
    a1
    a2
    a3
glInvalidateTexSubImage ::
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glInvalidateTexSubImage
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
    fgl = rglInvalidateTexSubImage fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6
    a7
glInvalidateTexImage ::
    GLuint ->
    GLint ->
    FlextGL -> IO ( () )
glInvalidateTexImage
    a0
    a1
    fgl = rglInvalidateTexImage fgl

    a0
    a1
glInvalidateBufferSubData ::
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    FlextGL -> IO ( () )
glInvalidateBufferSubData
    a0
    a1
    a2
    fgl = rglInvalidateBufferSubData fgl

    a0
    a1
    a2
glInvalidateBufferData ::
    GLuint ->
    FlextGL -> IO ( () )
glInvalidateBufferData
    a0
    fgl = rglInvalidateBufferData fgl

    a0
glInvalidateFramebuffer ::
    GLenum ->
    GLsizei ->
    Ptr (GLenum) ->
    FlextGL -> IO ( () )
glInvalidateFramebuffer
    a0
    a1
    a2
    fgl = rglInvalidateFramebuffer fgl

    a0
    a1
    a2
glInvalidateSubFramebuffer ::
    GLenum ->
    GLsizei ->
    Ptr (GLenum) ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    FlextGL -> IO ( () )
glInvalidateSubFramebuffer
    a0
    a1
    a2
    a3
    a4
    a5
    a6
    fgl = rglInvalidateSubFramebuffer fgl

    a0
    a1
    a2
    a3
    a4
    a5
    a6

