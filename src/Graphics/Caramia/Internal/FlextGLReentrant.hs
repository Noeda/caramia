-- | Automatically generated raw OpenGL bindings using flextGL
--
-- <https://github.com/Noeda/flextGL>
--

{-# LANGUAGE CPP, ForeignFunctionInterface, EmptyDataDecls #-}
{-# LANGUAGE DeriveDataTypeable, StandaloneDeriving #-}
-- WARNING: This file was automatically generated
-- Do not edit.



module Graphics.Caramia.Internal.FlextGLReentrant
    ( flextInit
    , FlextInitResult(..)
    , NonExistentOpenGLFunction(..)
    , FlextGL()
    , rglCullFace
    , rglFrontFace
    , rglHint
    , rglLineWidth
    , rglPointSize
    , rglPolygonMode
    , rglScissor
    , rglTexParameterf
    , rglTexParameterfv
    , rglTexParameteri
    , rglTexParameteriv
    , rglTexImage1D
    , rglTexImage2D
    , rglDrawBuffer
    , rglClear
    , rglClearColor
    , rglClearStencil
    , rglClearDepth
    , rglStencilMask
    , rglColorMask
    , rglDepthMask
    , rglDisable
    , rglEnable
    , rglFinish
    , rglFlush
    , rglBlendFunc
    , rglLogicOp
    , rglStencilFunc
    , rglStencilOp
    , rglDepthFunc
    , rglPixelStoref
    , rglPixelStorei
    , rglReadBuffer
    , rglReadPixels
    , rglGetBooleanv
    , rglGetDoublev
    , rglGetError
    , rglGetFloatv
    , rglGetIntegerv
    , rglGetString
    , rglGetTexImage
    , rglGetTexParameterfv
    , rglGetTexParameteriv
    , rglGetTexLevelParameterfv
    , rglGetTexLevelParameteriv
    , rglIsEnabled
    , rglDepthRange
    , rglViewport
    , rglDrawArrays
    , rglDrawElements
    , rglPolygonOffset
    , rglCopyTexImage1D
    , rglCopyTexImage2D
    , rglCopyTexSubImage1D
    , rglCopyTexSubImage2D
    , rglTexSubImage1D
    , rglTexSubImage2D
    , rglBindTexture
    , rglDeleteTextures
    , rglGenTextures
    , rglIsTexture
    , rglDrawRangeElements
    , rglTexImage3D
    , rglTexSubImage3D
    , rglCopyTexSubImage3D
    , rglActiveTexture
    , rglSampleCoverage
    , rglCompressedTexImage3D
    , rglCompressedTexImage2D
    , rglCompressedTexImage1D
    , rglCompressedTexSubImage3D
    , rglCompressedTexSubImage2D
    , rglCompressedTexSubImage1D
    , rglGetCompressedTexImage
    , rglBlendFuncSeparate
    , rglMultiDrawArrays
    , rglMultiDrawElements
    , rglPointParameterf
    , rglPointParameterfv
    , rglPointParameteri
    , rglPointParameteriv
    , rglBlendColor
    , rglBlendEquation
    , rglGenQueries
    , rglDeleteQueries
    , rglIsQuery
    , rglBeginQuery
    , rglEndQuery
    , rglGetQueryiv
    , rglGetQueryObjectiv
    , rglGetQueryObjectuiv
    , rglBindBuffer
    , rglDeleteBuffers
    , rglGenBuffers
    , rglIsBuffer
    , rglBufferData
    , rglBufferSubData
    , rglGetBufferSubData
    , rglMapBuffer
    , rglUnmapBuffer
    , rglGetBufferParameteriv
    , rglGetBufferPointerv
    , rglBlendEquationSeparate
    , rglDrawBuffers
    , rglStencilOpSeparate
    , rglStencilFuncSeparate
    , rglStencilMaskSeparate
    , rglAttachShader
    , rglBindAttribLocation
    , rglCompileShader
    , rglCreateProgram
    , rglCreateShader
    , rglDeleteProgram
    , rglDeleteShader
    , rglDetachShader
    , rglDisableVertexAttribArray
    , rglEnableVertexAttribArray
    , rglGetActiveAttrib
    , rglGetActiveUniform
    , rglGetAttachedShaders
    , rglGetAttribLocation
    , rglGetProgramiv
    , rglGetProgramInfoLog
    , rglGetShaderiv
    , rglGetShaderInfoLog
    , rglGetShaderSource
    , rglGetUniformLocation
    , rglGetUniformfv
    , rglGetUniformiv
    , rglGetVertexAttribdv
    , rglGetVertexAttribfv
    , rglGetVertexAttribiv
    , rglGetVertexAttribPointerv
    , rglIsProgram
    , rglIsShader
    , rglLinkProgram
    , rglShaderSource
    , rglUseProgram
    , rglUniform1f
    , rglUniform2f
    , rglUniform3f
    , rglUniform4f
    , rglUniform1i
    , rglUniform2i
    , rglUniform3i
    , rglUniform4i
    , rglUniform1fv
    , rglUniform2fv
    , rglUniform3fv
    , rglUniform4fv
    , rglUniform1iv
    , rglUniform2iv
    , rglUniform3iv
    , rglUniform4iv
    , rglUniformMatrix2fv
    , rglUniformMatrix3fv
    , rglUniformMatrix4fv
    , rglValidateProgram
    , rglVertexAttrib1d
    , rglVertexAttrib1dv
    , rglVertexAttrib1f
    , rglVertexAttrib1fv
    , rglVertexAttrib1s
    , rglVertexAttrib1sv
    , rglVertexAttrib2d
    , rglVertexAttrib2dv
    , rglVertexAttrib2f
    , rglVertexAttrib2fv
    , rglVertexAttrib2s
    , rglVertexAttrib2sv
    , rglVertexAttrib3d
    , rglVertexAttrib3dv
    , rglVertexAttrib3f
    , rglVertexAttrib3fv
    , rglVertexAttrib3s
    , rglVertexAttrib3sv
    , rglVertexAttrib4Nbv
    , rglVertexAttrib4Niv
    , rglVertexAttrib4Nsv
    , rglVertexAttrib4Nub
    , rglVertexAttrib4Nubv
    , rglVertexAttrib4Nuiv
    , rglVertexAttrib4Nusv
    , rglVertexAttrib4bv
    , rglVertexAttrib4d
    , rglVertexAttrib4dv
    , rglVertexAttrib4f
    , rglVertexAttrib4fv
    , rglVertexAttrib4iv
    , rglVertexAttrib4s
    , rglVertexAttrib4sv
    , rglVertexAttrib4ubv
    , rglVertexAttrib4uiv
    , rglVertexAttrib4usv
    , rglVertexAttribPointer
    , rglUniformMatrix2x3fv
    , rglUniformMatrix3x2fv
    , rglUniformMatrix2x4fv
    , rglUniformMatrix4x2fv
    , rglUniformMatrix3x4fv
    , rglUniformMatrix4x3fv
    , rglColorMaski
    , rglGetBooleani_v
    , rglGetIntegeri_v
    , rglEnablei
    , rglDisablei
    , rglIsEnabledi
    , rglBeginTransformFeedback
    , rglEndTransformFeedback
    , rglBindBufferRange
    , rglBindBufferBase
    , rglTransformFeedbackVaryings
    , rglGetTransformFeedbackVarying
    , rglClampColor
    , rglBeginConditionalRender
    , rglEndConditionalRender
    , rglVertexAttribIPointer
    , rglGetVertexAttribIiv
    , rglGetVertexAttribIuiv
    , rglVertexAttribI1i
    , rglVertexAttribI2i
    , rglVertexAttribI3i
    , rglVertexAttribI4i
    , rglVertexAttribI1ui
    , rglVertexAttribI2ui
    , rglVertexAttribI3ui
    , rglVertexAttribI4ui
    , rglVertexAttribI1iv
    , rglVertexAttribI2iv
    , rglVertexAttribI3iv
    , rglVertexAttribI4iv
    , rglVertexAttribI1uiv
    , rglVertexAttribI2uiv
    , rglVertexAttribI3uiv
    , rglVertexAttribI4uiv
    , rglVertexAttribI4bv
    , rglVertexAttribI4sv
    , rglVertexAttribI4ubv
    , rglVertexAttribI4usv
    , rglGetUniformuiv
    , rglBindFragDataLocation
    , rglGetFragDataLocation
    , rglUniform1ui
    , rglUniform2ui
    , rglUniform3ui
    , rglUniform4ui
    , rglUniform1uiv
    , rglUniform2uiv
    , rglUniform3uiv
    , rglUniform4uiv
    , rglTexParameterIiv
    , rglTexParameterIuiv
    , rglGetTexParameterIiv
    , rglGetTexParameterIuiv
    , rglClearBufferiv
    , rglClearBufferuiv
    , rglClearBufferfv
    , rglClearBufferfi
    , rglGetStringi
    , rglIsRenderbuffer
    , rglBindRenderbuffer
    , rglDeleteRenderbuffers
    , rglGenRenderbuffers
    , rglRenderbufferStorage
    , rglGetRenderbufferParameteriv
    , rglIsFramebuffer
    , rglBindFramebuffer
    , rglDeleteFramebuffers
    , rglGenFramebuffers
    , rglCheckFramebufferStatus
    , rglFramebufferTexture1D
    , rglFramebufferTexture2D
    , rglFramebufferTexture3D
    , rglFramebufferRenderbuffer
    , rglGetFramebufferAttachmentParameteriv
    , rglGenerateMipmap
    , rglBlitFramebuffer
    , rglRenderbufferStorageMultisample
    , rglFramebufferTextureLayer
    , rglMapBufferRange
    , rglFlushMappedBufferRange
    , rglBindVertexArray
    , rglDeleteVertexArrays
    , rglGenVertexArrays
    , rglIsVertexArray
    , rglDrawArraysInstanced
    , rglDrawElementsInstanced
    , rglTexBuffer
    , rglPrimitiveRestartIndex
    , rglCopyBufferSubData
    , rglGetUniformIndices
    , rglGetActiveUniformsiv
    , rglGetActiveUniformName
    , rglGetUniformBlockIndex
    , rglGetActiveUniformBlockiv
    , rglGetActiveUniformBlockName
    , rglUniformBlockBinding
    , rglDrawElementsBaseVertex
    , rglDrawRangeElementsBaseVertex
    , rglDrawElementsInstancedBaseVertex
    , rglMultiDrawElementsBaseVertex
    , rglProvokingVertex
    , rglFenceSync
    , rglIsSync
    , rglDeleteSync
    , rglClientWaitSync
    , rglWaitSync
    , rglGetInteger64v
    , rglGetSynciv
    , rglGetInteger64i_v
    , rglGetBufferParameteri64v
    , rglFramebufferTexture
    , rglTexImage2DMultisample
    , rglTexImage3DMultisample
    , rglGetMultisamplefv
    , rglSampleMaski
    , rglBindFragDataLocationIndexed
    , rglGetFragDataIndex
    , rglGenSamplers
    , rglDeleteSamplers
    , rglIsSampler
    , rglBindSampler
    , rglSamplerParameteri
    , rglSamplerParameteriv
    , rglSamplerParameterf
    , rglSamplerParameterfv
    , rglSamplerParameterIiv
    , rglSamplerParameterIuiv
    , rglGetSamplerParameteriv
    , rglGetSamplerParameterIiv
    , rglGetSamplerParameterfv
    , rglGetSamplerParameterIuiv
    , rglQueryCounter
    , rglGetQueryObjecti64v
    , rglGetQueryObjectui64v
    , rglVertexAttribDivisor
    , rglVertexAttribP1ui
    , rglVertexAttribP1uiv
    , rglVertexAttribP2ui
    , rglVertexAttribP2uiv
    , rglVertexAttribP3ui
    , rglVertexAttribP3uiv
    , rglVertexAttribP4ui
    , rglVertexAttribP4uiv
    , rglTexStorage1D
    , rglTexStorage2D
    , rglTexStorage3D
    , rglDebugMessageControl
    , rglDebugMessageInsert
    , rglDebugMessageCallback
    , rglGetDebugMessageLog
    , rglPushDebugGroup
    , rglPopDebugGroup
    , rglObjectLabel
    , rglGetObjectLabel
    , rglObjectPtrLabel
    , rglGetObjectPtrLabel
    , rglGetPointerv
    , rglDebugMessageControlKHR
    , rglDebugMessageInsertKHR
    , rglDebugMessageCallbackKHR
    , rglGetDebugMessageLogKHR
    , rglPushDebugGroupKHR
    , rglPopDebugGroupKHR
    , rglObjectLabelKHR
    , rglGetObjectLabelKHR
    , rglObjectPtrLabelKHR
    , rglGetObjectPtrLabelKHR
    , rglGetPointervKHR
    , rglMatrixLoadfEXT
    , rglMatrixLoaddEXT
    , rglMatrixMultfEXT
    , rglMatrixMultdEXT
    , rglMatrixLoadIdentityEXT
    , rglMatrixRotatefEXT
    , rglMatrixRotatedEXT
    , rglMatrixScalefEXT
    , rglMatrixScaledEXT
    , rglMatrixTranslatefEXT
    , rglMatrixTranslatedEXT
    , rglMatrixFrustumEXT
    , rglMatrixOrthoEXT
    , rglMatrixPopEXT
    , rglMatrixPushEXT
    , rglClientAttribDefaultEXT
    , rglPushClientAttribDefaultEXT
    , rglTextureParameterfEXT
    , rglTextureParameterfvEXT
    , rglTextureParameteriEXT
    , rglTextureParameterivEXT
    , rglTextureImage1DEXT
    , rglTextureImage2DEXT
    , rglTextureSubImage1DEXT
    , rglTextureSubImage2DEXT
    , rglCopyTextureImage1DEXT
    , rglCopyTextureImage2DEXT
    , rglCopyTextureSubImage1DEXT
    , rglCopyTextureSubImage2DEXT
    , rglGetTextureImageEXT
    , rglGetTextureParameterfvEXT
    , rglGetTextureParameterivEXT
    , rglGetTextureLevelParameterfvEXT
    , rglGetTextureLevelParameterivEXT
    , rglTextureImage3DEXT
    , rglTextureSubImage3DEXT
    , rglCopyTextureSubImage3DEXT
    , rglBindMultiTextureEXT
    , rglMultiTexCoordPointerEXT
    , rglMultiTexEnvfEXT
    , rglMultiTexEnvfvEXT
    , rglMultiTexEnviEXT
    , rglMultiTexEnvivEXT
    , rglMultiTexGendEXT
    , rglMultiTexGendvEXT
    , rglMultiTexGenfEXT
    , rglMultiTexGenfvEXT
    , rglMultiTexGeniEXT
    , rglMultiTexGenivEXT
    , rglGetMultiTexEnvfvEXT
    , rglGetMultiTexEnvivEXT
    , rglGetMultiTexGendvEXT
    , rglGetMultiTexGenfvEXT
    , rglGetMultiTexGenivEXT
    , rglMultiTexParameteriEXT
    , rglMultiTexParameterivEXT
    , rglMultiTexParameterfEXT
    , rglMultiTexParameterfvEXT
    , rglMultiTexImage1DEXT
    , rglMultiTexImage2DEXT
    , rglMultiTexSubImage1DEXT
    , rglMultiTexSubImage2DEXT
    , rglCopyMultiTexImage1DEXT
    , rglCopyMultiTexImage2DEXT
    , rglCopyMultiTexSubImage1DEXT
    , rglCopyMultiTexSubImage2DEXT
    , rglGetMultiTexImageEXT
    , rglGetMultiTexParameterfvEXT
    , rglGetMultiTexParameterivEXT
    , rglGetMultiTexLevelParameterfvEXT
    , rglGetMultiTexLevelParameterivEXT
    , rglMultiTexImage3DEXT
    , rglMultiTexSubImage3DEXT
    , rglCopyMultiTexSubImage3DEXT
    , rglEnableClientStateIndexedEXT
    , rglDisableClientStateIndexedEXT
    , rglGetFloatIndexedvEXT
    , rglGetDoubleIndexedvEXT
    , rglGetPointerIndexedvEXT
    , rglEnableIndexedEXT
    , rglDisableIndexedEXT
    , rglIsEnabledIndexedEXT
    , rglGetIntegerIndexedvEXT
    , rglGetBooleanIndexedvEXT
    , rglCompressedTextureImage3DEXT
    , rglCompressedTextureImage2DEXT
    , rglCompressedTextureImage1DEXT
    , rglCompressedTextureSubImage3DEXT
    , rglCompressedTextureSubImage2DEXT
    , rglCompressedTextureSubImage1DEXT
    , rglGetCompressedTextureImageEXT
    , rglCompressedMultiTexImage3DEXT
    , rglCompressedMultiTexImage2DEXT
    , rglCompressedMultiTexImage1DEXT
    , rglCompressedMultiTexSubImage3DEXT
    , rglCompressedMultiTexSubImage2DEXT
    , rglCompressedMultiTexSubImage1DEXT
    , rglGetCompressedMultiTexImageEXT
    , rglMatrixLoadTransposefEXT
    , rglMatrixLoadTransposedEXT
    , rglMatrixMultTransposefEXT
    , rglMatrixMultTransposedEXT
    , rglNamedBufferDataEXT
    , rglNamedBufferSubDataEXT
    , rglMapNamedBufferEXT
    , rglUnmapNamedBufferEXT
    , rglGetNamedBufferParameterivEXT
    , rglGetNamedBufferPointervEXT
    , rglGetNamedBufferSubDataEXT
    , rglProgramUniform1fEXT
    , rglProgramUniform2fEXT
    , rglProgramUniform3fEXT
    , rglProgramUniform4fEXT
    , rglProgramUniform1iEXT
    , rglProgramUniform2iEXT
    , rglProgramUniform3iEXT
    , rglProgramUniform4iEXT
    , rglProgramUniform1fvEXT
    , rglProgramUniform2fvEXT
    , rglProgramUniform3fvEXT
    , rglProgramUniform4fvEXT
    , rglProgramUniform1ivEXT
    , rglProgramUniform2ivEXT
    , rglProgramUniform3ivEXT
    , rglProgramUniform4ivEXT
    , rglProgramUniformMatrix2fvEXT
    , rglProgramUniformMatrix3fvEXT
    , rglProgramUniformMatrix4fvEXT
    , rglProgramUniformMatrix2x3fvEXT
    , rglProgramUniformMatrix3x2fvEXT
    , rglProgramUniformMatrix2x4fvEXT
    , rglProgramUniformMatrix4x2fvEXT
    , rglProgramUniformMatrix3x4fvEXT
    , rglProgramUniformMatrix4x3fvEXT
    , rglTextureBufferEXT
    , rglMultiTexBufferEXT
    , rglTextureParameterIivEXT
    , rglTextureParameterIuivEXT
    , rglGetTextureParameterIivEXT
    , rglGetTextureParameterIuivEXT
    , rglMultiTexParameterIivEXT
    , rglMultiTexParameterIuivEXT
    , rglGetMultiTexParameterIivEXT
    , rglGetMultiTexParameterIuivEXT
    , rglProgramUniform1uiEXT
    , rglProgramUniform2uiEXT
    , rglProgramUniform3uiEXT
    , rglProgramUniform4uiEXT
    , rglProgramUniform1uivEXT
    , rglProgramUniform2uivEXT
    , rglProgramUniform3uivEXT
    , rglProgramUniform4uivEXT
    , rglNamedProgramLocalParameters4fvEXT
    , rglNamedProgramLocalParameterI4iEXT
    , rglNamedProgramLocalParameterI4ivEXT
    , rglNamedProgramLocalParametersI4ivEXT
    , rglNamedProgramLocalParameterI4uiEXT
    , rglNamedProgramLocalParameterI4uivEXT
    , rglNamedProgramLocalParametersI4uivEXT
    , rglGetNamedProgramLocalParameterIivEXT
    , rglGetNamedProgramLocalParameterIuivEXT
    , rglEnableClientStateiEXT
    , rglDisableClientStateiEXT
    , rglGetFloati_vEXT
    , rglGetDoublei_vEXT
    , rglGetPointeri_vEXT
    , rglNamedProgramStringEXT
    , rglNamedProgramLocalParameter4dEXT
    , rglNamedProgramLocalParameter4dvEXT
    , rglNamedProgramLocalParameter4fEXT
    , rglNamedProgramLocalParameter4fvEXT
    , rglGetNamedProgramLocalParameterdvEXT
    , rglGetNamedProgramLocalParameterfvEXT
    , rglGetNamedProgramivEXT
    , rglGetNamedProgramStringEXT
    , rglNamedRenderbufferStorageEXT
    , rglGetNamedRenderbufferParameterivEXT
    , rglNamedRenderbufferStorageMultisampleEXT
    , rglNamedRenderbufferStorageMultisampleCoverageEXT
    , rglCheckNamedFramebufferStatusEXT
    , rglNamedFramebufferTexture1DEXT
    , rglNamedFramebufferTexture2DEXT
    , rglNamedFramebufferTexture3DEXT
    , rglNamedFramebufferRenderbufferEXT
    , rglGetNamedFramebufferAttachmentParameterivEXT
    , rglGenerateTextureMipmapEXT
    , rglGenerateMultiTexMipmapEXT
    , rglFramebufferDrawBufferEXT
    , rglFramebufferDrawBuffersEXT
    , rglFramebufferReadBufferEXT
    , rglGetFramebufferParameterivEXT
    , rglNamedCopyBufferSubDataEXT
    , rglNamedFramebufferTextureEXT
    , rglNamedFramebufferTextureLayerEXT
    , rglNamedFramebufferTextureFaceEXT
    , rglTextureRenderbufferEXT
    , rglMultiTexRenderbufferEXT
    , rglVertexArrayVertexOffsetEXT
    , rglVertexArrayColorOffsetEXT
    , rglVertexArrayEdgeFlagOffsetEXT
    , rglVertexArrayIndexOffsetEXT
    , rglVertexArrayNormalOffsetEXT
    , rglVertexArrayTexCoordOffsetEXT
    , rglVertexArrayMultiTexCoordOffsetEXT
    , rglVertexArrayFogCoordOffsetEXT
    , rglVertexArraySecondaryColorOffsetEXT
    , rglVertexArrayVertexAttribOffsetEXT
    , rglVertexArrayVertexAttribIOffsetEXT
    , rglEnableVertexArrayEXT
    , rglDisableVertexArrayEXT
    , rglEnableVertexArrayAttribEXT
    , rglDisableVertexArrayAttribEXT
    , rglGetVertexArrayIntegervEXT
    , rglGetVertexArrayPointervEXT
    , rglGetVertexArrayIntegeri_vEXT
    , rglGetVertexArrayPointeri_vEXT
    , rglMapNamedBufferRangeEXT
    , rglFlushMappedNamedBufferRangeEXT
    , rglNamedBufferStorageEXT
    , rglClearNamedBufferDataEXT
    , rglClearNamedBufferSubDataEXT
    , rglNamedFramebufferParameteriEXT
    , rglGetNamedFramebufferParameterivEXT
    , rglProgramUniform1dEXT
    , rglProgramUniform2dEXT
    , rglProgramUniform3dEXT
    , rglProgramUniform4dEXT
    , rglProgramUniform1dvEXT
    , rglProgramUniform2dvEXT
    , rglProgramUniform3dvEXT
    , rglProgramUniform4dvEXT
    , rglProgramUniformMatrix2dvEXT
    , rglProgramUniformMatrix3dvEXT
    , rglProgramUniformMatrix4dvEXT
    , rglProgramUniformMatrix2x3dvEXT
    , rglProgramUniformMatrix2x4dvEXT
    , rglProgramUniformMatrix3x2dvEXT
    , rglProgramUniformMatrix3x4dvEXT
    , rglProgramUniformMatrix4x2dvEXT
    , rglProgramUniformMatrix4x3dvEXT
    , rglTextureBufferRangeEXT
    , rglTextureStorage1DEXT
    , rglTextureStorage2DEXT
    , rglTextureStorage3DEXT
    , rglTextureStorage2DMultisampleEXT
    , rglTextureStorage3DMultisampleEXT
    , rglVertexArrayBindVertexBufferEXT
    , rglVertexArrayVertexAttribFormatEXT
    , rglVertexArrayVertexAttribIFormatEXT
    , rglVertexArrayVertexAttribLFormatEXT
    , rglVertexArrayVertexAttribBindingEXT
    , rglVertexArrayVertexBindingDivisorEXT
    , rglVertexArrayVertexAttribLOffsetEXT
    , rglTexturePageCommitmentEXT
    , rglVertexArrayVertexAttribDivisorEXT
    , rglBufferStorage
    , rglUseProgramStages
    , rglActiveShaderProgram
    , rglCreateShaderProgramv
    , rglBindProgramPipeline
    , rglDeleteProgramPipelines
    , rglGenProgramPipelines
    , rglIsProgramPipeline
    , rglGetProgramPipelineiv
    , rglProgramUniform1i
    , rglProgramUniform1iv
    , rglProgramUniform1f
    , rglProgramUniform1fv
    , rglProgramUniform1d
    , rglProgramUniform1dv
    , rglProgramUniform1ui
    , rglProgramUniform1uiv
    , rglProgramUniform2i
    , rglProgramUniform2iv
    , rglProgramUniform2f
    , rglProgramUniform2fv
    , rglProgramUniform2d
    , rglProgramUniform2dv
    , rglProgramUniform2ui
    , rglProgramUniform2uiv
    , rglProgramUniform3i
    , rglProgramUniform3iv
    , rglProgramUniform3f
    , rglProgramUniform3fv
    , rglProgramUniform3d
    , rglProgramUniform3dv
    , rglProgramUniform3ui
    , rglProgramUniform3uiv
    , rglProgramUniform4i
    , rglProgramUniform4iv
    , rglProgramUniform4f
    , rglProgramUniform4fv
    , rglProgramUniform4d
    , rglProgramUniform4dv
    , rglProgramUniform4ui
    , rglProgramUniform4uiv
    , rglProgramUniformMatrix2fv
    , rglProgramUniformMatrix3fv
    , rglProgramUniformMatrix4fv
    , rglProgramUniformMatrix2dv
    , rglProgramUniformMatrix3dv
    , rglProgramUniformMatrix4dv
    , rglProgramUniformMatrix2x3fv
    , rglProgramUniformMatrix3x2fv
    , rglProgramUniformMatrix2x4fv
    , rglProgramUniformMatrix4x2fv
    , rglProgramUniformMatrix3x4fv
    , rglProgramUniformMatrix4x3fv
    , rglProgramUniformMatrix2x3dv
    , rglProgramUniformMatrix3x2dv
    , rglProgramUniformMatrix2x4dv
    , rglProgramUniformMatrix4x2dv
    , rglProgramUniformMatrix3x4dv
    , rglProgramUniformMatrix4x3dv
    , rglValidateProgramPipeline
    , rglGetProgramPipelineInfoLog
    , rglInvalidateTexSubImage
    , rglInvalidateTexImage
    , rglInvalidateBufferSubData
    , rglInvalidateBufferData
    , rglInvalidateFramebuffer
    , rglInvalidateSubFramebuffer
    , has_GL_ARB_texture_storage
    , has_GL_KHR_debug
    , has_GL_EXT_direct_state_access
    , has_GL_ARB_buffer_storage
    , has_GL_ARB_separate_shader_objects
    , has_GL_ATI_meminfo
    , has_GL_NVX_gpu_memory_info
    , has_GL_ARB_invalidate_subdata
    )
    where

import Graphics.Caramia.Internal.FlextGLFuntypes
import Graphics.Caramia.Internal.FlextGLEnums

import Data.Typeable
import Data.IORef
import System.IO.Unsafe
import Control.Applicative
import Control.Exception
import Control.Monad.IO.Class
import Control.Monad.Trans.Except
import Foreign.C.Types
import Foreign.C.String
import Foreign.Ptr

#ifdef mingw32_HOST_OS
#define APIENTRY stdcall
#else
#define APIENTRY
import qualified System.Posix.DynamicLinker.ByteString as POSIX
#endif

flextGLCounter :: IORef Integer
flextGLCounter = unsafePerformIO $ newIORef 0
{-# NOINLINE flextGLCounter #-}

data FlextGL = FlextGL {
      counter :: !Integer
    , has_GL_ARB_texture_storage :: !Bool
    , has_GL_KHR_debug :: !Bool
    , has_GL_EXT_direct_state_access :: !Bool
    , has_GL_ARB_buffer_storage :: !Bool
    , has_GL_ARB_separate_shader_objects :: !Bool
    , has_GL_ATI_meminfo :: !Bool
    , has_GL_NVX_gpu_memory_info :: !Bool
    , has_GL_ARB_invalidate_subdata :: !Bool
    , rglCullFace :: !(FuntypeCullFace)
    , rglFrontFace :: !(FuntypeFrontFace)
    , rglHint :: !(FuntypeHint)
    , rglLineWidth :: !(FuntypeLineWidth)
    , rglPointSize :: !(FuntypePointSize)
    , rglPolygonMode :: !(FuntypePolygonMode)
    , rglScissor :: !(FuntypeScissor)
    , rglTexParameterf :: !(FuntypeTexParameterf)
    , rglTexParameterfv :: !(FuntypeTexParameterfv)
    , rglTexParameteri :: !(FuntypeTexParameteri)
    , rglTexParameteriv :: !(FuntypeTexParameteriv)
    , rglTexImage1D :: !(FuntypeTexImage1D)
    , rglTexImage2D :: !(FuntypeTexImage2D)
    , rglDrawBuffer :: !(FuntypeDrawBuffer)
    , rglClear :: !(FuntypeClear)
    , rglClearColor :: !(FuntypeClearColor)
    , rglClearStencil :: !(FuntypeClearStencil)
    , rglClearDepth :: !(FuntypeClearDepth)
    , rglStencilMask :: !(FuntypeStencilMask)
    , rglColorMask :: !(FuntypeColorMask)
    , rglDepthMask :: !(FuntypeDepthMask)
    , rglDisable :: !(FuntypeDisable)
    , rglEnable :: !(FuntypeEnable)
    , rglFinish :: !(FuntypeFinish)
    , rglFlush :: !(FuntypeFlush)
    , rglBlendFunc :: !(FuntypeBlendFunc)
    , rglLogicOp :: !(FuntypeLogicOp)
    , rglStencilFunc :: !(FuntypeStencilFunc)
    , rglStencilOp :: !(FuntypeStencilOp)
    , rglDepthFunc :: !(FuntypeDepthFunc)
    , rglPixelStoref :: !(FuntypePixelStoref)
    , rglPixelStorei :: !(FuntypePixelStorei)
    , rglReadBuffer :: !(FuntypeReadBuffer)
    , rglReadPixels :: !(FuntypeReadPixels)
    , rglGetBooleanv :: !(FuntypeGetBooleanv)
    , rglGetDoublev :: !(FuntypeGetDoublev)
    , rglGetError :: !(FuntypeGetError)
    , rglGetFloatv :: !(FuntypeGetFloatv)
    , rglGetIntegerv :: !(FuntypeGetIntegerv)
    , rglGetString :: !(FuntypeGetString)
    , rglGetTexImage :: !(FuntypeGetTexImage)
    , rglGetTexParameterfv :: !(FuntypeGetTexParameterfv)
    , rglGetTexParameteriv :: !(FuntypeGetTexParameteriv)
    , rglGetTexLevelParameterfv :: !(FuntypeGetTexLevelParameterfv)
    , rglGetTexLevelParameteriv :: !(FuntypeGetTexLevelParameteriv)
    , rglIsEnabled :: !(FuntypeIsEnabled)
    , rglDepthRange :: !(FuntypeDepthRange)
    , rglViewport :: !(FuntypeViewport)
    , rglDrawArrays :: !(FuntypeDrawArrays)
    , rglDrawElements :: !(FuntypeDrawElements)
    , rglPolygonOffset :: !(FuntypePolygonOffset)
    , rglCopyTexImage1D :: !(FuntypeCopyTexImage1D)
    , rglCopyTexImage2D :: !(FuntypeCopyTexImage2D)
    , rglCopyTexSubImage1D :: !(FuntypeCopyTexSubImage1D)
    , rglCopyTexSubImage2D :: !(FuntypeCopyTexSubImage2D)
    , rglTexSubImage1D :: !(FuntypeTexSubImage1D)
    , rglTexSubImage2D :: !(FuntypeTexSubImage2D)
    , rglBindTexture :: !(FuntypeBindTexture)
    , rglDeleteTextures :: !(FuntypeDeleteTextures)
    , rglGenTextures :: !(FuntypeGenTextures)
    , rglIsTexture :: !(FuntypeIsTexture)
    , rglDrawRangeElements :: !(FuntypeDrawRangeElements)
    , rglTexImage3D :: !(FuntypeTexImage3D)
    , rglTexSubImage3D :: !(FuntypeTexSubImage3D)
    , rglCopyTexSubImage3D :: !(FuntypeCopyTexSubImage3D)
    , rglActiveTexture :: !(FuntypeActiveTexture)
    , rglSampleCoverage :: !(FuntypeSampleCoverage)
    , rglCompressedTexImage3D :: !(FuntypeCompressedTexImage3D)
    , rglCompressedTexImage2D :: !(FuntypeCompressedTexImage2D)
    , rglCompressedTexImage1D :: !(FuntypeCompressedTexImage1D)
    , rglCompressedTexSubImage3D :: !(FuntypeCompressedTexSubImage3D)
    , rglCompressedTexSubImage2D :: !(FuntypeCompressedTexSubImage2D)
    , rglCompressedTexSubImage1D :: !(FuntypeCompressedTexSubImage1D)
    , rglGetCompressedTexImage :: !(FuntypeGetCompressedTexImage)
    , rglBlendFuncSeparate :: !(FuntypeBlendFuncSeparate)
    , rglMultiDrawArrays :: !(FuntypeMultiDrawArrays)
    , rglMultiDrawElements :: !(FuntypeMultiDrawElements)
    , rglPointParameterf :: !(FuntypePointParameterf)
    , rglPointParameterfv :: !(FuntypePointParameterfv)
    , rglPointParameteri :: !(FuntypePointParameteri)
    , rglPointParameteriv :: !(FuntypePointParameteriv)
    , rglBlendColor :: !(FuntypeBlendColor)
    , rglBlendEquation :: !(FuntypeBlendEquation)
    , rglGenQueries :: !(FuntypeGenQueries)
    , rglDeleteQueries :: !(FuntypeDeleteQueries)
    , rglIsQuery :: !(FuntypeIsQuery)
    , rglBeginQuery :: !(FuntypeBeginQuery)
    , rglEndQuery :: !(FuntypeEndQuery)
    , rglGetQueryiv :: !(FuntypeGetQueryiv)
    , rglGetQueryObjectiv :: !(FuntypeGetQueryObjectiv)
    , rglGetQueryObjectuiv :: !(FuntypeGetQueryObjectuiv)
    , rglBindBuffer :: !(FuntypeBindBuffer)
    , rglDeleteBuffers :: !(FuntypeDeleteBuffers)
    , rglGenBuffers :: !(FuntypeGenBuffers)
    , rglIsBuffer :: !(FuntypeIsBuffer)
    , rglBufferData :: !(FuntypeBufferData)
    , rglBufferSubData :: !(FuntypeBufferSubData)
    , rglGetBufferSubData :: !(FuntypeGetBufferSubData)
    , rglMapBuffer :: !(FuntypeMapBuffer)
    , rglUnmapBuffer :: !(FuntypeUnmapBuffer)
    , rglGetBufferParameteriv :: !(FuntypeGetBufferParameteriv)
    , rglGetBufferPointerv :: !(FuntypeGetBufferPointerv)
    , rglBlendEquationSeparate :: !(FuntypeBlendEquationSeparate)
    , rglDrawBuffers :: !(FuntypeDrawBuffers)
    , rglStencilOpSeparate :: !(FuntypeStencilOpSeparate)
    , rglStencilFuncSeparate :: !(FuntypeStencilFuncSeparate)
    , rglStencilMaskSeparate :: !(FuntypeStencilMaskSeparate)
    , rglAttachShader :: !(FuntypeAttachShader)
    , rglBindAttribLocation :: !(FuntypeBindAttribLocation)
    , rglCompileShader :: !(FuntypeCompileShader)
    , rglCreateProgram :: !(FuntypeCreateProgram)
    , rglCreateShader :: !(FuntypeCreateShader)
    , rglDeleteProgram :: !(FuntypeDeleteProgram)
    , rglDeleteShader :: !(FuntypeDeleteShader)
    , rglDetachShader :: !(FuntypeDetachShader)
    , rglDisableVertexAttribArray :: !(FuntypeDisableVertexAttribArray)
    , rglEnableVertexAttribArray :: !(FuntypeEnableVertexAttribArray)
    , rglGetActiveAttrib :: !(FuntypeGetActiveAttrib)
    , rglGetActiveUniform :: !(FuntypeGetActiveUniform)
    , rglGetAttachedShaders :: !(FuntypeGetAttachedShaders)
    , rglGetAttribLocation :: !(FuntypeGetAttribLocation)
    , rglGetProgramiv :: !(FuntypeGetProgramiv)
    , rglGetProgramInfoLog :: !(FuntypeGetProgramInfoLog)
    , rglGetShaderiv :: !(FuntypeGetShaderiv)
    , rglGetShaderInfoLog :: !(FuntypeGetShaderInfoLog)
    , rglGetShaderSource :: !(FuntypeGetShaderSource)
    , rglGetUniformLocation :: !(FuntypeGetUniformLocation)
    , rglGetUniformfv :: !(FuntypeGetUniformfv)
    , rglGetUniformiv :: !(FuntypeGetUniformiv)
    , rglGetVertexAttribdv :: !(FuntypeGetVertexAttribdv)
    , rglGetVertexAttribfv :: !(FuntypeGetVertexAttribfv)
    , rglGetVertexAttribiv :: !(FuntypeGetVertexAttribiv)
    , rglGetVertexAttribPointerv :: !(FuntypeGetVertexAttribPointerv)
    , rglIsProgram :: !(FuntypeIsProgram)
    , rglIsShader :: !(FuntypeIsShader)
    , rglLinkProgram :: !(FuntypeLinkProgram)
    , rglShaderSource :: !(FuntypeShaderSource)
    , rglUseProgram :: !(FuntypeUseProgram)
    , rglUniform1f :: !(FuntypeUniform1f)
    , rglUniform2f :: !(FuntypeUniform2f)
    , rglUniform3f :: !(FuntypeUniform3f)
    , rglUniform4f :: !(FuntypeUniform4f)
    , rglUniform1i :: !(FuntypeUniform1i)
    , rglUniform2i :: !(FuntypeUniform2i)
    , rglUniform3i :: !(FuntypeUniform3i)
    , rglUniform4i :: !(FuntypeUniform4i)
    , rglUniform1fv :: !(FuntypeUniform1fv)
    , rglUniform2fv :: !(FuntypeUniform2fv)
    , rglUniform3fv :: !(FuntypeUniform3fv)
    , rglUniform4fv :: !(FuntypeUniform4fv)
    , rglUniform1iv :: !(FuntypeUniform1iv)
    , rglUniform2iv :: !(FuntypeUniform2iv)
    , rglUniform3iv :: !(FuntypeUniform3iv)
    , rglUniform4iv :: !(FuntypeUniform4iv)
    , rglUniformMatrix2fv :: !(FuntypeUniformMatrix2fv)
    , rglUniformMatrix3fv :: !(FuntypeUniformMatrix3fv)
    , rglUniformMatrix4fv :: !(FuntypeUniformMatrix4fv)
    , rglValidateProgram :: !(FuntypeValidateProgram)
    , rglVertexAttrib1d :: !(FuntypeVertexAttrib1d)
    , rglVertexAttrib1dv :: !(FuntypeVertexAttrib1dv)
    , rglVertexAttrib1f :: !(FuntypeVertexAttrib1f)
    , rglVertexAttrib1fv :: !(FuntypeVertexAttrib1fv)
    , rglVertexAttrib1s :: !(FuntypeVertexAttrib1s)
    , rglVertexAttrib1sv :: !(FuntypeVertexAttrib1sv)
    , rglVertexAttrib2d :: !(FuntypeVertexAttrib2d)
    , rglVertexAttrib2dv :: !(FuntypeVertexAttrib2dv)
    , rglVertexAttrib2f :: !(FuntypeVertexAttrib2f)
    , rglVertexAttrib2fv :: !(FuntypeVertexAttrib2fv)
    , rglVertexAttrib2s :: !(FuntypeVertexAttrib2s)
    , rglVertexAttrib2sv :: !(FuntypeVertexAttrib2sv)
    , rglVertexAttrib3d :: !(FuntypeVertexAttrib3d)
    , rglVertexAttrib3dv :: !(FuntypeVertexAttrib3dv)
    , rglVertexAttrib3f :: !(FuntypeVertexAttrib3f)
    , rglVertexAttrib3fv :: !(FuntypeVertexAttrib3fv)
    , rglVertexAttrib3s :: !(FuntypeVertexAttrib3s)
    , rglVertexAttrib3sv :: !(FuntypeVertexAttrib3sv)
    , rglVertexAttrib4Nbv :: !(FuntypeVertexAttrib4Nbv)
    , rglVertexAttrib4Niv :: !(FuntypeVertexAttrib4Niv)
    , rglVertexAttrib4Nsv :: !(FuntypeVertexAttrib4Nsv)
    , rglVertexAttrib4Nub :: !(FuntypeVertexAttrib4Nub)
    , rglVertexAttrib4Nubv :: !(FuntypeVertexAttrib4Nubv)
    , rglVertexAttrib4Nuiv :: !(FuntypeVertexAttrib4Nuiv)
    , rglVertexAttrib4Nusv :: !(FuntypeVertexAttrib4Nusv)
    , rglVertexAttrib4bv :: !(FuntypeVertexAttrib4bv)
    , rglVertexAttrib4d :: !(FuntypeVertexAttrib4d)
    , rglVertexAttrib4dv :: !(FuntypeVertexAttrib4dv)
    , rglVertexAttrib4f :: !(FuntypeVertexAttrib4f)
    , rglVertexAttrib4fv :: !(FuntypeVertexAttrib4fv)
    , rglVertexAttrib4iv :: !(FuntypeVertexAttrib4iv)
    , rglVertexAttrib4s :: !(FuntypeVertexAttrib4s)
    , rglVertexAttrib4sv :: !(FuntypeVertexAttrib4sv)
    , rglVertexAttrib4ubv :: !(FuntypeVertexAttrib4ubv)
    , rglVertexAttrib4uiv :: !(FuntypeVertexAttrib4uiv)
    , rglVertexAttrib4usv :: !(FuntypeVertexAttrib4usv)
    , rglVertexAttribPointer :: !(FuntypeVertexAttribPointer)
    , rglUniformMatrix2x3fv :: !(FuntypeUniformMatrix2x3fv)
    , rglUniformMatrix3x2fv :: !(FuntypeUniformMatrix3x2fv)
    , rglUniformMatrix2x4fv :: !(FuntypeUniformMatrix2x4fv)
    , rglUniformMatrix4x2fv :: !(FuntypeUniformMatrix4x2fv)
    , rglUniformMatrix3x4fv :: !(FuntypeUniformMatrix3x4fv)
    , rglUniformMatrix4x3fv :: !(FuntypeUniformMatrix4x3fv)
    , rglColorMaski :: !(FuntypeColorMaski)
    , rglGetBooleani_v :: !(FuntypeGetBooleani_v)
    , rglGetIntegeri_v :: !(FuntypeGetIntegeri_v)
    , rglEnablei :: !(FuntypeEnablei)
    , rglDisablei :: !(FuntypeDisablei)
    , rglIsEnabledi :: !(FuntypeIsEnabledi)
    , rglBeginTransformFeedback :: !(FuntypeBeginTransformFeedback)
    , rglEndTransformFeedback :: !(FuntypeEndTransformFeedback)
    , rglBindBufferRange :: !(FuntypeBindBufferRange)
    , rglBindBufferBase :: !(FuntypeBindBufferBase)
    , rglTransformFeedbackVaryings :: !(FuntypeTransformFeedbackVaryings)
    , rglGetTransformFeedbackVarying :: !(FuntypeGetTransformFeedbackVarying)
    , rglClampColor :: !(FuntypeClampColor)
    , rglBeginConditionalRender :: !(FuntypeBeginConditionalRender)
    , rglEndConditionalRender :: !(FuntypeEndConditionalRender)
    , rglVertexAttribIPointer :: !(FuntypeVertexAttribIPointer)
    , rglGetVertexAttribIiv :: !(FuntypeGetVertexAttribIiv)
    , rglGetVertexAttribIuiv :: !(FuntypeGetVertexAttribIuiv)
    , rglVertexAttribI1i :: !(FuntypeVertexAttribI1i)
    , rglVertexAttribI2i :: !(FuntypeVertexAttribI2i)
    , rglVertexAttribI3i :: !(FuntypeVertexAttribI3i)
    , rglVertexAttribI4i :: !(FuntypeVertexAttribI4i)
    , rglVertexAttribI1ui :: !(FuntypeVertexAttribI1ui)
    , rglVertexAttribI2ui :: !(FuntypeVertexAttribI2ui)
    , rglVertexAttribI3ui :: !(FuntypeVertexAttribI3ui)
    , rglVertexAttribI4ui :: !(FuntypeVertexAttribI4ui)
    , rglVertexAttribI1iv :: !(FuntypeVertexAttribI1iv)
    , rglVertexAttribI2iv :: !(FuntypeVertexAttribI2iv)
    , rglVertexAttribI3iv :: !(FuntypeVertexAttribI3iv)
    , rglVertexAttribI4iv :: !(FuntypeVertexAttribI4iv)
    , rglVertexAttribI1uiv :: !(FuntypeVertexAttribI1uiv)
    , rglVertexAttribI2uiv :: !(FuntypeVertexAttribI2uiv)
    , rglVertexAttribI3uiv :: !(FuntypeVertexAttribI3uiv)
    , rglVertexAttribI4uiv :: !(FuntypeVertexAttribI4uiv)
    , rglVertexAttribI4bv :: !(FuntypeVertexAttribI4bv)
    , rglVertexAttribI4sv :: !(FuntypeVertexAttribI4sv)
    , rglVertexAttribI4ubv :: !(FuntypeVertexAttribI4ubv)
    , rglVertexAttribI4usv :: !(FuntypeVertexAttribI4usv)
    , rglGetUniformuiv :: !(FuntypeGetUniformuiv)
    , rglBindFragDataLocation :: !(FuntypeBindFragDataLocation)
    , rglGetFragDataLocation :: !(FuntypeGetFragDataLocation)
    , rglUniform1ui :: !(FuntypeUniform1ui)
    , rglUniform2ui :: !(FuntypeUniform2ui)
    , rglUniform3ui :: !(FuntypeUniform3ui)
    , rglUniform4ui :: !(FuntypeUniform4ui)
    , rglUniform1uiv :: !(FuntypeUniform1uiv)
    , rglUniform2uiv :: !(FuntypeUniform2uiv)
    , rglUniform3uiv :: !(FuntypeUniform3uiv)
    , rglUniform4uiv :: !(FuntypeUniform4uiv)
    , rglTexParameterIiv :: !(FuntypeTexParameterIiv)
    , rglTexParameterIuiv :: !(FuntypeTexParameterIuiv)
    , rglGetTexParameterIiv :: !(FuntypeGetTexParameterIiv)
    , rglGetTexParameterIuiv :: !(FuntypeGetTexParameterIuiv)
    , rglClearBufferiv :: !(FuntypeClearBufferiv)
    , rglClearBufferuiv :: !(FuntypeClearBufferuiv)
    , rglClearBufferfv :: !(FuntypeClearBufferfv)
    , rglClearBufferfi :: !(FuntypeClearBufferfi)
    , rglGetStringi :: !(FuntypeGetStringi)
    , rglIsRenderbuffer :: !(FuntypeIsRenderbuffer)
    , rglBindRenderbuffer :: !(FuntypeBindRenderbuffer)
    , rglDeleteRenderbuffers :: !(FuntypeDeleteRenderbuffers)
    , rglGenRenderbuffers :: !(FuntypeGenRenderbuffers)
    , rglRenderbufferStorage :: !(FuntypeRenderbufferStorage)
    , rglGetRenderbufferParameteriv :: !(FuntypeGetRenderbufferParameteriv)
    , rglIsFramebuffer :: !(FuntypeIsFramebuffer)
    , rglBindFramebuffer :: !(FuntypeBindFramebuffer)
    , rglDeleteFramebuffers :: !(FuntypeDeleteFramebuffers)
    , rglGenFramebuffers :: !(FuntypeGenFramebuffers)
    , rglCheckFramebufferStatus :: !(FuntypeCheckFramebufferStatus)
    , rglFramebufferTexture1D :: !(FuntypeFramebufferTexture1D)
    , rglFramebufferTexture2D :: !(FuntypeFramebufferTexture2D)
    , rglFramebufferTexture3D :: !(FuntypeFramebufferTexture3D)
    , rglFramebufferRenderbuffer :: !(FuntypeFramebufferRenderbuffer)
    , rglGetFramebufferAttachmentParameteriv :: !(FuntypeGetFramebufferAttachmentParameteriv)
    , rglGenerateMipmap :: !(FuntypeGenerateMipmap)
    , rglBlitFramebuffer :: !(FuntypeBlitFramebuffer)
    , rglRenderbufferStorageMultisample :: !(FuntypeRenderbufferStorageMultisample)
    , rglFramebufferTextureLayer :: !(FuntypeFramebufferTextureLayer)
    , rglMapBufferRange :: !(FuntypeMapBufferRange)
    , rglFlushMappedBufferRange :: !(FuntypeFlushMappedBufferRange)
    , rglBindVertexArray :: !(FuntypeBindVertexArray)
    , rglDeleteVertexArrays :: !(FuntypeDeleteVertexArrays)
    , rglGenVertexArrays :: !(FuntypeGenVertexArrays)
    , rglIsVertexArray :: !(FuntypeIsVertexArray)
    , rglDrawArraysInstanced :: !(FuntypeDrawArraysInstanced)
    , rglDrawElementsInstanced :: !(FuntypeDrawElementsInstanced)
    , rglTexBuffer :: !(FuntypeTexBuffer)
    , rglPrimitiveRestartIndex :: !(FuntypePrimitiveRestartIndex)
    , rglCopyBufferSubData :: !(FuntypeCopyBufferSubData)
    , rglGetUniformIndices :: !(FuntypeGetUniformIndices)
    , rglGetActiveUniformsiv :: !(FuntypeGetActiveUniformsiv)
    , rglGetActiveUniformName :: !(FuntypeGetActiveUniformName)
    , rglGetUniformBlockIndex :: !(FuntypeGetUniformBlockIndex)
    , rglGetActiveUniformBlockiv :: !(FuntypeGetActiveUniformBlockiv)
    , rglGetActiveUniformBlockName :: !(FuntypeGetActiveUniformBlockName)
    , rglUniformBlockBinding :: !(FuntypeUniformBlockBinding)
    , rglDrawElementsBaseVertex :: !(FuntypeDrawElementsBaseVertex)
    , rglDrawRangeElementsBaseVertex :: !(FuntypeDrawRangeElementsBaseVertex)
    , rglDrawElementsInstancedBaseVertex :: !(FuntypeDrawElementsInstancedBaseVertex)
    , rglMultiDrawElementsBaseVertex :: !(FuntypeMultiDrawElementsBaseVertex)
    , rglProvokingVertex :: !(FuntypeProvokingVertex)
    , rglFenceSync :: !(FuntypeFenceSync)
    , rglIsSync :: !(FuntypeIsSync)
    , rglDeleteSync :: !(FuntypeDeleteSync)
    , rglClientWaitSync :: !(FuntypeClientWaitSync)
    , rglWaitSync :: !(FuntypeWaitSync)
    , rglGetInteger64v :: !(FuntypeGetInteger64v)
    , rglGetSynciv :: !(FuntypeGetSynciv)
    , rglGetInteger64i_v :: !(FuntypeGetInteger64i_v)
    , rglGetBufferParameteri64v :: !(FuntypeGetBufferParameteri64v)
    , rglFramebufferTexture :: !(FuntypeFramebufferTexture)
    , rglTexImage2DMultisample :: !(FuntypeTexImage2DMultisample)
    , rglTexImage3DMultisample :: !(FuntypeTexImage3DMultisample)
    , rglGetMultisamplefv :: !(FuntypeGetMultisamplefv)
    , rglSampleMaski :: !(FuntypeSampleMaski)
    , rglBindFragDataLocationIndexed :: !(FuntypeBindFragDataLocationIndexed)
    , rglGetFragDataIndex :: !(FuntypeGetFragDataIndex)
    , rglGenSamplers :: !(FuntypeGenSamplers)
    , rglDeleteSamplers :: !(FuntypeDeleteSamplers)
    , rglIsSampler :: !(FuntypeIsSampler)
    , rglBindSampler :: !(FuntypeBindSampler)
    , rglSamplerParameteri :: !(FuntypeSamplerParameteri)
    , rglSamplerParameteriv :: !(FuntypeSamplerParameteriv)
    , rglSamplerParameterf :: !(FuntypeSamplerParameterf)
    , rglSamplerParameterfv :: !(FuntypeSamplerParameterfv)
    , rglSamplerParameterIiv :: !(FuntypeSamplerParameterIiv)
    , rglSamplerParameterIuiv :: !(FuntypeSamplerParameterIuiv)
    , rglGetSamplerParameteriv :: !(FuntypeGetSamplerParameteriv)
    , rglGetSamplerParameterIiv :: !(FuntypeGetSamplerParameterIiv)
    , rglGetSamplerParameterfv :: !(FuntypeGetSamplerParameterfv)
    , rglGetSamplerParameterIuiv :: !(FuntypeGetSamplerParameterIuiv)
    , rglQueryCounter :: !(FuntypeQueryCounter)
    , rglGetQueryObjecti64v :: !(FuntypeGetQueryObjecti64v)
    , rglGetQueryObjectui64v :: !(FuntypeGetQueryObjectui64v)
    , rglVertexAttribDivisor :: !(FuntypeVertexAttribDivisor)
    , rglVertexAttribP1ui :: !(FuntypeVertexAttribP1ui)
    , rglVertexAttribP1uiv :: !(FuntypeVertexAttribP1uiv)
    , rglVertexAttribP2ui :: !(FuntypeVertexAttribP2ui)
    , rglVertexAttribP2uiv :: !(FuntypeVertexAttribP2uiv)
    , rglVertexAttribP3ui :: !(FuntypeVertexAttribP3ui)
    , rglVertexAttribP3uiv :: !(FuntypeVertexAttribP3uiv)
    , rglVertexAttribP4ui :: !(FuntypeVertexAttribP4ui)
    , rglVertexAttribP4uiv :: !(FuntypeVertexAttribP4uiv)
    , rglTexStorage1D :: !(FuntypeTexStorage1D)
    , rglTexStorage2D :: !(FuntypeTexStorage2D)
    , rglTexStorage3D :: !(FuntypeTexStorage3D)
    , rglDebugMessageControl :: !(FuntypeDebugMessageControl)
    , rglDebugMessageInsert :: !(FuntypeDebugMessageInsert)
    , rglDebugMessageCallback :: !(FuntypeDebugMessageCallback)
    , rglGetDebugMessageLog :: !(FuntypeGetDebugMessageLog)
    , rglPushDebugGroup :: !(FuntypePushDebugGroup)
    , rglPopDebugGroup :: !(FuntypePopDebugGroup)
    , rglObjectLabel :: !(FuntypeObjectLabel)
    , rglGetObjectLabel :: !(FuntypeGetObjectLabel)
    , rglObjectPtrLabel :: !(FuntypeObjectPtrLabel)
    , rglGetObjectPtrLabel :: !(FuntypeGetObjectPtrLabel)
    , rglGetPointerv :: !(FuntypeGetPointerv)
    , rglDebugMessageControlKHR :: !(FuntypeDebugMessageControlKHR)
    , rglDebugMessageInsertKHR :: !(FuntypeDebugMessageInsertKHR)
    , rglDebugMessageCallbackKHR :: !(FuntypeDebugMessageCallbackKHR)
    , rglGetDebugMessageLogKHR :: !(FuntypeGetDebugMessageLogKHR)
    , rglPushDebugGroupKHR :: !(FuntypePushDebugGroupKHR)
    , rglPopDebugGroupKHR :: !(FuntypePopDebugGroupKHR)
    , rglObjectLabelKHR :: !(FuntypeObjectLabelKHR)
    , rglGetObjectLabelKHR :: !(FuntypeGetObjectLabelKHR)
    , rglObjectPtrLabelKHR :: !(FuntypeObjectPtrLabelKHR)
    , rglGetObjectPtrLabelKHR :: !(FuntypeGetObjectPtrLabelKHR)
    , rglGetPointervKHR :: !(FuntypeGetPointervKHR)
    , rglMatrixLoadfEXT :: !(FuntypeMatrixLoadfEXT)
    , rglMatrixLoaddEXT :: !(FuntypeMatrixLoaddEXT)
    , rglMatrixMultfEXT :: !(FuntypeMatrixMultfEXT)
    , rglMatrixMultdEXT :: !(FuntypeMatrixMultdEXT)
    , rglMatrixLoadIdentityEXT :: !(FuntypeMatrixLoadIdentityEXT)
    , rglMatrixRotatefEXT :: !(FuntypeMatrixRotatefEXT)
    , rglMatrixRotatedEXT :: !(FuntypeMatrixRotatedEXT)
    , rglMatrixScalefEXT :: !(FuntypeMatrixScalefEXT)
    , rglMatrixScaledEXT :: !(FuntypeMatrixScaledEXT)
    , rglMatrixTranslatefEXT :: !(FuntypeMatrixTranslatefEXT)
    , rglMatrixTranslatedEXT :: !(FuntypeMatrixTranslatedEXT)
    , rglMatrixFrustumEXT :: !(FuntypeMatrixFrustumEXT)
    , rglMatrixOrthoEXT :: !(FuntypeMatrixOrthoEXT)
    , rglMatrixPopEXT :: !(FuntypeMatrixPopEXT)
    , rglMatrixPushEXT :: !(FuntypeMatrixPushEXT)
    , rglClientAttribDefaultEXT :: !(FuntypeClientAttribDefaultEXT)
    , rglPushClientAttribDefaultEXT :: !(FuntypePushClientAttribDefaultEXT)
    , rglTextureParameterfEXT :: !(FuntypeTextureParameterfEXT)
    , rglTextureParameterfvEXT :: !(FuntypeTextureParameterfvEXT)
    , rglTextureParameteriEXT :: !(FuntypeTextureParameteriEXT)
    , rglTextureParameterivEXT :: !(FuntypeTextureParameterivEXT)
    , rglTextureImage1DEXT :: !(FuntypeTextureImage1DEXT)
    , rglTextureImage2DEXT :: !(FuntypeTextureImage2DEXT)
    , rglTextureSubImage1DEXT :: !(FuntypeTextureSubImage1DEXT)
    , rglTextureSubImage2DEXT :: !(FuntypeTextureSubImage2DEXT)
    , rglCopyTextureImage1DEXT :: !(FuntypeCopyTextureImage1DEXT)
    , rglCopyTextureImage2DEXT :: !(FuntypeCopyTextureImage2DEXT)
    , rglCopyTextureSubImage1DEXT :: !(FuntypeCopyTextureSubImage1DEXT)
    , rglCopyTextureSubImage2DEXT :: !(FuntypeCopyTextureSubImage2DEXT)
    , rglGetTextureImageEXT :: !(FuntypeGetTextureImageEXT)
    , rglGetTextureParameterfvEXT :: !(FuntypeGetTextureParameterfvEXT)
    , rglGetTextureParameterivEXT :: !(FuntypeGetTextureParameterivEXT)
    , rglGetTextureLevelParameterfvEXT :: !(FuntypeGetTextureLevelParameterfvEXT)
    , rglGetTextureLevelParameterivEXT :: !(FuntypeGetTextureLevelParameterivEXT)
    , rglTextureImage3DEXT :: !(FuntypeTextureImage3DEXT)
    , rglTextureSubImage3DEXT :: !(FuntypeTextureSubImage3DEXT)
    , rglCopyTextureSubImage3DEXT :: !(FuntypeCopyTextureSubImage3DEXT)
    , rglBindMultiTextureEXT :: !(FuntypeBindMultiTextureEXT)
    , rglMultiTexCoordPointerEXT :: !(FuntypeMultiTexCoordPointerEXT)
    , rglMultiTexEnvfEXT :: !(FuntypeMultiTexEnvfEXT)
    , rglMultiTexEnvfvEXT :: !(FuntypeMultiTexEnvfvEXT)
    , rglMultiTexEnviEXT :: !(FuntypeMultiTexEnviEXT)
    , rglMultiTexEnvivEXT :: !(FuntypeMultiTexEnvivEXT)
    , rglMultiTexGendEXT :: !(FuntypeMultiTexGendEXT)
    , rglMultiTexGendvEXT :: !(FuntypeMultiTexGendvEXT)
    , rglMultiTexGenfEXT :: !(FuntypeMultiTexGenfEXT)
    , rglMultiTexGenfvEXT :: !(FuntypeMultiTexGenfvEXT)
    , rglMultiTexGeniEXT :: !(FuntypeMultiTexGeniEXT)
    , rglMultiTexGenivEXT :: !(FuntypeMultiTexGenivEXT)
    , rglGetMultiTexEnvfvEXT :: !(FuntypeGetMultiTexEnvfvEXT)
    , rglGetMultiTexEnvivEXT :: !(FuntypeGetMultiTexEnvivEXT)
    , rglGetMultiTexGendvEXT :: !(FuntypeGetMultiTexGendvEXT)
    , rglGetMultiTexGenfvEXT :: !(FuntypeGetMultiTexGenfvEXT)
    , rglGetMultiTexGenivEXT :: !(FuntypeGetMultiTexGenivEXT)
    , rglMultiTexParameteriEXT :: !(FuntypeMultiTexParameteriEXT)
    , rglMultiTexParameterivEXT :: !(FuntypeMultiTexParameterivEXT)
    , rglMultiTexParameterfEXT :: !(FuntypeMultiTexParameterfEXT)
    , rglMultiTexParameterfvEXT :: !(FuntypeMultiTexParameterfvEXT)
    , rglMultiTexImage1DEXT :: !(FuntypeMultiTexImage1DEXT)
    , rglMultiTexImage2DEXT :: !(FuntypeMultiTexImage2DEXT)
    , rglMultiTexSubImage1DEXT :: !(FuntypeMultiTexSubImage1DEXT)
    , rglMultiTexSubImage2DEXT :: !(FuntypeMultiTexSubImage2DEXT)
    , rglCopyMultiTexImage1DEXT :: !(FuntypeCopyMultiTexImage1DEXT)
    , rglCopyMultiTexImage2DEXT :: !(FuntypeCopyMultiTexImage2DEXT)
    , rglCopyMultiTexSubImage1DEXT :: !(FuntypeCopyMultiTexSubImage1DEXT)
    , rglCopyMultiTexSubImage2DEXT :: !(FuntypeCopyMultiTexSubImage2DEXT)
    , rglGetMultiTexImageEXT :: !(FuntypeGetMultiTexImageEXT)
    , rglGetMultiTexParameterfvEXT :: !(FuntypeGetMultiTexParameterfvEXT)
    , rglGetMultiTexParameterivEXT :: !(FuntypeGetMultiTexParameterivEXT)
    , rglGetMultiTexLevelParameterfvEXT :: !(FuntypeGetMultiTexLevelParameterfvEXT)
    , rglGetMultiTexLevelParameterivEXT :: !(FuntypeGetMultiTexLevelParameterivEXT)
    , rglMultiTexImage3DEXT :: !(FuntypeMultiTexImage3DEXT)
    , rglMultiTexSubImage3DEXT :: !(FuntypeMultiTexSubImage3DEXT)
    , rglCopyMultiTexSubImage3DEXT :: !(FuntypeCopyMultiTexSubImage3DEXT)
    , rglEnableClientStateIndexedEXT :: !(FuntypeEnableClientStateIndexedEXT)
    , rglDisableClientStateIndexedEXT :: !(FuntypeDisableClientStateIndexedEXT)
    , rglGetFloatIndexedvEXT :: !(FuntypeGetFloatIndexedvEXT)
    , rglGetDoubleIndexedvEXT :: !(FuntypeGetDoubleIndexedvEXT)
    , rglGetPointerIndexedvEXT :: !(FuntypeGetPointerIndexedvEXT)
    , rglEnableIndexedEXT :: !(FuntypeEnableIndexedEXT)
    , rglDisableIndexedEXT :: !(FuntypeDisableIndexedEXT)
    , rglIsEnabledIndexedEXT :: !(FuntypeIsEnabledIndexedEXT)
    , rglGetIntegerIndexedvEXT :: !(FuntypeGetIntegerIndexedvEXT)
    , rglGetBooleanIndexedvEXT :: !(FuntypeGetBooleanIndexedvEXT)
    , rglCompressedTextureImage3DEXT :: !(FuntypeCompressedTextureImage3DEXT)
    , rglCompressedTextureImage2DEXT :: !(FuntypeCompressedTextureImage2DEXT)
    , rglCompressedTextureImage1DEXT :: !(FuntypeCompressedTextureImage1DEXT)
    , rglCompressedTextureSubImage3DEXT :: !(FuntypeCompressedTextureSubImage3DEXT)
    , rglCompressedTextureSubImage2DEXT :: !(FuntypeCompressedTextureSubImage2DEXT)
    , rglCompressedTextureSubImage1DEXT :: !(FuntypeCompressedTextureSubImage1DEXT)
    , rglGetCompressedTextureImageEXT :: !(FuntypeGetCompressedTextureImageEXT)
    , rglCompressedMultiTexImage3DEXT :: !(FuntypeCompressedMultiTexImage3DEXT)
    , rglCompressedMultiTexImage2DEXT :: !(FuntypeCompressedMultiTexImage2DEXT)
    , rglCompressedMultiTexImage1DEXT :: !(FuntypeCompressedMultiTexImage1DEXT)
    , rglCompressedMultiTexSubImage3DEXT :: !(FuntypeCompressedMultiTexSubImage3DEXT)
    , rglCompressedMultiTexSubImage2DEXT :: !(FuntypeCompressedMultiTexSubImage2DEXT)
    , rglCompressedMultiTexSubImage1DEXT :: !(FuntypeCompressedMultiTexSubImage1DEXT)
    , rglGetCompressedMultiTexImageEXT :: !(FuntypeGetCompressedMultiTexImageEXT)
    , rglMatrixLoadTransposefEXT :: !(FuntypeMatrixLoadTransposefEXT)
    , rglMatrixLoadTransposedEXT :: !(FuntypeMatrixLoadTransposedEXT)
    , rglMatrixMultTransposefEXT :: !(FuntypeMatrixMultTransposefEXT)
    , rglMatrixMultTransposedEXT :: !(FuntypeMatrixMultTransposedEXT)
    , rglNamedBufferDataEXT :: !(FuntypeNamedBufferDataEXT)
    , rglNamedBufferSubDataEXT :: !(FuntypeNamedBufferSubDataEXT)
    , rglMapNamedBufferEXT :: !(FuntypeMapNamedBufferEXT)
    , rglUnmapNamedBufferEXT :: !(FuntypeUnmapNamedBufferEXT)
    , rglGetNamedBufferParameterivEXT :: !(FuntypeGetNamedBufferParameterivEXT)
    , rglGetNamedBufferPointervEXT :: !(FuntypeGetNamedBufferPointervEXT)
    , rglGetNamedBufferSubDataEXT :: !(FuntypeGetNamedBufferSubDataEXT)
    , rglProgramUniform1fEXT :: !(FuntypeProgramUniform1fEXT)
    , rglProgramUniform2fEXT :: !(FuntypeProgramUniform2fEXT)
    , rglProgramUniform3fEXT :: !(FuntypeProgramUniform3fEXT)
    , rglProgramUniform4fEXT :: !(FuntypeProgramUniform4fEXT)
    , rglProgramUniform1iEXT :: !(FuntypeProgramUniform1iEXT)
    , rglProgramUniform2iEXT :: !(FuntypeProgramUniform2iEXT)
    , rglProgramUniform3iEXT :: !(FuntypeProgramUniform3iEXT)
    , rglProgramUniform4iEXT :: !(FuntypeProgramUniform4iEXT)
    , rglProgramUniform1fvEXT :: !(FuntypeProgramUniform1fvEXT)
    , rglProgramUniform2fvEXT :: !(FuntypeProgramUniform2fvEXT)
    , rglProgramUniform3fvEXT :: !(FuntypeProgramUniform3fvEXT)
    , rglProgramUniform4fvEXT :: !(FuntypeProgramUniform4fvEXT)
    , rglProgramUniform1ivEXT :: !(FuntypeProgramUniform1ivEXT)
    , rglProgramUniform2ivEXT :: !(FuntypeProgramUniform2ivEXT)
    , rglProgramUniform3ivEXT :: !(FuntypeProgramUniform3ivEXT)
    , rglProgramUniform4ivEXT :: !(FuntypeProgramUniform4ivEXT)
    , rglProgramUniformMatrix2fvEXT :: !(FuntypeProgramUniformMatrix2fvEXT)
    , rglProgramUniformMatrix3fvEXT :: !(FuntypeProgramUniformMatrix3fvEXT)
    , rglProgramUniformMatrix4fvEXT :: !(FuntypeProgramUniformMatrix4fvEXT)
    , rglProgramUniformMatrix2x3fvEXT :: !(FuntypeProgramUniformMatrix2x3fvEXT)
    , rglProgramUniformMatrix3x2fvEXT :: !(FuntypeProgramUniformMatrix3x2fvEXT)
    , rglProgramUniformMatrix2x4fvEXT :: !(FuntypeProgramUniformMatrix2x4fvEXT)
    , rglProgramUniformMatrix4x2fvEXT :: !(FuntypeProgramUniformMatrix4x2fvEXT)
    , rglProgramUniformMatrix3x4fvEXT :: !(FuntypeProgramUniformMatrix3x4fvEXT)
    , rglProgramUniformMatrix4x3fvEXT :: !(FuntypeProgramUniformMatrix4x3fvEXT)
    , rglTextureBufferEXT :: !(FuntypeTextureBufferEXT)
    , rglMultiTexBufferEXT :: !(FuntypeMultiTexBufferEXT)
    , rglTextureParameterIivEXT :: !(FuntypeTextureParameterIivEXT)
    , rglTextureParameterIuivEXT :: !(FuntypeTextureParameterIuivEXT)
    , rglGetTextureParameterIivEXT :: !(FuntypeGetTextureParameterIivEXT)
    , rglGetTextureParameterIuivEXT :: !(FuntypeGetTextureParameterIuivEXT)
    , rglMultiTexParameterIivEXT :: !(FuntypeMultiTexParameterIivEXT)
    , rglMultiTexParameterIuivEXT :: !(FuntypeMultiTexParameterIuivEXT)
    , rglGetMultiTexParameterIivEXT :: !(FuntypeGetMultiTexParameterIivEXT)
    , rglGetMultiTexParameterIuivEXT :: !(FuntypeGetMultiTexParameterIuivEXT)
    , rglProgramUniform1uiEXT :: !(FuntypeProgramUniform1uiEXT)
    , rglProgramUniform2uiEXT :: !(FuntypeProgramUniform2uiEXT)
    , rglProgramUniform3uiEXT :: !(FuntypeProgramUniform3uiEXT)
    , rglProgramUniform4uiEXT :: !(FuntypeProgramUniform4uiEXT)
    , rglProgramUniform1uivEXT :: !(FuntypeProgramUniform1uivEXT)
    , rglProgramUniform2uivEXT :: !(FuntypeProgramUniform2uivEXT)
    , rglProgramUniform3uivEXT :: !(FuntypeProgramUniform3uivEXT)
    , rglProgramUniform4uivEXT :: !(FuntypeProgramUniform4uivEXT)
    , rglNamedProgramLocalParameters4fvEXT :: !(FuntypeNamedProgramLocalParameters4fvEXT)
    , rglNamedProgramLocalParameterI4iEXT :: !(FuntypeNamedProgramLocalParameterI4iEXT)
    , rglNamedProgramLocalParameterI4ivEXT :: !(FuntypeNamedProgramLocalParameterI4ivEXT)
    , rglNamedProgramLocalParametersI4ivEXT :: !(FuntypeNamedProgramLocalParametersI4ivEXT)
    , rglNamedProgramLocalParameterI4uiEXT :: !(FuntypeNamedProgramLocalParameterI4uiEXT)
    , rglNamedProgramLocalParameterI4uivEXT :: !(FuntypeNamedProgramLocalParameterI4uivEXT)
    , rglNamedProgramLocalParametersI4uivEXT :: !(FuntypeNamedProgramLocalParametersI4uivEXT)
    , rglGetNamedProgramLocalParameterIivEXT :: !(FuntypeGetNamedProgramLocalParameterIivEXT)
    , rglGetNamedProgramLocalParameterIuivEXT :: !(FuntypeGetNamedProgramLocalParameterIuivEXT)
    , rglEnableClientStateiEXT :: !(FuntypeEnableClientStateiEXT)
    , rglDisableClientStateiEXT :: !(FuntypeDisableClientStateiEXT)
    , rglGetFloati_vEXT :: !(FuntypeGetFloati_vEXT)
    , rglGetDoublei_vEXT :: !(FuntypeGetDoublei_vEXT)
    , rglGetPointeri_vEXT :: !(FuntypeGetPointeri_vEXT)
    , rglNamedProgramStringEXT :: !(FuntypeNamedProgramStringEXT)
    , rglNamedProgramLocalParameter4dEXT :: !(FuntypeNamedProgramLocalParameter4dEXT)
    , rglNamedProgramLocalParameter4dvEXT :: !(FuntypeNamedProgramLocalParameter4dvEXT)
    , rglNamedProgramLocalParameter4fEXT :: !(FuntypeNamedProgramLocalParameter4fEXT)
    , rglNamedProgramLocalParameter4fvEXT :: !(FuntypeNamedProgramLocalParameter4fvEXT)
    , rglGetNamedProgramLocalParameterdvEXT :: !(FuntypeGetNamedProgramLocalParameterdvEXT)
    , rglGetNamedProgramLocalParameterfvEXT :: !(FuntypeGetNamedProgramLocalParameterfvEXT)
    , rglGetNamedProgramivEXT :: !(FuntypeGetNamedProgramivEXT)
    , rglGetNamedProgramStringEXT :: !(FuntypeGetNamedProgramStringEXT)
    , rglNamedRenderbufferStorageEXT :: !(FuntypeNamedRenderbufferStorageEXT)
    , rglGetNamedRenderbufferParameterivEXT :: !(FuntypeGetNamedRenderbufferParameterivEXT)
    , rglNamedRenderbufferStorageMultisampleEXT :: !(FuntypeNamedRenderbufferStorageMultisampleEXT)
    , rglNamedRenderbufferStorageMultisampleCoverageEXT :: !(FuntypeNamedRenderbufferStorageMultisampleCoverageEXT)
    , rglCheckNamedFramebufferStatusEXT :: !(FuntypeCheckNamedFramebufferStatusEXT)
    , rglNamedFramebufferTexture1DEXT :: !(FuntypeNamedFramebufferTexture1DEXT)
    , rglNamedFramebufferTexture2DEXT :: !(FuntypeNamedFramebufferTexture2DEXT)
    , rglNamedFramebufferTexture3DEXT :: !(FuntypeNamedFramebufferTexture3DEXT)
    , rglNamedFramebufferRenderbufferEXT :: !(FuntypeNamedFramebufferRenderbufferEXT)
    , rglGetNamedFramebufferAttachmentParameterivEXT :: !(FuntypeGetNamedFramebufferAttachmentParameterivEXT)
    , rglGenerateTextureMipmapEXT :: !(FuntypeGenerateTextureMipmapEXT)
    , rglGenerateMultiTexMipmapEXT :: !(FuntypeGenerateMultiTexMipmapEXT)
    , rglFramebufferDrawBufferEXT :: !(FuntypeFramebufferDrawBufferEXT)
    , rglFramebufferDrawBuffersEXT :: !(FuntypeFramebufferDrawBuffersEXT)
    , rglFramebufferReadBufferEXT :: !(FuntypeFramebufferReadBufferEXT)
    , rglGetFramebufferParameterivEXT :: !(FuntypeGetFramebufferParameterivEXT)
    , rglNamedCopyBufferSubDataEXT :: !(FuntypeNamedCopyBufferSubDataEXT)
    , rglNamedFramebufferTextureEXT :: !(FuntypeNamedFramebufferTextureEXT)
    , rglNamedFramebufferTextureLayerEXT :: !(FuntypeNamedFramebufferTextureLayerEXT)
    , rglNamedFramebufferTextureFaceEXT :: !(FuntypeNamedFramebufferTextureFaceEXT)
    , rglTextureRenderbufferEXT :: !(FuntypeTextureRenderbufferEXT)
    , rglMultiTexRenderbufferEXT :: !(FuntypeMultiTexRenderbufferEXT)
    , rglVertexArrayVertexOffsetEXT :: !(FuntypeVertexArrayVertexOffsetEXT)
    , rglVertexArrayColorOffsetEXT :: !(FuntypeVertexArrayColorOffsetEXT)
    , rglVertexArrayEdgeFlagOffsetEXT :: !(FuntypeVertexArrayEdgeFlagOffsetEXT)
    , rglVertexArrayIndexOffsetEXT :: !(FuntypeVertexArrayIndexOffsetEXT)
    , rglVertexArrayNormalOffsetEXT :: !(FuntypeVertexArrayNormalOffsetEXT)
    , rglVertexArrayTexCoordOffsetEXT :: !(FuntypeVertexArrayTexCoordOffsetEXT)
    , rglVertexArrayMultiTexCoordOffsetEXT :: !(FuntypeVertexArrayMultiTexCoordOffsetEXT)
    , rglVertexArrayFogCoordOffsetEXT :: !(FuntypeVertexArrayFogCoordOffsetEXT)
    , rglVertexArraySecondaryColorOffsetEXT :: !(FuntypeVertexArraySecondaryColorOffsetEXT)
    , rglVertexArrayVertexAttribOffsetEXT :: !(FuntypeVertexArrayVertexAttribOffsetEXT)
    , rglVertexArrayVertexAttribIOffsetEXT :: !(FuntypeVertexArrayVertexAttribIOffsetEXT)
    , rglEnableVertexArrayEXT :: !(FuntypeEnableVertexArrayEXT)
    , rglDisableVertexArrayEXT :: !(FuntypeDisableVertexArrayEXT)
    , rglEnableVertexArrayAttribEXT :: !(FuntypeEnableVertexArrayAttribEXT)
    , rglDisableVertexArrayAttribEXT :: !(FuntypeDisableVertexArrayAttribEXT)
    , rglGetVertexArrayIntegervEXT :: !(FuntypeGetVertexArrayIntegervEXT)
    , rglGetVertexArrayPointervEXT :: !(FuntypeGetVertexArrayPointervEXT)
    , rglGetVertexArrayIntegeri_vEXT :: !(FuntypeGetVertexArrayIntegeri_vEXT)
    , rglGetVertexArrayPointeri_vEXT :: !(FuntypeGetVertexArrayPointeri_vEXT)
    , rglMapNamedBufferRangeEXT :: !(FuntypeMapNamedBufferRangeEXT)
    , rglFlushMappedNamedBufferRangeEXT :: !(FuntypeFlushMappedNamedBufferRangeEXT)
    , rglNamedBufferStorageEXT :: !(FuntypeNamedBufferStorageEXT)
    , rglClearNamedBufferDataEXT :: !(FuntypeClearNamedBufferDataEXT)
    , rglClearNamedBufferSubDataEXT :: !(FuntypeClearNamedBufferSubDataEXT)
    , rglNamedFramebufferParameteriEXT :: !(FuntypeNamedFramebufferParameteriEXT)
    , rglGetNamedFramebufferParameterivEXT :: !(FuntypeGetNamedFramebufferParameterivEXT)
    , rglProgramUniform1dEXT :: !(FuntypeProgramUniform1dEXT)
    , rglProgramUniform2dEXT :: !(FuntypeProgramUniform2dEXT)
    , rglProgramUniform3dEXT :: !(FuntypeProgramUniform3dEXT)
    , rglProgramUniform4dEXT :: !(FuntypeProgramUniform4dEXT)
    , rglProgramUniform1dvEXT :: !(FuntypeProgramUniform1dvEXT)
    , rglProgramUniform2dvEXT :: !(FuntypeProgramUniform2dvEXT)
    , rglProgramUniform3dvEXT :: !(FuntypeProgramUniform3dvEXT)
    , rglProgramUniform4dvEXT :: !(FuntypeProgramUniform4dvEXT)
    , rglProgramUniformMatrix2dvEXT :: !(FuntypeProgramUniformMatrix2dvEXT)
    , rglProgramUniformMatrix3dvEXT :: !(FuntypeProgramUniformMatrix3dvEXT)
    , rglProgramUniformMatrix4dvEXT :: !(FuntypeProgramUniformMatrix4dvEXT)
    , rglProgramUniformMatrix2x3dvEXT :: !(FuntypeProgramUniformMatrix2x3dvEXT)
    , rglProgramUniformMatrix2x4dvEXT :: !(FuntypeProgramUniformMatrix2x4dvEXT)
    , rglProgramUniformMatrix3x2dvEXT :: !(FuntypeProgramUniformMatrix3x2dvEXT)
    , rglProgramUniformMatrix3x4dvEXT :: !(FuntypeProgramUniformMatrix3x4dvEXT)
    , rglProgramUniformMatrix4x2dvEXT :: !(FuntypeProgramUniformMatrix4x2dvEXT)
    , rglProgramUniformMatrix4x3dvEXT :: !(FuntypeProgramUniformMatrix4x3dvEXT)
    , rglTextureBufferRangeEXT :: !(FuntypeTextureBufferRangeEXT)
    , rglTextureStorage1DEXT :: !(FuntypeTextureStorage1DEXT)
    , rglTextureStorage2DEXT :: !(FuntypeTextureStorage2DEXT)
    , rglTextureStorage3DEXT :: !(FuntypeTextureStorage3DEXT)
    , rglTextureStorage2DMultisampleEXT :: !(FuntypeTextureStorage2DMultisampleEXT)
    , rglTextureStorage3DMultisampleEXT :: !(FuntypeTextureStorage3DMultisampleEXT)
    , rglVertexArrayBindVertexBufferEXT :: !(FuntypeVertexArrayBindVertexBufferEXT)
    , rglVertexArrayVertexAttribFormatEXT :: !(FuntypeVertexArrayVertexAttribFormatEXT)
    , rglVertexArrayVertexAttribIFormatEXT :: !(FuntypeVertexArrayVertexAttribIFormatEXT)
    , rglVertexArrayVertexAttribLFormatEXT :: !(FuntypeVertexArrayVertexAttribLFormatEXT)
    , rglVertexArrayVertexAttribBindingEXT :: !(FuntypeVertexArrayVertexAttribBindingEXT)
    , rglVertexArrayVertexBindingDivisorEXT :: !(FuntypeVertexArrayVertexBindingDivisorEXT)
    , rglVertexArrayVertexAttribLOffsetEXT :: !(FuntypeVertexArrayVertexAttribLOffsetEXT)
    , rglTexturePageCommitmentEXT :: !(FuntypeTexturePageCommitmentEXT)
    , rglVertexArrayVertexAttribDivisorEXT :: !(FuntypeVertexArrayVertexAttribDivisorEXT)
    , rglBufferStorage :: !(FuntypeBufferStorage)
    , rglUseProgramStages :: !(FuntypeUseProgramStages)
    , rglActiveShaderProgram :: !(FuntypeActiveShaderProgram)
    , rglCreateShaderProgramv :: !(FuntypeCreateShaderProgramv)
    , rglBindProgramPipeline :: !(FuntypeBindProgramPipeline)
    , rglDeleteProgramPipelines :: !(FuntypeDeleteProgramPipelines)
    , rglGenProgramPipelines :: !(FuntypeGenProgramPipelines)
    , rglIsProgramPipeline :: !(FuntypeIsProgramPipeline)
    , rglGetProgramPipelineiv :: !(FuntypeGetProgramPipelineiv)
    , rglProgramUniform1i :: !(FuntypeProgramUniform1i)
    , rglProgramUniform1iv :: !(FuntypeProgramUniform1iv)
    , rglProgramUniform1f :: !(FuntypeProgramUniform1f)
    , rglProgramUniform1fv :: !(FuntypeProgramUniform1fv)
    , rglProgramUniform1d :: !(FuntypeProgramUniform1d)
    , rglProgramUniform1dv :: !(FuntypeProgramUniform1dv)
    , rglProgramUniform1ui :: !(FuntypeProgramUniform1ui)
    , rglProgramUniform1uiv :: !(FuntypeProgramUniform1uiv)
    , rglProgramUniform2i :: !(FuntypeProgramUniform2i)
    , rglProgramUniform2iv :: !(FuntypeProgramUniform2iv)
    , rglProgramUniform2f :: !(FuntypeProgramUniform2f)
    , rglProgramUniform2fv :: !(FuntypeProgramUniform2fv)
    , rglProgramUniform2d :: !(FuntypeProgramUniform2d)
    , rglProgramUniform2dv :: !(FuntypeProgramUniform2dv)
    , rglProgramUniform2ui :: !(FuntypeProgramUniform2ui)
    , rglProgramUniform2uiv :: !(FuntypeProgramUniform2uiv)
    , rglProgramUniform3i :: !(FuntypeProgramUniform3i)
    , rglProgramUniform3iv :: !(FuntypeProgramUniform3iv)
    , rglProgramUniform3f :: !(FuntypeProgramUniform3f)
    , rglProgramUniform3fv :: !(FuntypeProgramUniform3fv)
    , rglProgramUniform3d :: !(FuntypeProgramUniform3d)
    , rglProgramUniform3dv :: !(FuntypeProgramUniform3dv)
    , rglProgramUniform3ui :: !(FuntypeProgramUniform3ui)
    , rglProgramUniform3uiv :: !(FuntypeProgramUniform3uiv)
    , rglProgramUniform4i :: !(FuntypeProgramUniform4i)
    , rglProgramUniform4iv :: !(FuntypeProgramUniform4iv)
    , rglProgramUniform4f :: !(FuntypeProgramUniform4f)
    , rglProgramUniform4fv :: !(FuntypeProgramUniform4fv)
    , rglProgramUniform4d :: !(FuntypeProgramUniform4d)
    , rglProgramUniform4dv :: !(FuntypeProgramUniform4dv)
    , rglProgramUniform4ui :: !(FuntypeProgramUniform4ui)
    , rglProgramUniform4uiv :: !(FuntypeProgramUniform4uiv)
    , rglProgramUniformMatrix2fv :: !(FuntypeProgramUniformMatrix2fv)
    , rglProgramUniformMatrix3fv :: !(FuntypeProgramUniformMatrix3fv)
    , rglProgramUniformMatrix4fv :: !(FuntypeProgramUniformMatrix4fv)
    , rglProgramUniformMatrix2dv :: !(FuntypeProgramUniformMatrix2dv)
    , rglProgramUniformMatrix3dv :: !(FuntypeProgramUniformMatrix3dv)
    , rglProgramUniformMatrix4dv :: !(FuntypeProgramUniformMatrix4dv)
    , rglProgramUniformMatrix2x3fv :: !(FuntypeProgramUniformMatrix2x3fv)
    , rglProgramUniformMatrix3x2fv :: !(FuntypeProgramUniformMatrix3x2fv)
    , rglProgramUniformMatrix2x4fv :: !(FuntypeProgramUniformMatrix2x4fv)
    , rglProgramUniformMatrix4x2fv :: !(FuntypeProgramUniformMatrix4x2fv)
    , rglProgramUniformMatrix3x4fv :: !(FuntypeProgramUniformMatrix3x4fv)
    , rglProgramUniformMatrix4x3fv :: !(FuntypeProgramUniformMatrix4x3fv)
    , rglProgramUniformMatrix2x3dv :: !(FuntypeProgramUniformMatrix2x3dv)
    , rglProgramUniformMatrix3x2dv :: !(FuntypeProgramUniformMatrix3x2dv)
    , rglProgramUniformMatrix2x4dv :: !(FuntypeProgramUniformMatrix2x4dv)
    , rglProgramUniformMatrix4x2dv :: !(FuntypeProgramUniformMatrix4x2dv)
    , rglProgramUniformMatrix3x4dv :: !(FuntypeProgramUniformMatrix3x4dv)
    , rglProgramUniformMatrix4x3dv :: !(FuntypeProgramUniformMatrix4x3dv)
    , rglValidateProgramPipeline :: !(FuntypeValidateProgramPipeline)
    , rglGetProgramPipelineInfoLog :: !(FuntypeGetProgramPipelineInfoLog)
    , rglInvalidateTexSubImage :: !(FuntypeInvalidateTexSubImage)
    , rglInvalidateTexImage :: !(FuntypeInvalidateTexImage)
    , rglInvalidateBufferSubData :: !(FuntypeInvalidateBufferSubData)
    , rglInvalidateBufferData :: !(FuntypeInvalidateBufferData)
    , rglInvalidateFramebuffer :: !(FuntypeInvalidateFramebuffer)
    , rglInvalidateSubFramebuffer :: !(FuntypeInvalidateSubFramebuffer)
    }
    deriving ( Typeable )

instance Show FlextGL where
    show fgl = "FlextGL <#" ++ show (counter fgl) ++ ">"

instance Eq FlextGL where
    fgl1 == fgl2 = counter fgl1 == counter fgl2

instance Ord FlextGL where
    fgl1 `compare` fgl2 = counter fgl1 `compare` counter fgl2

-- | The return type from `flextInit`.
data FlextInitResult = Failure { why :: String }
                     | Success !FlextGL
                     deriving ( Eq, Ord, Show )

deriving instance Typeable FlextInitResult
instance Exception FlextInitResult

-- | Thrown when someone calls an OpenGL function that's not available in the
--   context.
data NonExistentOpenGLFunction = NonExistentOpenGLFunction String
                                 deriving ( Eq, Ord, Show, Read )

deriving instance Typeable NonExistentOpenGLFunction
instance Exception NonExistentOpenGLFunction

proc :: Either a a -> a
proc (Left x) = x
proc (Right x) = x

parseExtensionString :: String -> [String]
parseExtensionString [] = []
parseExtensionString str = rec str [] [] where
    rec [] ext exts =
        if null ext
          then exts
          else (reverse ext:exts)
    rec (' ':rest) ext exts =
        if null ext
          then rec rest [] exts
          else rec rest [] (reverse ext:exts)
    rec (x:rest) ext exts =
        rec rest (x:ext) exts

-- | Initializes OpenGL entry points in the current OpenGL context.
flextInit :: (String -> IO (Ptr ())) -- ^ This function should return OpenGL entry point for given OpenGL function name.
          -> IO FlextInitResult
flextInit get_proc_address = fmap proc $ runExceptT $ do
    -- GL_VERSION_1_0

    refCullFace <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCullFace"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCullFace")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCullFace addr
                   else nonexistentCullFace
    refFrontFace <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFrontFace"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFrontFace")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFrontFace addr
                   else nonexistentFrontFace
    refHint <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glHint"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glHint")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynHint addr
                   else nonexistentHint
    refLineWidth <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glLineWidth"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glLineWidth")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynLineWidth addr
                   else nonexistentLineWidth
    refPointSize <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPointSize"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPointSize")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPointSize addr
                   else nonexistentPointSize
    refPolygonMode <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPolygonMode"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPolygonMode")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPolygonMode addr
                   else nonexistentPolygonMode
    refScissor <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glScissor"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glScissor")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynScissor addr
                   else nonexistentScissor
    refTexParameterf <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexParameterf"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexParameterf")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexParameterf addr
                   else nonexistentTexParameterf
    refTexParameterfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexParameterfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexParameterfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexParameterfv addr
                   else nonexistentTexParameterfv
    refTexParameteri <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexParameteri"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexParameteri")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexParameteri addr
                   else nonexistentTexParameteri
    refTexParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexParameteriv addr
                   else nonexistentTexParameteriv
    refTexImage1D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexImage1D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexImage1D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexImage1D addr
                   else nonexistentTexImage1D
    refTexImage2D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexImage2D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexImage2D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexImage2D addr
                   else nonexistentTexImage2D
    refDrawBuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawBuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawBuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawBuffer addr
                   else nonexistentDrawBuffer
    refClear <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClear"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClear")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClear addr
                   else nonexistentClear
    refClearColor <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearColor"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearColor")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearColor addr
                   else nonexistentClearColor
    refClearStencil <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearStencil"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearStencil")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearStencil addr
                   else nonexistentClearStencil
    refClearDepth <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearDepth"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearDepth")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearDepth addr
                   else nonexistentClearDepth
    refStencilMask <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glStencilMask"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glStencilMask")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynStencilMask addr
                   else nonexistentStencilMask
    refColorMask <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glColorMask"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glColorMask")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynColorMask addr
                   else nonexistentColorMask
    refDepthMask <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDepthMask"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDepthMask")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDepthMask addr
                   else nonexistentDepthMask
    refDisable <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDisable"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDisable")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDisable addr
                   else nonexistentDisable
    refEnable <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEnable"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEnable")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEnable addr
                   else nonexistentEnable
    refFinish <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFinish"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFinish")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFinish addr
                   else nonexistentFinish
    refFlush <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFlush"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFlush")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFlush addr
                   else nonexistentFlush
    refBlendFunc <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBlendFunc"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBlendFunc")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBlendFunc addr
                   else nonexistentBlendFunc
    refLogicOp <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glLogicOp"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glLogicOp")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynLogicOp addr
                   else nonexistentLogicOp
    refStencilFunc <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glStencilFunc"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glStencilFunc")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynStencilFunc addr
                   else nonexistentStencilFunc
    refStencilOp <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glStencilOp"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glStencilOp")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynStencilOp addr
                   else nonexistentStencilOp
    refDepthFunc <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDepthFunc"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDepthFunc")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDepthFunc addr
                   else nonexistentDepthFunc
    refPixelStoref <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPixelStoref"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPixelStoref")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPixelStoref addr
                   else nonexistentPixelStoref
    refPixelStorei <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPixelStorei"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPixelStorei")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPixelStorei addr
                   else nonexistentPixelStorei
    refReadBuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glReadBuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glReadBuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynReadBuffer addr
                   else nonexistentReadBuffer
    refReadPixels <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glReadPixels"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glReadPixels")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynReadPixels addr
                   else nonexistentReadPixels
    refGetBooleanv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetBooleanv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetBooleanv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetBooleanv addr
                   else nonexistentGetBooleanv
    refGetDoublev <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetDoublev"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetDoublev")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetDoublev addr
                   else nonexistentGetDoublev
    refGetError <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetError"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetError")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetError addr
                   else nonexistentGetError
    refGetFloatv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetFloatv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetFloatv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetFloatv addr
                   else nonexistentGetFloatv
    refGetIntegerv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetIntegerv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetIntegerv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetIntegerv addr
                   else nonexistentGetIntegerv
    refGetString <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetString"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetString")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetString addr
                   else nonexistentGetString
    refGetTexImage <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTexImage"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTexImage")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTexImage addr
                   else nonexistentGetTexImage
    refGetTexParameterfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTexParameterfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTexParameterfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTexParameterfv addr
                   else nonexistentGetTexParameterfv
    refGetTexParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTexParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTexParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTexParameteriv addr
                   else nonexistentGetTexParameteriv
    refGetTexLevelParameterfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTexLevelParameterfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTexLevelParameterfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTexLevelParameterfv addr
                   else nonexistentGetTexLevelParameterfv
    refGetTexLevelParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTexLevelParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTexLevelParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTexLevelParameteriv addr
                   else nonexistentGetTexLevelParameteriv
    refIsEnabled <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsEnabled"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsEnabled")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsEnabled addr
                   else nonexistentIsEnabled
    refDepthRange <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDepthRange"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDepthRange")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDepthRange addr
                   else nonexistentDepthRange
    refViewport <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glViewport"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glViewport")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynViewport addr
                   else nonexistentViewport

    -- GL_VERSION_1_1

    refDrawArrays <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawArrays"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawArrays")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawArrays addr
                   else nonexistentDrawArrays
    refDrawElements <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawElements"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawElements")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawElements addr
                   else nonexistentDrawElements
    refPolygonOffset <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPolygonOffset"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPolygonOffset")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPolygonOffset addr
                   else nonexistentPolygonOffset
    refCopyTexImage1D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTexImage1D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTexImage1D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTexImage1D addr
                   else nonexistentCopyTexImage1D
    refCopyTexImage2D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTexImage2D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTexImage2D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTexImage2D addr
                   else nonexistentCopyTexImage2D
    refCopyTexSubImage1D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTexSubImage1D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTexSubImage1D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTexSubImage1D addr
                   else nonexistentCopyTexSubImage1D
    refCopyTexSubImage2D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTexSubImage2D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTexSubImage2D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTexSubImage2D addr
                   else nonexistentCopyTexSubImage2D
    refTexSubImage1D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexSubImage1D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexSubImage1D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexSubImage1D addr
                   else nonexistentTexSubImage1D
    refTexSubImage2D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexSubImage2D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexSubImage2D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexSubImage2D addr
                   else nonexistentTexSubImage2D
    refBindTexture <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindTexture"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindTexture")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindTexture addr
                   else nonexistentBindTexture
    refDeleteTextures <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteTextures"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteTextures")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteTextures addr
                   else nonexistentDeleteTextures
    refGenTextures <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenTextures"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenTextures")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenTextures addr
                   else nonexistentGenTextures
    refIsTexture <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsTexture"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsTexture")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsTexture addr
                   else nonexistentIsTexture

    -- GL_VERSION_1_2

    refDrawRangeElements <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawRangeElements"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawRangeElements")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawRangeElements addr
                   else nonexistentDrawRangeElements
    refTexImage3D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexImage3D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexImage3D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexImage3D addr
                   else nonexistentTexImage3D
    refTexSubImage3D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexSubImage3D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexSubImage3D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexSubImage3D addr
                   else nonexistentTexSubImage3D
    refCopyTexSubImage3D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTexSubImage3D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTexSubImage3D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTexSubImage3D addr
                   else nonexistentCopyTexSubImage3D

    -- GL_VERSION_1_3

    refActiveTexture <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glActiveTexture"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glActiveTexture")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynActiveTexture addr
                   else nonexistentActiveTexture
    refSampleCoverage <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glSampleCoverage"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glSampleCoverage")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynSampleCoverage addr
                   else nonexistentSampleCoverage
    refCompressedTexImage3D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTexImage3D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTexImage3D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTexImage3D addr
                   else nonexistentCompressedTexImage3D
    refCompressedTexImage2D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTexImage2D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTexImage2D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTexImage2D addr
                   else nonexistentCompressedTexImage2D
    refCompressedTexImage1D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTexImage1D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTexImage1D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTexImage1D addr
                   else nonexistentCompressedTexImage1D
    refCompressedTexSubImage3D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTexSubImage3D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTexSubImage3D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTexSubImage3D addr
                   else nonexistentCompressedTexSubImage3D
    refCompressedTexSubImage2D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTexSubImage2D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTexSubImage2D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTexSubImage2D addr
                   else nonexistentCompressedTexSubImage2D
    refCompressedTexSubImage1D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTexSubImage1D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTexSubImage1D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTexSubImage1D addr
                   else nonexistentCompressedTexSubImage1D
    refGetCompressedTexImage <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetCompressedTexImage"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetCompressedTexImage")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetCompressedTexImage addr
                   else nonexistentGetCompressedTexImage

    -- GL_VERSION_1_4

    refBlendFuncSeparate <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBlendFuncSeparate"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBlendFuncSeparate")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBlendFuncSeparate addr
                   else nonexistentBlendFuncSeparate
    refMultiDrawArrays <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiDrawArrays"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiDrawArrays")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiDrawArrays addr
                   else nonexistentMultiDrawArrays
    refMultiDrawElements <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiDrawElements"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiDrawElements")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiDrawElements addr
                   else nonexistentMultiDrawElements
    refPointParameterf <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPointParameterf"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPointParameterf")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPointParameterf addr
                   else nonexistentPointParameterf
    refPointParameterfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPointParameterfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPointParameterfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPointParameterfv addr
                   else nonexistentPointParameterfv
    refPointParameteri <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPointParameteri"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPointParameteri")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPointParameteri addr
                   else nonexistentPointParameteri
    refPointParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPointParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPointParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPointParameteriv addr
                   else nonexistentPointParameteriv
    refBlendColor <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBlendColor"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBlendColor")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBlendColor addr
                   else nonexistentBlendColor
    refBlendEquation <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBlendEquation"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBlendEquation")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBlendEquation addr
                   else nonexistentBlendEquation

    -- GL_VERSION_1_5

    refGenQueries <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenQueries"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenQueries")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenQueries addr
                   else nonexistentGenQueries
    refDeleteQueries <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteQueries"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteQueries")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteQueries addr
                   else nonexistentDeleteQueries
    refIsQuery <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsQuery"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsQuery")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsQuery addr
                   else nonexistentIsQuery
    refBeginQuery <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBeginQuery"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBeginQuery")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBeginQuery addr
                   else nonexistentBeginQuery
    refEndQuery <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEndQuery"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEndQuery")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEndQuery addr
                   else nonexistentEndQuery
    refGetQueryiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetQueryiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetQueryiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetQueryiv addr
                   else nonexistentGetQueryiv
    refGetQueryObjectiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetQueryObjectiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetQueryObjectiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetQueryObjectiv addr
                   else nonexistentGetQueryObjectiv
    refGetQueryObjectuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetQueryObjectuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetQueryObjectuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetQueryObjectuiv addr
                   else nonexistentGetQueryObjectuiv
    refBindBuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindBuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindBuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindBuffer addr
                   else nonexistentBindBuffer
    refDeleteBuffers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteBuffers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteBuffers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteBuffers addr
                   else nonexistentDeleteBuffers
    refGenBuffers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenBuffers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenBuffers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenBuffers addr
                   else nonexistentGenBuffers
    refIsBuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsBuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsBuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsBuffer addr
                   else nonexistentIsBuffer
    refBufferData <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBufferData"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBufferData")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBufferData addr
                   else nonexistentBufferData
    refBufferSubData <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBufferSubData"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBufferSubData")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBufferSubData addr
                   else nonexistentBufferSubData
    refGetBufferSubData <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetBufferSubData"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetBufferSubData")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetBufferSubData addr
                   else nonexistentGetBufferSubData
    refMapBuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMapBuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMapBuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMapBuffer addr
                   else nonexistentMapBuffer
    refUnmapBuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUnmapBuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUnmapBuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUnmapBuffer addr
                   else nonexistentUnmapBuffer
    refGetBufferParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetBufferParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetBufferParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetBufferParameteriv addr
                   else nonexistentGetBufferParameteriv
    refGetBufferPointerv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetBufferPointerv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetBufferPointerv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetBufferPointerv addr
                   else nonexistentGetBufferPointerv

    -- GL_VERSION_2_0

    refBlendEquationSeparate <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBlendEquationSeparate"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBlendEquationSeparate")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBlendEquationSeparate addr
                   else nonexistentBlendEquationSeparate
    refDrawBuffers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawBuffers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawBuffers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawBuffers addr
                   else nonexistentDrawBuffers
    refStencilOpSeparate <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glStencilOpSeparate"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glStencilOpSeparate")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynStencilOpSeparate addr
                   else nonexistentStencilOpSeparate
    refStencilFuncSeparate <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glStencilFuncSeparate"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glStencilFuncSeparate")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynStencilFuncSeparate addr
                   else nonexistentStencilFuncSeparate
    refStencilMaskSeparate <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glStencilMaskSeparate"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glStencilMaskSeparate")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynStencilMaskSeparate addr
                   else nonexistentStencilMaskSeparate
    refAttachShader <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glAttachShader"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glAttachShader")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynAttachShader addr
                   else nonexistentAttachShader
    refBindAttribLocation <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindAttribLocation"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindAttribLocation")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindAttribLocation addr
                   else nonexistentBindAttribLocation
    refCompileShader <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompileShader"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompileShader")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompileShader addr
                   else nonexistentCompileShader
    refCreateProgram <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCreateProgram"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCreateProgram")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCreateProgram addr
                   else nonexistentCreateProgram
    refCreateShader <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCreateShader"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCreateShader")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCreateShader addr
                   else nonexistentCreateShader
    refDeleteProgram <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteProgram"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteProgram")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteProgram addr
                   else nonexistentDeleteProgram
    refDeleteShader <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteShader"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteShader")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteShader addr
                   else nonexistentDeleteShader
    refDetachShader <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDetachShader"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDetachShader")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDetachShader addr
                   else nonexistentDetachShader
    refDisableVertexAttribArray <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDisableVertexAttribArray"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDisableVertexAttribArray")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDisableVertexAttribArray addr
                   else nonexistentDisableVertexAttribArray
    refEnableVertexAttribArray <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEnableVertexAttribArray"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEnableVertexAttribArray")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEnableVertexAttribArray addr
                   else nonexistentEnableVertexAttribArray
    refGetActiveAttrib <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetActiveAttrib"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetActiveAttrib")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetActiveAttrib addr
                   else nonexistentGetActiveAttrib
    refGetActiveUniform <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetActiveUniform"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetActiveUniform")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetActiveUniform addr
                   else nonexistentGetActiveUniform
    refGetAttachedShaders <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetAttachedShaders"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetAttachedShaders")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetAttachedShaders addr
                   else nonexistentGetAttachedShaders
    refGetAttribLocation <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetAttribLocation"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetAttribLocation")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetAttribLocation addr
                   else nonexistentGetAttribLocation
    refGetProgramiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetProgramiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetProgramiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetProgramiv addr
                   else nonexistentGetProgramiv
    refGetProgramInfoLog <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetProgramInfoLog"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetProgramInfoLog")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetProgramInfoLog addr
                   else nonexistentGetProgramInfoLog
    refGetShaderiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetShaderiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetShaderiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetShaderiv addr
                   else nonexistentGetShaderiv
    refGetShaderInfoLog <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetShaderInfoLog"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetShaderInfoLog")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetShaderInfoLog addr
                   else nonexistentGetShaderInfoLog
    refGetShaderSource <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetShaderSource"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetShaderSource")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetShaderSource addr
                   else nonexistentGetShaderSource
    refGetUniformLocation <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetUniformLocation"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetUniformLocation")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetUniformLocation addr
                   else nonexistentGetUniformLocation
    refGetUniformfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetUniformfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetUniformfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetUniformfv addr
                   else nonexistentGetUniformfv
    refGetUniformiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetUniformiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetUniformiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetUniformiv addr
                   else nonexistentGetUniformiv
    refGetVertexAttribdv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexAttribdv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexAttribdv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexAttribdv addr
                   else nonexistentGetVertexAttribdv
    refGetVertexAttribfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexAttribfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexAttribfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexAttribfv addr
                   else nonexistentGetVertexAttribfv
    refGetVertexAttribiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexAttribiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexAttribiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexAttribiv addr
                   else nonexistentGetVertexAttribiv
    refGetVertexAttribPointerv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexAttribPointerv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexAttribPointerv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexAttribPointerv addr
                   else nonexistentGetVertexAttribPointerv
    refIsProgram <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsProgram"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsProgram")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsProgram addr
                   else nonexistentIsProgram
    refIsShader <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsShader"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsShader")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsShader addr
                   else nonexistentIsShader
    refLinkProgram <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glLinkProgram"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glLinkProgram")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynLinkProgram addr
                   else nonexistentLinkProgram
    refShaderSource <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glShaderSource"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glShaderSource")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynShaderSource addr
                   else nonexistentShaderSource
    refUseProgram <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUseProgram"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUseProgram")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUseProgram addr
                   else nonexistentUseProgram
    refUniform1f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform1f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform1f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform1f addr
                   else nonexistentUniform1f
    refUniform2f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform2f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform2f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform2f addr
                   else nonexistentUniform2f
    refUniform3f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform3f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform3f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform3f addr
                   else nonexistentUniform3f
    refUniform4f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform4f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform4f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform4f addr
                   else nonexistentUniform4f
    refUniform1i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform1i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform1i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform1i addr
                   else nonexistentUniform1i
    refUniform2i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform2i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform2i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform2i addr
                   else nonexistentUniform2i
    refUniform3i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform3i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform3i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform3i addr
                   else nonexistentUniform3i
    refUniform4i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform4i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform4i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform4i addr
                   else nonexistentUniform4i
    refUniform1fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform1fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform1fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform1fv addr
                   else nonexistentUniform1fv
    refUniform2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform2fv addr
                   else nonexistentUniform2fv
    refUniform3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform3fv addr
                   else nonexistentUniform3fv
    refUniform4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform4fv addr
                   else nonexistentUniform4fv
    refUniform1iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform1iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform1iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform1iv addr
                   else nonexistentUniform1iv
    refUniform2iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform2iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform2iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform2iv addr
                   else nonexistentUniform2iv
    refUniform3iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform3iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform3iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform3iv addr
                   else nonexistentUniform3iv
    refUniform4iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform4iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform4iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform4iv addr
                   else nonexistentUniform4iv
    refUniformMatrix2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix2fv addr
                   else nonexistentUniformMatrix2fv
    refUniformMatrix3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix3fv addr
                   else nonexistentUniformMatrix3fv
    refUniformMatrix4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix4fv addr
                   else nonexistentUniformMatrix4fv
    refValidateProgram <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glValidateProgram"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glValidateProgram")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynValidateProgram addr
                   else nonexistentValidateProgram
    refVertexAttrib1d <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib1d"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib1d")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib1d addr
                   else nonexistentVertexAttrib1d
    refVertexAttrib1dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib1dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib1dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib1dv addr
                   else nonexistentVertexAttrib1dv
    refVertexAttrib1f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib1f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib1f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib1f addr
                   else nonexistentVertexAttrib1f
    refVertexAttrib1fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib1fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib1fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib1fv addr
                   else nonexistentVertexAttrib1fv
    refVertexAttrib1s <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib1s"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib1s")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib1s addr
                   else nonexistentVertexAttrib1s
    refVertexAttrib1sv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib1sv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib1sv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib1sv addr
                   else nonexistentVertexAttrib1sv
    refVertexAttrib2d <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib2d"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib2d")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib2d addr
                   else nonexistentVertexAttrib2d
    refVertexAttrib2dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib2dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib2dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib2dv addr
                   else nonexistentVertexAttrib2dv
    refVertexAttrib2f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib2f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib2f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib2f addr
                   else nonexistentVertexAttrib2f
    refVertexAttrib2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib2fv addr
                   else nonexistentVertexAttrib2fv
    refVertexAttrib2s <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib2s"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib2s")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib2s addr
                   else nonexistentVertexAttrib2s
    refVertexAttrib2sv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib2sv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib2sv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib2sv addr
                   else nonexistentVertexAttrib2sv
    refVertexAttrib3d <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib3d"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib3d")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib3d addr
                   else nonexistentVertexAttrib3d
    refVertexAttrib3dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib3dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib3dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib3dv addr
                   else nonexistentVertexAttrib3dv
    refVertexAttrib3f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib3f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib3f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib3f addr
                   else nonexistentVertexAttrib3f
    refVertexAttrib3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib3fv addr
                   else nonexistentVertexAttrib3fv
    refVertexAttrib3s <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib3s"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib3s")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib3s addr
                   else nonexistentVertexAttrib3s
    refVertexAttrib3sv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib3sv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib3sv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib3sv addr
                   else nonexistentVertexAttrib3sv
    refVertexAttrib4Nbv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4Nbv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4Nbv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4Nbv addr
                   else nonexistentVertexAttrib4Nbv
    refVertexAttrib4Niv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4Niv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4Niv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4Niv addr
                   else nonexistentVertexAttrib4Niv
    refVertexAttrib4Nsv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4Nsv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4Nsv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4Nsv addr
                   else nonexistentVertexAttrib4Nsv
    refVertexAttrib4Nub <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4Nub"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4Nub")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4Nub addr
                   else nonexistentVertexAttrib4Nub
    refVertexAttrib4Nubv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4Nubv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4Nubv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4Nubv addr
                   else nonexistentVertexAttrib4Nubv
    refVertexAttrib4Nuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4Nuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4Nuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4Nuiv addr
                   else nonexistentVertexAttrib4Nuiv
    refVertexAttrib4Nusv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4Nusv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4Nusv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4Nusv addr
                   else nonexistentVertexAttrib4Nusv
    refVertexAttrib4bv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4bv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4bv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4bv addr
                   else nonexistentVertexAttrib4bv
    refVertexAttrib4d <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4d"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4d")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4d addr
                   else nonexistentVertexAttrib4d
    refVertexAttrib4dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4dv addr
                   else nonexistentVertexAttrib4dv
    refVertexAttrib4f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4f addr
                   else nonexistentVertexAttrib4f
    refVertexAttrib4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4fv addr
                   else nonexistentVertexAttrib4fv
    refVertexAttrib4iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4iv addr
                   else nonexistentVertexAttrib4iv
    refVertexAttrib4s <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4s"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4s")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4s addr
                   else nonexistentVertexAttrib4s
    refVertexAttrib4sv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4sv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4sv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4sv addr
                   else nonexistentVertexAttrib4sv
    refVertexAttrib4ubv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4ubv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4ubv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4ubv addr
                   else nonexistentVertexAttrib4ubv
    refVertexAttrib4uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4uiv addr
                   else nonexistentVertexAttrib4uiv
    refVertexAttrib4usv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttrib4usv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttrib4usv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttrib4usv addr
                   else nonexistentVertexAttrib4usv
    refVertexAttribPointer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribPointer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribPointer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribPointer addr
                   else nonexistentVertexAttribPointer

    -- GL_VERSION_2_1

    refUniformMatrix2x3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix2x3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix2x3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix2x3fv addr
                   else nonexistentUniformMatrix2x3fv
    refUniformMatrix3x2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix3x2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix3x2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix3x2fv addr
                   else nonexistentUniformMatrix3x2fv
    refUniformMatrix2x4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix2x4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix2x4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix2x4fv addr
                   else nonexistentUniformMatrix2x4fv
    refUniformMatrix4x2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix4x2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix4x2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix4x2fv addr
                   else nonexistentUniformMatrix4x2fv
    refUniformMatrix3x4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix3x4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix3x4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix3x4fv addr
                   else nonexistentUniformMatrix3x4fv
    refUniformMatrix4x3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformMatrix4x3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformMatrix4x3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformMatrix4x3fv addr
                   else nonexistentUniformMatrix4x3fv

    -- GL_VERSION_3_0

    refColorMaski <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glColorMaski"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glColorMaski")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynColorMaski addr
                   else nonexistentColorMaski
    refGetBooleani_v <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetBooleani_v"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetBooleani_v")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetBooleani_v addr
                   else nonexistentGetBooleani_v
    refGetIntegeri_v <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetIntegeri_v"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetIntegeri_v")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetIntegeri_v addr
                   else nonexistentGetIntegeri_v
    refEnablei <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEnablei"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEnablei")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEnablei addr
                   else nonexistentEnablei
    refDisablei <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDisablei"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDisablei")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDisablei addr
                   else nonexistentDisablei
    refIsEnabledi <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsEnabledi"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsEnabledi")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsEnabledi addr
                   else nonexistentIsEnabledi
    refBeginTransformFeedback <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBeginTransformFeedback"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBeginTransformFeedback")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBeginTransformFeedback addr
                   else nonexistentBeginTransformFeedback
    refEndTransformFeedback <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEndTransformFeedback"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEndTransformFeedback")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEndTransformFeedback addr
                   else nonexistentEndTransformFeedback
    refBindBufferRange <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindBufferRange"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindBufferRange")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindBufferRange addr
                   else nonexistentBindBufferRange
    refBindBufferBase <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindBufferBase"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindBufferBase")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindBufferBase addr
                   else nonexistentBindBufferBase
    refTransformFeedbackVaryings <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTransformFeedbackVaryings"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTransformFeedbackVaryings")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTransformFeedbackVaryings addr
                   else nonexistentTransformFeedbackVaryings
    refGetTransformFeedbackVarying <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTransformFeedbackVarying"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTransformFeedbackVarying")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTransformFeedbackVarying addr
                   else nonexistentGetTransformFeedbackVarying
    refClampColor <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClampColor"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClampColor")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClampColor addr
                   else nonexistentClampColor
    refBeginConditionalRender <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBeginConditionalRender"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBeginConditionalRender")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBeginConditionalRender addr
                   else nonexistentBeginConditionalRender
    refEndConditionalRender <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEndConditionalRender"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEndConditionalRender")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEndConditionalRender addr
                   else nonexistentEndConditionalRender
    refVertexAttribIPointer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribIPointer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribIPointer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribIPointer addr
                   else nonexistentVertexAttribIPointer
    refGetVertexAttribIiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexAttribIiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexAttribIiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexAttribIiv addr
                   else nonexistentGetVertexAttribIiv
    refGetVertexAttribIuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexAttribIuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexAttribIuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexAttribIuiv addr
                   else nonexistentGetVertexAttribIuiv
    refVertexAttribI1i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI1i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI1i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI1i addr
                   else nonexistentVertexAttribI1i
    refVertexAttribI2i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI2i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI2i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI2i addr
                   else nonexistentVertexAttribI2i
    refVertexAttribI3i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI3i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI3i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI3i addr
                   else nonexistentVertexAttribI3i
    refVertexAttribI4i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI4i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI4i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI4i addr
                   else nonexistentVertexAttribI4i
    refVertexAttribI1ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI1ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI1ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI1ui addr
                   else nonexistentVertexAttribI1ui
    refVertexAttribI2ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI2ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI2ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI2ui addr
                   else nonexistentVertexAttribI2ui
    refVertexAttribI3ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI3ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI3ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI3ui addr
                   else nonexistentVertexAttribI3ui
    refVertexAttribI4ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI4ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI4ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI4ui addr
                   else nonexistentVertexAttribI4ui
    refVertexAttribI1iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI1iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI1iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI1iv addr
                   else nonexistentVertexAttribI1iv
    refVertexAttribI2iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI2iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI2iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI2iv addr
                   else nonexistentVertexAttribI2iv
    refVertexAttribI3iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI3iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI3iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI3iv addr
                   else nonexistentVertexAttribI3iv
    refVertexAttribI4iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI4iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI4iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI4iv addr
                   else nonexistentVertexAttribI4iv
    refVertexAttribI1uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI1uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI1uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI1uiv addr
                   else nonexistentVertexAttribI1uiv
    refVertexAttribI2uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI2uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI2uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI2uiv addr
                   else nonexistentVertexAttribI2uiv
    refVertexAttribI3uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI3uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI3uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI3uiv addr
                   else nonexistentVertexAttribI3uiv
    refVertexAttribI4uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI4uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI4uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI4uiv addr
                   else nonexistentVertexAttribI4uiv
    refVertexAttribI4bv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI4bv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI4bv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI4bv addr
                   else nonexistentVertexAttribI4bv
    refVertexAttribI4sv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI4sv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI4sv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI4sv addr
                   else nonexistentVertexAttribI4sv
    refVertexAttribI4ubv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI4ubv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI4ubv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI4ubv addr
                   else nonexistentVertexAttribI4ubv
    refVertexAttribI4usv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribI4usv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribI4usv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribI4usv addr
                   else nonexistentVertexAttribI4usv
    refGetUniformuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetUniformuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetUniformuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetUniformuiv addr
                   else nonexistentGetUniformuiv
    refBindFragDataLocation <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindFragDataLocation"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindFragDataLocation")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindFragDataLocation addr
                   else nonexistentBindFragDataLocation
    refGetFragDataLocation <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetFragDataLocation"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetFragDataLocation")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetFragDataLocation addr
                   else nonexistentGetFragDataLocation
    refUniform1ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform1ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform1ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform1ui addr
                   else nonexistentUniform1ui
    refUniform2ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform2ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform2ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform2ui addr
                   else nonexistentUniform2ui
    refUniform3ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform3ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform3ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform3ui addr
                   else nonexistentUniform3ui
    refUniform4ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform4ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform4ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform4ui addr
                   else nonexistentUniform4ui
    refUniform1uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform1uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform1uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform1uiv addr
                   else nonexistentUniform1uiv
    refUniform2uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform2uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform2uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform2uiv addr
                   else nonexistentUniform2uiv
    refUniform3uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform3uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform3uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform3uiv addr
                   else nonexistentUniform3uiv
    refUniform4uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniform4uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniform4uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniform4uiv addr
                   else nonexistentUniform4uiv
    refTexParameterIiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexParameterIiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexParameterIiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexParameterIiv addr
                   else nonexistentTexParameterIiv
    refTexParameterIuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexParameterIuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexParameterIuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexParameterIuiv addr
                   else nonexistentTexParameterIuiv
    refGetTexParameterIiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTexParameterIiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTexParameterIiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTexParameterIiv addr
                   else nonexistentGetTexParameterIiv
    refGetTexParameterIuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTexParameterIuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTexParameterIuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTexParameterIuiv addr
                   else nonexistentGetTexParameterIuiv
    refClearBufferiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearBufferiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearBufferiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearBufferiv addr
                   else nonexistentClearBufferiv
    refClearBufferuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearBufferuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearBufferuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearBufferuiv addr
                   else nonexistentClearBufferuiv
    refClearBufferfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearBufferfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearBufferfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearBufferfv addr
                   else nonexistentClearBufferfv
    refClearBufferfi <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearBufferfi"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearBufferfi")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearBufferfi addr
                   else nonexistentClearBufferfi
    refGetStringi <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetStringi"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetStringi")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetStringi addr
                   else nonexistentGetStringi
    refIsRenderbuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsRenderbuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsRenderbuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsRenderbuffer addr
                   else nonexistentIsRenderbuffer
    refBindRenderbuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindRenderbuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindRenderbuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindRenderbuffer addr
                   else nonexistentBindRenderbuffer
    refDeleteRenderbuffers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteRenderbuffers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteRenderbuffers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteRenderbuffers addr
                   else nonexistentDeleteRenderbuffers
    refGenRenderbuffers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenRenderbuffers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenRenderbuffers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenRenderbuffers addr
                   else nonexistentGenRenderbuffers
    refRenderbufferStorage <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glRenderbufferStorage"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glRenderbufferStorage")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynRenderbufferStorage addr
                   else nonexistentRenderbufferStorage
    refGetRenderbufferParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetRenderbufferParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetRenderbufferParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetRenderbufferParameteriv addr
                   else nonexistentGetRenderbufferParameteriv
    refIsFramebuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsFramebuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsFramebuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsFramebuffer addr
                   else nonexistentIsFramebuffer
    refBindFramebuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindFramebuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindFramebuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindFramebuffer addr
                   else nonexistentBindFramebuffer
    refDeleteFramebuffers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteFramebuffers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteFramebuffers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteFramebuffers addr
                   else nonexistentDeleteFramebuffers
    refGenFramebuffers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenFramebuffers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenFramebuffers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenFramebuffers addr
                   else nonexistentGenFramebuffers
    refCheckFramebufferStatus <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCheckFramebufferStatus"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCheckFramebufferStatus")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCheckFramebufferStatus addr
                   else nonexistentCheckFramebufferStatus
    refFramebufferTexture1D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferTexture1D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferTexture1D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferTexture1D addr
                   else nonexistentFramebufferTexture1D
    refFramebufferTexture2D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferTexture2D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferTexture2D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferTexture2D addr
                   else nonexistentFramebufferTexture2D
    refFramebufferTexture3D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferTexture3D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferTexture3D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferTexture3D addr
                   else nonexistentFramebufferTexture3D
    refFramebufferRenderbuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferRenderbuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferRenderbuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferRenderbuffer addr
                   else nonexistentFramebufferRenderbuffer
    refGetFramebufferAttachmentParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetFramebufferAttachmentParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetFramebufferAttachmentParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetFramebufferAttachmentParameteriv addr
                   else nonexistentGetFramebufferAttachmentParameteriv
    refGenerateMipmap <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenerateMipmap"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenerateMipmap")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenerateMipmap addr
                   else nonexistentGenerateMipmap
    refBlitFramebuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBlitFramebuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBlitFramebuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBlitFramebuffer addr
                   else nonexistentBlitFramebuffer
    refRenderbufferStorageMultisample <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glRenderbufferStorageMultisample"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glRenderbufferStorageMultisample")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynRenderbufferStorageMultisample addr
                   else nonexistentRenderbufferStorageMultisample
    refFramebufferTextureLayer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferTextureLayer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferTextureLayer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferTextureLayer addr
                   else nonexistentFramebufferTextureLayer
    refMapBufferRange <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMapBufferRange"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMapBufferRange")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMapBufferRange addr
                   else nonexistentMapBufferRange
    refFlushMappedBufferRange <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFlushMappedBufferRange"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFlushMappedBufferRange")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFlushMappedBufferRange addr
                   else nonexistentFlushMappedBufferRange
    refBindVertexArray <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindVertexArray"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindVertexArray")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindVertexArray addr
                   else nonexistentBindVertexArray
    refDeleteVertexArrays <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteVertexArrays"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteVertexArrays")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteVertexArrays addr
                   else nonexistentDeleteVertexArrays
    refGenVertexArrays <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenVertexArrays"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenVertexArrays")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenVertexArrays addr
                   else nonexistentGenVertexArrays
    refIsVertexArray <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsVertexArray"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsVertexArray")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsVertexArray addr
                   else nonexistentIsVertexArray

    -- GL_VERSION_3_1

    refDrawArraysInstanced <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawArraysInstanced"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawArraysInstanced")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawArraysInstanced addr
                   else nonexistentDrawArraysInstanced
    refDrawElementsInstanced <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawElementsInstanced"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawElementsInstanced")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawElementsInstanced addr
                   else nonexistentDrawElementsInstanced
    refTexBuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexBuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexBuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexBuffer addr
                   else nonexistentTexBuffer
    refPrimitiveRestartIndex <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPrimitiveRestartIndex"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPrimitiveRestartIndex")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPrimitiveRestartIndex addr
                   else nonexistentPrimitiveRestartIndex
    refCopyBufferSubData <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyBufferSubData"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyBufferSubData")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyBufferSubData addr
                   else nonexistentCopyBufferSubData
    refGetUniformIndices <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetUniformIndices"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetUniformIndices")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetUniformIndices addr
                   else nonexistentGetUniformIndices
    refGetActiveUniformsiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetActiveUniformsiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetActiveUniformsiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetActiveUniformsiv addr
                   else nonexistentGetActiveUniformsiv
    refGetActiveUniformName <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetActiveUniformName"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetActiveUniformName")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetActiveUniformName addr
                   else nonexistentGetActiveUniformName
    refGetUniformBlockIndex <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetUniformBlockIndex"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetUniformBlockIndex")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetUniformBlockIndex addr
                   else nonexistentGetUniformBlockIndex
    refGetActiveUniformBlockiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetActiveUniformBlockiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetActiveUniformBlockiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetActiveUniformBlockiv addr
                   else nonexistentGetActiveUniformBlockiv
    refGetActiveUniformBlockName <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetActiveUniformBlockName"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetActiveUniformBlockName")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetActiveUniformBlockName addr
                   else nonexistentGetActiveUniformBlockName
    refUniformBlockBinding <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUniformBlockBinding"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUniformBlockBinding")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUniformBlockBinding addr
                   else nonexistentUniformBlockBinding

    -- GL_VERSION_3_2

    refDrawElementsBaseVertex <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawElementsBaseVertex"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawElementsBaseVertex")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawElementsBaseVertex addr
                   else nonexistentDrawElementsBaseVertex
    refDrawRangeElementsBaseVertex <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawRangeElementsBaseVertex"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawRangeElementsBaseVertex")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawRangeElementsBaseVertex addr
                   else nonexistentDrawRangeElementsBaseVertex
    refDrawElementsInstancedBaseVertex <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDrawElementsInstancedBaseVertex"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDrawElementsInstancedBaseVertex")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDrawElementsInstancedBaseVertex addr
                   else nonexistentDrawElementsInstancedBaseVertex
    refMultiDrawElementsBaseVertex <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiDrawElementsBaseVertex"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiDrawElementsBaseVertex")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiDrawElementsBaseVertex addr
                   else nonexistentMultiDrawElementsBaseVertex
    refProvokingVertex <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProvokingVertex"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProvokingVertex")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProvokingVertex addr
                   else nonexistentProvokingVertex
    refFenceSync <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFenceSync"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFenceSync")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFenceSync addr
                   else nonexistentFenceSync
    refIsSync <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsSync"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsSync")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsSync addr
                   else nonexistentIsSync
    refDeleteSync <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteSync"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteSync")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteSync addr
                   else nonexistentDeleteSync
    refClientWaitSync <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClientWaitSync"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClientWaitSync")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClientWaitSync addr
                   else nonexistentClientWaitSync
    refWaitSync <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glWaitSync"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glWaitSync")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynWaitSync addr
                   else nonexistentWaitSync
    refGetInteger64v <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetInteger64v"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetInteger64v")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetInteger64v addr
                   else nonexistentGetInteger64v
    refGetSynciv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetSynciv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetSynciv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetSynciv addr
                   else nonexistentGetSynciv
    refGetInteger64i_v <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetInteger64i_v"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetInteger64i_v")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetInteger64i_v addr
                   else nonexistentGetInteger64i_v
    refGetBufferParameteri64v <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetBufferParameteri64v"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetBufferParameteri64v")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetBufferParameteri64v addr
                   else nonexistentGetBufferParameteri64v
    refFramebufferTexture <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferTexture"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferTexture")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferTexture addr
                   else nonexistentFramebufferTexture
    refTexImage2DMultisample <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexImage2DMultisample"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexImage2DMultisample")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexImage2DMultisample addr
                   else nonexistentTexImage2DMultisample
    refTexImage3DMultisample <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexImage3DMultisample"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexImage3DMultisample")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexImage3DMultisample addr
                   else nonexistentTexImage3DMultisample
    refGetMultisamplefv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultisamplefv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultisamplefv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultisamplefv addr
                   else nonexistentGetMultisamplefv
    refSampleMaski <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glSampleMaski"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glSampleMaski")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynSampleMaski addr
                   else nonexistentSampleMaski

    -- GL_VERSION_3_3

    refBindFragDataLocationIndexed <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindFragDataLocationIndexed"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindFragDataLocationIndexed")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindFragDataLocationIndexed addr
                   else nonexistentBindFragDataLocationIndexed
    refGetFragDataIndex <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetFragDataIndex"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetFragDataIndex")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetFragDataIndex addr
                   else nonexistentGetFragDataIndex
    refGenSamplers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenSamplers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenSamplers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenSamplers addr
                   else nonexistentGenSamplers
    refDeleteSamplers <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteSamplers"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteSamplers")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteSamplers addr
                   else nonexistentDeleteSamplers
    refIsSampler <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsSampler"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsSampler")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsSampler addr
                   else nonexistentIsSampler
    refBindSampler <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindSampler"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindSampler")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindSampler addr
                   else nonexistentBindSampler
    refSamplerParameteri <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glSamplerParameteri"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glSamplerParameteri")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynSamplerParameteri addr
                   else nonexistentSamplerParameteri
    refSamplerParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glSamplerParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glSamplerParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynSamplerParameteriv addr
                   else nonexistentSamplerParameteriv
    refSamplerParameterf <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glSamplerParameterf"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glSamplerParameterf")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynSamplerParameterf addr
                   else nonexistentSamplerParameterf
    refSamplerParameterfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glSamplerParameterfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glSamplerParameterfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynSamplerParameterfv addr
                   else nonexistentSamplerParameterfv
    refSamplerParameterIiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glSamplerParameterIiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glSamplerParameterIiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynSamplerParameterIiv addr
                   else nonexistentSamplerParameterIiv
    refSamplerParameterIuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glSamplerParameterIuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glSamplerParameterIuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynSamplerParameterIuiv addr
                   else nonexistentSamplerParameterIuiv
    refGetSamplerParameteriv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetSamplerParameteriv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetSamplerParameteriv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetSamplerParameteriv addr
                   else nonexistentGetSamplerParameteriv
    refGetSamplerParameterIiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetSamplerParameterIiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetSamplerParameterIiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetSamplerParameterIiv addr
                   else nonexistentGetSamplerParameterIiv
    refGetSamplerParameterfv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetSamplerParameterfv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetSamplerParameterfv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetSamplerParameterfv addr
                   else nonexistentGetSamplerParameterfv
    refGetSamplerParameterIuiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetSamplerParameterIuiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetSamplerParameterIuiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetSamplerParameterIuiv addr
                   else nonexistentGetSamplerParameterIuiv
    refQueryCounter <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glQueryCounter"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glQueryCounter")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynQueryCounter addr
                   else nonexistentQueryCounter
    refGetQueryObjecti64v <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetQueryObjecti64v"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetQueryObjecti64v")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetQueryObjecti64v addr
                   else nonexistentGetQueryObjecti64v
    refGetQueryObjectui64v <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetQueryObjectui64v"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetQueryObjectui64v")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetQueryObjectui64v addr
                   else nonexistentGetQueryObjectui64v
    refVertexAttribDivisor <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribDivisor"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribDivisor")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribDivisor addr
                   else nonexistentVertexAttribDivisor
    refVertexAttribP1ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribP1ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribP1ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribP1ui addr
                   else nonexistentVertexAttribP1ui
    refVertexAttribP1uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribP1uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribP1uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribP1uiv addr
                   else nonexistentVertexAttribP1uiv
    refVertexAttribP2ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribP2ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribP2ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribP2ui addr
                   else nonexistentVertexAttribP2ui
    refVertexAttribP2uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribP2uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribP2uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribP2uiv addr
                   else nonexistentVertexAttribP2uiv
    refVertexAttribP3ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribP3ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribP3ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribP3ui addr
                   else nonexistentVertexAttribP3ui
    refVertexAttribP3uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribP3uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribP3uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribP3uiv addr
                   else nonexistentVertexAttribP3uiv
    refVertexAttribP4ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribP4ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribP4ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribP4ui addr
                   else nonexistentVertexAttribP4ui
    refVertexAttribP4uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexAttribP4uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexAttribP4uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexAttribP4uiv addr
                   else nonexistentVertexAttribP4uiv

    -- GL_ARB_texture_storage

    refTexStorage1D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexStorage1D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexStorage1D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexStorage1D addr
                   else nonexistentTexStorage1D
    refTexStorage2D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexStorage2D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexStorage2D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexStorage2D addr
                   else nonexistentTexStorage2D
    refTexStorage3D <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexStorage3D"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexStorage3D")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexStorage3D addr
                   else nonexistentTexStorage3D

    -- GL_KHR_debug

    refDebugMessageControl <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDebugMessageControl"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDebugMessageControl")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDebugMessageControl addr
                   else nonexistentDebugMessageControl
    refDebugMessageInsert <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDebugMessageInsert"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDebugMessageInsert")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDebugMessageInsert addr
                   else nonexistentDebugMessageInsert
    refDebugMessageCallback <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDebugMessageCallback"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDebugMessageCallback")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDebugMessageCallback addr
                   else nonexistentDebugMessageCallback
    refGetDebugMessageLog <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetDebugMessageLog"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetDebugMessageLog")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetDebugMessageLog addr
                   else nonexistentGetDebugMessageLog
    refPushDebugGroup <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPushDebugGroup"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPushDebugGroup")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPushDebugGroup addr
                   else nonexistentPushDebugGroup
    refPopDebugGroup <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPopDebugGroup"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPopDebugGroup")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPopDebugGroup addr
                   else nonexistentPopDebugGroup
    refObjectLabel <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glObjectLabel"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glObjectLabel")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynObjectLabel addr
                   else nonexistentObjectLabel
    refGetObjectLabel <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetObjectLabel"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetObjectLabel")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetObjectLabel addr
                   else nonexistentGetObjectLabel
    refObjectPtrLabel <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glObjectPtrLabel"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glObjectPtrLabel")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynObjectPtrLabel addr
                   else nonexistentObjectPtrLabel
    refGetObjectPtrLabel <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetObjectPtrLabel"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetObjectPtrLabel")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetObjectPtrLabel addr
                   else nonexistentGetObjectPtrLabel
    refGetPointerv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetPointerv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetPointerv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetPointerv addr
                   else nonexistentGetPointerv
    refDebugMessageControlKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDebugMessageControlKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDebugMessageControlKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDebugMessageControlKHR addr
                   else nonexistentDebugMessageControlKHR
    refDebugMessageInsertKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDebugMessageInsertKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDebugMessageInsertKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDebugMessageInsertKHR addr
                   else nonexistentDebugMessageInsertKHR
    refDebugMessageCallbackKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDebugMessageCallbackKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDebugMessageCallbackKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDebugMessageCallbackKHR addr
                   else nonexistentDebugMessageCallbackKHR
    refGetDebugMessageLogKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetDebugMessageLogKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetDebugMessageLogKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetDebugMessageLogKHR addr
                   else nonexistentGetDebugMessageLogKHR
    refPushDebugGroupKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPushDebugGroupKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPushDebugGroupKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPushDebugGroupKHR addr
                   else nonexistentPushDebugGroupKHR
    refPopDebugGroupKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPopDebugGroupKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPopDebugGroupKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPopDebugGroupKHR addr
                   else nonexistentPopDebugGroupKHR
    refObjectLabelKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glObjectLabelKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glObjectLabelKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynObjectLabelKHR addr
                   else nonexistentObjectLabelKHR
    refGetObjectLabelKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetObjectLabelKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetObjectLabelKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetObjectLabelKHR addr
                   else nonexistentGetObjectLabelKHR
    refObjectPtrLabelKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glObjectPtrLabelKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glObjectPtrLabelKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynObjectPtrLabelKHR addr
                   else nonexistentObjectPtrLabelKHR
    refGetObjectPtrLabelKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetObjectPtrLabelKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetObjectPtrLabelKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetObjectPtrLabelKHR addr
                   else nonexistentGetObjectPtrLabelKHR
    refGetPointervKHR <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetPointervKHR"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetPointervKHR")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetPointervKHR addr
                   else nonexistentGetPointervKHR

    -- GL_EXT_direct_state_access

    refMatrixLoadfEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixLoadfEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixLoadfEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixLoadfEXT addr
                   else nonexistentMatrixLoadfEXT
    refMatrixLoaddEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixLoaddEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixLoaddEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixLoaddEXT addr
                   else nonexistentMatrixLoaddEXT
    refMatrixMultfEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixMultfEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixMultfEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixMultfEXT addr
                   else nonexistentMatrixMultfEXT
    refMatrixMultdEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixMultdEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixMultdEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixMultdEXT addr
                   else nonexistentMatrixMultdEXT
    refMatrixLoadIdentityEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixLoadIdentityEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixLoadIdentityEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixLoadIdentityEXT addr
                   else nonexistentMatrixLoadIdentityEXT
    refMatrixRotatefEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixRotatefEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixRotatefEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixRotatefEXT addr
                   else nonexistentMatrixRotatefEXT
    refMatrixRotatedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixRotatedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixRotatedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixRotatedEXT addr
                   else nonexistentMatrixRotatedEXT
    refMatrixScalefEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixScalefEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixScalefEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixScalefEXT addr
                   else nonexistentMatrixScalefEXT
    refMatrixScaledEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixScaledEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixScaledEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixScaledEXT addr
                   else nonexistentMatrixScaledEXT
    refMatrixTranslatefEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixTranslatefEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixTranslatefEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixTranslatefEXT addr
                   else nonexistentMatrixTranslatefEXT
    refMatrixTranslatedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixTranslatedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixTranslatedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixTranslatedEXT addr
                   else nonexistentMatrixTranslatedEXT
    refMatrixFrustumEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixFrustumEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixFrustumEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixFrustumEXT addr
                   else nonexistentMatrixFrustumEXT
    refMatrixOrthoEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixOrthoEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixOrthoEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixOrthoEXT addr
                   else nonexistentMatrixOrthoEXT
    refMatrixPopEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixPopEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixPopEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixPopEXT addr
                   else nonexistentMatrixPopEXT
    refMatrixPushEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixPushEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixPushEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixPushEXT addr
                   else nonexistentMatrixPushEXT
    refClientAttribDefaultEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClientAttribDefaultEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClientAttribDefaultEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClientAttribDefaultEXT addr
                   else nonexistentClientAttribDefaultEXT
    refPushClientAttribDefaultEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glPushClientAttribDefaultEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glPushClientAttribDefaultEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynPushClientAttribDefaultEXT addr
                   else nonexistentPushClientAttribDefaultEXT
    refTextureParameterfEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureParameterfEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureParameterfEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureParameterfEXT addr
                   else nonexistentTextureParameterfEXT
    refTextureParameterfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureParameterfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureParameterfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureParameterfvEXT addr
                   else nonexistentTextureParameterfvEXT
    refTextureParameteriEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureParameteriEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureParameteriEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureParameteriEXT addr
                   else nonexistentTextureParameteriEXT
    refTextureParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureParameterivEXT addr
                   else nonexistentTextureParameterivEXT
    refTextureImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureImage1DEXT addr
                   else nonexistentTextureImage1DEXT
    refTextureImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureImage2DEXT addr
                   else nonexistentTextureImage2DEXT
    refTextureSubImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureSubImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureSubImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureSubImage1DEXT addr
                   else nonexistentTextureSubImage1DEXT
    refTextureSubImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureSubImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureSubImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureSubImage2DEXT addr
                   else nonexistentTextureSubImage2DEXT
    refCopyTextureImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTextureImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTextureImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTextureImage1DEXT addr
                   else nonexistentCopyTextureImage1DEXT
    refCopyTextureImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTextureImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTextureImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTextureImage2DEXT addr
                   else nonexistentCopyTextureImage2DEXT
    refCopyTextureSubImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTextureSubImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTextureSubImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTextureSubImage1DEXT addr
                   else nonexistentCopyTextureSubImage1DEXT
    refCopyTextureSubImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTextureSubImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTextureSubImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTextureSubImage2DEXT addr
                   else nonexistentCopyTextureSubImage2DEXT
    refGetTextureImageEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTextureImageEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTextureImageEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTextureImageEXT addr
                   else nonexistentGetTextureImageEXT
    refGetTextureParameterfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTextureParameterfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTextureParameterfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTextureParameterfvEXT addr
                   else nonexistentGetTextureParameterfvEXT
    refGetTextureParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTextureParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTextureParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTextureParameterivEXT addr
                   else nonexistentGetTextureParameterivEXT
    refGetTextureLevelParameterfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTextureLevelParameterfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTextureLevelParameterfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTextureLevelParameterfvEXT addr
                   else nonexistentGetTextureLevelParameterfvEXT
    refGetTextureLevelParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTextureLevelParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTextureLevelParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTextureLevelParameterivEXT addr
                   else nonexistentGetTextureLevelParameterivEXT
    refTextureImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureImage3DEXT addr
                   else nonexistentTextureImage3DEXT
    refTextureSubImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureSubImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureSubImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureSubImage3DEXT addr
                   else nonexistentTextureSubImage3DEXT
    refCopyTextureSubImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyTextureSubImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyTextureSubImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyTextureSubImage3DEXT addr
                   else nonexistentCopyTextureSubImage3DEXT
    refBindMultiTextureEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindMultiTextureEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindMultiTextureEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindMultiTextureEXT addr
                   else nonexistentBindMultiTextureEXT
    refMultiTexCoordPointerEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexCoordPointerEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexCoordPointerEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexCoordPointerEXT addr
                   else nonexistentMultiTexCoordPointerEXT
    refMultiTexEnvfEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexEnvfEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexEnvfEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexEnvfEXT addr
                   else nonexistentMultiTexEnvfEXT
    refMultiTexEnvfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexEnvfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexEnvfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexEnvfvEXT addr
                   else nonexistentMultiTexEnvfvEXT
    refMultiTexEnviEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexEnviEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexEnviEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexEnviEXT addr
                   else nonexistentMultiTexEnviEXT
    refMultiTexEnvivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexEnvivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexEnvivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexEnvivEXT addr
                   else nonexistentMultiTexEnvivEXT
    refMultiTexGendEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexGendEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexGendEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexGendEXT addr
                   else nonexistentMultiTexGendEXT
    refMultiTexGendvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexGendvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexGendvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexGendvEXT addr
                   else nonexistentMultiTexGendvEXT
    refMultiTexGenfEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexGenfEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexGenfEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexGenfEXT addr
                   else nonexistentMultiTexGenfEXT
    refMultiTexGenfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexGenfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexGenfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexGenfvEXT addr
                   else nonexistentMultiTexGenfvEXT
    refMultiTexGeniEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexGeniEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexGeniEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexGeniEXT addr
                   else nonexistentMultiTexGeniEXT
    refMultiTexGenivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexGenivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexGenivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexGenivEXT addr
                   else nonexistentMultiTexGenivEXT
    refGetMultiTexEnvfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexEnvfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexEnvfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexEnvfvEXT addr
                   else nonexistentGetMultiTexEnvfvEXT
    refGetMultiTexEnvivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexEnvivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexEnvivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexEnvivEXT addr
                   else nonexistentGetMultiTexEnvivEXT
    refGetMultiTexGendvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexGendvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexGendvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexGendvEXT addr
                   else nonexistentGetMultiTexGendvEXT
    refGetMultiTexGenfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexGenfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexGenfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexGenfvEXT addr
                   else nonexistentGetMultiTexGenfvEXT
    refGetMultiTexGenivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexGenivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexGenivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexGenivEXT addr
                   else nonexistentGetMultiTexGenivEXT
    refMultiTexParameteriEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexParameteriEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexParameteriEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexParameteriEXT addr
                   else nonexistentMultiTexParameteriEXT
    refMultiTexParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexParameterivEXT addr
                   else nonexistentMultiTexParameterivEXT
    refMultiTexParameterfEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexParameterfEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexParameterfEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexParameterfEXT addr
                   else nonexistentMultiTexParameterfEXT
    refMultiTexParameterfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexParameterfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexParameterfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexParameterfvEXT addr
                   else nonexistentMultiTexParameterfvEXT
    refMultiTexImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexImage1DEXT addr
                   else nonexistentMultiTexImage1DEXT
    refMultiTexImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexImage2DEXT addr
                   else nonexistentMultiTexImage2DEXT
    refMultiTexSubImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexSubImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexSubImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexSubImage1DEXT addr
                   else nonexistentMultiTexSubImage1DEXT
    refMultiTexSubImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexSubImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexSubImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexSubImage2DEXT addr
                   else nonexistentMultiTexSubImage2DEXT
    refCopyMultiTexImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyMultiTexImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyMultiTexImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyMultiTexImage1DEXT addr
                   else nonexistentCopyMultiTexImage1DEXT
    refCopyMultiTexImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyMultiTexImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyMultiTexImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyMultiTexImage2DEXT addr
                   else nonexistentCopyMultiTexImage2DEXT
    refCopyMultiTexSubImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyMultiTexSubImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyMultiTexSubImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyMultiTexSubImage1DEXT addr
                   else nonexistentCopyMultiTexSubImage1DEXT
    refCopyMultiTexSubImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyMultiTexSubImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyMultiTexSubImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyMultiTexSubImage2DEXT addr
                   else nonexistentCopyMultiTexSubImage2DEXT
    refGetMultiTexImageEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexImageEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexImageEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexImageEXT addr
                   else nonexistentGetMultiTexImageEXT
    refGetMultiTexParameterfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexParameterfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexParameterfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexParameterfvEXT addr
                   else nonexistentGetMultiTexParameterfvEXT
    refGetMultiTexParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexParameterivEXT addr
                   else nonexistentGetMultiTexParameterivEXT
    refGetMultiTexLevelParameterfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexLevelParameterfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexLevelParameterfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexLevelParameterfvEXT addr
                   else nonexistentGetMultiTexLevelParameterfvEXT
    refGetMultiTexLevelParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexLevelParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexLevelParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexLevelParameterivEXT addr
                   else nonexistentGetMultiTexLevelParameterivEXT
    refMultiTexImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexImage3DEXT addr
                   else nonexistentMultiTexImage3DEXT
    refMultiTexSubImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexSubImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexSubImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexSubImage3DEXT addr
                   else nonexistentMultiTexSubImage3DEXT
    refCopyMultiTexSubImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCopyMultiTexSubImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCopyMultiTexSubImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCopyMultiTexSubImage3DEXT addr
                   else nonexistentCopyMultiTexSubImage3DEXT
    refEnableClientStateIndexedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEnableClientStateIndexedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEnableClientStateIndexedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEnableClientStateIndexedEXT addr
                   else nonexistentEnableClientStateIndexedEXT
    refDisableClientStateIndexedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDisableClientStateIndexedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDisableClientStateIndexedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDisableClientStateIndexedEXT addr
                   else nonexistentDisableClientStateIndexedEXT
    refGetFloatIndexedvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetFloatIndexedvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetFloatIndexedvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetFloatIndexedvEXT addr
                   else nonexistentGetFloatIndexedvEXT
    refGetDoubleIndexedvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetDoubleIndexedvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetDoubleIndexedvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetDoubleIndexedvEXT addr
                   else nonexistentGetDoubleIndexedvEXT
    refGetPointerIndexedvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetPointerIndexedvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetPointerIndexedvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetPointerIndexedvEXT addr
                   else nonexistentGetPointerIndexedvEXT
    refEnableIndexedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEnableIndexedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEnableIndexedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEnableIndexedEXT addr
                   else nonexistentEnableIndexedEXT
    refDisableIndexedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDisableIndexedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDisableIndexedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDisableIndexedEXT addr
                   else nonexistentDisableIndexedEXT
    refIsEnabledIndexedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsEnabledIndexedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsEnabledIndexedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsEnabledIndexedEXT addr
                   else nonexistentIsEnabledIndexedEXT
    refGetIntegerIndexedvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetIntegerIndexedvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetIntegerIndexedvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetIntegerIndexedvEXT addr
                   else nonexistentGetIntegerIndexedvEXT
    refGetBooleanIndexedvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetBooleanIndexedvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetBooleanIndexedvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetBooleanIndexedvEXT addr
                   else nonexistentGetBooleanIndexedvEXT
    refCompressedTextureImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTextureImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTextureImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTextureImage3DEXT addr
                   else nonexistentCompressedTextureImage3DEXT
    refCompressedTextureImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTextureImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTextureImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTextureImage2DEXT addr
                   else nonexistentCompressedTextureImage2DEXT
    refCompressedTextureImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTextureImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTextureImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTextureImage1DEXT addr
                   else nonexistentCompressedTextureImage1DEXT
    refCompressedTextureSubImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTextureSubImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTextureSubImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTextureSubImage3DEXT addr
                   else nonexistentCompressedTextureSubImage3DEXT
    refCompressedTextureSubImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTextureSubImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTextureSubImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTextureSubImage2DEXT addr
                   else nonexistentCompressedTextureSubImage2DEXT
    refCompressedTextureSubImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedTextureSubImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedTextureSubImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedTextureSubImage1DEXT addr
                   else nonexistentCompressedTextureSubImage1DEXT
    refGetCompressedTextureImageEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetCompressedTextureImageEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetCompressedTextureImageEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetCompressedTextureImageEXT addr
                   else nonexistentGetCompressedTextureImageEXT
    refCompressedMultiTexImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedMultiTexImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedMultiTexImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedMultiTexImage3DEXT addr
                   else nonexistentCompressedMultiTexImage3DEXT
    refCompressedMultiTexImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedMultiTexImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedMultiTexImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedMultiTexImage2DEXT addr
                   else nonexistentCompressedMultiTexImage2DEXT
    refCompressedMultiTexImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedMultiTexImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedMultiTexImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedMultiTexImage1DEXT addr
                   else nonexistentCompressedMultiTexImage1DEXT
    refCompressedMultiTexSubImage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedMultiTexSubImage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedMultiTexSubImage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedMultiTexSubImage3DEXT addr
                   else nonexistentCompressedMultiTexSubImage3DEXT
    refCompressedMultiTexSubImage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedMultiTexSubImage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedMultiTexSubImage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedMultiTexSubImage2DEXT addr
                   else nonexistentCompressedMultiTexSubImage2DEXT
    refCompressedMultiTexSubImage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCompressedMultiTexSubImage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCompressedMultiTexSubImage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCompressedMultiTexSubImage1DEXT addr
                   else nonexistentCompressedMultiTexSubImage1DEXT
    refGetCompressedMultiTexImageEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetCompressedMultiTexImageEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetCompressedMultiTexImageEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetCompressedMultiTexImageEXT addr
                   else nonexistentGetCompressedMultiTexImageEXT
    refMatrixLoadTransposefEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixLoadTransposefEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixLoadTransposefEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixLoadTransposefEXT addr
                   else nonexistentMatrixLoadTransposefEXT
    refMatrixLoadTransposedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixLoadTransposedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixLoadTransposedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixLoadTransposedEXT addr
                   else nonexistentMatrixLoadTransposedEXT
    refMatrixMultTransposefEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixMultTransposefEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixMultTransposefEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixMultTransposefEXT addr
                   else nonexistentMatrixMultTransposefEXT
    refMatrixMultTransposedEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMatrixMultTransposedEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMatrixMultTransposedEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMatrixMultTransposedEXT addr
                   else nonexistentMatrixMultTransposedEXT
    refNamedBufferDataEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedBufferDataEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedBufferDataEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedBufferDataEXT addr
                   else nonexistentNamedBufferDataEXT
    refNamedBufferSubDataEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedBufferSubDataEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedBufferSubDataEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedBufferSubDataEXT addr
                   else nonexistentNamedBufferSubDataEXT
    refMapNamedBufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMapNamedBufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMapNamedBufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMapNamedBufferEXT addr
                   else nonexistentMapNamedBufferEXT
    refUnmapNamedBufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUnmapNamedBufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUnmapNamedBufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUnmapNamedBufferEXT addr
                   else nonexistentUnmapNamedBufferEXT
    refGetNamedBufferParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedBufferParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedBufferParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedBufferParameterivEXT addr
                   else nonexistentGetNamedBufferParameterivEXT
    refGetNamedBufferPointervEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedBufferPointervEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedBufferPointervEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedBufferPointervEXT addr
                   else nonexistentGetNamedBufferPointervEXT
    refGetNamedBufferSubDataEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedBufferSubDataEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedBufferSubDataEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedBufferSubDataEXT addr
                   else nonexistentGetNamedBufferSubDataEXT
    refProgramUniform1fEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1fEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1fEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1fEXT addr
                   else nonexistentProgramUniform1fEXT
    refProgramUniform2fEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2fEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2fEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2fEXT addr
                   else nonexistentProgramUniform2fEXT
    refProgramUniform3fEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3fEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3fEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3fEXT addr
                   else nonexistentProgramUniform3fEXT
    refProgramUniform4fEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4fEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4fEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4fEXT addr
                   else nonexistentProgramUniform4fEXT
    refProgramUniform1iEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1iEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1iEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1iEXT addr
                   else nonexistentProgramUniform1iEXT
    refProgramUniform2iEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2iEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2iEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2iEXT addr
                   else nonexistentProgramUniform2iEXT
    refProgramUniform3iEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3iEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3iEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3iEXT addr
                   else nonexistentProgramUniform3iEXT
    refProgramUniform4iEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4iEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4iEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4iEXT addr
                   else nonexistentProgramUniform4iEXT
    refProgramUniform1fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1fvEXT addr
                   else nonexistentProgramUniform1fvEXT
    refProgramUniform2fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2fvEXT addr
                   else nonexistentProgramUniform2fvEXT
    refProgramUniform3fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3fvEXT addr
                   else nonexistentProgramUniform3fvEXT
    refProgramUniform4fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4fvEXT addr
                   else nonexistentProgramUniform4fvEXT
    refProgramUniform1ivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1ivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1ivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1ivEXT addr
                   else nonexistentProgramUniform1ivEXT
    refProgramUniform2ivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2ivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2ivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2ivEXT addr
                   else nonexistentProgramUniform2ivEXT
    refProgramUniform3ivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3ivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3ivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3ivEXT addr
                   else nonexistentProgramUniform3ivEXT
    refProgramUniform4ivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4ivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4ivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4ivEXT addr
                   else nonexistentProgramUniform4ivEXT
    refProgramUniformMatrix2fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2fvEXT addr
                   else nonexistentProgramUniformMatrix2fvEXT
    refProgramUniformMatrix3fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3fvEXT addr
                   else nonexistentProgramUniformMatrix3fvEXT
    refProgramUniformMatrix4fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4fvEXT addr
                   else nonexistentProgramUniformMatrix4fvEXT
    refProgramUniformMatrix2x3fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2x3fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2x3fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2x3fvEXT addr
                   else nonexistentProgramUniformMatrix2x3fvEXT
    refProgramUniformMatrix3x2fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3x2fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3x2fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3x2fvEXT addr
                   else nonexistentProgramUniformMatrix3x2fvEXT
    refProgramUniformMatrix2x4fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2x4fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2x4fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2x4fvEXT addr
                   else nonexistentProgramUniformMatrix2x4fvEXT
    refProgramUniformMatrix4x2fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4x2fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4x2fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4x2fvEXT addr
                   else nonexistentProgramUniformMatrix4x2fvEXT
    refProgramUniformMatrix3x4fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3x4fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3x4fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3x4fvEXT addr
                   else nonexistentProgramUniformMatrix3x4fvEXT
    refProgramUniformMatrix4x3fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4x3fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4x3fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4x3fvEXT addr
                   else nonexistentProgramUniformMatrix4x3fvEXT
    refTextureBufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureBufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureBufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureBufferEXT addr
                   else nonexistentTextureBufferEXT
    refMultiTexBufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexBufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexBufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexBufferEXT addr
                   else nonexistentMultiTexBufferEXT
    refTextureParameterIivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureParameterIivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureParameterIivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureParameterIivEXT addr
                   else nonexistentTextureParameterIivEXT
    refTextureParameterIuivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureParameterIuivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureParameterIuivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureParameterIuivEXT addr
                   else nonexistentTextureParameterIuivEXT
    refGetTextureParameterIivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTextureParameterIivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTextureParameterIivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTextureParameterIivEXT addr
                   else nonexistentGetTextureParameterIivEXT
    refGetTextureParameterIuivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetTextureParameterIuivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetTextureParameterIuivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetTextureParameterIuivEXT addr
                   else nonexistentGetTextureParameterIuivEXT
    refMultiTexParameterIivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexParameterIivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexParameterIivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexParameterIivEXT addr
                   else nonexistentMultiTexParameterIivEXT
    refMultiTexParameterIuivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexParameterIuivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexParameterIuivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexParameterIuivEXT addr
                   else nonexistentMultiTexParameterIuivEXT
    refGetMultiTexParameterIivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexParameterIivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexParameterIivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexParameterIivEXT addr
                   else nonexistentGetMultiTexParameterIivEXT
    refGetMultiTexParameterIuivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetMultiTexParameterIuivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetMultiTexParameterIuivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetMultiTexParameterIuivEXT addr
                   else nonexistentGetMultiTexParameterIuivEXT
    refProgramUniform1uiEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1uiEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1uiEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1uiEXT addr
                   else nonexistentProgramUniform1uiEXT
    refProgramUniform2uiEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2uiEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2uiEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2uiEXT addr
                   else nonexistentProgramUniform2uiEXT
    refProgramUniform3uiEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3uiEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3uiEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3uiEXT addr
                   else nonexistentProgramUniform3uiEXT
    refProgramUniform4uiEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4uiEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4uiEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4uiEXT addr
                   else nonexistentProgramUniform4uiEXT
    refProgramUniform1uivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1uivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1uivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1uivEXT addr
                   else nonexistentProgramUniform1uivEXT
    refProgramUniform2uivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2uivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2uivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2uivEXT addr
                   else nonexistentProgramUniform2uivEXT
    refProgramUniform3uivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3uivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3uivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3uivEXT addr
                   else nonexistentProgramUniform3uivEXT
    refProgramUniform4uivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4uivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4uivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4uivEXT addr
                   else nonexistentProgramUniform4uivEXT
    refNamedProgramLocalParameters4fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameters4fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameters4fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameters4fvEXT addr
                   else nonexistentNamedProgramLocalParameters4fvEXT
    refNamedProgramLocalParameterI4iEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameterI4iEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameterI4iEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameterI4iEXT addr
                   else nonexistentNamedProgramLocalParameterI4iEXT
    refNamedProgramLocalParameterI4ivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameterI4ivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameterI4ivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameterI4ivEXT addr
                   else nonexistentNamedProgramLocalParameterI4ivEXT
    refNamedProgramLocalParametersI4ivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParametersI4ivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParametersI4ivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParametersI4ivEXT addr
                   else nonexistentNamedProgramLocalParametersI4ivEXT
    refNamedProgramLocalParameterI4uiEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameterI4uiEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameterI4uiEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameterI4uiEXT addr
                   else nonexistentNamedProgramLocalParameterI4uiEXT
    refNamedProgramLocalParameterI4uivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameterI4uivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameterI4uivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameterI4uivEXT addr
                   else nonexistentNamedProgramLocalParameterI4uivEXT
    refNamedProgramLocalParametersI4uivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParametersI4uivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParametersI4uivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParametersI4uivEXT addr
                   else nonexistentNamedProgramLocalParametersI4uivEXT
    refGetNamedProgramLocalParameterIivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedProgramLocalParameterIivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedProgramLocalParameterIivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedProgramLocalParameterIivEXT addr
                   else nonexistentGetNamedProgramLocalParameterIivEXT
    refGetNamedProgramLocalParameterIuivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedProgramLocalParameterIuivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedProgramLocalParameterIuivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedProgramLocalParameterIuivEXT addr
                   else nonexistentGetNamedProgramLocalParameterIuivEXT
    refEnableClientStateiEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEnableClientStateiEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEnableClientStateiEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEnableClientStateiEXT addr
                   else nonexistentEnableClientStateiEXT
    refDisableClientStateiEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDisableClientStateiEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDisableClientStateiEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDisableClientStateiEXT addr
                   else nonexistentDisableClientStateiEXT
    refGetFloati_vEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetFloati_vEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetFloati_vEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetFloati_vEXT addr
                   else nonexistentGetFloati_vEXT
    refGetDoublei_vEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetDoublei_vEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetDoublei_vEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetDoublei_vEXT addr
                   else nonexistentGetDoublei_vEXT
    refGetPointeri_vEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetPointeri_vEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetPointeri_vEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetPointeri_vEXT addr
                   else nonexistentGetPointeri_vEXT
    refNamedProgramStringEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramStringEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramStringEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramStringEXT addr
                   else nonexistentNamedProgramStringEXT
    refNamedProgramLocalParameter4dEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameter4dEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameter4dEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameter4dEXT addr
                   else nonexistentNamedProgramLocalParameter4dEXT
    refNamedProgramLocalParameter4dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameter4dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameter4dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameter4dvEXT addr
                   else nonexistentNamedProgramLocalParameter4dvEXT
    refNamedProgramLocalParameter4fEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameter4fEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameter4fEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameter4fEXT addr
                   else nonexistentNamedProgramLocalParameter4fEXT
    refNamedProgramLocalParameter4fvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedProgramLocalParameter4fvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedProgramLocalParameter4fvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedProgramLocalParameter4fvEXT addr
                   else nonexistentNamedProgramLocalParameter4fvEXT
    refGetNamedProgramLocalParameterdvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedProgramLocalParameterdvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedProgramLocalParameterdvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedProgramLocalParameterdvEXT addr
                   else nonexistentGetNamedProgramLocalParameterdvEXT
    refGetNamedProgramLocalParameterfvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedProgramLocalParameterfvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedProgramLocalParameterfvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedProgramLocalParameterfvEXT addr
                   else nonexistentGetNamedProgramLocalParameterfvEXT
    refGetNamedProgramivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedProgramivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedProgramivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedProgramivEXT addr
                   else nonexistentGetNamedProgramivEXT
    refGetNamedProgramStringEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedProgramStringEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedProgramStringEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedProgramStringEXT addr
                   else nonexistentGetNamedProgramStringEXT
    refNamedRenderbufferStorageEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedRenderbufferStorageEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedRenderbufferStorageEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedRenderbufferStorageEXT addr
                   else nonexistentNamedRenderbufferStorageEXT
    refGetNamedRenderbufferParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedRenderbufferParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedRenderbufferParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedRenderbufferParameterivEXT addr
                   else nonexistentGetNamedRenderbufferParameterivEXT
    refNamedRenderbufferStorageMultisampleEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedRenderbufferStorageMultisampleEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedRenderbufferStorageMultisampleEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedRenderbufferStorageMultisampleEXT addr
                   else nonexistentNamedRenderbufferStorageMultisampleEXT
    refNamedRenderbufferStorageMultisampleCoverageEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedRenderbufferStorageMultisampleCoverageEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedRenderbufferStorageMultisampleCoverageEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedRenderbufferStorageMultisampleCoverageEXT addr
                   else nonexistentNamedRenderbufferStorageMultisampleCoverageEXT
    refCheckNamedFramebufferStatusEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCheckNamedFramebufferStatusEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCheckNamedFramebufferStatusEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCheckNamedFramebufferStatusEXT addr
                   else nonexistentCheckNamedFramebufferStatusEXT
    refNamedFramebufferTexture1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedFramebufferTexture1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedFramebufferTexture1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedFramebufferTexture1DEXT addr
                   else nonexistentNamedFramebufferTexture1DEXT
    refNamedFramebufferTexture2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedFramebufferTexture2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedFramebufferTexture2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedFramebufferTexture2DEXT addr
                   else nonexistentNamedFramebufferTexture2DEXT
    refNamedFramebufferTexture3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedFramebufferTexture3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedFramebufferTexture3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedFramebufferTexture3DEXT addr
                   else nonexistentNamedFramebufferTexture3DEXT
    refNamedFramebufferRenderbufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedFramebufferRenderbufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedFramebufferRenderbufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedFramebufferRenderbufferEXT addr
                   else nonexistentNamedFramebufferRenderbufferEXT
    refGetNamedFramebufferAttachmentParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedFramebufferAttachmentParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedFramebufferAttachmentParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedFramebufferAttachmentParameterivEXT addr
                   else nonexistentGetNamedFramebufferAttachmentParameterivEXT
    refGenerateTextureMipmapEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenerateTextureMipmapEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenerateTextureMipmapEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenerateTextureMipmapEXT addr
                   else nonexistentGenerateTextureMipmapEXT
    refGenerateMultiTexMipmapEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenerateMultiTexMipmapEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenerateMultiTexMipmapEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenerateMultiTexMipmapEXT addr
                   else nonexistentGenerateMultiTexMipmapEXT
    refFramebufferDrawBufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferDrawBufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferDrawBufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferDrawBufferEXT addr
                   else nonexistentFramebufferDrawBufferEXT
    refFramebufferDrawBuffersEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferDrawBuffersEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferDrawBuffersEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferDrawBuffersEXT addr
                   else nonexistentFramebufferDrawBuffersEXT
    refFramebufferReadBufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFramebufferReadBufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFramebufferReadBufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFramebufferReadBufferEXT addr
                   else nonexistentFramebufferReadBufferEXT
    refGetFramebufferParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetFramebufferParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetFramebufferParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetFramebufferParameterivEXT addr
                   else nonexistentGetFramebufferParameterivEXT
    refNamedCopyBufferSubDataEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedCopyBufferSubDataEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedCopyBufferSubDataEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedCopyBufferSubDataEXT addr
                   else nonexistentNamedCopyBufferSubDataEXT
    refNamedFramebufferTextureEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedFramebufferTextureEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedFramebufferTextureEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedFramebufferTextureEXT addr
                   else nonexistentNamedFramebufferTextureEXT
    refNamedFramebufferTextureLayerEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedFramebufferTextureLayerEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedFramebufferTextureLayerEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedFramebufferTextureLayerEXT addr
                   else nonexistentNamedFramebufferTextureLayerEXT
    refNamedFramebufferTextureFaceEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedFramebufferTextureFaceEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedFramebufferTextureFaceEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedFramebufferTextureFaceEXT addr
                   else nonexistentNamedFramebufferTextureFaceEXT
    refTextureRenderbufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureRenderbufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureRenderbufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureRenderbufferEXT addr
                   else nonexistentTextureRenderbufferEXT
    refMultiTexRenderbufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMultiTexRenderbufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMultiTexRenderbufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMultiTexRenderbufferEXT addr
                   else nonexistentMultiTexRenderbufferEXT
    refVertexArrayVertexOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexOffsetEXT addr
                   else nonexistentVertexArrayVertexOffsetEXT
    refVertexArrayColorOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayColorOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayColorOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayColorOffsetEXT addr
                   else nonexistentVertexArrayColorOffsetEXT
    refVertexArrayEdgeFlagOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayEdgeFlagOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayEdgeFlagOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayEdgeFlagOffsetEXT addr
                   else nonexistentVertexArrayEdgeFlagOffsetEXT
    refVertexArrayIndexOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayIndexOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayIndexOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayIndexOffsetEXT addr
                   else nonexistentVertexArrayIndexOffsetEXT
    refVertexArrayNormalOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayNormalOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayNormalOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayNormalOffsetEXT addr
                   else nonexistentVertexArrayNormalOffsetEXT
    refVertexArrayTexCoordOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayTexCoordOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayTexCoordOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayTexCoordOffsetEXT addr
                   else nonexistentVertexArrayTexCoordOffsetEXT
    refVertexArrayMultiTexCoordOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayMultiTexCoordOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayMultiTexCoordOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayMultiTexCoordOffsetEXT addr
                   else nonexistentVertexArrayMultiTexCoordOffsetEXT
    refVertexArrayFogCoordOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayFogCoordOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayFogCoordOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayFogCoordOffsetEXT addr
                   else nonexistentVertexArrayFogCoordOffsetEXT
    refVertexArraySecondaryColorOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArraySecondaryColorOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArraySecondaryColorOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArraySecondaryColorOffsetEXT addr
                   else nonexistentVertexArraySecondaryColorOffsetEXT
    refVertexArrayVertexAttribOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexAttribOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexAttribOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexAttribOffsetEXT addr
                   else nonexistentVertexArrayVertexAttribOffsetEXT
    refVertexArrayVertexAttribIOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexAttribIOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexAttribIOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexAttribIOffsetEXT addr
                   else nonexistentVertexArrayVertexAttribIOffsetEXT
    refEnableVertexArrayEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEnableVertexArrayEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEnableVertexArrayEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEnableVertexArrayEXT addr
                   else nonexistentEnableVertexArrayEXT
    refDisableVertexArrayEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDisableVertexArrayEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDisableVertexArrayEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDisableVertexArrayEXT addr
                   else nonexistentDisableVertexArrayEXT
    refEnableVertexArrayAttribEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glEnableVertexArrayAttribEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glEnableVertexArrayAttribEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynEnableVertexArrayAttribEXT addr
                   else nonexistentEnableVertexArrayAttribEXT
    refDisableVertexArrayAttribEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDisableVertexArrayAttribEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDisableVertexArrayAttribEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDisableVertexArrayAttribEXT addr
                   else nonexistentDisableVertexArrayAttribEXT
    refGetVertexArrayIntegervEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexArrayIntegervEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexArrayIntegervEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexArrayIntegervEXT addr
                   else nonexistentGetVertexArrayIntegervEXT
    refGetVertexArrayPointervEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexArrayPointervEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexArrayPointervEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexArrayPointervEXT addr
                   else nonexistentGetVertexArrayPointervEXT
    refGetVertexArrayIntegeri_vEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexArrayIntegeri_vEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexArrayIntegeri_vEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexArrayIntegeri_vEXT addr
                   else nonexistentGetVertexArrayIntegeri_vEXT
    refGetVertexArrayPointeri_vEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetVertexArrayPointeri_vEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetVertexArrayPointeri_vEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetVertexArrayPointeri_vEXT addr
                   else nonexistentGetVertexArrayPointeri_vEXT
    refMapNamedBufferRangeEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glMapNamedBufferRangeEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glMapNamedBufferRangeEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynMapNamedBufferRangeEXT addr
                   else nonexistentMapNamedBufferRangeEXT
    refFlushMappedNamedBufferRangeEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glFlushMappedNamedBufferRangeEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glFlushMappedNamedBufferRangeEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynFlushMappedNamedBufferRangeEXT addr
                   else nonexistentFlushMappedNamedBufferRangeEXT
    refNamedBufferStorageEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedBufferStorageEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedBufferStorageEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedBufferStorageEXT addr
                   else nonexistentNamedBufferStorageEXT
    refClearNamedBufferDataEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearNamedBufferDataEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearNamedBufferDataEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearNamedBufferDataEXT addr
                   else nonexistentClearNamedBufferDataEXT
    refClearNamedBufferSubDataEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glClearNamedBufferSubDataEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glClearNamedBufferSubDataEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynClearNamedBufferSubDataEXT addr
                   else nonexistentClearNamedBufferSubDataEXT
    refNamedFramebufferParameteriEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glNamedFramebufferParameteriEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glNamedFramebufferParameteriEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynNamedFramebufferParameteriEXT addr
                   else nonexistentNamedFramebufferParameteriEXT
    refGetNamedFramebufferParameterivEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetNamedFramebufferParameterivEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetNamedFramebufferParameterivEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetNamedFramebufferParameterivEXT addr
                   else nonexistentGetNamedFramebufferParameterivEXT
    refProgramUniform1dEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1dEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1dEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1dEXT addr
                   else nonexistentProgramUniform1dEXT
    refProgramUniform2dEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2dEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2dEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2dEXT addr
                   else nonexistentProgramUniform2dEXT
    refProgramUniform3dEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3dEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3dEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3dEXT addr
                   else nonexistentProgramUniform3dEXT
    refProgramUniform4dEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4dEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4dEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4dEXT addr
                   else nonexistentProgramUniform4dEXT
    refProgramUniform1dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1dvEXT addr
                   else nonexistentProgramUniform1dvEXT
    refProgramUniform2dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2dvEXT addr
                   else nonexistentProgramUniform2dvEXT
    refProgramUniform3dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3dvEXT addr
                   else nonexistentProgramUniform3dvEXT
    refProgramUniform4dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4dvEXT addr
                   else nonexistentProgramUniform4dvEXT
    refProgramUniformMatrix2dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2dvEXT addr
                   else nonexistentProgramUniformMatrix2dvEXT
    refProgramUniformMatrix3dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3dvEXT addr
                   else nonexistentProgramUniformMatrix3dvEXT
    refProgramUniformMatrix4dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4dvEXT addr
                   else nonexistentProgramUniformMatrix4dvEXT
    refProgramUniformMatrix2x3dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2x3dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2x3dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2x3dvEXT addr
                   else nonexistentProgramUniformMatrix2x3dvEXT
    refProgramUniformMatrix2x4dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2x4dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2x4dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2x4dvEXT addr
                   else nonexistentProgramUniformMatrix2x4dvEXT
    refProgramUniformMatrix3x2dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3x2dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3x2dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3x2dvEXT addr
                   else nonexistentProgramUniformMatrix3x2dvEXT
    refProgramUniformMatrix3x4dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3x4dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3x4dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3x4dvEXT addr
                   else nonexistentProgramUniformMatrix3x4dvEXT
    refProgramUniformMatrix4x2dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4x2dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4x2dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4x2dvEXT addr
                   else nonexistentProgramUniformMatrix4x2dvEXT
    refProgramUniformMatrix4x3dvEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4x3dvEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4x3dvEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4x3dvEXT addr
                   else nonexistentProgramUniformMatrix4x3dvEXT
    refTextureBufferRangeEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureBufferRangeEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureBufferRangeEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureBufferRangeEXT addr
                   else nonexistentTextureBufferRangeEXT
    refTextureStorage1DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureStorage1DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureStorage1DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureStorage1DEXT addr
                   else nonexistentTextureStorage1DEXT
    refTextureStorage2DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureStorage2DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureStorage2DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureStorage2DEXT addr
                   else nonexistentTextureStorage2DEXT
    refTextureStorage3DEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureStorage3DEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureStorage3DEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureStorage3DEXT addr
                   else nonexistentTextureStorage3DEXT
    refTextureStorage2DMultisampleEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureStorage2DMultisampleEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureStorage2DMultisampleEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureStorage2DMultisampleEXT addr
                   else nonexistentTextureStorage2DMultisampleEXT
    refTextureStorage3DMultisampleEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTextureStorage3DMultisampleEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTextureStorage3DMultisampleEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTextureStorage3DMultisampleEXT addr
                   else nonexistentTextureStorage3DMultisampleEXT
    refVertexArrayBindVertexBufferEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayBindVertexBufferEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayBindVertexBufferEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayBindVertexBufferEXT addr
                   else nonexistentVertexArrayBindVertexBufferEXT
    refVertexArrayVertexAttribFormatEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexAttribFormatEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexAttribFormatEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexAttribFormatEXT addr
                   else nonexistentVertexArrayVertexAttribFormatEXT
    refVertexArrayVertexAttribIFormatEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexAttribIFormatEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexAttribIFormatEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexAttribIFormatEXT addr
                   else nonexistentVertexArrayVertexAttribIFormatEXT
    refVertexArrayVertexAttribLFormatEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexAttribLFormatEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexAttribLFormatEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexAttribLFormatEXT addr
                   else nonexistentVertexArrayVertexAttribLFormatEXT
    refVertexArrayVertexAttribBindingEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexAttribBindingEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexAttribBindingEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexAttribBindingEXT addr
                   else nonexistentVertexArrayVertexAttribBindingEXT
    refVertexArrayVertexBindingDivisorEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexBindingDivisorEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexBindingDivisorEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexBindingDivisorEXT addr
                   else nonexistentVertexArrayVertexBindingDivisorEXT
    refVertexArrayVertexAttribLOffsetEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexAttribLOffsetEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexAttribLOffsetEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexAttribLOffsetEXT addr
                   else nonexistentVertexArrayVertexAttribLOffsetEXT
    refTexturePageCommitmentEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glTexturePageCommitmentEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glTexturePageCommitmentEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynTexturePageCommitmentEXT addr
                   else nonexistentTexturePageCommitmentEXT
    refVertexArrayVertexAttribDivisorEXT <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glVertexArrayVertexAttribDivisorEXT"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glVertexArrayVertexAttribDivisorEXT")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynVertexArrayVertexAttribDivisorEXT addr
                   else nonexistentVertexArrayVertexAttribDivisorEXT

    -- GL_ARB_buffer_storage

    refBufferStorage <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBufferStorage"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBufferStorage")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBufferStorage addr
                   else nonexistentBufferStorage

    -- GL_ARB_separate_shader_objects

    refUseProgramStages <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glUseProgramStages"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glUseProgramStages")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynUseProgramStages addr
                   else nonexistentUseProgramStages
    refActiveShaderProgram <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glActiveShaderProgram"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glActiveShaderProgram")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynActiveShaderProgram addr
                   else nonexistentActiveShaderProgram
    refCreateShaderProgramv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glCreateShaderProgramv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glCreateShaderProgramv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynCreateShaderProgramv addr
                   else nonexistentCreateShaderProgramv
    refBindProgramPipeline <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glBindProgramPipeline"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glBindProgramPipeline")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynBindProgramPipeline addr
                   else nonexistentBindProgramPipeline
    refDeleteProgramPipelines <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glDeleteProgramPipelines"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glDeleteProgramPipelines")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynDeleteProgramPipelines addr
                   else nonexistentDeleteProgramPipelines
    refGenProgramPipelines <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGenProgramPipelines"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGenProgramPipelines")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGenProgramPipelines addr
                   else nonexistentGenProgramPipelines
    refIsProgramPipeline <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glIsProgramPipeline"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glIsProgramPipeline")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynIsProgramPipeline addr
                   else nonexistentIsProgramPipeline
    refGetProgramPipelineiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetProgramPipelineiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetProgramPipelineiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetProgramPipelineiv addr
                   else nonexistentGetProgramPipelineiv
    refProgramUniform1i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1i addr
                   else nonexistentProgramUniform1i
    refProgramUniform1iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1iv addr
                   else nonexistentProgramUniform1iv
    refProgramUniform1f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1f addr
                   else nonexistentProgramUniform1f
    refProgramUniform1fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1fv addr
                   else nonexistentProgramUniform1fv
    refProgramUniform1d <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1d"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1d")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1d addr
                   else nonexistentProgramUniform1d
    refProgramUniform1dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1dv addr
                   else nonexistentProgramUniform1dv
    refProgramUniform1ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1ui addr
                   else nonexistentProgramUniform1ui
    refProgramUniform1uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform1uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform1uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform1uiv addr
                   else nonexistentProgramUniform1uiv
    refProgramUniform2i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2i addr
                   else nonexistentProgramUniform2i
    refProgramUniform2iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2iv addr
                   else nonexistentProgramUniform2iv
    refProgramUniform2f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2f addr
                   else nonexistentProgramUniform2f
    refProgramUniform2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2fv addr
                   else nonexistentProgramUniform2fv
    refProgramUniform2d <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2d"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2d")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2d addr
                   else nonexistentProgramUniform2d
    refProgramUniform2dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2dv addr
                   else nonexistentProgramUniform2dv
    refProgramUniform2ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2ui addr
                   else nonexistentProgramUniform2ui
    refProgramUniform2uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform2uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform2uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform2uiv addr
                   else nonexistentProgramUniform2uiv
    refProgramUniform3i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3i addr
                   else nonexistentProgramUniform3i
    refProgramUniform3iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3iv addr
                   else nonexistentProgramUniform3iv
    refProgramUniform3f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3f addr
                   else nonexistentProgramUniform3f
    refProgramUniform3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3fv addr
                   else nonexistentProgramUniform3fv
    refProgramUniform3d <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3d"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3d")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3d addr
                   else nonexistentProgramUniform3d
    refProgramUniform3dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3dv addr
                   else nonexistentProgramUniform3dv
    refProgramUniform3ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3ui addr
                   else nonexistentProgramUniform3ui
    refProgramUniform3uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform3uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform3uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform3uiv addr
                   else nonexistentProgramUniform3uiv
    refProgramUniform4i <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4i"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4i")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4i addr
                   else nonexistentProgramUniform4i
    refProgramUniform4iv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4iv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4iv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4iv addr
                   else nonexistentProgramUniform4iv
    refProgramUniform4f <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4f"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4f")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4f addr
                   else nonexistentProgramUniform4f
    refProgramUniform4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4fv addr
                   else nonexistentProgramUniform4fv
    refProgramUniform4d <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4d"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4d")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4d addr
                   else nonexistentProgramUniform4d
    refProgramUniform4dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4dv addr
                   else nonexistentProgramUniform4dv
    refProgramUniform4ui <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4ui"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4ui")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4ui addr
                   else nonexistentProgramUniform4ui
    refProgramUniform4uiv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniform4uiv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniform4uiv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniform4uiv addr
                   else nonexistentProgramUniform4uiv
    refProgramUniformMatrix2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2fv addr
                   else nonexistentProgramUniformMatrix2fv
    refProgramUniformMatrix3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3fv addr
                   else nonexistentProgramUniformMatrix3fv
    refProgramUniformMatrix4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4fv addr
                   else nonexistentProgramUniformMatrix4fv
    refProgramUniformMatrix2dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2dv addr
                   else nonexistentProgramUniformMatrix2dv
    refProgramUniformMatrix3dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3dv addr
                   else nonexistentProgramUniformMatrix3dv
    refProgramUniformMatrix4dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4dv addr
                   else nonexistentProgramUniformMatrix4dv
    refProgramUniformMatrix2x3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2x3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2x3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2x3fv addr
                   else nonexistentProgramUniformMatrix2x3fv
    refProgramUniformMatrix3x2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3x2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3x2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3x2fv addr
                   else nonexistentProgramUniformMatrix3x2fv
    refProgramUniformMatrix2x4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2x4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2x4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2x4fv addr
                   else nonexistentProgramUniformMatrix2x4fv
    refProgramUniformMatrix4x2fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4x2fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4x2fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4x2fv addr
                   else nonexistentProgramUniformMatrix4x2fv
    refProgramUniformMatrix3x4fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3x4fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3x4fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3x4fv addr
                   else nonexistentProgramUniformMatrix3x4fv
    refProgramUniformMatrix4x3fv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4x3fv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4x3fv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4x3fv addr
                   else nonexistentProgramUniformMatrix4x3fv
    refProgramUniformMatrix2x3dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2x3dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2x3dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2x3dv addr
                   else nonexistentProgramUniformMatrix2x3dv
    refProgramUniformMatrix3x2dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3x2dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3x2dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3x2dv addr
                   else nonexistentProgramUniformMatrix3x2dv
    refProgramUniformMatrix2x4dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix2x4dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix2x4dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix2x4dv addr
                   else nonexistentProgramUniformMatrix2x4dv
    refProgramUniformMatrix4x2dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4x2dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4x2dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4x2dv addr
                   else nonexistentProgramUniformMatrix4x2dv
    refProgramUniformMatrix3x4dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix3x4dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix3x4dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix3x4dv addr
                   else nonexistentProgramUniformMatrix3x4dv
    refProgramUniformMatrix4x3dv <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glProgramUniformMatrix4x3dv"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glProgramUniformMatrix4x3dv")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynProgramUniformMatrix4x3dv addr
                   else nonexistentProgramUniformMatrix4x3dv
    refValidateProgramPipeline <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glValidateProgramPipeline"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glValidateProgramPipeline")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynValidateProgramPipeline addr
                   else nonexistentValidateProgramPipeline
    refGetProgramPipelineInfoLog <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glGetProgramPipelineInfoLog"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glGetProgramPipelineInfoLog")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynGetProgramPipelineInfoLog addr
                   else nonexistentGetProgramPipelineInfoLog

    -- GL_ATI_meminfo


    -- GL_NVX_gpu_memory_info


    -- GL_ARB_invalidate_subdata

    refInvalidateTexSubImage <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glInvalidateTexSubImage"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glInvalidateTexSubImage")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynInvalidateTexSubImage addr
                   else nonexistentInvalidateTexSubImage
    refInvalidateTexImage <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glInvalidateTexImage"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glInvalidateTexImage")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynInvalidateTexImage addr
                   else nonexistentInvalidateTexImage
    refInvalidateBufferSubData <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glInvalidateBufferSubData"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glInvalidateBufferSubData")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynInvalidateBufferSubData addr
                   else nonexistentInvalidateBufferSubData
    refInvalidateBufferData <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glInvalidateBufferData"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glInvalidateBufferData")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynInvalidateBufferData addr
                   else nonexistentInvalidateBufferData
    refInvalidateFramebuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glInvalidateFramebuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glInvalidateFramebuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynInvalidateFramebuffer addr
                   else nonexistentInvalidateFramebuffer
    refInvalidateSubFramebuffer <- liftIO $ do
        addr' <- castPtrToFunPtr . castPtr <$> get_proc_address "glInvalidateSubFramebuffer"
#ifndef mingw32_HOST_OS
        addr <- if addr' == nullFunPtr
          then catch (POSIX.dlsym POSIX.Default "glInvalidateSubFramebuffer")
                     (\exc -> (exc :: SomeException) `seq` return nullFunPtr)
          else return addr'
#else
        let addr = addr'
#endif
        return $ if addr /= nullFunPtr
                   then gldynInvalidateSubFramebuffer addr
                   else nonexistentInvalidateSubFramebuffer



    -- This function should exist in every OpenGL
    exts_raw <- liftIO $ castPtr `fmap` refGetString gl_EXTENSIONS
    exts_cptr <- liftIO $ peekCString exts_raw
    let exts = parseExtensionString exts_cptr

    refhas_GL_ARB_texture_storage <- do
        let result = elem "GL_ARB_texture_storage" exts
        return result
    refhas_GL_KHR_debug <- do
        let result = elem "GL_KHR_debug" exts
        return result
    refhas_GL_EXT_direct_state_access <- do
        let result = elem "GL_EXT_direct_state_access" exts
        return result
    refhas_GL_ARB_buffer_storage <- do
        let result = elem "GL_ARB_buffer_storage" exts
        return result
    refhas_GL_ARB_separate_shader_objects <- do
        let result = elem "GL_ARB_separate_shader_objects" exts
        return result
    refhas_GL_ATI_meminfo <- do
        let result = elem "GL_ATI_meminfo" exts
        return result
    refhas_GL_NVX_gpu_memory_info <- do
        let result = elem "GL_NVX_gpu_memory_info" exts
        return result
    refhas_GL_ARB_invalidate_subdata <- do
        let result = elem "GL_ARB_invalidate_subdata" exts
        return result

    counter <- liftIO $ atomicModifyIORef' flextGLCounter $ \old -> ( old+1, old )

    return $ Success FlextGL {
        counter = counter
      , has_GL_ARB_texture_storage = refhas_GL_ARB_texture_storage
      , has_GL_KHR_debug = refhas_GL_KHR_debug
      , has_GL_EXT_direct_state_access = refhas_GL_EXT_direct_state_access
      , has_GL_ARB_buffer_storage = refhas_GL_ARB_buffer_storage
      , has_GL_ARB_separate_shader_objects = refhas_GL_ARB_separate_shader_objects
      , has_GL_ATI_meminfo = refhas_GL_ATI_meminfo
      , has_GL_NVX_gpu_memory_info = refhas_GL_NVX_gpu_memory_info
      , has_GL_ARB_invalidate_subdata = refhas_GL_ARB_invalidate_subdata
      , rglCullFace = refCullFace
      , rglFrontFace = refFrontFace
      , rglHint = refHint
      , rglLineWidth = refLineWidth
      , rglPointSize = refPointSize
      , rglPolygonMode = refPolygonMode
      , rglScissor = refScissor
      , rglTexParameterf = refTexParameterf
      , rglTexParameterfv = refTexParameterfv
      , rglTexParameteri = refTexParameteri
      , rglTexParameteriv = refTexParameteriv
      , rglTexImage1D = refTexImage1D
      , rglTexImage2D = refTexImage2D
      , rglDrawBuffer = refDrawBuffer
      , rglClear = refClear
      , rglClearColor = refClearColor
      , rglClearStencil = refClearStencil
      , rglClearDepth = refClearDepth
      , rglStencilMask = refStencilMask
      , rglColorMask = refColorMask
      , rglDepthMask = refDepthMask
      , rglDisable = refDisable
      , rglEnable = refEnable
      , rglFinish = refFinish
      , rglFlush = refFlush
      , rglBlendFunc = refBlendFunc
      , rglLogicOp = refLogicOp
      , rglStencilFunc = refStencilFunc
      , rglStencilOp = refStencilOp
      , rglDepthFunc = refDepthFunc
      , rglPixelStoref = refPixelStoref
      , rglPixelStorei = refPixelStorei
      , rglReadBuffer = refReadBuffer
      , rglReadPixels = refReadPixels
      , rglGetBooleanv = refGetBooleanv
      , rglGetDoublev = refGetDoublev
      , rglGetError = refGetError
      , rglGetFloatv = refGetFloatv
      , rglGetIntegerv = refGetIntegerv
      , rglGetString = refGetString
      , rglGetTexImage = refGetTexImage
      , rglGetTexParameterfv = refGetTexParameterfv
      , rglGetTexParameteriv = refGetTexParameteriv
      , rglGetTexLevelParameterfv = refGetTexLevelParameterfv
      , rglGetTexLevelParameteriv = refGetTexLevelParameteriv
      , rglIsEnabled = refIsEnabled
      , rglDepthRange = refDepthRange
      , rglViewport = refViewport
      , rglDrawArrays = refDrawArrays
      , rglDrawElements = refDrawElements
      , rglPolygonOffset = refPolygonOffset
      , rglCopyTexImage1D = refCopyTexImage1D
      , rglCopyTexImage2D = refCopyTexImage2D
      , rglCopyTexSubImage1D = refCopyTexSubImage1D
      , rglCopyTexSubImage2D = refCopyTexSubImage2D
      , rglTexSubImage1D = refTexSubImage1D
      , rglTexSubImage2D = refTexSubImage2D
      , rglBindTexture = refBindTexture
      , rglDeleteTextures = refDeleteTextures
      , rglGenTextures = refGenTextures
      , rglIsTexture = refIsTexture
      , rglDrawRangeElements = refDrawRangeElements
      , rglTexImage3D = refTexImage3D
      , rglTexSubImage3D = refTexSubImage3D
      , rglCopyTexSubImage3D = refCopyTexSubImage3D
      , rglActiveTexture = refActiveTexture
      , rglSampleCoverage = refSampleCoverage
      , rglCompressedTexImage3D = refCompressedTexImage3D
      , rglCompressedTexImage2D = refCompressedTexImage2D
      , rglCompressedTexImage1D = refCompressedTexImage1D
      , rglCompressedTexSubImage3D = refCompressedTexSubImage3D
      , rglCompressedTexSubImage2D = refCompressedTexSubImage2D
      , rglCompressedTexSubImage1D = refCompressedTexSubImage1D
      , rglGetCompressedTexImage = refGetCompressedTexImage
      , rglBlendFuncSeparate = refBlendFuncSeparate
      , rglMultiDrawArrays = refMultiDrawArrays
      , rglMultiDrawElements = refMultiDrawElements
      , rglPointParameterf = refPointParameterf
      , rglPointParameterfv = refPointParameterfv
      , rglPointParameteri = refPointParameteri
      , rglPointParameteriv = refPointParameteriv
      , rglBlendColor = refBlendColor
      , rglBlendEquation = refBlendEquation
      , rglGenQueries = refGenQueries
      , rglDeleteQueries = refDeleteQueries
      , rglIsQuery = refIsQuery
      , rglBeginQuery = refBeginQuery
      , rglEndQuery = refEndQuery
      , rglGetQueryiv = refGetQueryiv
      , rglGetQueryObjectiv = refGetQueryObjectiv
      , rglGetQueryObjectuiv = refGetQueryObjectuiv
      , rglBindBuffer = refBindBuffer
      , rglDeleteBuffers = refDeleteBuffers
      , rglGenBuffers = refGenBuffers
      , rglIsBuffer = refIsBuffer
      , rglBufferData = refBufferData
      , rglBufferSubData = refBufferSubData
      , rglGetBufferSubData = refGetBufferSubData
      , rglMapBuffer = refMapBuffer
      , rglUnmapBuffer = refUnmapBuffer
      , rglGetBufferParameteriv = refGetBufferParameteriv
      , rglGetBufferPointerv = refGetBufferPointerv
      , rglBlendEquationSeparate = refBlendEquationSeparate
      , rglDrawBuffers = refDrawBuffers
      , rglStencilOpSeparate = refStencilOpSeparate
      , rglStencilFuncSeparate = refStencilFuncSeparate
      , rglStencilMaskSeparate = refStencilMaskSeparate
      , rglAttachShader = refAttachShader
      , rglBindAttribLocation = refBindAttribLocation
      , rglCompileShader = refCompileShader
      , rglCreateProgram = refCreateProgram
      , rglCreateShader = refCreateShader
      , rglDeleteProgram = refDeleteProgram
      , rglDeleteShader = refDeleteShader
      , rglDetachShader = refDetachShader
      , rglDisableVertexAttribArray = refDisableVertexAttribArray
      , rglEnableVertexAttribArray = refEnableVertexAttribArray
      , rglGetActiveAttrib = refGetActiveAttrib
      , rglGetActiveUniform = refGetActiveUniform
      , rglGetAttachedShaders = refGetAttachedShaders
      , rglGetAttribLocation = refGetAttribLocation
      , rglGetProgramiv = refGetProgramiv
      , rglGetProgramInfoLog = refGetProgramInfoLog
      , rglGetShaderiv = refGetShaderiv
      , rglGetShaderInfoLog = refGetShaderInfoLog
      , rglGetShaderSource = refGetShaderSource
      , rglGetUniformLocation = refGetUniformLocation
      , rglGetUniformfv = refGetUniformfv
      , rglGetUniformiv = refGetUniformiv
      , rglGetVertexAttribdv = refGetVertexAttribdv
      , rglGetVertexAttribfv = refGetVertexAttribfv
      , rglGetVertexAttribiv = refGetVertexAttribiv
      , rglGetVertexAttribPointerv = refGetVertexAttribPointerv
      , rglIsProgram = refIsProgram
      , rglIsShader = refIsShader
      , rglLinkProgram = refLinkProgram
      , rglShaderSource = refShaderSource
      , rglUseProgram = refUseProgram
      , rglUniform1f = refUniform1f
      , rglUniform2f = refUniform2f
      , rglUniform3f = refUniform3f
      , rglUniform4f = refUniform4f
      , rglUniform1i = refUniform1i
      , rglUniform2i = refUniform2i
      , rglUniform3i = refUniform3i
      , rglUniform4i = refUniform4i
      , rglUniform1fv = refUniform1fv
      , rglUniform2fv = refUniform2fv
      , rglUniform3fv = refUniform3fv
      , rglUniform4fv = refUniform4fv
      , rglUniform1iv = refUniform1iv
      , rglUniform2iv = refUniform2iv
      , rglUniform3iv = refUniform3iv
      , rglUniform4iv = refUniform4iv
      , rglUniformMatrix2fv = refUniformMatrix2fv
      , rglUniformMatrix3fv = refUniformMatrix3fv
      , rglUniformMatrix4fv = refUniformMatrix4fv
      , rglValidateProgram = refValidateProgram
      , rglVertexAttrib1d = refVertexAttrib1d
      , rglVertexAttrib1dv = refVertexAttrib1dv
      , rglVertexAttrib1f = refVertexAttrib1f
      , rglVertexAttrib1fv = refVertexAttrib1fv
      , rglVertexAttrib1s = refVertexAttrib1s
      , rglVertexAttrib1sv = refVertexAttrib1sv
      , rglVertexAttrib2d = refVertexAttrib2d
      , rglVertexAttrib2dv = refVertexAttrib2dv
      , rglVertexAttrib2f = refVertexAttrib2f
      , rglVertexAttrib2fv = refVertexAttrib2fv
      , rglVertexAttrib2s = refVertexAttrib2s
      , rglVertexAttrib2sv = refVertexAttrib2sv
      , rglVertexAttrib3d = refVertexAttrib3d
      , rglVertexAttrib3dv = refVertexAttrib3dv
      , rglVertexAttrib3f = refVertexAttrib3f
      , rglVertexAttrib3fv = refVertexAttrib3fv
      , rglVertexAttrib3s = refVertexAttrib3s
      , rglVertexAttrib3sv = refVertexAttrib3sv
      , rglVertexAttrib4Nbv = refVertexAttrib4Nbv
      , rglVertexAttrib4Niv = refVertexAttrib4Niv
      , rglVertexAttrib4Nsv = refVertexAttrib4Nsv
      , rglVertexAttrib4Nub = refVertexAttrib4Nub
      , rglVertexAttrib4Nubv = refVertexAttrib4Nubv
      , rglVertexAttrib4Nuiv = refVertexAttrib4Nuiv
      , rglVertexAttrib4Nusv = refVertexAttrib4Nusv
      , rglVertexAttrib4bv = refVertexAttrib4bv
      , rglVertexAttrib4d = refVertexAttrib4d
      , rglVertexAttrib4dv = refVertexAttrib4dv
      , rglVertexAttrib4f = refVertexAttrib4f
      , rglVertexAttrib4fv = refVertexAttrib4fv
      , rglVertexAttrib4iv = refVertexAttrib4iv
      , rglVertexAttrib4s = refVertexAttrib4s
      , rglVertexAttrib4sv = refVertexAttrib4sv
      , rglVertexAttrib4ubv = refVertexAttrib4ubv
      , rglVertexAttrib4uiv = refVertexAttrib4uiv
      , rglVertexAttrib4usv = refVertexAttrib4usv
      , rglVertexAttribPointer = refVertexAttribPointer
      , rglUniformMatrix2x3fv = refUniformMatrix2x3fv
      , rglUniformMatrix3x2fv = refUniformMatrix3x2fv
      , rglUniformMatrix2x4fv = refUniformMatrix2x4fv
      , rglUniformMatrix4x2fv = refUniformMatrix4x2fv
      , rglUniformMatrix3x4fv = refUniformMatrix3x4fv
      , rglUniformMatrix4x3fv = refUniformMatrix4x3fv
      , rglColorMaski = refColorMaski
      , rglGetBooleani_v = refGetBooleani_v
      , rglGetIntegeri_v = refGetIntegeri_v
      , rglEnablei = refEnablei
      , rglDisablei = refDisablei
      , rglIsEnabledi = refIsEnabledi
      , rglBeginTransformFeedback = refBeginTransformFeedback
      , rglEndTransformFeedback = refEndTransformFeedback
      , rglBindBufferRange = refBindBufferRange
      , rglBindBufferBase = refBindBufferBase
      , rglTransformFeedbackVaryings = refTransformFeedbackVaryings
      , rglGetTransformFeedbackVarying = refGetTransformFeedbackVarying
      , rglClampColor = refClampColor
      , rglBeginConditionalRender = refBeginConditionalRender
      , rglEndConditionalRender = refEndConditionalRender
      , rglVertexAttribIPointer = refVertexAttribIPointer
      , rglGetVertexAttribIiv = refGetVertexAttribIiv
      , rglGetVertexAttribIuiv = refGetVertexAttribIuiv
      , rglVertexAttribI1i = refVertexAttribI1i
      , rglVertexAttribI2i = refVertexAttribI2i
      , rglVertexAttribI3i = refVertexAttribI3i
      , rglVertexAttribI4i = refVertexAttribI4i
      , rglVertexAttribI1ui = refVertexAttribI1ui
      , rglVertexAttribI2ui = refVertexAttribI2ui
      , rglVertexAttribI3ui = refVertexAttribI3ui
      , rglVertexAttribI4ui = refVertexAttribI4ui
      , rglVertexAttribI1iv = refVertexAttribI1iv
      , rglVertexAttribI2iv = refVertexAttribI2iv
      , rglVertexAttribI3iv = refVertexAttribI3iv
      , rglVertexAttribI4iv = refVertexAttribI4iv
      , rglVertexAttribI1uiv = refVertexAttribI1uiv
      , rglVertexAttribI2uiv = refVertexAttribI2uiv
      , rglVertexAttribI3uiv = refVertexAttribI3uiv
      , rglVertexAttribI4uiv = refVertexAttribI4uiv
      , rglVertexAttribI4bv = refVertexAttribI4bv
      , rglVertexAttribI4sv = refVertexAttribI4sv
      , rglVertexAttribI4ubv = refVertexAttribI4ubv
      , rglVertexAttribI4usv = refVertexAttribI4usv
      , rglGetUniformuiv = refGetUniformuiv
      , rglBindFragDataLocation = refBindFragDataLocation
      , rglGetFragDataLocation = refGetFragDataLocation
      , rglUniform1ui = refUniform1ui
      , rglUniform2ui = refUniform2ui
      , rglUniform3ui = refUniform3ui
      , rglUniform4ui = refUniform4ui
      , rglUniform1uiv = refUniform1uiv
      , rglUniform2uiv = refUniform2uiv
      , rglUniform3uiv = refUniform3uiv
      , rglUniform4uiv = refUniform4uiv
      , rglTexParameterIiv = refTexParameterIiv
      , rglTexParameterIuiv = refTexParameterIuiv
      , rglGetTexParameterIiv = refGetTexParameterIiv
      , rglGetTexParameterIuiv = refGetTexParameterIuiv
      , rglClearBufferiv = refClearBufferiv
      , rglClearBufferuiv = refClearBufferuiv
      , rglClearBufferfv = refClearBufferfv
      , rglClearBufferfi = refClearBufferfi
      , rglGetStringi = refGetStringi
      , rglIsRenderbuffer = refIsRenderbuffer
      , rglBindRenderbuffer = refBindRenderbuffer
      , rglDeleteRenderbuffers = refDeleteRenderbuffers
      , rglGenRenderbuffers = refGenRenderbuffers
      , rglRenderbufferStorage = refRenderbufferStorage
      , rglGetRenderbufferParameteriv = refGetRenderbufferParameteriv
      , rglIsFramebuffer = refIsFramebuffer
      , rglBindFramebuffer = refBindFramebuffer
      , rglDeleteFramebuffers = refDeleteFramebuffers
      , rglGenFramebuffers = refGenFramebuffers
      , rglCheckFramebufferStatus = refCheckFramebufferStatus
      , rglFramebufferTexture1D = refFramebufferTexture1D
      , rglFramebufferTexture2D = refFramebufferTexture2D
      , rglFramebufferTexture3D = refFramebufferTexture3D
      , rglFramebufferRenderbuffer = refFramebufferRenderbuffer
      , rglGetFramebufferAttachmentParameteriv = refGetFramebufferAttachmentParameteriv
      , rglGenerateMipmap = refGenerateMipmap
      , rglBlitFramebuffer = refBlitFramebuffer
      , rglRenderbufferStorageMultisample = refRenderbufferStorageMultisample
      , rglFramebufferTextureLayer = refFramebufferTextureLayer
      , rglMapBufferRange = refMapBufferRange
      , rglFlushMappedBufferRange = refFlushMappedBufferRange
      , rglBindVertexArray = refBindVertexArray
      , rglDeleteVertexArrays = refDeleteVertexArrays
      , rglGenVertexArrays = refGenVertexArrays
      , rglIsVertexArray = refIsVertexArray
      , rglDrawArraysInstanced = refDrawArraysInstanced
      , rglDrawElementsInstanced = refDrawElementsInstanced
      , rglTexBuffer = refTexBuffer
      , rglPrimitiveRestartIndex = refPrimitiveRestartIndex
      , rglCopyBufferSubData = refCopyBufferSubData
      , rglGetUniformIndices = refGetUniformIndices
      , rglGetActiveUniformsiv = refGetActiveUniformsiv
      , rglGetActiveUniformName = refGetActiveUniformName
      , rglGetUniformBlockIndex = refGetUniformBlockIndex
      , rglGetActiveUniformBlockiv = refGetActiveUniformBlockiv
      , rglGetActiveUniformBlockName = refGetActiveUniformBlockName
      , rglUniformBlockBinding = refUniformBlockBinding
      , rglDrawElementsBaseVertex = refDrawElementsBaseVertex
      , rglDrawRangeElementsBaseVertex = refDrawRangeElementsBaseVertex
      , rglDrawElementsInstancedBaseVertex = refDrawElementsInstancedBaseVertex
      , rglMultiDrawElementsBaseVertex = refMultiDrawElementsBaseVertex
      , rglProvokingVertex = refProvokingVertex
      , rglFenceSync = refFenceSync
      , rglIsSync = refIsSync
      , rglDeleteSync = refDeleteSync
      , rglClientWaitSync = refClientWaitSync
      , rglWaitSync = refWaitSync
      , rglGetInteger64v = refGetInteger64v
      , rglGetSynciv = refGetSynciv
      , rglGetInteger64i_v = refGetInteger64i_v
      , rglGetBufferParameteri64v = refGetBufferParameteri64v
      , rglFramebufferTexture = refFramebufferTexture
      , rglTexImage2DMultisample = refTexImage2DMultisample
      , rglTexImage3DMultisample = refTexImage3DMultisample
      , rglGetMultisamplefv = refGetMultisamplefv
      , rglSampleMaski = refSampleMaski
      , rglBindFragDataLocationIndexed = refBindFragDataLocationIndexed
      , rglGetFragDataIndex = refGetFragDataIndex
      , rglGenSamplers = refGenSamplers
      , rglDeleteSamplers = refDeleteSamplers
      , rglIsSampler = refIsSampler
      , rglBindSampler = refBindSampler
      , rglSamplerParameteri = refSamplerParameteri
      , rglSamplerParameteriv = refSamplerParameteriv
      , rglSamplerParameterf = refSamplerParameterf
      , rglSamplerParameterfv = refSamplerParameterfv
      , rglSamplerParameterIiv = refSamplerParameterIiv
      , rglSamplerParameterIuiv = refSamplerParameterIuiv
      , rglGetSamplerParameteriv = refGetSamplerParameteriv
      , rglGetSamplerParameterIiv = refGetSamplerParameterIiv
      , rglGetSamplerParameterfv = refGetSamplerParameterfv
      , rglGetSamplerParameterIuiv = refGetSamplerParameterIuiv
      , rglQueryCounter = refQueryCounter
      , rglGetQueryObjecti64v = refGetQueryObjecti64v
      , rglGetQueryObjectui64v = refGetQueryObjectui64v
      , rglVertexAttribDivisor = refVertexAttribDivisor
      , rglVertexAttribP1ui = refVertexAttribP1ui
      , rglVertexAttribP1uiv = refVertexAttribP1uiv
      , rglVertexAttribP2ui = refVertexAttribP2ui
      , rglVertexAttribP2uiv = refVertexAttribP2uiv
      , rglVertexAttribP3ui = refVertexAttribP3ui
      , rglVertexAttribP3uiv = refVertexAttribP3uiv
      , rglVertexAttribP4ui = refVertexAttribP4ui
      , rglVertexAttribP4uiv = refVertexAttribP4uiv
      , rglTexStorage1D = refTexStorage1D
      , rglTexStorage2D = refTexStorage2D
      , rglTexStorage3D = refTexStorage3D
      , rglDebugMessageControl = refDebugMessageControl
      , rglDebugMessageInsert = refDebugMessageInsert
      , rglDebugMessageCallback = refDebugMessageCallback
      , rglGetDebugMessageLog = refGetDebugMessageLog
      , rglPushDebugGroup = refPushDebugGroup
      , rglPopDebugGroup = refPopDebugGroup
      , rglObjectLabel = refObjectLabel
      , rglGetObjectLabel = refGetObjectLabel
      , rglObjectPtrLabel = refObjectPtrLabel
      , rglGetObjectPtrLabel = refGetObjectPtrLabel
      , rglGetPointerv = refGetPointerv
      , rglDebugMessageControlKHR = refDebugMessageControlKHR
      , rglDebugMessageInsertKHR = refDebugMessageInsertKHR
      , rglDebugMessageCallbackKHR = refDebugMessageCallbackKHR
      , rglGetDebugMessageLogKHR = refGetDebugMessageLogKHR
      , rglPushDebugGroupKHR = refPushDebugGroupKHR
      , rglPopDebugGroupKHR = refPopDebugGroupKHR
      , rglObjectLabelKHR = refObjectLabelKHR
      , rglGetObjectLabelKHR = refGetObjectLabelKHR
      , rglObjectPtrLabelKHR = refObjectPtrLabelKHR
      , rglGetObjectPtrLabelKHR = refGetObjectPtrLabelKHR
      , rglGetPointervKHR = refGetPointervKHR
      , rglMatrixLoadfEXT = refMatrixLoadfEXT
      , rglMatrixLoaddEXT = refMatrixLoaddEXT
      , rglMatrixMultfEXT = refMatrixMultfEXT
      , rglMatrixMultdEXT = refMatrixMultdEXT
      , rglMatrixLoadIdentityEXT = refMatrixLoadIdentityEXT
      , rglMatrixRotatefEXT = refMatrixRotatefEXT
      , rglMatrixRotatedEXT = refMatrixRotatedEXT
      , rglMatrixScalefEXT = refMatrixScalefEXT
      , rglMatrixScaledEXT = refMatrixScaledEXT
      , rglMatrixTranslatefEXT = refMatrixTranslatefEXT
      , rglMatrixTranslatedEXT = refMatrixTranslatedEXT
      , rglMatrixFrustumEXT = refMatrixFrustumEXT
      , rglMatrixOrthoEXT = refMatrixOrthoEXT
      , rglMatrixPopEXT = refMatrixPopEXT
      , rglMatrixPushEXT = refMatrixPushEXT
      , rglClientAttribDefaultEXT = refClientAttribDefaultEXT
      , rglPushClientAttribDefaultEXT = refPushClientAttribDefaultEXT
      , rglTextureParameterfEXT = refTextureParameterfEXT
      , rglTextureParameterfvEXT = refTextureParameterfvEXT
      , rglTextureParameteriEXT = refTextureParameteriEXT
      , rglTextureParameterivEXT = refTextureParameterivEXT
      , rglTextureImage1DEXT = refTextureImage1DEXT
      , rglTextureImage2DEXT = refTextureImage2DEXT
      , rglTextureSubImage1DEXT = refTextureSubImage1DEXT
      , rglTextureSubImage2DEXT = refTextureSubImage2DEXT
      , rglCopyTextureImage1DEXT = refCopyTextureImage1DEXT
      , rglCopyTextureImage2DEXT = refCopyTextureImage2DEXT
      , rglCopyTextureSubImage1DEXT = refCopyTextureSubImage1DEXT
      , rglCopyTextureSubImage2DEXT = refCopyTextureSubImage2DEXT
      , rglGetTextureImageEXT = refGetTextureImageEXT
      , rglGetTextureParameterfvEXT = refGetTextureParameterfvEXT
      , rglGetTextureParameterivEXT = refGetTextureParameterivEXT
      , rglGetTextureLevelParameterfvEXT = refGetTextureLevelParameterfvEXT
      , rglGetTextureLevelParameterivEXT = refGetTextureLevelParameterivEXT
      , rglTextureImage3DEXT = refTextureImage3DEXT
      , rglTextureSubImage3DEXT = refTextureSubImage3DEXT
      , rglCopyTextureSubImage3DEXT = refCopyTextureSubImage3DEXT
      , rglBindMultiTextureEXT = refBindMultiTextureEXT
      , rglMultiTexCoordPointerEXT = refMultiTexCoordPointerEXT
      , rglMultiTexEnvfEXT = refMultiTexEnvfEXT
      , rglMultiTexEnvfvEXT = refMultiTexEnvfvEXT
      , rglMultiTexEnviEXT = refMultiTexEnviEXT
      , rglMultiTexEnvivEXT = refMultiTexEnvivEXT
      , rglMultiTexGendEXT = refMultiTexGendEXT
      , rglMultiTexGendvEXT = refMultiTexGendvEXT
      , rglMultiTexGenfEXT = refMultiTexGenfEXT
      , rglMultiTexGenfvEXT = refMultiTexGenfvEXT
      , rglMultiTexGeniEXT = refMultiTexGeniEXT
      , rglMultiTexGenivEXT = refMultiTexGenivEXT
      , rglGetMultiTexEnvfvEXT = refGetMultiTexEnvfvEXT
      , rglGetMultiTexEnvivEXT = refGetMultiTexEnvivEXT
      , rglGetMultiTexGendvEXT = refGetMultiTexGendvEXT
      , rglGetMultiTexGenfvEXT = refGetMultiTexGenfvEXT
      , rglGetMultiTexGenivEXT = refGetMultiTexGenivEXT
      , rglMultiTexParameteriEXT = refMultiTexParameteriEXT
      , rglMultiTexParameterivEXT = refMultiTexParameterivEXT
      , rglMultiTexParameterfEXT = refMultiTexParameterfEXT
      , rglMultiTexParameterfvEXT = refMultiTexParameterfvEXT
      , rglMultiTexImage1DEXT = refMultiTexImage1DEXT
      , rglMultiTexImage2DEXT = refMultiTexImage2DEXT
      , rglMultiTexSubImage1DEXT = refMultiTexSubImage1DEXT
      , rglMultiTexSubImage2DEXT = refMultiTexSubImage2DEXT
      , rglCopyMultiTexImage1DEXT = refCopyMultiTexImage1DEXT
      , rglCopyMultiTexImage2DEXT = refCopyMultiTexImage2DEXT
      , rglCopyMultiTexSubImage1DEXT = refCopyMultiTexSubImage1DEXT
      , rglCopyMultiTexSubImage2DEXT = refCopyMultiTexSubImage2DEXT
      , rglGetMultiTexImageEXT = refGetMultiTexImageEXT
      , rglGetMultiTexParameterfvEXT = refGetMultiTexParameterfvEXT
      , rglGetMultiTexParameterivEXT = refGetMultiTexParameterivEXT
      , rglGetMultiTexLevelParameterfvEXT = refGetMultiTexLevelParameterfvEXT
      , rglGetMultiTexLevelParameterivEXT = refGetMultiTexLevelParameterivEXT
      , rglMultiTexImage3DEXT = refMultiTexImage3DEXT
      , rglMultiTexSubImage3DEXT = refMultiTexSubImage3DEXT
      , rglCopyMultiTexSubImage3DEXT = refCopyMultiTexSubImage3DEXT
      , rglEnableClientStateIndexedEXT = refEnableClientStateIndexedEXT
      , rglDisableClientStateIndexedEXT = refDisableClientStateIndexedEXT
      , rglGetFloatIndexedvEXT = refGetFloatIndexedvEXT
      , rglGetDoubleIndexedvEXT = refGetDoubleIndexedvEXT
      , rglGetPointerIndexedvEXT = refGetPointerIndexedvEXT
      , rglEnableIndexedEXT = refEnableIndexedEXT
      , rglDisableIndexedEXT = refDisableIndexedEXT
      , rglIsEnabledIndexedEXT = refIsEnabledIndexedEXT
      , rglGetIntegerIndexedvEXT = refGetIntegerIndexedvEXT
      , rglGetBooleanIndexedvEXT = refGetBooleanIndexedvEXT
      , rglCompressedTextureImage3DEXT = refCompressedTextureImage3DEXT
      , rglCompressedTextureImage2DEXT = refCompressedTextureImage2DEXT
      , rglCompressedTextureImage1DEXT = refCompressedTextureImage1DEXT
      , rglCompressedTextureSubImage3DEXT = refCompressedTextureSubImage3DEXT
      , rglCompressedTextureSubImage2DEXT = refCompressedTextureSubImage2DEXT
      , rglCompressedTextureSubImage1DEXT = refCompressedTextureSubImage1DEXT
      , rglGetCompressedTextureImageEXT = refGetCompressedTextureImageEXT
      , rglCompressedMultiTexImage3DEXT = refCompressedMultiTexImage3DEXT
      , rglCompressedMultiTexImage2DEXT = refCompressedMultiTexImage2DEXT
      , rglCompressedMultiTexImage1DEXT = refCompressedMultiTexImage1DEXT
      , rglCompressedMultiTexSubImage3DEXT = refCompressedMultiTexSubImage3DEXT
      , rglCompressedMultiTexSubImage2DEXT = refCompressedMultiTexSubImage2DEXT
      , rglCompressedMultiTexSubImage1DEXT = refCompressedMultiTexSubImage1DEXT
      , rglGetCompressedMultiTexImageEXT = refGetCompressedMultiTexImageEXT
      , rglMatrixLoadTransposefEXT = refMatrixLoadTransposefEXT
      , rglMatrixLoadTransposedEXT = refMatrixLoadTransposedEXT
      , rglMatrixMultTransposefEXT = refMatrixMultTransposefEXT
      , rglMatrixMultTransposedEXT = refMatrixMultTransposedEXT
      , rglNamedBufferDataEXT = refNamedBufferDataEXT
      , rglNamedBufferSubDataEXT = refNamedBufferSubDataEXT
      , rglMapNamedBufferEXT = refMapNamedBufferEXT
      , rglUnmapNamedBufferEXT = refUnmapNamedBufferEXT
      , rglGetNamedBufferParameterivEXT = refGetNamedBufferParameterivEXT
      , rglGetNamedBufferPointervEXT = refGetNamedBufferPointervEXT
      , rglGetNamedBufferSubDataEXT = refGetNamedBufferSubDataEXT
      , rglProgramUniform1fEXT = refProgramUniform1fEXT
      , rglProgramUniform2fEXT = refProgramUniform2fEXT
      , rglProgramUniform3fEXT = refProgramUniform3fEXT
      , rglProgramUniform4fEXT = refProgramUniform4fEXT
      , rglProgramUniform1iEXT = refProgramUniform1iEXT
      , rglProgramUniform2iEXT = refProgramUniform2iEXT
      , rglProgramUniform3iEXT = refProgramUniform3iEXT
      , rglProgramUniform4iEXT = refProgramUniform4iEXT
      , rglProgramUniform1fvEXT = refProgramUniform1fvEXT
      , rglProgramUniform2fvEXT = refProgramUniform2fvEXT
      , rglProgramUniform3fvEXT = refProgramUniform3fvEXT
      , rglProgramUniform4fvEXT = refProgramUniform4fvEXT
      , rglProgramUniform1ivEXT = refProgramUniform1ivEXT
      , rglProgramUniform2ivEXT = refProgramUniform2ivEXT
      , rglProgramUniform3ivEXT = refProgramUniform3ivEXT
      , rglProgramUniform4ivEXT = refProgramUniform4ivEXT
      , rglProgramUniformMatrix2fvEXT = refProgramUniformMatrix2fvEXT
      , rglProgramUniformMatrix3fvEXT = refProgramUniformMatrix3fvEXT
      , rglProgramUniformMatrix4fvEXT = refProgramUniformMatrix4fvEXT
      , rglProgramUniformMatrix2x3fvEXT = refProgramUniformMatrix2x3fvEXT
      , rglProgramUniformMatrix3x2fvEXT = refProgramUniformMatrix3x2fvEXT
      , rglProgramUniformMatrix2x4fvEXT = refProgramUniformMatrix2x4fvEXT
      , rglProgramUniformMatrix4x2fvEXT = refProgramUniformMatrix4x2fvEXT
      , rglProgramUniformMatrix3x4fvEXT = refProgramUniformMatrix3x4fvEXT
      , rglProgramUniformMatrix4x3fvEXT = refProgramUniformMatrix4x3fvEXT
      , rglTextureBufferEXT = refTextureBufferEXT
      , rglMultiTexBufferEXT = refMultiTexBufferEXT
      , rglTextureParameterIivEXT = refTextureParameterIivEXT
      , rglTextureParameterIuivEXT = refTextureParameterIuivEXT
      , rglGetTextureParameterIivEXT = refGetTextureParameterIivEXT
      , rglGetTextureParameterIuivEXT = refGetTextureParameterIuivEXT
      , rglMultiTexParameterIivEXT = refMultiTexParameterIivEXT
      , rglMultiTexParameterIuivEXT = refMultiTexParameterIuivEXT
      , rglGetMultiTexParameterIivEXT = refGetMultiTexParameterIivEXT
      , rglGetMultiTexParameterIuivEXT = refGetMultiTexParameterIuivEXT
      , rglProgramUniform1uiEXT = refProgramUniform1uiEXT
      , rglProgramUniform2uiEXT = refProgramUniform2uiEXT
      , rglProgramUniform3uiEXT = refProgramUniform3uiEXT
      , rglProgramUniform4uiEXT = refProgramUniform4uiEXT
      , rglProgramUniform1uivEXT = refProgramUniform1uivEXT
      , rglProgramUniform2uivEXT = refProgramUniform2uivEXT
      , rglProgramUniform3uivEXT = refProgramUniform3uivEXT
      , rglProgramUniform4uivEXT = refProgramUniform4uivEXT
      , rglNamedProgramLocalParameters4fvEXT = refNamedProgramLocalParameters4fvEXT
      , rglNamedProgramLocalParameterI4iEXT = refNamedProgramLocalParameterI4iEXT
      , rglNamedProgramLocalParameterI4ivEXT = refNamedProgramLocalParameterI4ivEXT
      , rglNamedProgramLocalParametersI4ivEXT = refNamedProgramLocalParametersI4ivEXT
      , rglNamedProgramLocalParameterI4uiEXT = refNamedProgramLocalParameterI4uiEXT
      , rglNamedProgramLocalParameterI4uivEXT = refNamedProgramLocalParameterI4uivEXT
      , rglNamedProgramLocalParametersI4uivEXT = refNamedProgramLocalParametersI4uivEXT
      , rglGetNamedProgramLocalParameterIivEXT = refGetNamedProgramLocalParameterIivEXT
      , rglGetNamedProgramLocalParameterIuivEXT = refGetNamedProgramLocalParameterIuivEXT
      , rglEnableClientStateiEXT = refEnableClientStateiEXT
      , rglDisableClientStateiEXT = refDisableClientStateiEXT
      , rglGetFloati_vEXT = refGetFloati_vEXT
      , rglGetDoublei_vEXT = refGetDoublei_vEXT
      , rglGetPointeri_vEXT = refGetPointeri_vEXT
      , rglNamedProgramStringEXT = refNamedProgramStringEXT
      , rglNamedProgramLocalParameter4dEXT = refNamedProgramLocalParameter4dEXT
      , rglNamedProgramLocalParameter4dvEXT = refNamedProgramLocalParameter4dvEXT
      , rglNamedProgramLocalParameter4fEXT = refNamedProgramLocalParameter4fEXT
      , rglNamedProgramLocalParameter4fvEXT = refNamedProgramLocalParameter4fvEXT
      , rglGetNamedProgramLocalParameterdvEXT = refGetNamedProgramLocalParameterdvEXT
      , rglGetNamedProgramLocalParameterfvEXT = refGetNamedProgramLocalParameterfvEXT
      , rglGetNamedProgramivEXT = refGetNamedProgramivEXT
      , rglGetNamedProgramStringEXT = refGetNamedProgramStringEXT
      , rglNamedRenderbufferStorageEXT = refNamedRenderbufferStorageEXT
      , rglGetNamedRenderbufferParameterivEXT = refGetNamedRenderbufferParameterivEXT
      , rglNamedRenderbufferStorageMultisampleEXT = refNamedRenderbufferStorageMultisampleEXT
      , rglNamedRenderbufferStorageMultisampleCoverageEXT = refNamedRenderbufferStorageMultisampleCoverageEXT
      , rglCheckNamedFramebufferStatusEXT = refCheckNamedFramebufferStatusEXT
      , rglNamedFramebufferTexture1DEXT = refNamedFramebufferTexture1DEXT
      , rglNamedFramebufferTexture2DEXT = refNamedFramebufferTexture2DEXT
      , rglNamedFramebufferTexture3DEXT = refNamedFramebufferTexture3DEXT
      , rglNamedFramebufferRenderbufferEXT = refNamedFramebufferRenderbufferEXT
      , rglGetNamedFramebufferAttachmentParameterivEXT = refGetNamedFramebufferAttachmentParameterivEXT
      , rglGenerateTextureMipmapEXT = refGenerateTextureMipmapEXT
      , rglGenerateMultiTexMipmapEXT = refGenerateMultiTexMipmapEXT
      , rglFramebufferDrawBufferEXT = refFramebufferDrawBufferEXT
      , rglFramebufferDrawBuffersEXT = refFramebufferDrawBuffersEXT
      , rglFramebufferReadBufferEXT = refFramebufferReadBufferEXT
      , rglGetFramebufferParameterivEXT = refGetFramebufferParameterivEXT
      , rglNamedCopyBufferSubDataEXT = refNamedCopyBufferSubDataEXT
      , rglNamedFramebufferTextureEXT = refNamedFramebufferTextureEXT
      , rglNamedFramebufferTextureLayerEXT = refNamedFramebufferTextureLayerEXT
      , rglNamedFramebufferTextureFaceEXT = refNamedFramebufferTextureFaceEXT
      , rglTextureRenderbufferEXT = refTextureRenderbufferEXT
      , rglMultiTexRenderbufferEXT = refMultiTexRenderbufferEXT
      , rglVertexArrayVertexOffsetEXT = refVertexArrayVertexOffsetEXT
      , rglVertexArrayColorOffsetEXT = refVertexArrayColorOffsetEXT
      , rglVertexArrayEdgeFlagOffsetEXT = refVertexArrayEdgeFlagOffsetEXT
      , rglVertexArrayIndexOffsetEXT = refVertexArrayIndexOffsetEXT
      , rglVertexArrayNormalOffsetEXT = refVertexArrayNormalOffsetEXT
      , rglVertexArrayTexCoordOffsetEXT = refVertexArrayTexCoordOffsetEXT
      , rglVertexArrayMultiTexCoordOffsetEXT = refVertexArrayMultiTexCoordOffsetEXT
      , rglVertexArrayFogCoordOffsetEXT = refVertexArrayFogCoordOffsetEXT
      , rglVertexArraySecondaryColorOffsetEXT = refVertexArraySecondaryColorOffsetEXT
      , rglVertexArrayVertexAttribOffsetEXT = refVertexArrayVertexAttribOffsetEXT
      , rglVertexArrayVertexAttribIOffsetEXT = refVertexArrayVertexAttribIOffsetEXT
      , rglEnableVertexArrayEXT = refEnableVertexArrayEXT
      , rglDisableVertexArrayEXT = refDisableVertexArrayEXT
      , rglEnableVertexArrayAttribEXT = refEnableVertexArrayAttribEXT
      , rglDisableVertexArrayAttribEXT = refDisableVertexArrayAttribEXT
      , rglGetVertexArrayIntegervEXT = refGetVertexArrayIntegervEXT
      , rglGetVertexArrayPointervEXT = refGetVertexArrayPointervEXT
      , rglGetVertexArrayIntegeri_vEXT = refGetVertexArrayIntegeri_vEXT
      , rglGetVertexArrayPointeri_vEXT = refGetVertexArrayPointeri_vEXT
      , rglMapNamedBufferRangeEXT = refMapNamedBufferRangeEXT
      , rglFlushMappedNamedBufferRangeEXT = refFlushMappedNamedBufferRangeEXT
      , rglNamedBufferStorageEXT = refNamedBufferStorageEXT
      , rglClearNamedBufferDataEXT = refClearNamedBufferDataEXT
      , rglClearNamedBufferSubDataEXT = refClearNamedBufferSubDataEXT
      , rglNamedFramebufferParameteriEXT = refNamedFramebufferParameteriEXT
      , rglGetNamedFramebufferParameterivEXT = refGetNamedFramebufferParameterivEXT
      , rglProgramUniform1dEXT = refProgramUniform1dEXT
      , rglProgramUniform2dEXT = refProgramUniform2dEXT
      , rglProgramUniform3dEXT = refProgramUniform3dEXT
      , rglProgramUniform4dEXT = refProgramUniform4dEXT
      , rglProgramUniform1dvEXT = refProgramUniform1dvEXT
      , rglProgramUniform2dvEXT = refProgramUniform2dvEXT
      , rglProgramUniform3dvEXT = refProgramUniform3dvEXT
      , rglProgramUniform4dvEXT = refProgramUniform4dvEXT
      , rglProgramUniformMatrix2dvEXT = refProgramUniformMatrix2dvEXT
      , rglProgramUniformMatrix3dvEXT = refProgramUniformMatrix3dvEXT
      , rglProgramUniformMatrix4dvEXT = refProgramUniformMatrix4dvEXT
      , rglProgramUniformMatrix2x3dvEXT = refProgramUniformMatrix2x3dvEXT
      , rglProgramUniformMatrix2x4dvEXT = refProgramUniformMatrix2x4dvEXT
      , rglProgramUniformMatrix3x2dvEXT = refProgramUniformMatrix3x2dvEXT
      , rglProgramUniformMatrix3x4dvEXT = refProgramUniformMatrix3x4dvEXT
      , rglProgramUniformMatrix4x2dvEXT = refProgramUniformMatrix4x2dvEXT
      , rglProgramUniformMatrix4x3dvEXT = refProgramUniformMatrix4x3dvEXT
      , rglTextureBufferRangeEXT = refTextureBufferRangeEXT
      , rglTextureStorage1DEXT = refTextureStorage1DEXT
      , rglTextureStorage2DEXT = refTextureStorage2DEXT
      , rglTextureStorage3DEXT = refTextureStorage3DEXT
      , rglTextureStorage2DMultisampleEXT = refTextureStorage2DMultisampleEXT
      , rglTextureStorage3DMultisampleEXT = refTextureStorage3DMultisampleEXT
      , rglVertexArrayBindVertexBufferEXT = refVertexArrayBindVertexBufferEXT
      , rglVertexArrayVertexAttribFormatEXT = refVertexArrayVertexAttribFormatEXT
      , rglVertexArrayVertexAttribIFormatEXT = refVertexArrayVertexAttribIFormatEXT
      , rglVertexArrayVertexAttribLFormatEXT = refVertexArrayVertexAttribLFormatEXT
      , rglVertexArrayVertexAttribBindingEXT = refVertexArrayVertexAttribBindingEXT
      , rglVertexArrayVertexBindingDivisorEXT = refVertexArrayVertexBindingDivisorEXT
      , rglVertexArrayVertexAttribLOffsetEXT = refVertexArrayVertexAttribLOffsetEXT
      , rglTexturePageCommitmentEXT = refTexturePageCommitmentEXT
      , rglVertexArrayVertexAttribDivisorEXT = refVertexArrayVertexAttribDivisorEXT
      , rglBufferStorage = refBufferStorage
      , rglUseProgramStages = refUseProgramStages
      , rglActiveShaderProgram = refActiveShaderProgram
      , rglCreateShaderProgramv = refCreateShaderProgramv
      , rglBindProgramPipeline = refBindProgramPipeline
      , rglDeleteProgramPipelines = refDeleteProgramPipelines
      , rglGenProgramPipelines = refGenProgramPipelines
      , rglIsProgramPipeline = refIsProgramPipeline
      , rglGetProgramPipelineiv = refGetProgramPipelineiv
      , rglProgramUniform1i = refProgramUniform1i
      , rglProgramUniform1iv = refProgramUniform1iv
      , rglProgramUniform1f = refProgramUniform1f
      , rglProgramUniform1fv = refProgramUniform1fv
      , rglProgramUniform1d = refProgramUniform1d
      , rglProgramUniform1dv = refProgramUniform1dv
      , rglProgramUniform1ui = refProgramUniform1ui
      , rglProgramUniform1uiv = refProgramUniform1uiv
      , rglProgramUniform2i = refProgramUniform2i
      , rglProgramUniform2iv = refProgramUniform2iv
      , rglProgramUniform2f = refProgramUniform2f
      , rglProgramUniform2fv = refProgramUniform2fv
      , rglProgramUniform2d = refProgramUniform2d
      , rglProgramUniform2dv = refProgramUniform2dv
      , rglProgramUniform2ui = refProgramUniform2ui
      , rglProgramUniform2uiv = refProgramUniform2uiv
      , rglProgramUniform3i = refProgramUniform3i
      , rglProgramUniform3iv = refProgramUniform3iv
      , rglProgramUniform3f = refProgramUniform3f
      , rglProgramUniform3fv = refProgramUniform3fv
      , rglProgramUniform3d = refProgramUniform3d
      , rglProgramUniform3dv = refProgramUniform3dv
      , rglProgramUniform3ui = refProgramUniform3ui
      , rglProgramUniform3uiv = refProgramUniform3uiv
      , rglProgramUniform4i = refProgramUniform4i
      , rglProgramUniform4iv = refProgramUniform4iv
      , rglProgramUniform4f = refProgramUniform4f
      , rglProgramUniform4fv = refProgramUniform4fv
      , rglProgramUniform4d = refProgramUniform4d
      , rglProgramUniform4dv = refProgramUniform4dv
      , rglProgramUniform4ui = refProgramUniform4ui
      , rglProgramUniform4uiv = refProgramUniform4uiv
      , rglProgramUniformMatrix2fv = refProgramUniformMatrix2fv
      , rglProgramUniformMatrix3fv = refProgramUniformMatrix3fv
      , rglProgramUniformMatrix4fv = refProgramUniformMatrix4fv
      , rglProgramUniformMatrix2dv = refProgramUniformMatrix2dv
      , rglProgramUniformMatrix3dv = refProgramUniformMatrix3dv
      , rglProgramUniformMatrix4dv = refProgramUniformMatrix4dv
      , rglProgramUniformMatrix2x3fv = refProgramUniformMatrix2x3fv
      , rglProgramUniformMatrix3x2fv = refProgramUniformMatrix3x2fv
      , rglProgramUniformMatrix2x4fv = refProgramUniformMatrix2x4fv
      , rglProgramUniformMatrix4x2fv = refProgramUniformMatrix4x2fv
      , rglProgramUniformMatrix3x4fv = refProgramUniformMatrix3x4fv
      , rglProgramUniformMatrix4x3fv = refProgramUniformMatrix4x3fv
      , rglProgramUniformMatrix2x3dv = refProgramUniformMatrix2x3dv
      , rglProgramUniformMatrix3x2dv = refProgramUniformMatrix3x2dv
      , rglProgramUniformMatrix2x4dv = refProgramUniformMatrix2x4dv
      , rglProgramUniformMatrix4x2dv = refProgramUniformMatrix4x2dv
      , rglProgramUniformMatrix3x4dv = refProgramUniformMatrix3x4dv
      , rglProgramUniformMatrix4x3dv = refProgramUniformMatrix4x3dv
      , rglValidateProgramPipeline = refValidateProgramPipeline
      , rglGetProgramPipelineInfoLog = refGetProgramPipelineInfoLog
      , rglInvalidateTexSubImage = refInvalidateTexSubImage
      , rglInvalidateTexImage = refInvalidateTexImage
      , rglInvalidateBufferSubData = refInvalidateBufferSubData
      , rglInvalidateBufferData = refInvalidateBufferData
      , rglInvalidateFramebuffer = refInvalidateFramebuffer
      , rglInvalidateSubFramebuffer = refInvalidateSubFramebuffer
    }


-- GL_VERSION_1_0

foreign import ccall APIENTRY unsafe "dynamic"
    gldynCullFace :: FunPtr FuntypeCullFace -> FuntypeCullFace
nonexistentCullFace :: FuntypeCullFace
nonexistentCullFace
    _
    = throwIO $ NonExistentOpenGLFunction "glCullFace"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFrontFace :: FunPtr FuntypeFrontFace -> FuntypeFrontFace
nonexistentFrontFace :: FuntypeFrontFace
nonexistentFrontFace
    _
    = throwIO $ NonExistentOpenGLFunction "glFrontFace"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynHint :: FunPtr FuntypeHint -> FuntypeHint
nonexistentHint :: FuntypeHint
nonexistentHint
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glHint"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynLineWidth :: FunPtr FuntypeLineWidth -> FuntypeLineWidth
nonexistentLineWidth :: FuntypeLineWidth
nonexistentLineWidth
    _
    = throwIO $ NonExistentOpenGLFunction "glLineWidth"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPointSize :: FunPtr FuntypePointSize -> FuntypePointSize
nonexistentPointSize :: FuntypePointSize
nonexistentPointSize
    _
    = throwIO $ NonExistentOpenGLFunction "glPointSize"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPolygonMode :: FunPtr FuntypePolygonMode -> FuntypePolygonMode
nonexistentPolygonMode :: FuntypePolygonMode
nonexistentPolygonMode
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPolygonMode"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynScissor :: FunPtr FuntypeScissor -> FuntypeScissor
nonexistentScissor :: FuntypeScissor
nonexistentScissor
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glScissor"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexParameterf :: FunPtr FuntypeTexParameterf -> FuntypeTexParameterf
nonexistentTexParameterf :: FuntypeTexParameterf
nonexistentTexParameterf
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexParameterf"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexParameterfv :: FunPtr FuntypeTexParameterfv -> FuntypeTexParameterfv
nonexistentTexParameterfv :: FuntypeTexParameterfv
nonexistentTexParameterfv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexParameterfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexParameteri :: FunPtr FuntypeTexParameteri -> FuntypeTexParameteri
nonexistentTexParameteri :: FuntypeTexParameteri
nonexistentTexParameteri
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexParameteri"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexParameteriv :: FunPtr FuntypeTexParameteriv -> FuntypeTexParameteriv
nonexistentTexParameteriv :: FuntypeTexParameteriv
nonexistentTexParameteriv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexImage1D :: FunPtr FuntypeTexImage1D -> FuntypeTexImage1D
nonexistentTexImage1D :: FuntypeTexImage1D
nonexistentTexImage1D
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexImage1D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexImage2D :: FunPtr FuntypeTexImage2D -> FuntypeTexImage2D
nonexistentTexImage2D :: FuntypeTexImage2D
nonexistentTexImage2D
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexImage2D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawBuffer :: FunPtr FuntypeDrawBuffer -> FuntypeDrawBuffer
nonexistentDrawBuffer :: FuntypeDrawBuffer
nonexistentDrawBuffer
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawBuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClear :: FunPtr FuntypeClear -> FuntypeClear
nonexistentClear :: FuntypeClear
nonexistentClear
    _
    = throwIO $ NonExistentOpenGLFunction "glClear"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearColor :: FunPtr FuntypeClearColor -> FuntypeClearColor
nonexistentClearColor :: FuntypeClearColor
nonexistentClearColor
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClearColor"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearStencil :: FunPtr FuntypeClearStencil -> FuntypeClearStencil
nonexistentClearStencil :: FuntypeClearStencil
nonexistentClearStencil
    _
    = throwIO $ NonExistentOpenGLFunction "glClearStencil"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearDepth :: FunPtr FuntypeClearDepth -> FuntypeClearDepth
nonexistentClearDepth :: FuntypeClearDepth
nonexistentClearDepth
    _
    = throwIO $ NonExistentOpenGLFunction "glClearDepth"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynStencilMask :: FunPtr FuntypeStencilMask -> FuntypeStencilMask
nonexistentStencilMask :: FuntypeStencilMask
nonexistentStencilMask
    _
    = throwIO $ NonExistentOpenGLFunction "glStencilMask"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynColorMask :: FunPtr FuntypeColorMask -> FuntypeColorMask
nonexistentColorMask :: FuntypeColorMask
nonexistentColorMask
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glColorMask"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDepthMask :: FunPtr FuntypeDepthMask -> FuntypeDepthMask
nonexistentDepthMask :: FuntypeDepthMask
nonexistentDepthMask
    _
    = throwIO $ NonExistentOpenGLFunction "glDepthMask"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDisable :: FunPtr FuntypeDisable -> FuntypeDisable
nonexistentDisable :: FuntypeDisable
nonexistentDisable
    _
    = throwIO $ NonExistentOpenGLFunction "glDisable"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEnable :: FunPtr FuntypeEnable -> FuntypeEnable
nonexistentEnable :: FuntypeEnable
nonexistentEnable
    _
    = throwIO $ NonExistentOpenGLFunction "glEnable"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFinish :: FunPtr FuntypeFinish -> FuntypeFinish
nonexistentFinish :: FuntypeFinish
nonexistentFinish
    = throwIO $ NonExistentOpenGLFunction "glFinish"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFlush :: FunPtr FuntypeFlush -> FuntypeFlush
nonexistentFlush :: FuntypeFlush
nonexistentFlush
    = throwIO $ NonExistentOpenGLFunction "glFlush"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBlendFunc :: FunPtr FuntypeBlendFunc -> FuntypeBlendFunc
nonexistentBlendFunc :: FuntypeBlendFunc
nonexistentBlendFunc
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBlendFunc"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynLogicOp :: FunPtr FuntypeLogicOp -> FuntypeLogicOp
nonexistentLogicOp :: FuntypeLogicOp
nonexistentLogicOp
    _
    = throwIO $ NonExistentOpenGLFunction "glLogicOp"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynStencilFunc :: FunPtr FuntypeStencilFunc -> FuntypeStencilFunc
nonexistentStencilFunc :: FuntypeStencilFunc
nonexistentStencilFunc
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glStencilFunc"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynStencilOp :: FunPtr FuntypeStencilOp -> FuntypeStencilOp
nonexistentStencilOp :: FuntypeStencilOp
nonexistentStencilOp
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glStencilOp"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDepthFunc :: FunPtr FuntypeDepthFunc -> FuntypeDepthFunc
nonexistentDepthFunc :: FuntypeDepthFunc
nonexistentDepthFunc
    _
    = throwIO $ NonExistentOpenGLFunction "glDepthFunc"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPixelStoref :: FunPtr FuntypePixelStoref -> FuntypePixelStoref
nonexistentPixelStoref :: FuntypePixelStoref
nonexistentPixelStoref
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPixelStoref"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPixelStorei :: FunPtr FuntypePixelStorei -> FuntypePixelStorei
nonexistentPixelStorei :: FuntypePixelStorei
nonexistentPixelStorei
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPixelStorei"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynReadBuffer :: FunPtr FuntypeReadBuffer -> FuntypeReadBuffer
nonexistentReadBuffer :: FuntypeReadBuffer
nonexistentReadBuffer
    _
    = throwIO $ NonExistentOpenGLFunction "glReadBuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynReadPixels :: FunPtr FuntypeReadPixels -> FuntypeReadPixels
nonexistentReadPixels :: FuntypeReadPixels
nonexistentReadPixels
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glReadPixels"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetBooleanv :: FunPtr FuntypeGetBooleanv -> FuntypeGetBooleanv
nonexistentGetBooleanv :: FuntypeGetBooleanv
nonexistentGetBooleanv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetBooleanv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetDoublev :: FunPtr FuntypeGetDoublev -> FuntypeGetDoublev
nonexistentGetDoublev :: FuntypeGetDoublev
nonexistentGetDoublev
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetDoublev"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetError :: FunPtr FuntypeGetError -> FuntypeGetError
nonexistentGetError :: FuntypeGetError
nonexistentGetError
    = throwIO $ NonExistentOpenGLFunction "glGetError"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetFloatv :: FunPtr FuntypeGetFloatv -> FuntypeGetFloatv
nonexistentGetFloatv :: FuntypeGetFloatv
nonexistentGetFloatv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetFloatv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetIntegerv :: FunPtr FuntypeGetIntegerv -> FuntypeGetIntegerv
nonexistentGetIntegerv :: FuntypeGetIntegerv
nonexistentGetIntegerv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetIntegerv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetString :: FunPtr FuntypeGetString -> FuntypeGetString
nonexistentGetString :: FuntypeGetString
nonexistentGetString
    _
    = throwIO $ NonExistentOpenGLFunction "glGetString"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTexImage :: FunPtr FuntypeGetTexImage -> FuntypeGetTexImage
nonexistentGetTexImage :: FuntypeGetTexImage
nonexistentGetTexImage
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTexImage"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTexParameterfv :: FunPtr FuntypeGetTexParameterfv -> FuntypeGetTexParameterfv
nonexistentGetTexParameterfv :: FuntypeGetTexParameterfv
nonexistentGetTexParameterfv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTexParameterfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTexParameteriv :: FunPtr FuntypeGetTexParameteriv -> FuntypeGetTexParameteriv
nonexistentGetTexParameteriv :: FuntypeGetTexParameteriv
nonexistentGetTexParameteriv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTexParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTexLevelParameterfv :: FunPtr FuntypeGetTexLevelParameterfv -> FuntypeGetTexLevelParameterfv
nonexistentGetTexLevelParameterfv :: FuntypeGetTexLevelParameterfv
nonexistentGetTexLevelParameterfv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTexLevelParameterfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTexLevelParameteriv :: FunPtr FuntypeGetTexLevelParameteriv -> FuntypeGetTexLevelParameteriv
nonexistentGetTexLevelParameteriv :: FuntypeGetTexLevelParameteriv
nonexistentGetTexLevelParameteriv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTexLevelParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsEnabled :: FunPtr FuntypeIsEnabled -> FuntypeIsEnabled
nonexistentIsEnabled :: FuntypeIsEnabled
nonexistentIsEnabled
    _
    = throwIO $ NonExistentOpenGLFunction "glIsEnabled"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDepthRange :: FunPtr FuntypeDepthRange -> FuntypeDepthRange
nonexistentDepthRange :: FuntypeDepthRange
nonexistentDepthRange
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDepthRange"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynViewport :: FunPtr FuntypeViewport -> FuntypeViewport
nonexistentViewport :: FuntypeViewport
nonexistentViewport
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glViewport"

-- GL_VERSION_1_1

foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawArrays :: FunPtr FuntypeDrawArrays -> FuntypeDrawArrays
nonexistentDrawArrays :: FuntypeDrawArrays
nonexistentDrawArrays
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawArrays"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawElements :: FunPtr FuntypeDrawElements -> FuntypeDrawElements
nonexistentDrawElements :: FuntypeDrawElements
nonexistentDrawElements
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawElements"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPolygonOffset :: FunPtr FuntypePolygonOffset -> FuntypePolygonOffset
nonexistentPolygonOffset :: FuntypePolygonOffset
nonexistentPolygonOffset
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPolygonOffset"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTexImage1D :: FunPtr FuntypeCopyTexImage1D -> FuntypeCopyTexImage1D
nonexistentCopyTexImage1D :: FuntypeCopyTexImage1D
nonexistentCopyTexImage1D
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTexImage1D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTexImage2D :: FunPtr FuntypeCopyTexImage2D -> FuntypeCopyTexImage2D
nonexistentCopyTexImage2D :: FuntypeCopyTexImage2D
nonexistentCopyTexImage2D
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTexImage2D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTexSubImage1D :: FunPtr FuntypeCopyTexSubImage1D -> FuntypeCopyTexSubImage1D
nonexistentCopyTexSubImage1D :: FuntypeCopyTexSubImage1D
nonexistentCopyTexSubImage1D
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTexSubImage1D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTexSubImage2D :: FunPtr FuntypeCopyTexSubImage2D -> FuntypeCopyTexSubImage2D
nonexistentCopyTexSubImage2D :: FuntypeCopyTexSubImage2D
nonexistentCopyTexSubImage2D
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTexSubImage2D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexSubImage1D :: FunPtr FuntypeTexSubImage1D -> FuntypeTexSubImage1D
nonexistentTexSubImage1D :: FuntypeTexSubImage1D
nonexistentTexSubImage1D
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexSubImage1D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexSubImage2D :: FunPtr FuntypeTexSubImage2D -> FuntypeTexSubImage2D
nonexistentTexSubImage2D :: FuntypeTexSubImage2D
nonexistentTexSubImage2D
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexSubImage2D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindTexture :: FunPtr FuntypeBindTexture -> FuntypeBindTexture
nonexistentBindTexture :: FuntypeBindTexture
nonexistentBindTexture
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindTexture"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteTextures :: FunPtr FuntypeDeleteTextures -> FuntypeDeleteTextures
nonexistentDeleteTextures :: FuntypeDeleteTextures
nonexistentDeleteTextures
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteTextures"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenTextures :: FunPtr FuntypeGenTextures -> FuntypeGenTextures
nonexistentGenTextures :: FuntypeGenTextures
nonexistentGenTextures
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenTextures"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsTexture :: FunPtr FuntypeIsTexture -> FuntypeIsTexture
nonexistentIsTexture :: FuntypeIsTexture
nonexistentIsTexture
    _
    = throwIO $ NonExistentOpenGLFunction "glIsTexture"

-- GL_VERSION_1_2

foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawRangeElements :: FunPtr FuntypeDrawRangeElements -> FuntypeDrawRangeElements
nonexistentDrawRangeElements :: FuntypeDrawRangeElements
nonexistentDrawRangeElements
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawRangeElements"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexImage3D :: FunPtr FuntypeTexImage3D -> FuntypeTexImage3D
nonexistentTexImage3D :: FuntypeTexImage3D
nonexistentTexImage3D
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexImage3D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexSubImage3D :: FunPtr FuntypeTexSubImage3D -> FuntypeTexSubImage3D
nonexistentTexSubImage3D :: FuntypeTexSubImage3D
nonexistentTexSubImage3D
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexSubImage3D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTexSubImage3D :: FunPtr FuntypeCopyTexSubImage3D -> FuntypeCopyTexSubImage3D
nonexistentCopyTexSubImage3D :: FuntypeCopyTexSubImage3D
nonexistentCopyTexSubImage3D
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTexSubImage3D"

-- GL_VERSION_1_3

foreign import ccall APIENTRY unsafe "dynamic"
    gldynActiveTexture :: FunPtr FuntypeActiveTexture -> FuntypeActiveTexture
nonexistentActiveTexture :: FuntypeActiveTexture
nonexistentActiveTexture
    _
    = throwIO $ NonExistentOpenGLFunction "glActiveTexture"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynSampleCoverage :: FunPtr FuntypeSampleCoverage -> FuntypeSampleCoverage
nonexistentSampleCoverage :: FuntypeSampleCoverage
nonexistentSampleCoverage
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glSampleCoverage"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTexImage3D :: FunPtr FuntypeCompressedTexImage3D -> FuntypeCompressedTexImage3D
nonexistentCompressedTexImage3D :: FuntypeCompressedTexImage3D
nonexistentCompressedTexImage3D
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTexImage3D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTexImage2D :: FunPtr FuntypeCompressedTexImage2D -> FuntypeCompressedTexImage2D
nonexistentCompressedTexImage2D :: FuntypeCompressedTexImage2D
nonexistentCompressedTexImage2D
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTexImage2D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTexImage1D :: FunPtr FuntypeCompressedTexImage1D -> FuntypeCompressedTexImage1D
nonexistentCompressedTexImage1D :: FuntypeCompressedTexImage1D
nonexistentCompressedTexImage1D
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTexImage1D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTexSubImage3D :: FunPtr FuntypeCompressedTexSubImage3D -> FuntypeCompressedTexSubImage3D
nonexistentCompressedTexSubImage3D :: FuntypeCompressedTexSubImage3D
nonexistentCompressedTexSubImage3D
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTexSubImage3D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTexSubImage2D :: FunPtr FuntypeCompressedTexSubImage2D -> FuntypeCompressedTexSubImage2D
nonexistentCompressedTexSubImage2D :: FuntypeCompressedTexSubImage2D
nonexistentCompressedTexSubImage2D
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTexSubImage2D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTexSubImage1D :: FunPtr FuntypeCompressedTexSubImage1D -> FuntypeCompressedTexSubImage1D
nonexistentCompressedTexSubImage1D :: FuntypeCompressedTexSubImage1D
nonexistentCompressedTexSubImage1D
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTexSubImage1D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetCompressedTexImage :: FunPtr FuntypeGetCompressedTexImage -> FuntypeGetCompressedTexImage
nonexistentGetCompressedTexImage :: FuntypeGetCompressedTexImage
nonexistentGetCompressedTexImage
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetCompressedTexImage"

-- GL_VERSION_1_4

foreign import ccall APIENTRY unsafe "dynamic"
    gldynBlendFuncSeparate :: FunPtr FuntypeBlendFuncSeparate -> FuntypeBlendFuncSeparate
nonexistentBlendFuncSeparate :: FuntypeBlendFuncSeparate
nonexistentBlendFuncSeparate
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBlendFuncSeparate"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiDrawArrays :: FunPtr FuntypeMultiDrawArrays -> FuntypeMultiDrawArrays
nonexistentMultiDrawArrays :: FuntypeMultiDrawArrays
nonexistentMultiDrawArrays
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiDrawArrays"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiDrawElements :: FunPtr FuntypeMultiDrawElements -> FuntypeMultiDrawElements
nonexistentMultiDrawElements :: FuntypeMultiDrawElements
nonexistentMultiDrawElements
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiDrawElements"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPointParameterf :: FunPtr FuntypePointParameterf -> FuntypePointParameterf
nonexistentPointParameterf :: FuntypePointParameterf
nonexistentPointParameterf
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPointParameterf"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPointParameterfv :: FunPtr FuntypePointParameterfv -> FuntypePointParameterfv
nonexistentPointParameterfv :: FuntypePointParameterfv
nonexistentPointParameterfv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPointParameterfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPointParameteri :: FunPtr FuntypePointParameteri -> FuntypePointParameteri
nonexistentPointParameteri :: FuntypePointParameteri
nonexistentPointParameteri
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPointParameteri"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPointParameteriv :: FunPtr FuntypePointParameteriv -> FuntypePointParameteriv
nonexistentPointParameteriv :: FuntypePointParameteriv
nonexistentPointParameteriv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPointParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBlendColor :: FunPtr FuntypeBlendColor -> FuntypeBlendColor
nonexistentBlendColor :: FuntypeBlendColor
nonexistentBlendColor
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBlendColor"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBlendEquation :: FunPtr FuntypeBlendEquation -> FuntypeBlendEquation
nonexistentBlendEquation :: FuntypeBlendEquation
nonexistentBlendEquation
    _
    = throwIO $ NonExistentOpenGLFunction "glBlendEquation"

-- GL_VERSION_1_5

foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenQueries :: FunPtr FuntypeGenQueries -> FuntypeGenQueries
nonexistentGenQueries :: FuntypeGenQueries
nonexistentGenQueries
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenQueries"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteQueries :: FunPtr FuntypeDeleteQueries -> FuntypeDeleteQueries
nonexistentDeleteQueries :: FuntypeDeleteQueries
nonexistentDeleteQueries
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteQueries"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsQuery :: FunPtr FuntypeIsQuery -> FuntypeIsQuery
nonexistentIsQuery :: FuntypeIsQuery
nonexistentIsQuery
    _
    = throwIO $ NonExistentOpenGLFunction "glIsQuery"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBeginQuery :: FunPtr FuntypeBeginQuery -> FuntypeBeginQuery
nonexistentBeginQuery :: FuntypeBeginQuery
nonexistentBeginQuery
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBeginQuery"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEndQuery :: FunPtr FuntypeEndQuery -> FuntypeEndQuery
nonexistentEndQuery :: FuntypeEndQuery
nonexistentEndQuery
    _
    = throwIO $ NonExistentOpenGLFunction "glEndQuery"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetQueryiv :: FunPtr FuntypeGetQueryiv -> FuntypeGetQueryiv
nonexistentGetQueryiv :: FuntypeGetQueryiv
nonexistentGetQueryiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetQueryiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetQueryObjectiv :: FunPtr FuntypeGetQueryObjectiv -> FuntypeGetQueryObjectiv
nonexistentGetQueryObjectiv :: FuntypeGetQueryObjectiv
nonexistentGetQueryObjectiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetQueryObjectiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetQueryObjectuiv :: FunPtr FuntypeGetQueryObjectuiv -> FuntypeGetQueryObjectuiv
nonexistentGetQueryObjectuiv :: FuntypeGetQueryObjectuiv
nonexistentGetQueryObjectuiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetQueryObjectuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindBuffer :: FunPtr FuntypeBindBuffer -> FuntypeBindBuffer
nonexistentBindBuffer :: FuntypeBindBuffer
nonexistentBindBuffer
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindBuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteBuffers :: FunPtr FuntypeDeleteBuffers -> FuntypeDeleteBuffers
nonexistentDeleteBuffers :: FuntypeDeleteBuffers
nonexistentDeleteBuffers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteBuffers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenBuffers :: FunPtr FuntypeGenBuffers -> FuntypeGenBuffers
nonexistentGenBuffers :: FuntypeGenBuffers
nonexistentGenBuffers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenBuffers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsBuffer :: FunPtr FuntypeIsBuffer -> FuntypeIsBuffer
nonexistentIsBuffer :: FuntypeIsBuffer
nonexistentIsBuffer
    _
    = throwIO $ NonExistentOpenGLFunction "glIsBuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBufferData :: FunPtr FuntypeBufferData -> FuntypeBufferData
nonexistentBufferData :: FuntypeBufferData
nonexistentBufferData
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBufferData"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBufferSubData :: FunPtr FuntypeBufferSubData -> FuntypeBufferSubData
nonexistentBufferSubData :: FuntypeBufferSubData
nonexistentBufferSubData
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBufferSubData"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetBufferSubData :: FunPtr FuntypeGetBufferSubData -> FuntypeGetBufferSubData
nonexistentGetBufferSubData :: FuntypeGetBufferSubData
nonexistentGetBufferSubData
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetBufferSubData"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMapBuffer :: FunPtr FuntypeMapBuffer -> FuntypeMapBuffer
nonexistentMapBuffer :: FuntypeMapBuffer
nonexistentMapBuffer
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMapBuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUnmapBuffer :: FunPtr FuntypeUnmapBuffer -> FuntypeUnmapBuffer
nonexistentUnmapBuffer :: FuntypeUnmapBuffer
nonexistentUnmapBuffer
    _
    = throwIO $ NonExistentOpenGLFunction "glUnmapBuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetBufferParameteriv :: FunPtr FuntypeGetBufferParameteriv -> FuntypeGetBufferParameteriv
nonexistentGetBufferParameteriv :: FuntypeGetBufferParameteriv
nonexistentGetBufferParameteriv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetBufferParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetBufferPointerv :: FunPtr FuntypeGetBufferPointerv -> FuntypeGetBufferPointerv
nonexistentGetBufferPointerv :: FuntypeGetBufferPointerv
nonexistentGetBufferPointerv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetBufferPointerv"

-- GL_VERSION_2_0

foreign import ccall APIENTRY unsafe "dynamic"
    gldynBlendEquationSeparate :: FunPtr FuntypeBlendEquationSeparate -> FuntypeBlendEquationSeparate
nonexistentBlendEquationSeparate :: FuntypeBlendEquationSeparate
nonexistentBlendEquationSeparate
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBlendEquationSeparate"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawBuffers :: FunPtr FuntypeDrawBuffers -> FuntypeDrawBuffers
nonexistentDrawBuffers :: FuntypeDrawBuffers
nonexistentDrawBuffers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawBuffers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynStencilOpSeparate :: FunPtr FuntypeStencilOpSeparate -> FuntypeStencilOpSeparate
nonexistentStencilOpSeparate :: FuntypeStencilOpSeparate
nonexistentStencilOpSeparate
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glStencilOpSeparate"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynStencilFuncSeparate :: FunPtr FuntypeStencilFuncSeparate -> FuntypeStencilFuncSeparate
nonexistentStencilFuncSeparate :: FuntypeStencilFuncSeparate
nonexistentStencilFuncSeparate
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glStencilFuncSeparate"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynStencilMaskSeparate :: FunPtr FuntypeStencilMaskSeparate -> FuntypeStencilMaskSeparate
nonexistentStencilMaskSeparate :: FuntypeStencilMaskSeparate
nonexistentStencilMaskSeparate
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glStencilMaskSeparate"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynAttachShader :: FunPtr FuntypeAttachShader -> FuntypeAttachShader
nonexistentAttachShader :: FuntypeAttachShader
nonexistentAttachShader
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glAttachShader"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindAttribLocation :: FunPtr FuntypeBindAttribLocation -> FuntypeBindAttribLocation
nonexistentBindAttribLocation :: FuntypeBindAttribLocation
nonexistentBindAttribLocation
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindAttribLocation"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompileShader :: FunPtr FuntypeCompileShader -> FuntypeCompileShader
nonexistentCompileShader :: FuntypeCompileShader
nonexistentCompileShader
    _
    = throwIO $ NonExistentOpenGLFunction "glCompileShader"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCreateProgram :: FunPtr FuntypeCreateProgram -> FuntypeCreateProgram
nonexistentCreateProgram :: FuntypeCreateProgram
nonexistentCreateProgram
    = throwIO $ NonExistentOpenGLFunction "glCreateProgram"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCreateShader :: FunPtr FuntypeCreateShader -> FuntypeCreateShader
nonexistentCreateShader :: FuntypeCreateShader
nonexistentCreateShader
    _
    = throwIO $ NonExistentOpenGLFunction "glCreateShader"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteProgram :: FunPtr FuntypeDeleteProgram -> FuntypeDeleteProgram
nonexistentDeleteProgram :: FuntypeDeleteProgram
nonexistentDeleteProgram
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteProgram"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteShader :: FunPtr FuntypeDeleteShader -> FuntypeDeleteShader
nonexistentDeleteShader :: FuntypeDeleteShader
nonexistentDeleteShader
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteShader"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDetachShader :: FunPtr FuntypeDetachShader -> FuntypeDetachShader
nonexistentDetachShader :: FuntypeDetachShader
nonexistentDetachShader
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDetachShader"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDisableVertexAttribArray :: FunPtr FuntypeDisableVertexAttribArray -> FuntypeDisableVertexAttribArray
nonexistentDisableVertexAttribArray :: FuntypeDisableVertexAttribArray
nonexistentDisableVertexAttribArray
    _
    = throwIO $ NonExistentOpenGLFunction "glDisableVertexAttribArray"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEnableVertexAttribArray :: FunPtr FuntypeEnableVertexAttribArray -> FuntypeEnableVertexAttribArray
nonexistentEnableVertexAttribArray :: FuntypeEnableVertexAttribArray
nonexistentEnableVertexAttribArray
    _
    = throwIO $ NonExistentOpenGLFunction "glEnableVertexAttribArray"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetActiveAttrib :: FunPtr FuntypeGetActiveAttrib -> FuntypeGetActiveAttrib
nonexistentGetActiveAttrib :: FuntypeGetActiveAttrib
nonexistentGetActiveAttrib
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetActiveAttrib"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetActiveUniform :: FunPtr FuntypeGetActiveUniform -> FuntypeGetActiveUniform
nonexistentGetActiveUniform :: FuntypeGetActiveUniform
nonexistentGetActiveUniform
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetActiveUniform"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetAttachedShaders :: FunPtr FuntypeGetAttachedShaders -> FuntypeGetAttachedShaders
nonexistentGetAttachedShaders :: FuntypeGetAttachedShaders
nonexistentGetAttachedShaders
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetAttachedShaders"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetAttribLocation :: FunPtr FuntypeGetAttribLocation -> FuntypeGetAttribLocation
nonexistentGetAttribLocation :: FuntypeGetAttribLocation
nonexistentGetAttribLocation
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetAttribLocation"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetProgramiv :: FunPtr FuntypeGetProgramiv -> FuntypeGetProgramiv
nonexistentGetProgramiv :: FuntypeGetProgramiv
nonexistentGetProgramiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetProgramiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetProgramInfoLog :: FunPtr FuntypeGetProgramInfoLog -> FuntypeGetProgramInfoLog
nonexistentGetProgramInfoLog :: FuntypeGetProgramInfoLog
nonexistentGetProgramInfoLog
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetProgramInfoLog"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetShaderiv :: FunPtr FuntypeGetShaderiv -> FuntypeGetShaderiv
nonexistentGetShaderiv :: FuntypeGetShaderiv
nonexistentGetShaderiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetShaderiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetShaderInfoLog :: FunPtr FuntypeGetShaderInfoLog -> FuntypeGetShaderInfoLog
nonexistentGetShaderInfoLog :: FuntypeGetShaderInfoLog
nonexistentGetShaderInfoLog
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetShaderInfoLog"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetShaderSource :: FunPtr FuntypeGetShaderSource -> FuntypeGetShaderSource
nonexistentGetShaderSource :: FuntypeGetShaderSource
nonexistentGetShaderSource
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetShaderSource"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetUniformLocation :: FunPtr FuntypeGetUniformLocation -> FuntypeGetUniformLocation
nonexistentGetUniformLocation :: FuntypeGetUniformLocation
nonexistentGetUniformLocation
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetUniformLocation"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetUniformfv :: FunPtr FuntypeGetUniformfv -> FuntypeGetUniformfv
nonexistentGetUniformfv :: FuntypeGetUniformfv
nonexistentGetUniformfv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetUniformfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetUniformiv :: FunPtr FuntypeGetUniformiv -> FuntypeGetUniformiv
nonexistentGetUniformiv :: FuntypeGetUniformiv
nonexistentGetUniformiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetUniformiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexAttribdv :: FunPtr FuntypeGetVertexAttribdv -> FuntypeGetVertexAttribdv
nonexistentGetVertexAttribdv :: FuntypeGetVertexAttribdv
nonexistentGetVertexAttribdv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexAttribdv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexAttribfv :: FunPtr FuntypeGetVertexAttribfv -> FuntypeGetVertexAttribfv
nonexistentGetVertexAttribfv :: FuntypeGetVertexAttribfv
nonexistentGetVertexAttribfv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexAttribfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexAttribiv :: FunPtr FuntypeGetVertexAttribiv -> FuntypeGetVertexAttribiv
nonexistentGetVertexAttribiv :: FuntypeGetVertexAttribiv
nonexistentGetVertexAttribiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexAttribiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexAttribPointerv :: FunPtr FuntypeGetVertexAttribPointerv -> FuntypeGetVertexAttribPointerv
nonexistentGetVertexAttribPointerv :: FuntypeGetVertexAttribPointerv
nonexistentGetVertexAttribPointerv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexAttribPointerv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsProgram :: FunPtr FuntypeIsProgram -> FuntypeIsProgram
nonexistentIsProgram :: FuntypeIsProgram
nonexistentIsProgram
    _
    = throwIO $ NonExistentOpenGLFunction "glIsProgram"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsShader :: FunPtr FuntypeIsShader -> FuntypeIsShader
nonexistentIsShader :: FuntypeIsShader
nonexistentIsShader
    _
    = throwIO $ NonExistentOpenGLFunction "glIsShader"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynLinkProgram :: FunPtr FuntypeLinkProgram -> FuntypeLinkProgram
nonexistentLinkProgram :: FuntypeLinkProgram
nonexistentLinkProgram
    _
    = throwIO $ NonExistentOpenGLFunction "glLinkProgram"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynShaderSource :: FunPtr FuntypeShaderSource -> FuntypeShaderSource
nonexistentShaderSource :: FuntypeShaderSource
nonexistentShaderSource
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glShaderSource"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUseProgram :: FunPtr FuntypeUseProgram -> FuntypeUseProgram
nonexistentUseProgram :: FuntypeUseProgram
nonexistentUseProgram
    _
    = throwIO $ NonExistentOpenGLFunction "glUseProgram"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform1f :: FunPtr FuntypeUniform1f -> FuntypeUniform1f
nonexistentUniform1f :: FuntypeUniform1f
nonexistentUniform1f
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform1f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform2f :: FunPtr FuntypeUniform2f -> FuntypeUniform2f
nonexistentUniform2f :: FuntypeUniform2f
nonexistentUniform2f
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform2f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform3f :: FunPtr FuntypeUniform3f -> FuntypeUniform3f
nonexistentUniform3f :: FuntypeUniform3f
nonexistentUniform3f
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform3f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform4f :: FunPtr FuntypeUniform4f -> FuntypeUniform4f
nonexistentUniform4f :: FuntypeUniform4f
nonexistentUniform4f
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform4f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform1i :: FunPtr FuntypeUniform1i -> FuntypeUniform1i
nonexistentUniform1i :: FuntypeUniform1i
nonexistentUniform1i
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform1i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform2i :: FunPtr FuntypeUniform2i -> FuntypeUniform2i
nonexistentUniform2i :: FuntypeUniform2i
nonexistentUniform2i
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform2i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform3i :: FunPtr FuntypeUniform3i -> FuntypeUniform3i
nonexistentUniform3i :: FuntypeUniform3i
nonexistentUniform3i
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform3i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform4i :: FunPtr FuntypeUniform4i -> FuntypeUniform4i
nonexistentUniform4i :: FuntypeUniform4i
nonexistentUniform4i
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform4i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform1fv :: FunPtr FuntypeUniform1fv -> FuntypeUniform1fv
nonexistentUniform1fv :: FuntypeUniform1fv
nonexistentUniform1fv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform1fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform2fv :: FunPtr FuntypeUniform2fv -> FuntypeUniform2fv
nonexistentUniform2fv :: FuntypeUniform2fv
nonexistentUniform2fv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform3fv :: FunPtr FuntypeUniform3fv -> FuntypeUniform3fv
nonexistentUniform3fv :: FuntypeUniform3fv
nonexistentUniform3fv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform3fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform4fv :: FunPtr FuntypeUniform4fv -> FuntypeUniform4fv
nonexistentUniform4fv :: FuntypeUniform4fv
nonexistentUniform4fv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform1iv :: FunPtr FuntypeUniform1iv -> FuntypeUniform1iv
nonexistentUniform1iv :: FuntypeUniform1iv
nonexistentUniform1iv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform1iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform2iv :: FunPtr FuntypeUniform2iv -> FuntypeUniform2iv
nonexistentUniform2iv :: FuntypeUniform2iv
nonexistentUniform2iv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform2iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform3iv :: FunPtr FuntypeUniform3iv -> FuntypeUniform3iv
nonexistentUniform3iv :: FuntypeUniform3iv
nonexistentUniform3iv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform3iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform4iv :: FunPtr FuntypeUniform4iv -> FuntypeUniform4iv
nonexistentUniform4iv :: FuntypeUniform4iv
nonexistentUniform4iv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform4iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix2fv :: FunPtr FuntypeUniformMatrix2fv -> FuntypeUniformMatrix2fv
nonexistentUniformMatrix2fv :: FuntypeUniformMatrix2fv
nonexistentUniformMatrix2fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix3fv :: FunPtr FuntypeUniformMatrix3fv -> FuntypeUniformMatrix3fv
nonexistentUniformMatrix3fv :: FuntypeUniformMatrix3fv
nonexistentUniformMatrix3fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix3fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix4fv :: FunPtr FuntypeUniformMatrix4fv -> FuntypeUniformMatrix4fv
nonexistentUniformMatrix4fv :: FuntypeUniformMatrix4fv
nonexistentUniformMatrix4fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynValidateProgram :: FunPtr FuntypeValidateProgram -> FuntypeValidateProgram
nonexistentValidateProgram :: FuntypeValidateProgram
nonexistentValidateProgram
    _
    = throwIO $ NonExistentOpenGLFunction "glValidateProgram"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib1d :: FunPtr FuntypeVertexAttrib1d -> FuntypeVertexAttrib1d
nonexistentVertexAttrib1d :: FuntypeVertexAttrib1d
nonexistentVertexAttrib1d
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib1d"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib1dv :: FunPtr FuntypeVertexAttrib1dv -> FuntypeVertexAttrib1dv
nonexistentVertexAttrib1dv :: FuntypeVertexAttrib1dv
nonexistentVertexAttrib1dv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib1dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib1f :: FunPtr FuntypeVertexAttrib1f -> FuntypeVertexAttrib1f
nonexistentVertexAttrib1f :: FuntypeVertexAttrib1f
nonexistentVertexAttrib1f
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib1f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib1fv :: FunPtr FuntypeVertexAttrib1fv -> FuntypeVertexAttrib1fv
nonexistentVertexAttrib1fv :: FuntypeVertexAttrib1fv
nonexistentVertexAttrib1fv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib1fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib1s :: FunPtr FuntypeVertexAttrib1s -> FuntypeVertexAttrib1s
nonexistentVertexAttrib1s :: FuntypeVertexAttrib1s
nonexistentVertexAttrib1s
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib1s"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib1sv :: FunPtr FuntypeVertexAttrib1sv -> FuntypeVertexAttrib1sv
nonexistentVertexAttrib1sv :: FuntypeVertexAttrib1sv
nonexistentVertexAttrib1sv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib1sv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib2d :: FunPtr FuntypeVertexAttrib2d -> FuntypeVertexAttrib2d
nonexistentVertexAttrib2d :: FuntypeVertexAttrib2d
nonexistentVertexAttrib2d
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib2d"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib2dv :: FunPtr FuntypeVertexAttrib2dv -> FuntypeVertexAttrib2dv
nonexistentVertexAttrib2dv :: FuntypeVertexAttrib2dv
nonexistentVertexAttrib2dv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib2dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib2f :: FunPtr FuntypeVertexAttrib2f -> FuntypeVertexAttrib2f
nonexistentVertexAttrib2f :: FuntypeVertexAttrib2f
nonexistentVertexAttrib2f
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib2f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib2fv :: FunPtr FuntypeVertexAttrib2fv -> FuntypeVertexAttrib2fv
nonexistentVertexAttrib2fv :: FuntypeVertexAttrib2fv
nonexistentVertexAttrib2fv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib2s :: FunPtr FuntypeVertexAttrib2s -> FuntypeVertexAttrib2s
nonexistentVertexAttrib2s :: FuntypeVertexAttrib2s
nonexistentVertexAttrib2s
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib2s"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib2sv :: FunPtr FuntypeVertexAttrib2sv -> FuntypeVertexAttrib2sv
nonexistentVertexAttrib2sv :: FuntypeVertexAttrib2sv
nonexistentVertexAttrib2sv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib2sv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib3d :: FunPtr FuntypeVertexAttrib3d -> FuntypeVertexAttrib3d
nonexistentVertexAttrib3d :: FuntypeVertexAttrib3d
nonexistentVertexAttrib3d
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib3d"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib3dv :: FunPtr FuntypeVertexAttrib3dv -> FuntypeVertexAttrib3dv
nonexistentVertexAttrib3dv :: FuntypeVertexAttrib3dv
nonexistentVertexAttrib3dv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib3dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib3f :: FunPtr FuntypeVertexAttrib3f -> FuntypeVertexAttrib3f
nonexistentVertexAttrib3f :: FuntypeVertexAttrib3f
nonexistentVertexAttrib3f
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib3f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib3fv :: FunPtr FuntypeVertexAttrib3fv -> FuntypeVertexAttrib3fv
nonexistentVertexAttrib3fv :: FuntypeVertexAttrib3fv
nonexistentVertexAttrib3fv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib3fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib3s :: FunPtr FuntypeVertexAttrib3s -> FuntypeVertexAttrib3s
nonexistentVertexAttrib3s :: FuntypeVertexAttrib3s
nonexistentVertexAttrib3s
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib3s"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib3sv :: FunPtr FuntypeVertexAttrib3sv -> FuntypeVertexAttrib3sv
nonexistentVertexAttrib3sv :: FuntypeVertexAttrib3sv
nonexistentVertexAttrib3sv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib3sv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4Nbv :: FunPtr FuntypeVertexAttrib4Nbv -> FuntypeVertexAttrib4Nbv
nonexistentVertexAttrib4Nbv :: FuntypeVertexAttrib4Nbv
nonexistentVertexAttrib4Nbv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4Nbv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4Niv :: FunPtr FuntypeVertexAttrib4Niv -> FuntypeVertexAttrib4Niv
nonexistentVertexAttrib4Niv :: FuntypeVertexAttrib4Niv
nonexistentVertexAttrib4Niv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4Niv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4Nsv :: FunPtr FuntypeVertexAttrib4Nsv -> FuntypeVertexAttrib4Nsv
nonexistentVertexAttrib4Nsv :: FuntypeVertexAttrib4Nsv
nonexistentVertexAttrib4Nsv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4Nsv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4Nub :: FunPtr FuntypeVertexAttrib4Nub -> FuntypeVertexAttrib4Nub
nonexistentVertexAttrib4Nub :: FuntypeVertexAttrib4Nub
nonexistentVertexAttrib4Nub
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4Nub"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4Nubv :: FunPtr FuntypeVertexAttrib4Nubv -> FuntypeVertexAttrib4Nubv
nonexistentVertexAttrib4Nubv :: FuntypeVertexAttrib4Nubv
nonexistentVertexAttrib4Nubv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4Nubv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4Nuiv :: FunPtr FuntypeVertexAttrib4Nuiv -> FuntypeVertexAttrib4Nuiv
nonexistentVertexAttrib4Nuiv :: FuntypeVertexAttrib4Nuiv
nonexistentVertexAttrib4Nuiv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4Nuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4Nusv :: FunPtr FuntypeVertexAttrib4Nusv -> FuntypeVertexAttrib4Nusv
nonexistentVertexAttrib4Nusv :: FuntypeVertexAttrib4Nusv
nonexistentVertexAttrib4Nusv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4Nusv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4bv :: FunPtr FuntypeVertexAttrib4bv -> FuntypeVertexAttrib4bv
nonexistentVertexAttrib4bv :: FuntypeVertexAttrib4bv
nonexistentVertexAttrib4bv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4bv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4d :: FunPtr FuntypeVertexAttrib4d -> FuntypeVertexAttrib4d
nonexistentVertexAttrib4d :: FuntypeVertexAttrib4d
nonexistentVertexAttrib4d
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4d"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4dv :: FunPtr FuntypeVertexAttrib4dv -> FuntypeVertexAttrib4dv
nonexistentVertexAttrib4dv :: FuntypeVertexAttrib4dv
nonexistentVertexAttrib4dv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4f :: FunPtr FuntypeVertexAttrib4f -> FuntypeVertexAttrib4f
nonexistentVertexAttrib4f :: FuntypeVertexAttrib4f
nonexistentVertexAttrib4f
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4fv :: FunPtr FuntypeVertexAttrib4fv -> FuntypeVertexAttrib4fv
nonexistentVertexAttrib4fv :: FuntypeVertexAttrib4fv
nonexistentVertexAttrib4fv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4iv :: FunPtr FuntypeVertexAttrib4iv -> FuntypeVertexAttrib4iv
nonexistentVertexAttrib4iv :: FuntypeVertexAttrib4iv
nonexistentVertexAttrib4iv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4s :: FunPtr FuntypeVertexAttrib4s -> FuntypeVertexAttrib4s
nonexistentVertexAttrib4s :: FuntypeVertexAttrib4s
nonexistentVertexAttrib4s
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4s"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4sv :: FunPtr FuntypeVertexAttrib4sv -> FuntypeVertexAttrib4sv
nonexistentVertexAttrib4sv :: FuntypeVertexAttrib4sv
nonexistentVertexAttrib4sv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4sv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4ubv :: FunPtr FuntypeVertexAttrib4ubv -> FuntypeVertexAttrib4ubv
nonexistentVertexAttrib4ubv :: FuntypeVertexAttrib4ubv
nonexistentVertexAttrib4ubv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4ubv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4uiv :: FunPtr FuntypeVertexAttrib4uiv -> FuntypeVertexAttrib4uiv
nonexistentVertexAttrib4uiv :: FuntypeVertexAttrib4uiv
nonexistentVertexAttrib4uiv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttrib4usv :: FunPtr FuntypeVertexAttrib4usv -> FuntypeVertexAttrib4usv
nonexistentVertexAttrib4usv :: FuntypeVertexAttrib4usv
nonexistentVertexAttrib4usv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttrib4usv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribPointer :: FunPtr FuntypeVertexAttribPointer -> FuntypeVertexAttribPointer
nonexistentVertexAttribPointer :: FuntypeVertexAttribPointer
nonexistentVertexAttribPointer
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribPointer"

-- GL_VERSION_2_1

foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix2x3fv :: FunPtr FuntypeUniformMatrix2x3fv -> FuntypeUniformMatrix2x3fv
nonexistentUniformMatrix2x3fv :: FuntypeUniformMatrix2x3fv
nonexistentUniformMatrix2x3fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix2x3fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix3x2fv :: FunPtr FuntypeUniformMatrix3x2fv -> FuntypeUniformMatrix3x2fv
nonexistentUniformMatrix3x2fv :: FuntypeUniformMatrix3x2fv
nonexistentUniformMatrix3x2fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix3x2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix2x4fv :: FunPtr FuntypeUniformMatrix2x4fv -> FuntypeUniformMatrix2x4fv
nonexistentUniformMatrix2x4fv :: FuntypeUniformMatrix2x4fv
nonexistentUniformMatrix2x4fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix2x4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix4x2fv :: FunPtr FuntypeUniformMatrix4x2fv -> FuntypeUniformMatrix4x2fv
nonexistentUniformMatrix4x2fv :: FuntypeUniformMatrix4x2fv
nonexistentUniformMatrix4x2fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix4x2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix3x4fv :: FunPtr FuntypeUniformMatrix3x4fv -> FuntypeUniformMatrix3x4fv
nonexistentUniformMatrix3x4fv :: FuntypeUniformMatrix3x4fv
nonexistentUniformMatrix3x4fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix3x4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformMatrix4x3fv :: FunPtr FuntypeUniformMatrix4x3fv -> FuntypeUniformMatrix4x3fv
nonexistentUniformMatrix4x3fv :: FuntypeUniformMatrix4x3fv
nonexistentUniformMatrix4x3fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformMatrix4x3fv"

-- GL_VERSION_3_0

foreign import ccall APIENTRY unsafe "dynamic"
    gldynColorMaski :: FunPtr FuntypeColorMaski -> FuntypeColorMaski
nonexistentColorMaski :: FuntypeColorMaski
nonexistentColorMaski
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glColorMaski"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetBooleani_v :: FunPtr FuntypeGetBooleani_v -> FuntypeGetBooleani_v
nonexistentGetBooleani_v :: FuntypeGetBooleani_v
nonexistentGetBooleani_v
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetBooleani_v"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetIntegeri_v :: FunPtr FuntypeGetIntegeri_v -> FuntypeGetIntegeri_v
nonexistentGetIntegeri_v :: FuntypeGetIntegeri_v
nonexistentGetIntegeri_v
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetIntegeri_v"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEnablei :: FunPtr FuntypeEnablei -> FuntypeEnablei
nonexistentEnablei :: FuntypeEnablei
nonexistentEnablei
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glEnablei"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDisablei :: FunPtr FuntypeDisablei -> FuntypeDisablei
nonexistentDisablei :: FuntypeDisablei
nonexistentDisablei
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDisablei"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsEnabledi :: FunPtr FuntypeIsEnabledi -> FuntypeIsEnabledi
nonexistentIsEnabledi :: FuntypeIsEnabledi
nonexistentIsEnabledi
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glIsEnabledi"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBeginTransformFeedback :: FunPtr FuntypeBeginTransformFeedback -> FuntypeBeginTransformFeedback
nonexistentBeginTransformFeedback :: FuntypeBeginTransformFeedback
nonexistentBeginTransformFeedback
    _
    = throwIO $ NonExistentOpenGLFunction "glBeginTransformFeedback"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEndTransformFeedback :: FunPtr FuntypeEndTransformFeedback -> FuntypeEndTransformFeedback
nonexistentEndTransformFeedback :: FuntypeEndTransformFeedback
nonexistentEndTransformFeedback
    = throwIO $ NonExistentOpenGLFunction "glEndTransformFeedback"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindBufferRange :: FunPtr FuntypeBindBufferRange -> FuntypeBindBufferRange
nonexistentBindBufferRange :: FuntypeBindBufferRange
nonexistentBindBufferRange
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindBufferRange"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindBufferBase :: FunPtr FuntypeBindBufferBase -> FuntypeBindBufferBase
nonexistentBindBufferBase :: FuntypeBindBufferBase
nonexistentBindBufferBase
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindBufferBase"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTransformFeedbackVaryings :: FunPtr FuntypeTransformFeedbackVaryings -> FuntypeTransformFeedbackVaryings
nonexistentTransformFeedbackVaryings :: FuntypeTransformFeedbackVaryings
nonexistentTransformFeedbackVaryings
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTransformFeedbackVaryings"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTransformFeedbackVarying :: FunPtr FuntypeGetTransformFeedbackVarying -> FuntypeGetTransformFeedbackVarying
nonexistentGetTransformFeedbackVarying :: FuntypeGetTransformFeedbackVarying
nonexistentGetTransformFeedbackVarying
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTransformFeedbackVarying"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClampColor :: FunPtr FuntypeClampColor -> FuntypeClampColor
nonexistentClampColor :: FuntypeClampColor
nonexistentClampColor
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClampColor"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBeginConditionalRender :: FunPtr FuntypeBeginConditionalRender -> FuntypeBeginConditionalRender
nonexistentBeginConditionalRender :: FuntypeBeginConditionalRender
nonexistentBeginConditionalRender
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBeginConditionalRender"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEndConditionalRender :: FunPtr FuntypeEndConditionalRender -> FuntypeEndConditionalRender
nonexistentEndConditionalRender :: FuntypeEndConditionalRender
nonexistentEndConditionalRender
    = throwIO $ NonExistentOpenGLFunction "glEndConditionalRender"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribIPointer :: FunPtr FuntypeVertexAttribIPointer -> FuntypeVertexAttribIPointer
nonexistentVertexAttribIPointer :: FuntypeVertexAttribIPointer
nonexistentVertexAttribIPointer
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribIPointer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexAttribIiv :: FunPtr FuntypeGetVertexAttribIiv -> FuntypeGetVertexAttribIiv
nonexistentGetVertexAttribIiv :: FuntypeGetVertexAttribIiv
nonexistentGetVertexAttribIiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexAttribIiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexAttribIuiv :: FunPtr FuntypeGetVertexAttribIuiv -> FuntypeGetVertexAttribIuiv
nonexistentGetVertexAttribIuiv :: FuntypeGetVertexAttribIuiv
nonexistentGetVertexAttribIuiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexAttribIuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI1i :: FunPtr FuntypeVertexAttribI1i -> FuntypeVertexAttribI1i
nonexistentVertexAttribI1i :: FuntypeVertexAttribI1i
nonexistentVertexAttribI1i
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI1i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI2i :: FunPtr FuntypeVertexAttribI2i -> FuntypeVertexAttribI2i
nonexistentVertexAttribI2i :: FuntypeVertexAttribI2i
nonexistentVertexAttribI2i
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI2i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI3i :: FunPtr FuntypeVertexAttribI3i -> FuntypeVertexAttribI3i
nonexistentVertexAttribI3i :: FuntypeVertexAttribI3i
nonexistentVertexAttribI3i
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI3i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI4i :: FunPtr FuntypeVertexAttribI4i -> FuntypeVertexAttribI4i
nonexistentVertexAttribI4i :: FuntypeVertexAttribI4i
nonexistentVertexAttribI4i
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI4i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI1ui :: FunPtr FuntypeVertexAttribI1ui -> FuntypeVertexAttribI1ui
nonexistentVertexAttribI1ui :: FuntypeVertexAttribI1ui
nonexistentVertexAttribI1ui
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI1ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI2ui :: FunPtr FuntypeVertexAttribI2ui -> FuntypeVertexAttribI2ui
nonexistentVertexAttribI2ui :: FuntypeVertexAttribI2ui
nonexistentVertexAttribI2ui
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI2ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI3ui :: FunPtr FuntypeVertexAttribI3ui -> FuntypeVertexAttribI3ui
nonexistentVertexAttribI3ui :: FuntypeVertexAttribI3ui
nonexistentVertexAttribI3ui
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI3ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI4ui :: FunPtr FuntypeVertexAttribI4ui -> FuntypeVertexAttribI4ui
nonexistentVertexAttribI4ui :: FuntypeVertexAttribI4ui
nonexistentVertexAttribI4ui
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI4ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI1iv :: FunPtr FuntypeVertexAttribI1iv -> FuntypeVertexAttribI1iv
nonexistentVertexAttribI1iv :: FuntypeVertexAttribI1iv
nonexistentVertexAttribI1iv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI1iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI2iv :: FunPtr FuntypeVertexAttribI2iv -> FuntypeVertexAttribI2iv
nonexistentVertexAttribI2iv :: FuntypeVertexAttribI2iv
nonexistentVertexAttribI2iv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI2iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI3iv :: FunPtr FuntypeVertexAttribI3iv -> FuntypeVertexAttribI3iv
nonexistentVertexAttribI3iv :: FuntypeVertexAttribI3iv
nonexistentVertexAttribI3iv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI3iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI4iv :: FunPtr FuntypeVertexAttribI4iv -> FuntypeVertexAttribI4iv
nonexistentVertexAttribI4iv :: FuntypeVertexAttribI4iv
nonexistentVertexAttribI4iv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI4iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI1uiv :: FunPtr FuntypeVertexAttribI1uiv -> FuntypeVertexAttribI1uiv
nonexistentVertexAttribI1uiv :: FuntypeVertexAttribI1uiv
nonexistentVertexAttribI1uiv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI1uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI2uiv :: FunPtr FuntypeVertexAttribI2uiv -> FuntypeVertexAttribI2uiv
nonexistentVertexAttribI2uiv :: FuntypeVertexAttribI2uiv
nonexistentVertexAttribI2uiv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI2uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI3uiv :: FunPtr FuntypeVertexAttribI3uiv -> FuntypeVertexAttribI3uiv
nonexistentVertexAttribI3uiv :: FuntypeVertexAttribI3uiv
nonexistentVertexAttribI3uiv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI3uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI4uiv :: FunPtr FuntypeVertexAttribI4uiv -> FuntypeVertexAttribI4uiv
nonexistentVertexAttribI4uiv :: FuntypeVertexAttribI4uiv
nonexistentVertexAttribI4uiv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI4uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI4bv :: FunPtr FuntypeVertexAttribI4bv -> FuntypeVertexAttribI4bv
nonexistentVertexAttribI4bv :: FuntypeVertexAttribI4bv
nonexistentVertexAttribI4bv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI4bv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI4sv :: FunPtr FuntypeVertexAttribI4sv -> FuntypeVertexAttribI4sv
nonexistentVertexAttribI4sv :: FuntypeVertexAttribI4sv
nonexistentVertexAttribI4sv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI4sv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI4ubv :: FunPtr FuntypeVertexAttribI4ubv -> FuntypeVertexAttribI4ubv
nonexistentVertexAttribI4ubv :: FuntypeVertexAttribI4ubv
nonexistentVertexAttribI4ubv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI4ubv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribI4usv :: FunPtr FuntypeVertexAttribI4usv -> FuntypeVertexAttribI4usv
nonexistentVertexAttribI4usv :: FuntypeVertexAttribI4usv
nonexistentVertexAttribI4usv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribI4usv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetUniformuiv :: FunPtr FuntypeGetUniformuiv -> FuntypeGetUniformuiv
nonexistentGetUniformuiv :: FuntypeGetUniformuiv
nonexistentGetUniformuiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetUniformuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindFragDataLocation :: FunPtr FuntypeBindFragDataLocation -> FuntypeBindFragDataLocation
nonexistentBindFragDataLocation :: FuntypeBindFragDataLocation
nonexistentBindFragDataLocation
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindFragDataLocation"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetFragDataLocation :: FunPtr FuntypeGetFragDataLocation -> FuntypeGetFragDataLocation
nonexistentGetFragDataLocation :: FuntypeGetFragDataLocation
nonexistentGetFragDataLocation
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetFragDataLocation"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform1ui :: FunPtr FuntypeUniform1ui -> FuntypeUniform1ui
nonexistentUniform1ui :: FuntypeUniform1ui
nonexistentUniform1ui
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform1ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform2ui :: FunPtr FuntypeUniform2ui -> FuntypeUniform2ui
nonexistentUniform2ui :: FuntypeUniform2ui
nonexistentUniform2ui
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform2ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform3ui :: FunPtr FuntypeUniform3ui -> FuntypeUniform3ui
nonexistentUniform3ui :: FuntypeUniform3ui
nonexistentUniform3ui
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform3ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform4ui :: FunPtr FuntypeUniform4ui -> FuntypeUniform4ui
nonexistentUniform4ui :: FuntypeUniform4ui
nonexistentUniform4ui
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform4ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform1uiv :: FunPtr FuntypeUniform1uiv -> FuntypeUniform1uiv
nonexistentUniform1uiv :: FuntypeUniform1uiv
nonexistentUniform1uiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform1uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform2uiv :: FunPtr FuntypeUniform2uiv -> FuntypeUniform2uiv
nonexistentUniform2uiv :: FuntypeUniform2uiv
nonexistentUniform2uiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform2uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform3uiv :: FunPtr FuntypeUniform3uiv -> FuntypeUniform3uiv
nonexistentUniform3uiv :: FuntypeUniform3uiv
nonexistentUniform3uiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform3uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniform4uiv :: FunPtr FuntypeUniform4uiv -> FuntypeUniform4uiv
nonexistentUniform4uiv :: FuntypeUniform4uiv
nonexistentUniform4uiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniform4uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexParameterIiv :: FunPtr FuntypeTexParameterIiv -> FuntypeTexParameterIiv
nonexistentTexParameterIiv :: FuntypeTexParameterIiv
nonexistentTexParameterIiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexParameterIiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexParameterIuiv :: FunPtr FuntypeTexParameterIuiv -> FuntypeTexParameterIuiv
nonexistentTexParameterIuiv :: FuntypeTexParameterIuiv
nonexistentTexParameterIuiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexParameterIuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTexParameterIiv :: FunPtr FuntypeGetTexParameterIiv -> FuntypeGetTexParameterIiv
nonexistentGetTexParameterIiv :: FuntypeGetTexParameterIiv
nonexistentGetTexParameterIiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTexParameterIiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTexParameterIuiv :: FunPtr FuntypeGetTexParameterIuiv -> FuntypeGetTexParameterIuiv
nonexistentGetTexParameterIuiv :: FuntypeGetTexParameterIuiv
nonexistentGetTexParameterIuiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTexParameterIuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearBufferiv :: FunPtr FuntypeClearBufferiv -> FuntypeClearBufferiv
nonexistentClearBufferiv :: FuntypeClearBufferiv
nonexistentClearBufferiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClearBufferiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearBufferuiv :: FunPtr FuntypeClearBufferuiv -> FuntypeClearBufferuiv
nonexistentClearBufferuiv :: FuntypeClearBufferuiv
nonexistentClearBufferuiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClearBufferuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearBufferfv :: FunPtr FuntypeClearBufferfv -> FuntypeClearBufferfv
nonexistentClearBufferfv :: FuntypeClearBufferfv
nonexistentClearBufferfv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClearBufferfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearBufferfi :: FunPtr FuntypeClearBufferfi -> FuntypeClearBufferfi
nonexistentClearBufferfi :: FuntypeClearBufferfi
nonexistentClearBufferfi
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClearBufferfi"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetStringi :: FunPtr FuntypeGetStringi -> FuntypeGetStringi
nonexistentGetStringi :: FuntypeGetStringi
nonexistentGetStringi
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetStringi"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsRenderbuffer :: FunPtr FuntypeIsRenderbuffer -> FuntypeIsRenderbuffer
nonexistentIsRenderbuffer :: FuntypeIsRenderbuffer
nonexistentIsRenderbuffer
    _
    = throwIO $ NonExistentOpenGLFunction "glIsRenderbuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindRenderbuffer :: FunPtr FuntypeBindRenderbuffer -> FuntypeBindRenderbuffer
nonexistentBindRenderbuffer :: FuntypeBindRenderbuffer
nonexistentBindRenderbuffer
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindRenderbuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteRenderbuffers :: FunPtr FuntypeDeleteRenderbuffers -> FuntypeDeleteRenderbuffers
nonexistentDeleteRenderbuffers :: FuntypeDeleteRenderbuffers
nonexistentDeleteRenderbuffers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteRenderbuffers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenRenderbuffers :: FunPtr FuntypeGenRenderbuffers -> FuntypeGenRenderbuffers
nonexistentGenRenderbuffers :: FuntypeGenRenderbuffers
nonexistentGenRenderbuffers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenRenderbuffers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynRenderbufferStorage :: FunPtr FuntypeRenderbufferStorage -> FuntypeRenderbufferStorage
nonexistentRenderbufferStorage :: FuntypeRenderbufferStorage
nonexistentRenderbufferStorage
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glRenderbufferStorage"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetRenderbufferParameteriv :: FunPtr FuntypeGetRenderbufferParameteriv -> FuntypeGetRenderbufferParameteriv
nonexistentGetRenderbufferParameteriv :: FuntypeGetRenderbufferParameteriv
nonexistentGetRenderbufferParameteriv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetRenderbufferParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsFramebuffer :: FunPtr FuntypeIsFramebuffer -> FuntypeIsFramebuffer
nonexistentIsFramebuffer :: FuntypeIsFramebuffer
nonexistentIsFramebuffer
    _
    = throwIO $ NonExistentOpenGLFunction "glIsFramebuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindFramebuffer :: FunPtr FuntypeBindFramebuffer -> FuntypeBindFramebuffer
nonexistentBindFramebuffer :: FuntypeBindFramebuffer
nonexistentBindFramebuffer
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindFramebuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteFramebuffers :: FunPtr FuntypeDeleteFramebuffers -> FuntypeDeleteFramebuffers
nonexistentDeleteFramebuffers :: FuntypeDeleteFramebuffers
nonexistentDeleteFramebuffers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteFramebuffers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenFramebuffers :: FunPtr FuntypeGenFramebuffers -> FuntypeGenFramebuffers
nonexistentGenFramebuffers :: FuntypeGenFramebuffers
nonexistentGenFramebuffers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenFramebuffers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCheckFramebufferStatus :: FunPtr FuntypeCheckFramebufferStatus -> FuntypeCheckFramebufferStatus
nonexistentCheckFramebufferStatus :: FuntypeCheckFramebufferStatus
nonexistentCheckFramebufferStatus
    _
    = throwIO $ NonExistentOpenGLFunction "glCheckFramebufferStatus"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferTexture1D :: FunPtr FuntypeFramebufferTexture1D -> FuntypeFramebufferTexture1D
nonexistentFramebufferTexture1D :: FuntypeFramebufferTexture1D
nonexistentFramebufferTexture1D
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferTexture1D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferTexture2D :: FunPtr FuntypeFramebufferTexture2D -> FuntypeFramebufferTexture2D
nonexistentFramebufferTexture2D :: FuntypeFramebufferTexture2D
nonexistentFramebufferTexture2D
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferTexture2D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferTexture3D :: FunPtr FuntypeFramebufferTexture3D -> FuntypeFramebufferTexture3D
nonexistentFramebufferTexture3D :: FuntypeFramebufferTexture3D
nonexistentFramebufferTexture3D
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferTexture3D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferRenderbuffer :: FunPtr FuntypeFramebufferRenderbuffer -> FuntypeFramebufferRenderbuffer
nonexistentFramebufferRenderbuffer :: FuntypeFramebufferRenderbuffer
nonexistentFramebufferRenderbuffer
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferRenderbuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetFramebufferAttachmentParameteriv :: FunPtr FuntypeGetFramebufferAttachmentParameteriv -> FuntypeGetFramebufferAttachmentParameteriv
nonexistentGetFramebufferAttachmentParameteriv :: FuntypeGetFramebufferAttachmentParameteriv
nonexistentGetFramebufferAttachmentParameteriv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetFramebufferAttachmentParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenerateMipmap :: FunPtr FuntypeGenerateMipmap -> FuntypeGenerateMipmap
nonexistentGenerateMipmap :: FuntypeGenerateMipmap
nonexistentGenerateMipmap
    _
    = throwIO $ NonExistentOpenGLFunction "glGenerateMipmap"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBlitFramebuffer :: FunPtr FuntypeBlitFramebuffer -> FuntypeBlitFramebuffer
nonexistentBlitFramebuffer :: FuntypeBlitFramebuffer
nonexistentBlitFramebuffer
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBlitFramebuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynRenderbufferStorageMultisample :: FunPtr FuntypeRenderbufferStorageMultisample -> FuntypeRenderbufferStorageMultisample
nonexistentRenderbufferStorageMultisample :: FuntypeRenderbufferStorageMultisample
nonexistentRenderbufferStorageMultisample
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glRenderbufferStorageMultisample"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferTextureLayer :: FunPtr FuntypeFramebufferTextureLayer -> FuntypeFramebufferTextureLayer
nonexistentFramebufferTextureLayer :: FuntypeFramebufferTextureLayer
nonexistentFramebufferTextureLayer
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferTextureLayer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMapBufferRange :: FunPtr FuntypeMapBufferRange -> FuntypeMapBufferRange
nonexistentMapBufferRange :: FuntypeMapBufferRange
nonexistentMapBufferRange
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMapBufferRange"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFlushMappedBufferRange :: FunPtr FuntypeFlushMappedBufferRange -> FuntypeFlushMappedBufferRange
nonexistentFlushMappedBufferRange :: FuntypeFlushMappedBufferRange
nonexistentFlushMappedBufferRange
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFlushMappedBufferRange"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindVertexArray :: FunPtr FuntypeBindVertexArray -> FuntypeBindVertexArray
nonexistentBindVertexArray :: FuntypeBindVertexArray
nonexistentBindVertexArray
    _
    = throwIO $ NonExistentOpenGLFunction "glBindVertexArray"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteVertexArrays :: FunPtr FuntypeDeleteVertexArrays -> FuntypeDeleteVertexArrays
nonexistentDeleteVertexArrays :: FuntypeDeleteVertexArrays
nonexistentDeleteVertexArrays
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteVertexArrays"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenVertexArrays :: FunPtr FuntypeGenVertexArrays -> FuntypeGenVertexArrays
nonexistentGenVertexArrays :: FuntypeGenVertexArrays
nonexistentGenVertexArrays
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenVertexArrays"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsVertexArray :: FunPtr FuntypeIsVertexArray -> FuntypeIsVertexArray
nonexistentIsVertexArray :: FuntypeIsVertexArray
nonexistentIsVertexArray
    _
    = throwIO $ NonExistentOpenGLFunction "glIsVertexArray"

-- GL_VERSION_3_1

foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawArraysInstanced :: FunPtr FuntypeDrawArraysInstanced -> FuntypeDrawArraysInstanced
nonexistentDrawArraysInstanced :: FuntypeDrawArraysInstanced
nonexistentDrawArraysInstanced
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawArraysInstanced"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawElementsInstanced :: FunPtr FuntypeDrawElementsInstanced -> FuntypeDrawElementsInstanced
nonexistentDrawElementsInstanced :: FuntypeDrawElementsInstanced
nonexistentDrawElementsInstanced
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawElementsInstanced"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexBuffer :: FunPtr FuntypeTexBuffer -> FuntypeTexBuffer
nonexistentTexBuffer :: FuntypeTexBuffer
nonexistentTexBuffer
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexBuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPrimitiveRestartIndex :: FunPtr FuntypePrimitiveRestartIndex -> FuntypePrimitiveRestartIndex
nonexistentPrimitiveRestartIndex :: FuntypePrimitiveRestartIndex
nonexistentPrimitiveRestartIndex
    _
    = throwIO $ NonExistentOpenGLFunction "glPrimitiveRestartIndex"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyBufferSubData :: FunPtr FuntypeCopyBufferSubData -> FuntypeCopyBufferSubData
nonexistentCopyBufferSubData :: FuntypeCopyBufferSubData
nonexistentCopyBufferSubData
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyBufferSubData"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetUniformIndices :: FunPtr FuntypeGetUniformIndices -> FuntypeGetUniformIndices
nonexistentGetUniformIndices :: FuntypeGetUniformIndices
nonexistentGetUniformIndices
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetUniformIndices"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetActiveUniformsiv :: FunPtr FuntypeGetActiveUniformsiv -> FuntypeGetActiveUniformsiv
nonexistentGetActiveUniformsiv :: FuntypeGetActiveUniformsiv
nonexistentGetActiveUniformsiv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetActiveUniformsiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetActiveUniformName :: FunPtr FuntypeGetActiveUniformName -> FuntypeGetActiveUniformName
nonexistentGetActiveUniformName :: FuntypeGetActiveUniformName
nonexistentGetActiveUniformName
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetActiveUniformName"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetUniformBlockIndex :: FunPtr FuntypeGetUniformBlockIndex -> FuntypeGetUniformBlockIndex
nonexistentGetUniformBlockIndex :: FuntypeGetUniformBlockIndex
nonexistentGetUniformBlockIndex
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetUniformBlockIndex"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetActiveUniformBlockiv :: FunPtr FuntypeGetActiveUniformBlockiv -> FuntypeGetActiveUniformBlockiv
nonexistentGetActiveUniformBlockiv :: FuntypeGetActiveUniformBlockiv
nonexistentGetActiveUniformBlockiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetActiveUniformBlockiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetActiveUniformBlockName :: FunPtr FuntypeGetActiveUniformBlockName -> FuntypeGetActiveUniformBlockName
nonexistentGetActiveUniformBlockName :: FuntypeGetActiveUniformBlockName
nonexistentGetActiveUniformBlockName
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetActiveUniformBlockName"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUniformBlockBinding :: FunPtr FuntypeUniformBlockBinding -> FuntypeUniformBlockBinding
nonexistentUniformBlockBinding :: FuntypeUniformBlockBinding
nonexistentUniformBlockBinding
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUniformBlockBinding"

-- GL_VERSION_3_2

foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawElementsBaseVertex :: FunPtr FuntypeDrawElementsBaseVertex -> FuntypeDrawElementsBaseVertex
nonexistentDrawElementsBaseVertex :: FuntypeDrawElementsBaseVertex
nonexistentDrawElementsBaseVertex
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawElementsBaseVertex"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawRangeElementsBaseVertex :: FunPtr FuntypeDrawRangeElementsBaseVertex -> FuntypeDrawRangeElementsBaseVertex
nonexistentDrawRangeElementsBaseVertex :: FuntypeDrawRangeElementsBaseVertex
nonexistentDrawRangeElementsBaseVertex
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawRangeElementsBaseVertex"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDrawElementsInstancedBaseVertex :: FunPtr FuntypeDrawElementsInstancedBaseVertex -> FuntypeDrawElementsInstancedBaseVertex
nonexistentDrawElementsInstancedBaseVertex :: FuntypeDrawElementsInstancedBaseVertex
nonexistentDrawElementsInstancedBaseVertex
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDrawElementsInstancedBaseVertex"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiDrawElementsBaseVertex :: FunPtr FuntypeMultiDrawElementsBaseVertex -> FuntypeMultiDrawElementsBaseVertex
nonexistentMultiDrawElementsBaseVertex :: FuntypeMultiDrawElementsBaseVertex
nonexistentMultiDrawElementsBaseVertex
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiDrawElementsBaseVertex"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProvokingVertex :: FunPtr FuntypeProvokingVertex -> FuntypeProvokingVertex
nonexistentProvokingVertex :: FuntypeProvokingVertex
nonexistentProvokingVertex
    _
    = throwIO $ NonExistentOpenGLFunction "glProvokingVertex"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFenceSync :: FunPtr FuntypeFenceSync -> FuntypeFenceSync
nonexistentFenceSync :: FuntypeFenceSync
nonexistentFenceSync
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFenceSync"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsSync :: FunPtr FuntypeIsSync -> FuntypeIsSync
nonexistentIsSync :: FuntypeIsSync
nonexistentIsSync
    _
    = throwIO $ NonExistentOpenGLFunction "glIsSync"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteSync :: FunPtr FuntypeDeleteSync -> FuntypeDeleteSync
nonexistentDeleteSync :: FuntypeDeleteSync
nonexistentDeleteSync
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteSync"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClientWaitSync :: FunPtr FuntypeClientWaitSync -> FuntypeClientWaitSync
nonexistentClientWaitSync :: FuntypeClientWaitSync
nonexistentClientWaitSync
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClientWaitSync"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynWaitSync :: FunPtr FuntypeWaitSync -> FuntypeWaitSync
nonexistentWaitSync :: FuntypeWaitSync
nonexistentWaitSync
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glWaitSync"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetInteger64v :: FunPtr FuntypeGetInteger64v -> FuntypeGetInteger64v
nonexistentGetInteger64v :: FuntypeGetInteger64v
nonexistentGetInteger64v
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetInteger64v"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetSynciv :: FunPtr FuntypeGetSynciv -> FuntypeGetSynciv
nonexistentGetSynciv :: FuntypeGetSynciv
nonexistentGetSynciv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetSynciv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetInteger64i_v :: FunPtr FuntypeGetInteger64i_v -> FuntypeGetInteger64i_v
nonexistentGetInteger64i_v :: FuntypeGetInteger64i_v
nonexistentGetInteger64i_v
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetInteger64i_v"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetBufferParameteri64v :: FunPtr FuntypeGetBufferParameteri64v -> FuntypeGetBufferParameteri64v
nonexistentGetBufferParameteri64v :: FuntypeGetBufferParameteri64v
nonexistentGetBufferParameteri64v
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetBufferParameteri64v"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferTexture :: FunPtr FuntypeFramebufferTexture -> FuntypeFramebufferTexture
nonexistentFramebufferTexture :: FuntypeFramebufferTexture
nonexistentFramebufferTexture
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferTexture"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexImage2DMultisample :: FunPtr FuntypeTexImage2DMultisample -> FuntypeTexImage2DMultisample
nonexistentTexImage2DMultisample :: FuntypeTexImage2DMultisample
nonexistentTexImage2DMultisample
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexImage2DMultisample"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexImage3DMultisample :: FunPtr FuntypeTexImage3DMultisample -> FuntypeTexImage3DMultisample
nonexistentTexImage3DMultisample :: FuntypeTexImage3DMultisample
nonexistentTexImage3DMultisample
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexImage3DMultisample"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultisamplefv :: FunPtr FuntypeGetMultisamplefv -> FuntypeGetMultisamplefv
nonexistentGetMultisamplefv :: FuntypeGetMultisamplefv
nonexistentGetMultisamplefv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultisamplefv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynSampleMaski :: FunPtr FuntypeSampleMaski -> FuntypeSampleMaski
nonexistentSampleMaski :: FuntypeSampleMaski
nonexistentSampleMaski
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glSampleMaski"

-- GL_VERSION_3_3

foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindFragDataLocationIndexed :: FunPtr FuntypeBindFragDataLocationIndexed -> FuntypeBindFragDataLocationIndexed
nonexistentBindFragDataLocationIndexed :: FuntypeBindFragDataLocationIndexed
nonexistentBindFragDataLocationIndexed
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindFragDataLocationIndexed"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetFragDataIndex :: FunPtr FuntypeGetFragDataIndex -> FuntypeGetFragDataIndex
nonexistentGetFragDataIndex :: FuntypeGetFragDataIndex
nonexistentGetFragDataIndex
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetFragDataIndex"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenSamplers :: FunPtr FuntypeGenSamplers -> FuntypeGenSamplers
nonexistentGenSamplers :: FuntypeGenSamplers
nonexistentGenSamplers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenSamplers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteSamplers :: FunPtr FuntypeDeleteSamplers -> FuntypeDeleteSamplers
nonexistentDeleteSamplers :: FuntypeDeleteSamplers
nonexistentDeleteSamplers
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteSamplers"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsSampler :: FunPtr FuntypeIsSampler -> FuntypeIsSampler
nonexistentIsSampler :: FuntypeIsSampler
nonexistentIsSampler
    _
    = throwIO $ NonExistentOpenGLFunction "glIsSampler"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindSampler :: FunPtr FuntypeBindSampler -> FuntypeBindSampler
nonexistentBindSampler :: FuntypeBindSampler
nonexistentBindSampler
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindSampler"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynSamplerParameteri :: FunPtr FuntypeSamplerParameteri -> FuntypeSamplerParameteri
nonexistentSamplerParameteri :: FuntypeSamplerParameteri
nonexistentSamplerParameteri
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glSamplerParameteri"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynSamplerParameteriv :: FunPtr FuntypeSamplerParameteriv -> FuntypeSamplerParameteriv
nonexistentSamplerParameteriv :: FuntypeSamplerParameteriv
nonexistentSamplerParameteriv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glSamplerParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynSamplerParameterf :: FunPtr FuntypeSamplerParameterf -> FuntypeSamplerParameterf
nonexistentSamplerParameterf :: FuntypeSamplerParameterf
nonexistentSamplerParameterf
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glSamplerParameterf"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynSamplerParameterfv :: FunPtr FuntypeSamplerParameterfv -> FuntypeSamplerParameterfv
nonexistentSamplerParameterfv :: FuntypeSamplerParameterfv
nonexistentSamplerParameterfv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glSamplerParameterfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynSamplerParameterIiv :: FunPtr FuntypeSamplerParameterIiv -> FuntypeSamplerParameterIiv
nonexistentSamplerParameterIiv :: FuntypeSamplerParameterIiv
nonexistentSamplerParameterIiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glSamplerParameterIiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynSamplerParameterIuiv :: FunPtr FuntypeSamplerParameterIuiv -> FuntypeSamplerParameterIuiv
nonexistentSamplerParameterIuiv :: FuntypeSamplerParameterIuiv
nonexistentSamplerParameterIuiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glSamplerParameterIuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetSamplerParameteriv :: FunPtr FuntypeGetSamplerParameteriv -> FuntypeGetSamplerParameteriv
nonexistentGetSamplerParameteriv :: FuntypeGetSamplerParameteriv
nonexistentGetSamplerParameteriv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetSamplerParameteriv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetSamplerParameterIiv :: FunPtr FuntypeGetSamplerParameterIiv -> FuntypeGetSamplerParameterIiv
nonexistentGetSamplerParameterIiv :: FuntypeGetSamplerParameterIiv
nonexistentGetSamplerParameterIiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetSamplerParameterIiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetSamplerParameterfv :: FunPtr FuntypeGetSamplerParameterfv -> FuntypeGetSamplerParameterfv
nonexistentGetSamplerParameterfv :: FuntypeGetSamplerParameterfv
nonexistentGetSamplerParameterfv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetSamplerParameterfv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetSamplerParameterIuiv :: FunPtr FuntypeGetSamplerParameterIuiv -> FuntypeGetSamplerParameterIuiv
nonexistentGetSamplerParameterIuiv :: FuntypeGetSamplerParameterIuiv
nonexistentGetSamplerParameterIuiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetSamplerParameterIuiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynQueryCounter :: FunPtr FuntypeQueryCounter -> FuntypeQueryCounter
nonexistentQueryCounter :: FuntypeQueryCounter
nonexistentQueryCounter
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glQueryCounter"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetQueryObjecti64v :: FunPtr FuntypeGetQueryObjecti64v -> FuntypeGetQueryObjecti64v
nonexistentGetQueryObjecti64v :: FuntypeGetQueryObjecti64v
nonexistentGetQueryObjecti64v
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetQueryObjecti64v"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetQueryObjectui64v :: FunPtr FuntypeGetQueryObjectui64v -> FuntypeGetQueryObjectui64v
nonexistentGetQueryObjectui64v :: FuntypeGetQueryObjectui64v
nonexistentGetQueryObjectui64v
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetQueryObjectui64v"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribDivisor :: FunPtr FuntypeVertexAttribDivisor -> FuntypeVertexAttribDivisor
nonexistentVertexAttribDivisor :: FuntypeVertexAttribDivisor
nonexistentVertexAttribDivisor
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribDivisor"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribP1ui :: FunPtr FuntypeVertexAttribP1ui -> FuntypeVertexAttribP1ui
nonexistentVertexAttribP1ui :: FuntypeVertexAttribP1ui
nonexistentVertexAttribP1ui
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribP1ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribP1uiv :: FunPtr FuntypeVertexAttribP1uiv -> FuntypeVertexAttribP1uiv
nonexistentVertexAttribP1uiv :: FuntypeVertexAttribP1uiv
nonexistentVertexAttribP1uiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribP1uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribP2ui :: FunPtr FuntypeVertexAttribP2ui -> FuntypeVertexAttribP2ui
nonexistentVertexAttribP2ui :: FuntypeVertexAttribP2ui
nonexistentVertexAttribP2ui
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribP2ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribP2uiv :: FunPtr FuntypeVertexAttribP2uiv -> FuntypeVertexAttribP2uiv
nonexistentVertexAttribP2uiv :: FuntypeVertexAttribP2uiv
nonexistentVertexAttribP2uiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribP2uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribP3ui :: FunPtr FuntypeVertexAttribP3ui -> FuntypeVertexAttribP3ui
nonexistentVertexAttribP3ui :: FuntypeVertexAttribP3ui
nonexistentVertexAttribP3ui
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribP3ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribP3uiv :: FunPtr FuntypeVertexAttribP3uiv -> FuntypeVertexAttribP3uiv
nonexistentVertexAttribP3uiv :: FuntypeVertexAttribP3uiv
nonexistentVertexAttribP3uiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribP3uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribP4ui :: FunPtr FuntypeVertexAttribP4ui -> FuntypeVertexAttribP4ui
nonexistentVertexAttribP4ui :: FuntypeVertexAttribP4ui
nonexistentVertexAttribP4ui
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribP4ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexAttribP4uiv :: FunPtr FuntypeVertexAttribP4uiv -> FuntypeVertexAttribP4uiv
nonexistentVertexAttribP4uiv :: FuntypeVertexAttribP4uiv
nonexistentVertexAttribP4uiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexAttribP4uiv"

-- GL_ARB_texture_storage

foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexStorage1D :: FunPtr FuntypeTexStorage1D -> FuntypeTexStorage1D
nonexistentTexStorage1D :: FuntypeTexStorage1D
nonexistentTexStorage1D
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexStorage1D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexStorage2D :: FunPtr FuntypeTexStorage2D -> FuntypeTexStorage2D
nonexistentTexStorage2D :: FuntypeTexStorage2D
nonexistentTexStorage2D
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexStorage2D"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexStorage3D :: FunPtr FuntypeTexStorage3D -> FuntypeTexStorage3D
nonexistentTexStorage3D :: FuntypeTexStorage3D
nonexistentTexStorage3D
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexStorage3D"

-- GL_KHR_debug

foreign import ccall APIENTRY unsafe "dynamic"
    gldynDebugMessageControl :: FunPtr FuntypeDebugMessageControl -> FuntypeDebugMessageControl
nonexistentDebugMessageControl :: FuntypeDebugMessageControl
nonexistentDebugMessageControl
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDebugMessageControl"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDebugMessageInsert :: FunPtr FuntypeDebugMessageInsert -> FuntypeDebugMessageInsert
nonexistentDebugMessageInsert :: FuntypeDebugMessageInsert
nonexistentDebugMessageInsert
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDebugMessageInsert"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDebugMessageCallback :: FunPtr FuntypeDebugMessageCallback -> FuntypeDebugMessageCallback
nonexistentDebugMessageCallback :: FuntypeDebugMessageCallback
nonexistentDebugMessageCallback
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDebugMessageCallback"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetDebugMessageLog :: FunPtr FuntypeGetDebugMessageLog -> FuntypeGetDebugMessageLog
nonexistentGetDebugMessageLog :: FuntypeGetDebugMessageLog
nonexistentGetDebugMessageLog
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetDebugMessageLog"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPushDebugGroup :: FunPtr FuntypePushDebugGroup -> FuntypePushDebugGroup
nonexistentPushDebugGroup :: FuntypePushDebugGroup
nonexistentPushDebugGroup
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPushDebugGroup"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPopDebugGroup :: FunPtr FuntypePopDebugGroup -> FuntypePopDebugGroup
nonexistentPopDebugGroup :: FuntypePopDebugGroup
nonexistentPopDebugGroup
    = throwIO $ NonExistentOpenGLFunction "glPopDebugGroup"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynObjectLabel :: FunPtr FuntypeObjectLabel -> FuntypeObjectLabel
nonexistentObjectLabel :: FuntypeObjectLabel
nonexistentObjectLabel
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glObjectLabel"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetObjectLabel :: FunPtr FuntypeGetObjectLabel -> FuntypeGetObjectLabel
nonexistentGetObjectLabel :: FuntypeGetObjectLabel
nonexistentGetObjectLabel
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetObjectLabel"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynObjectPtrLabel :: FunPtr FuntypeObjectPtrLabel -> FuntypeObjectPtrLabel
nonexistentObjectPtrLabel :: FuntypeObjectPtrLabel
nonexistentObjectPtrLabel
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glObjectPtrLabel"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetObjectPtrLabel :: FunPtr FuntypeGetObjectPtrLabel -> FuntypeGetObjectPtrLabel
nonexistentGetObjectPtrLabel :: FuntypeGetObjectPtrLabel
nonexistentGetObjectPtrLabel
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetObjectPtrLabel"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetPointerv :: FunPtr FuntypeGetPointerv -> FuntypeGetPointerv
nonexistentGetPointerv :: FuntypeGetPointerv
nonexistentGetPointerv
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetPointerv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDebugMessageControlKHR :: FunPtr FuntypeDebugMessageControlKHR -> FuntypeDebugMessageControlKHR
nonexistentDebugMessageControlKHR :: FuntypeDebugMessageControlKHR
nonexistentDebugMessageControlKHR
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDebugMessageControlKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDebugMessageInsertKHR :: FunPtr FuntypeDebugMessageInsertKHR -> FuntypeDebugMessageInsertKHR
nonexistentDebugMessageInsertKHR :: FuntypeDebugMessageInsertKHR
nonexistentDebugMessageInsertKHR
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDebugMessageInsertKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDebugMessageCallbackKHR :: FunPtr FuntypeDebugMessageCallbackKHR -> FuntypeDebugMessageCallbackKHR
nonexistentDebugMessageCallbackKHR :: FuntypeDebugMessageCallbackKHR
nonexistentDebugMessageCallbackKHR
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDebugMessageCallbackKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetDebugMessageLogKHR :: FunPtr FuntypeGetDebugMessageLogKHR -> FuntypeGetDebugMessageLogKHR
nonexistentGetDebugMessageLogKHR :: FuntypeGetDebugMessageLogKHR
nonexistentGetDebugMessageLogKHR
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetDebugMessageLogKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPushDebugGroupKHR :: FunPtr FuntypePushDebugGroupKHR -> FuntypePushDebugGroupKHR
nonexistentPushDebugGroupKHR :: FuntypePushDebugGroupKHR
nonexistentPushDebugGroupKHR
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glPushDebugGroupKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPopDebugGroupKHR :: FunPtr FuntypePopDebugGroupKHR -> FuntypePopDebugGroupKHR
nonexistentPopDebugGroupKHR :: FuntypePopDebugGroupKHR
nonexistentPopDebugGroupKHR
    = throwIO $ NonExistentOpenGLFunction "glPopDebugGroupKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynObjectLabelKHR :: FunPtr FuntypeObjectLabelKHR -> FuntypeObjectLabelKHR
nonexistentObjectLabelKHR :: FuntypeObjectLabelKHR
nonexistentObjectLabelKHR
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glObjectLabelKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetObjectLabelKHR :: FunPtr FuntypeGetObjectLabelKHR -> FuntypeGetObjectLabelKHR
nonexistentGetObjectLabelKHR :: FuntypeGetObjectLabelKHR
nonexistentGetObjectLabelKHR
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetObjectLabelKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynObjectPtrLabelKHR :: FunPtr FuntypeObjectPtrLabelKHR -> FuntypeObjectPtrLabelKHR
nonexistentObjectPtrLabelKHR :: FuntypeObjectPtrLabelKHR
nonexistentObjectPtrLabelKHR
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glObjectPtrLabelKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetObjectPtrLabelKHR :: FunPtr FuntypeGetObjectPtrLabelKHR -> FuntypeGetObjectPtrLabelKHR
nonexistentGetObjectPtrLabelKHR :: FuntypeGetObjectPtrLabelKHR
nonexistentGetObjectPtrLabelKHR
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetObjectPtrLabelKHR"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetPointervKHR :: FunPtr FuntypeGetPointervKHR -> FuntypeGetPointervKHR
nonexistentGetPointervKHR :: FuntypeGetPointervKHR
nonexistentGetPointervKHR
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetPointervKHR"

-- GL_EXT_direct_state_access

foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixLoadfEXT :: FunPtr FuntypeMatrixLoadfEXT -> FuntypeMatrixLoadfEXT
nonexistentMatrixLoadfEXT :: FuntypeMatrixLoadfEXT
nonexistentMatrixLoadfEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixLoadfEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixLoaddEXT :: FunPtr FuntypeMatrixLoaddEXT -> FuntypeMatrixLoaddEXT
nonexistentMatrixLoaddEXT :: FuntypeMatrixLoaddEXT
nonexistentMatrixLoaddEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixLoaddEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixMultfEXT :: FunPtr FuntypeMatrixMultfEXT -> FuntypeMatrixMultfEXT
nonexistentMatrixMultfEXT :: FuntypeMatrixMultfEXT
nonexistentMatrixMultfEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixMultfEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixMultdEXT :: FunPtr FuntypeMatrixMultdEXT -> FuntypeMatrixMultdEXT
nonexistentMatrixMultdEXT :: FuntypeMatrixMultdEXT
nonexistentMatrixMultdEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixMultdEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixLoadIdentityEXT :: FunPtr FuntypeMatrixLoadIdentityEXT -> FuntypeMatrixLoadIdentityEXT
nonexistentMatrixLoadIdentityEXT :: FuntypeMatrixLoadIdentityEXT
nonexistentMatrixLoadIdentityEXT
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixLoadIdentityEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixRotatefEXT :: FunPtr FuntypeMatrixRotatefEXT -> FuntypeMatrixRotatefEXT
nonexistentMatrixRotatefEXT :: FuntypeMatrixRotatefEXT
nonexistentMatrixRotatefEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixRotatefEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixRotatedEXT :: FunPtr FuntypeMatrixRotatedEXT -> FuntypeMatrixRotatedEXT
nonexistentMatrixRotatedEXT :: FuntypeMatrixRotatedEXT
nonexistentMatrixRotatedEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixRotatedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixScalefEXT :: FunPtr FuntypeMatrixScalefEXT -> FuntypeMatrixScalefEXT
nonexistentMatrixScalefEXT :: FuntypeMatrixScalefEXT
nonexistentMatrixScalefEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixScalefEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixScaledEXT :: FunPtr FuntypeMatrixScaledEXT -> FuntypeMatrixScaledEXT
nonexistentMatrixScaledEXT :: FuntypeMatrixScaledEXT
nonexistentMatrixScaledEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixScaledEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixTranslatefEXT :: FunPtr FuntypeMatrixTranslatefEXT -> FuntypeMatrixTranslatefEXT
nonexistentMatrixTranslatefEXT :: FuntypeMatrixTranslatefEXT
nonexistentMatrixTranslatefEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixTranslatefEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixTranslatedEXT :: FunPtr FuntypeMatrixTranslatedEXT -> FuntypeMatrixTranslatedEXT
nonexistentMatrixTranslatedEXT :: FuntypeMatrixTranslatedEXT
nonexistentMatrixTranslatedEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixTranslatedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixFrustumEXT :: FunPtr FuntypeMatrixFrustumEXT -> FuntypeMatrixFrustumEXT
nonexistentMatrixFrustumEXT :: FuntypeMatrixFrustumEXT
nonexistentMatrixFrustumEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixFrustumEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixOrthoEXT :: FunPtr FuntypeMatrixOrthoEXT -> FuntypeMatrixOrthoEXT
nonexistentMatrixOrthoEXT :: FuntypeMatrixOrthoEXT
nonexistentMatrixOrthoEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixOrthoEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixPopEXT :: FunPtr FuntypeMatrixPopEXT -> FuntypeMatrixPopEXT
nonexistentMatrixPopEXT :: FuntypeMatrixPopEXT
nonexistentMatrixPopEXT
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixPopEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixPushEXT :: FunPtr FuntypeMatrixPushEXT -> FuntypeMatrixPushEXT
nonexistentMatrixPushEXT :: FuntypeMatrixPushEXT
nonexistentMatrixPushEXT
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixPushEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClientAttribDefaultEXT :: FunPtr FuntypeClientAttribDefaultEXT -> FuntypeClientAttribDefaultEXT
nonexistentClientAttribDefaultEXT :: FuntypeClientAttribDefaultEXT
nonexistentClientAttribDefaultEXT
    _
    = throwIO $ NonExistentOpenGLFunction "glClientAttribDefaultEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynPushClientAttribDefaultEXT :: FunPtr FuntypePushClientAttribDefaultEXT -> FuntypePushClientAttribDefaultEXT
nonexistentPushClientAttribDefaultEXT :: FuntypePushClientAttribDefaultEXT
nonexistentPushClientAttribDefaultEXT
    _
    = throwIO $ NonExistentOpenGLFunction "glPushClientAttribDefaultEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureParameterfEXT :: FunPtr FuntypeTextureParameterfEXT -> FuntypeTextureParameterfEXT
nonexistentTextureParameterfEXT :: FuntypeTextureParameterfEXT
nonexistentTextureParameterfEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureParameterfEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureParameterfvEXT :: FunPtr FuntypeTextureParameterfvEXT -> FuntypeTextureParameterfvEXT
nonexistentTextureParameterfvEXT :: FuntypeTextureParameterfvEXT
nonexistentTextureParameterfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureParameterfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureParameteriEXT :: FunPtr FuntypeTextureParameteriEXT -> FuntypeTextureParameteriEXT
nonexistentTextureParameteriEXT :: FuntypeTextureParameteriEXT
nonexistentTextureParameteriEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureParameteriEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureParameterivEXT :: FunPtr FuntypeTextureParameterivEXT -> FuntypeTextureParameterivEXT
nonexistentTextureParameterivEXT :: FuntypeTextureParameterivEXT
nonexistentTextureParameterivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureImage1DEXT :: FunPtr FuntypeTextureImage1DEXT -> FuntypeTextureImage1DEXT
nonexistentTextureImage1DEXT :: FuntypeTextureImage1DEXT
nonexistentTextureImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureImage2DEXT :: FunPtr FuntypeTextureImage2DEXT -> FuntypeTextureImage2DEXT
nonexistentTextureImage2DEXT :: FuntypeTextureImage2DEXT
nonexistentTextureImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureSubImage1DEXT :: FunPtr FuntypeTextureSubImage1DEXT -> FuntypeTextureSubImage1DEXT
nonexistentTextureSubImage1DEXT :: FuntypeTextureSubImage1DEXT
nonexistentTextureSubImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureSubImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureSubImage2DEXT :: FunPtr FuntypeTextureSubImage2DEXT -> FuntypeTextureSubImage2DEXT
nonexistentTextureSubImage2DEXT :: FuntypeTextureSubImage2DEXT
nonexistentTextureSubImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureSubImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTextureImage1DEXT :: FunPtr FuntypeCopyTextureImage1DEXT -> FuntypeCopyTextureImage1DEXT
nonexistentCopyTextureImage1DEXT :: FuntypeCopyTextureImage1DEXT
nonexistentCopyTextureImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTextureImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTextureImage2DEXT :: FunPtr FuntypeCopyTextureImage2DEXT -> FuntypeCopyTextureImage2DEXT
nonexistentCopyTextureImage2DEXT :: FuntypeCopyTextureImage2DEXT
nonexistentCopyTextureImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTextureImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTextureSubImage1DEXT :: FunPtr FuntypeCopyTextureSubImage1DEXT -> FuntypeCopyTextureSubImage1DEXT
nonexistentCopyTextureSubImage1DEXT :: FuntypeCopyTextureSubImage1DEXT
nonexistentCopyTextureSubImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTextureSubImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTextureSubImage2DEXT :: FunPtr FuntypeCopyTextureSubImage2DEXT -> FuntypeCopyTextureSubImage2DEXT
nonexistentCopyTextureSubImage2DEXT :: FuntypeCopyTextureSubImage2DEXT
nonexistentCopyTextureSubImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTextureSubImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTextureImageEXT :: FunPtr FuntypeGetTextureImageEXT -> FuntypeGetTextureImageEXT
nonexistentGetTextureImageEXT :: FuntypeGetTextureImageEXT
nonexistentGetTextureImageEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTextureImageEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTextureParameterfvEXT :: FunPtr FuntypeGetTextureParameterfvEXT -> FuntypeGetTextureParameterfvEXT
nonexistentGetTextureParameterfvEXT :: FuntypeGetTextureParameterfvEXT
nonexistentGetTextureParameterfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTextureParameterfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTextureParameterivEXT :: FunPtr FuntypeGetTextureParameterivEXT -> FuntypeGetTextureParameterivEXT
nonexistentGetTextureParameterivEXT :: FuntypeGetTextureParameterivEXT
nonexistentGetTextureParameterivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTextureParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTextureLevelParameterfvEXT :: FunPtr FuntypeGetTextureLevelParameterfvEXT -> FuntypeGetTextureLevelParameterfvEXT
nonexistentGetTextureLevelParameterfvEXT :: FuntypeGetTextureLevelParameterfvEXT
nonexistentGetTextureLevelParameterfvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTextureLevelParameterfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTextureLevelParameterivEXT :: FunPtr FuntypeGetTextureLevelParameterivEXT -> FuntypeGetTextureLevelParameterivEXT
nonexistentGetTextureLevelParameterivEXT :: FuntypeGetTextureLevelParameterivEXT
nonexistentGetTextureLevelParameterivEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTextureLevelParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureImage3DEXT :: FunPtr FuntypeTextureImage3DEXT -> FuntypeTextureImage3DEXT
nonexistentTextureImage3DEXT :: FuntypeTextureImage3DEXT
nonexistentTextureImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureSubImage3DEXT :: FunPtr FuntypeTextureSubImage3DEXT -> FuntypeTextureSubImage3DEXT
nonexistentTextureSubImage3DEXT :: FuntypeTextureSubImage3DEXT
nonexistentTextureSubImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureSubImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyTextureSubImage3DEXT :: FunPtr FuntypeCopyTextureSubImage3DEXT -> FuntypeCopyTextureSubImage3DEXT
nonexistentCopyTextureSubImage3DEXT :: FuntypeCopyTextureSubImage3DEXT
nonexistentCopyTextureSubImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyTextureSubImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindMultiTextureEXT :: FunPtr FuntypeBindMultiTextureEXT -> FuntypeBindMultiTextureEXT
nonexistentBindMultiTextureEXT :: FuntypeBindMultiTextureEXT
nonexistentBindMultiTextureEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBindMultiTextureEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexCoordPointerEXT :: FunPtr FuntypeMultiTexCoordPointerEXT -> FuntypeMultiTexCoordPointerEXT
nonexistentMultiTexCoordPointerEXT :: FuntypeMultiTexCoordPointerEXT
nonexistentMultiTexCoordPointerEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexCoordPointerEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexEnvfEXT :: FunPtr FuntypeMultiTexEnvfEXT -> FuntypeMultiTexEnvfEXT
nonexistentMultiTexEnvfEXT :: FuntypeMultiTexEnvfEXT
nonexistentMultiTexEnvfEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexEnvfEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexEnvfvEXT :: FunPtr FuntypeMultiTexEnvfvEXT -> FuntypeMultiTexEnvfvEXT
nonexistentMultiTexEnvfvEXT :: FuntypeMultiTexEnvfvEXT
nonexistentMultiTexEnvfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexEnvfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexEnviEXT :: FunPtr FuntypeMultiTexEnviEXT -> FuntypeMultiTexEnviEXT
nonexistentMultiTexEnviEXT :: FuntypeMultiTexEnviEXT
nonexistentMultiTexEnviEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexEnviEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexEnvivEXT :: FunPtr FuntypeMultiTexEnvivEXT -> FuntypeMultiTexEnvivEXT
nonexistentMultiTexEnvivEXT :: FuntypeMultiTexEnvivEXT
nonexistentMultiTexEnvivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexEnvivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexGendEXT :: FunPtr FuntypeMultiTexGendEXT -> FuntypeMultiTexGendEXT
nonexistentMultiTexGendEXT :: FuntypeMultiTexGendEXT
nonexistentMultiTexGendEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexGendEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexGendvEXT :: FunPtr FuntypeMultiTexGendvEXT -> FuntypeMultiTexGendvEXT
nonexistentMultiTexGendvEXT :: FuntypeMultiTexGendvEXT
nonexistentMultiTexGendvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexGendvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexGenfEXT :: FunPtr FuntypeMultiTexGenfEXT -> FuntypeMultiTexGenfEXT
nonexistentMultiTexGenfEXT :: FuntypeMultiTexGenfEXT
nonexistentMultiTexGenfEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexGenfEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexGenfvEXT :: FunPtr FuntypeMultiTexGenfvEXT -> FuntypeMultiTexGenfvEXT
nonexistentMultiTexGenfvEXT :: FuntypeMultiTexGenfvEXT
nonexistentMultiTexGenfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexGenfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexGeniEXT :: FunPtr FuntypeMultiTexGeniEXT -> FuntypeMultiTexGeniEXT
nonexistentMultiTexGeniEXT :: FuntypeMultiTexGeniEXT
nonexistentMultiTexGeniEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexGeniEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexGenivEXT :: FunPtr FuntypeMultiTexGenivEXT -> FuntypeMultiTexGenivEXT
nonexistentMultiTexGenivEXT :: FuntypeMultiTexGenivEXT
nonexistentMultiTexGenivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexGenivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexEnvfvEXT :: FunPtr FuntypeGetMultiTexEnvfvEXT -> FuntypeGetMultiTexEnvfvEXT
nonexistentGetMultiTexEnvfvEXT :: FuntypeGetMultiTexEnvfvEXT
nonexistentGetMultiTexEnvfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexEnvfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexEnvivEXT :: FunPtr FuntypeGetMultiTexEnvivEXT -> FuntypeGetMultiTexEnvivEXT
nonexistentGetMultiTexEnvivEXT :: FuntypeGetMultiTexEnvivEXT
nonexistentGetMultiTexEnvivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexEnvivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexGendvEXT :: FunPtr FuntypeGetMultiTexGendvEXT -> FuntypeGetMultiTexGendvEXT
nonexistentGetMultiTexGendvEXT :: FuntypeGetMultiTexGendvEXT
nonexistentGetMultiTexGendvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexGendvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexGenfvEXT :: FunPtr FuntypeGetMultiTexGenfvEXT -> FuntypeGetMultiTexGenfvEXT
nonexistentGetMultiTexGenfvEXT :: FuntypeGetMultiTexGenfvEXT
nonexistentGetMultiTexGenfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexGenfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexGenivEXT :: FunPtr FuntypeGetMultiTexGenivEXT -> FuntypeGetMultiTexGenivEXT
nonexistentGetMultiTexGenivEXT :: FuntypeGetMultiTexGenivEXT
nonexistentGetMultiTexGenivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexGenivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexParameteriEXT :: FunPtr FuntypeMultiTexParameteriEXT -> FuntypeMultiTexParameteriEXT
nonexistentMultiTexParameteriEXT :: FuntypeMultiTexParameteriEXT
nonexistentMultiTexParameteriEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexParameteriEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexParameterivEXT :: FunPtr FuntypeMultiTexParameterivEXT -> FuntypeMultiTexParameterivEXT
nonexistentMultiTexParameterivEXT :: FuntypeMultiTexParameterivEXT
nonexistentMultiTexParameterivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexParameterfEXT :: FunPtr FuntypeMultiTexParameterfEXT -> FuntypeMultiTexParameterfEXT
nonexistentMultiTexParameterfEXT :: FuntypeMultiTexParameterfEXT
nonexistentMultiTexParameterfEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexParameterfEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexParameterfvEXT :: FunPtr FuntypeMultiTexParameterfvEXT -> FuntypeMultiTexParameterfvEXT
nonexistentMultiTexParameterfvEXT :: FuntypeMultiTexParameterfvEXT
nonexistentMultiTexParameterfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexParameterfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexImage1DEXT :: FunPtr FuntypeMultiTexImage1DEXT -> FuntypeMultiTexImage1DEXT
nonexistentMultiTexImage1DEXT :: FuntypeMultiTexImage1DEXT
nonexistentMultiTexImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexImage2DEXT :: FunPtr FuntypeMultiTexImage2DEXT -> FuntypeMultiTexImage2DEXT
nonexistentMultiTexImage2DEXT :: FuntypeMultiTexImage2DEXT
nonexistentMultiTexImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexSubImage1DEXT :: FunPtr FuntypeMultiTexSubImage1DEXT -> FuntypeMultiTexSubImage1DEXT
nonexistentMultiTexSubImage1DEXT :: FuntypeMultiTexSubImage1DEXT
nonexistentMultiTexSubImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexSubImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexSubImage2DEXT :: FunPtr FuntypeMultiTexSubImage2DEXT -> FuntypeMultiTexSubImage2DEXT
nonexistentMultiTexSubImage2DEXT :: FuntypeMultiTexSubImage2DEXT
nonexistentMultiTexSubImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexSubImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyMultiTexImage1DEXT :: FunPtr FuntypeCopyMultiTexImage1DEXT -> FuntypeCopyMultiTexImage1DEXT
nonexistentCopyMultiTexImage1DEXT :: FuntypeCopyMultiTexImage1DEXT
nonexistentCopyMultiTexImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyMultiTexImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyMultiTexImage2DEXT :: FunPtr FuntypeCopyMultiTexImage2DEXT -> FuntypeCopyMultiTexImage2DEXT
nonexistentCopyMultiTexImage2DEXT :: FuntypeCopyMultiTexImage2DEXT
nonexistentCopyMultiTexImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyMultiTexImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyMultiTexSubImage1DEXT :: FunPtr FuntypeCopyMultiTexSubImage1DEXT -> FuntypeCopyMultiTexSubImage1DEXT
nonexistentCopyMultiTexSubImage1DEXT :: FuntypeCopyMultiTexSubImage1DEXT
nonexistentCopyMultiTexSubImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyMultiTexSubImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyMultiTexSubImage2DEXT :: FunPtr FuntypeCopyMultiTexSubImage2DEXT -> FuntypeCopyMultiTexSubImage2DEXT
nonexistentCopyMultiTexSubImage2DEXT :: FuntypeCopyMultiTexSubImage2DEXT
nonexistentCopyMultiTexSubImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyMultiTexSubImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexImageEXT :: FunPtr FuntypeGetMultiTexImageEXT -> FuntypeGetMultiTexImageEXT
nonexistentGetMultiTexImageEXT :: FuntypeGetMultiTexImageEXT
nonexistentGetMultiTexImageEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexImageEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexParameterfvEXT :: FunPtr FuntypeGetMultiTexParameterfvEXT -> FuntypeGetMultiTexParameterfvEXT
nonexistentGetMultiTexParameterfvEXT :: FuntypeGetMultiTexParameterfvEXT
nonexistentGetMultiTexParameterfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexParameterfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexParameterivEXT :: FunPtr FuntypeGetMultiTexParameterivEXT -> FuntypeGetMultiTexParameterivEXT
nonexistentGetMultiTexParameterivEXT :: FuntypeGetMultiTexParameterivEXT
nonexistentGetMultiTexParameterivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexLevelParameterfvEXT :: FunPtr FuntypeGetMultiTexLevelParameterfvEXT -> FuntypeGetMultiTexLevelParameterfvEXT
nonexistentGetMultiTexLevelParameterfvEXT :: FuntypeGetMultiTexLevelParameterfvEXT
nonexistentGetMultiTexLevelParameterfvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexLevelParameterfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexLevelParameterivEXT :: FunPtr FuntypeGetMultiTexLevelParameterivEXT -> FuntypeGetMultiTexLevelParameterivEXT
nonexistentGetMultiTexLevelParameterivEXT :: FuntypeGetMultiTexLevelParameterivEXT
nonexistentGetMultiTexLevelParameterivEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexLevelParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexImage3DEXT :: FunPtr FuntypeMultiTexImage3DEXT -> FuntypeMultiTexImage3DEXT
nonexistentMultiTexImage3DEXT :: FuntypeMultiTexImage3DEXT
nonexistentMultiTexImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexSubImage3DEXT :: FunPtr FuntypeMultiTexSubImage3DEXT -> FuntypeMultiTexSubImage3DEXT
nonexistentMultiTexSubImage3DEXT :: FuntypeMultiTexSubImage3DEXT
nonexistentMultiTexSubImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexSubImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCopyMultiTexSubImage3DEXT :: FunPtr FuntypeCopyMultiTexSubImage3DEXT -> FuntypeCopyMultiTexSubImage3DEXT
nonexistentCopyMultiTexSubImage3DEXT :: FuntypeCopyMultiTexSubImage3DEXT
nonexistentCopyMultiTexSubImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCopyMultiTexSubImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEnableClientStateIndexedEXT :: FunPtr FuntypeEnableClientStateIndexedEXT -> FuntypeEnableClientStateIndexedEXT
nonexistentEnableClientStateIndexedEXT :: FuntypeEnableClientStateIndexedEXT
nonexistentEnableClientStateIndexedEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glEnableClientStateIndexedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDisableClientStateIndexedEXT :: FunPtr FuntypeDisableClientStateIndexedEXT -> FuntypeDisableClientStateIndexedEXT
nonexistentDisableClientStateIndexedEXT :: FuntypeDisableClientStateIndexedEXT
nonexistentDisableClientStateIndexedEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDisableClientStateIndexedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetFloatIndexedvEXT :: FunPtr FuntypeGetFloatIndexedvEXT -> FuntypeGetFloatIndexedvEXT
nonexistentGetFloatIndexedvEXT :: FuntypeGetFloatIndexedvEXT
nonexistentGetFloatIndexedvEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetFloatIndexedvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetDoubleIndexedvEXT :: FunPtr FuntypeGetDoubleIndexedvEXT -> FuntypeGetDoubleIndexedvEXT
nonexistentGetDoubleIndexedvEXT :: FuntypeGetDoubleIndexedvEXT
nonexistentGetDoubleIndexedvEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetDoubleIndexedvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetPointerIndexedvEXT :: FunPtr FuntypeGetPointerIndexedvEXT -> FuntypeGetPointerIndexedvEXT
nonexistentGetPointerIndexedvEXT :: FuntypeGetPointerIndexedvEXT
nonexistentGetPointerIndexedvEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetPointerIndexedvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEnableIndexedEXT :: FunPtr FuntypeEnableIndexedEXT -> FuntypeEnableIndexedEXT
nonexistentEnableIndexedEXT :: FuntypeEnableIndexedEXT
nonexistentEnableIndexedEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glEnableIndexedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDisableIndexedEXT :: FunPtr FuntypeDisableIndexedEXT -> FuntypeDisableIndexedEXT
nonexistentDisableIndexedEXT :: FuntypeDisableIndexedEXT
nonexistentDisableIndexedEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDisableIndexedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsEnabledIndexedEXT :: FunPtr FuntypeIsEnabledIndexedEXT -> FuntypeIsEnabledIndexedEXT
nonexistentIsEnabledIndexedEXT :: FuntypeIsEnabledIndexedEXT
nonexistentIsEnabledIndexedEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glIsEnabledIndexedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetIntegerIndexedvEXT :: FunPtr FuntypeGetIntegerIndexedvEXT -> FuntypeGetIntegerIndexedvEXT
nonexistentGetIntegerIndexedvEXT :: FuntypeGetIntegerIndexedvEXT
nonexistentGetIntegerIndexedvEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetIntegerIndexedvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetBooleanIndexedvEXT :: FunPtr FuntypeGetBooleanIndexedvEXT -> FuntypeGetBooleanIndexedvEXT
nonexistentGetBooleanIndexedvEXT :: FuntypeGetBooleanIndexedvEXT
nonexistentGetBooleanIndexedvEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetBooleanIndexedvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTextureImage3DEXT :: FunPtr FuntypeCompressedTextureImage3DEXT -> FuntypeCompressedTextureImage3DEXT
nonexistentCompressedTextureImage3DEXT :: FuntypeCompressedTextureImage3DEXT
nonexistentCompressedTextureImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTextureImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTextureImage2DEXT :: FunPtr FuntypeCompressedTextureImage2DEXT -> FuntypeCompressedTextureImage2DEXT
nonexistentCompressedTextureImage2DEXT :: FuntypeCompressedTextureImage2DEXT
nonexistentCompressedTextureImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTextureImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTextureImage1DEXT :: FunPtr FuntypeCompressedTextureImage1DEXT -> FuntypeCompressedTextureImage1DEXT
nonexistentCompressedTextureImage1DEXT :: FuntypeCompressedTextureImage1DEXT
nonexistentCompressedTextureImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTextureImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTextureSubImage3DEXT :: FunPtr FuntypeCompressedTextureSubImage3DEXT -> FuntypeCompressedTextureSubImage3DEXT
nonexistentCompressedTextureSubImage3DEXT :: FuntypeCompressedTextureSubImage3DEXT
nonexistentCompressedTextureSubImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTextureSubImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTextureSubImage2DEXT :: FunPtr FuntypeCompressedTextureSubImage2DEXT -> FuntypeCompressedTextureSubImage2DEXT
nonexistentCompressedTextureSubImage2DEXT :: FuntypeCompressedTextureSubImage2DEXT
nonexistentCompressedTextureSubImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTextureSubImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedTextureSubImage1DEXT :: FunPtr FuntypeCompressedTextureSubImage1DEXT -> FuntypeCompressedTextureSubImage1DEXT
nonexistentCompressedTextureSubImage1DEXT :: FuntypeCompressedTextureSubImage1DEXT
nonexistentCompressedTextureSubImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedTextureSubImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetCompressedTextureImageEXT :: FunPtr FuntypeGetCompressedTextureImageEXT -> FuntypeGetCompressedTextureImageEXT
nonexistentGetCompressedTextureImageEXT :: FuntypeGetCompressedTextureImageEXT
nonexistentGetCompressedTextureImageEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetCompressedTextureImageEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedMultiTexImage3DEXT :: FunPtr FuntypeCompressedMultiTexImage3DEXT -> FuntypeCompressedMultiTexImage3DEXT
nonexistentCompressedMultiTexImage3DEXT :: FuntypeCompressedMultiTexImage3DEXT
nonexistentCompressedMultiTexImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedMultiTexImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedMultiTexImage2DEXT :: FunPtr FuntypeCompressedMultiTexImage2DEXT -> FuntypeCompressedMultiTexImage2DEXT
nonexistentCompressedMultiTexImage2DEXT :: FuntypeCompressedMultiTexImage2DEXT
nonexistentCompressedMultiTexImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedMultiTexImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedMultiTexImage1DEXT :: FunPtr FuntypeCompressedMultiTexImage1DEXT -> FuntypeCompressedMultiTexImage1DEXT
nonexistentCompressedMultiTexImage1DEXT :: FuntypeCompressedMultiTexImage1DEXT
nonexistentCompressedMultiTexImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedMultiTexImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedMultiTexSubImage3DEXT :: FunPtr FuntypeCompressedMultiTexSubImage3DEXT -> FuntypeCompressedMultiTexSubImage3DEXT
nonexistentCompressedMultiTexSubImage3DEXT :: FuntypeCompressedMultiTexSubImage3DEXT
nonexistentCompressedMultiTexSubImage3DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedMultiTexSubImage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedMultiTexSubImage2DEXT :: FunPtr FuntypeCompressedMultiTexSubImage2DEXT -> FuntypeCompressedMultiTexSubImage2DEXT
nonexistentCompressedMultiTexSubImage2DEXT :: FuntypeCompressedMultiTexSubImage2DEXT
nonexistentCompressedMultiTexSubImage2DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedMultiTexSubImage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCompressedMultiTexSubImage1DEXT :: FunPtr FuntypeCompressedMultiTexSubImage1DEXT -> FuntypeCompressedMultiTexSubImage1DEXT
nonexistentCompressedMultiTexSubImage1DEXT :: FuntypeCompressedMultiTexSubImage1DEXT
nonexistentCompressedMultiTexSubImage1DEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCompressedMultiTexSubImage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetCompressedMultiTexImageEXT :: FunPtr FuntypeGetCompressedMultiTexImageEXT -> FuntypeGetCompressedMultiTexImageEXT
nonexistentGetCompressedMultiTexImageEXT :: FuntypeGetCompressedMultiTexImageEXT
nonexistentGetCompressedMultiTexImageEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetCompressedMultiTexImageEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixLoadTransposefEXT :: FunPtr FuntypeMatrixLoadTransposefEXT -> FuntypeMatrixLoadTransposefEXT
nonexistentMatrixLoadTransposefEXT :: FuntypeMatrixLoadTransposefEXT
nonexistentMatrixLoadTransposefEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixLoadTransposefEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixLoadTransposedEXT :: FunPtr FuntypeMatrixLoadTransposedEXT -> FuntypeMatrixLoadTransposedEXT
nonexistentMatrixLoadTransposedEXT :: FuntypeMatrixLoadTransposedEXT
nonexistentMatrixLoadTransposedEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixLoadTransposedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixMultTransposefEXT :: FunPtr FuntypeMatrixMultTransposefEXT -> FuntypeMatrixMultTransposefEXT
nonexistentMatrixMultTransposefEXT :: FuntypeMatrixMultTransposefEXT
nonexistentMatrixMultTransposefEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixMultTransposefEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMatrixMultTransposedEXT :: FunPtr FuntypeMatrixMultTransposedEXT -> FuntypeMatrixMultTransposedEXT
nonexistentMatrixMultTransposedEXT :: FuntypeMatrixMultTransposedEXT
nonexistentMatrixMultTransposedEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMatrixMultTransposedEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedBufferDataEXT :: FunPtr FuntypeNamedBufferDataEXT -> FuntypeNamedBufferDataEXT
nonexistentNamedBufferDataEXT :: FuntypeNamedBufferDataEXT
nonexistentNamedBufferDataEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedBufferDataEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedBufferSubDataEXT :: FunPtr FuntypeNamedBufferSubDataEXT -> FuntypeNamedBufferSubDataEXT
nonexistentNamedBufferSubDataEXT :: FuntypeNamedBufferSubDataEXT
nonexistentNamedBufferSubDataEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedBufferSubDataEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMapNamedBufferEXT :: FunPtr FuntypeMapNamedBufferEXT -> FuntypeMapNamedBufferEXT
nonexistentMapNamedBufferEXT :: FuntypeMapNamedBufferEXT
nonexistentMapNamedBufferEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMapNamedBufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynUnmapNamedBufferEXT :: FunPtr FuntypeUnmapNamedBufferEXT -> FuntypeUnmapNamedBufferEXT
nonexistentUnmapNamedBufferEXT :: FuntypeUnmapNamedBufferEXT
nonexistentUnmapNamedBufferEXT
    _
    = throwIO $ NonExistentOpenGLFunction "glUnmapNamedBufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedBufferParameterivEXT :: FunPtr FuntypeGetNamedBufferParameterivEXT -> FuntypeGetNamedBufferParameterivEXT
nonexistentGetNamedBufferParameterivEXT :: FuntypeGetNamedBufferParameterivEXT
nonexistentGetNamedBufferParameterivEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedBufferParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedBufferPointervEXT :: FunPtr FuntypeGetNamedBufferPointervEXT -> FuntypeGetNamedBufferPointervEXT
nonexistentGetNamedBufferPointervEXT :: FuntypeGetNamedBufferPointervEXT
nonexistentGetNamedBufferPointervEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedBufferPointervEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedBufferSubDataEXT :: FunPtr FuntypeGetNamedBufferSubDataEXT -> FuntypeGetNamedBufferSubDataEXT
nonexistentGetNamedBufferSubDataEXT :: FuntypeGetNamedBufferSubDataEXT
nonexistentGetNamedBufferSubDataEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedBufferSubDataEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1fEXT :: FunPtr FuntypeProgramUniform1fEXT -> FuntypeProgramUniform1fEXT
nonexistentProgramUniform1fEXT :: FuntypeProgramUniform1fEXT
nonexistentProgramUniform1fEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1fEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2fEXT :: FunPtr FuntypeProgramUniform2fEXT -> FuntypeProgramUniform2fEXT
nonexistentProgramUniform2fEXT :: FuntypeProgramUniform2fEXT
nonexistentProgramUniform2fEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2fEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3fEXT :: FunPtr FuntypeProgramUniform3fEXT -> FuntypeProgramUniform3fEXT
nonexistentProgramUniform3fEXT :: FuntypeProgramUniform3fEXT
nonexistentProgramUniform3fEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3fEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4fEXT :: FunPtr FuntypeProgramUniform4fEXT -> FuntypeProgramUniform4fEXT
nonexistentProgramUniform4fEXT :: FuntypeProgramUniform4fEXT
nonexistentProgramUniform4fEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4fEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1iEXT :: FunPtr FuntypeProgramUniform1iEXT -> FuntypeProgramUniform1iEXT
nonexistentProgramUniform1iEXT :: FuntypeProgramUniform1iEXT
nonexistentProgramUniform1iEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1iEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2iEXT :: FunPtr FuntypeProgramUniform2iEXT -> FuntypeProgramUniform2iEXT
nonexistentProgramUniform2iEXT :: FuntypeProgramUniform2iEXT
nonexistentProgramUniform2iEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2iEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3iEXT :: FunPtr FuntypeProgramUniform3iEXT -> FuntypeProgramUniform3iEXT
nonexistentProgramUniform3iEXT :: FuntypeProgramUniform3iEXT
nonexistentProgramUniform3iEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3iEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4iEXT :: FunPtr FuntypeProgramUniform4iEXT -> FuntypeProgramUniform4iEXT
nonexistentProgramUniform4iEXT :: FuntypeProgramUniform4iEXT
nonexistentProgramUniform4iEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4iEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1fvEXT :: FunPtr FuntypeProgramUniform1fvEXT -> FuntypeProgramUniform1fvEXT
nonexistentProgramUniform1fvEXT :: FuntypeProgramUniform1fvEXT
nonexistentProgramUniform1fvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2fvEXT :: FunPtr FuntypeProgramUniform2fvEXT -> FuntypeProgramUniform2fvEXT
nonexistentProgramUniform2fvEXT :: FuntypeProgramUniform2fvEXT
nonexistentProgramUniform2fvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3fvEXT :: FunPtr FuntypeProgramUniform3fvEXT -> FuntypeProgramUniform3fvEXT
nonexistentProgramUniform3fvEXT :: FuntypeProgramUniform3fvEXT
nonexistentProgramUniform3fvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4fvEXT :: FunPtr FuntypeProgramUniform4fvEXT -> FuntypeProgramUniform4fvEXT
nonexistentProgramUniform4fvEXT :: FuntypeProgramUniform4fvEXT
nonexistentProgramUniform4fvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1ivEXT :: FunPtr FuntypeProgramUniform1ivEXT -> FuntypeProgramUniform1ivEXT
nonexistentProgramUniform1ivEXT :: FuntypeProgramUniform1ivEXT
nonexistentProgramUniform1ivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1ivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2ivEXT :: FunPtr FuntypeProgramUniform2ivEXT -> FuntypeProgramUniform2ivEXT
nonexistentProgramUniform2ivEXT :: FuntypeProgramUniform2ivEXT
nonexistentProgramUniform2ivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2ivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3ivEXT :: FunPtr FuntypeProgramUniform3ivEXT -> FuntypeProgramUniform3ivEXT
nonexistentProgramUniform3ivEXT :: FuntypeProgramUniform3ivEXT
nonexistentProgramUniform3ivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3ivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4ivEXT :: FunPtr FuntypeProgramUniform4ivEXT -> FuntypeProgramUniform4ivEXT
nonexistentProgramUniform4ivEXT :: FuntypeProgramUniform4ivEXT
nonexistentProgramUniform4ivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4ivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2fvEXT :: FunPtr FuntypeProgramUniformMatrix2fvEXT -> FuntypeProgramUniformMatrix2fvEXT
nonexistentProgramUniformMatrix2fvEXT :: FuntypeProgramUniformMatrix2fvEXT
nonexistentProgramUniformMatrix2fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3fvEXT :: FunPtr FuntypeProgramUniformMatrix3fvEXT -> FuntypeProgramUniformMatrix3fvEXT
nonexistentProgramUniformMatrix3fvEXT :: FuntypeProgramUniformMatrix3fvEXT
nonexistentProgramUniformMatrix3fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4fvEXT :: FunPtr FuntypeProgramUniformMatrix4fvEXT -> FuntypeProgramUniformMatrix4fvEXT
nonexistentProgramUniformMatrix4fvEXT :: FuntypeProgramUniformMatrix4fvEXT
nonexistentProgramUniformMatrix4fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2x3fvEXT :: FunPtr FuntypeProgramUniformMatrix2x3fvEXT -> FuntypeProgramUniformMatrix2x3fvEXT
nonexistentProgramUniformMatrix2x3fvEXT :: FuntypeProgramUniformMatrix2x3fvEXT
nonexistentProgramUniformMatrix2x3fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2x3fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3x2fvEXT :: FunPtr FuntypeProgramUniformMatrix3x2fvEXT -> FuntypeProgramUniformMatrix3x2fvEXT
nonexistentProgramUniformMatrix3x2fvEXT :: FuntypeProgramUniformMatrix3x2fvEXT
nonexistentProgramUniformMatrix3x2fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3x2fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2x4fvEXT :: FunPtr FuntypeProgramUniformMatrix2x4fvEXT -> FuntypeProgramUniformMatrix2x4fvEXT
nonexistentProgramUniformMatrix2x4fvEXT :: FuntypeProgramUniformMatrix2x4fvEXT
nonexistentProgramUniformMatrix2x4fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2x4fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4x2fvEXT :: FunPtr FuntypeProgramUniformMatrix4x2fvEXT -> FuntypeProgramUniformMatrix4x2fvEXT
nonexistentProgramUniformMatrix4x2fvEXT :: FuntypeProgramUniformMatrix4x2fvEXT
nonexistentProgramUniformMatrix4x2fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4x2fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3x4fvEXT :: FunPtr FuntypeProgramUniformMatrix3x4fvEXT -> FuntypeProgramUniformMatrix3x4fvEXT
nonexistentProgramUniformMatrix3x4fvEXT :: FuntypeProgramUniformMatrix3x4fvEXT
nonexistentProgramUniformMatrix3x4fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3x4fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4x3fvEXT :: FunPtr FuntypeProgramUniformMatrix4x3fvEXT -> FuntypeProgramUniformMatrix4x3fvEXT
nonexistentProgramUniformMatrix4x3fvEXT :: FuntypeProgramUniformMatrix4x3fvEXT
nonexistentProgramUniformMatrix4x3fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4x3fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureBufferEXT :: FunPtr FuntypeTextureBufferEXT -> FuntypeTextureBufferEXT
nonexistentTextureBufferEXT :: FuntypeTextureBufferEXT
nonexistentTextureBufferEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureBufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexBufferEXT :: FunPtr FuntypeMultiTexBufferEXT -> FuntypeMultiTexBufferEXT
nonexistentMultiTexBufferEXT :: FuntypeMultiTexBufferEXT
nonexistentMultiTexBufferEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexBufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureParameterIivEXT :: FunPtr FuntypeTextureParameterIivEXT -> FuntypeTextureParameterIivEXT
nonexistentTextureParameterIivEXT :: FuntypeTextureParameterIivEXT
nonexistentTextureParameterIivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureParameterIivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureParameterIuivEXT :: FunPtr FuntypeTextureParameterIuivEXT -> FuntypeTextureParameterIuivEXT
nonexistentTextureParameterIuivEXT :: FuntypeTextureParameterIuivEXT
nonexistentTextureParameterIuivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureParameterIuivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTextureParameterIivEXT :: FunPtr FuntypeGetTextureParameterIivEXT -> FuntypeGetTextureParameterIivEXT
nonexistentGetTextureParameterIivEXT :: FuntypeGetTextureParameterIivEXT
nonexistentGetTextureParameterIivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTextureParameterIivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetTextureParameterIuivEXT :: FunPtr FuntypeGetTextureParameterIuivEXT -> FuntypeGetTextureParameterIuivEXT
nonexistentGetTextureParameterIuivEXT :: FuntypeGetTextureParameterIuivEXT
nonexistentGetTextureParameterIuivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetTextureParameterIuivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexParameterIivEXT :: FunPtr FuntypeMultiTexParameterIivEXT -> FuntypeMultiTexParameterIivEXT
nonexistentMultiTexParameterIivEXT :: FuntypeMultiTexParameterIivEXT
nonexistentMultiTexParameterIivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexParameterIivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexParameterIuivEXT :: FunPtr FuntypeMultiTexParameterIuivEXT -> FuntypeMultiTexParameterIuivEXT
nonexistentMultiTexParameterIuivEXT :: FuntypeMultiTexParameterIuivEXT
nonexistentMultiTexParameterIuivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexParameterIuivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexParameterIivEXT :: FunPtr FuntypeGetMultiTexParameterIivEXT -> FuntypeGetMultiTexParameterIivEXT
nonexistentGetMultiTexParameterIivEXT :: FuntypeGetMultiTexParameterIivEXT
nonexistentGetMultiTexParameterIivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexParameterIivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetMultiTexParameterIuivEXT :: FunPtr FuntypeGetMultiTexParameterIuivEXT -> FuntypeGetMultiTexParameterIuivEXT
nonexistentGetMultiTexParameterIuivEXT :: FuntypeGetMultiTexParameterIuivEXT
nonexistentGetMultiTexParameterIuivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetMultiTexParameterIuivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1uiEXT :: FunPtr FuntypeProgramUniform1uiEXT -> FuntypeProgramUniform1uiEXT
nonexistentProgramUniform1uiEXT :: FuntypeProgramUniform1uiEXT
nonexistentProgramUniform1uiEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1uiEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2uiEXT :: FunPtr FuntypeProgramUniform2uiEXT -> FuntypeProgramUniform2uiEXT
nonexistentProgramUniform2uiEXT :: FuntypeProgramUniform2uiEXT
nonexistentProgramUniform2uiEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2uiEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3uiEXT :: FunPtr FuntypeProgramUniform3uiEXT -> FuntypeProgramUniform3uiEXT
nonexistentProgramUniform3uiEXT :: FuntypeProgramUniform3uiEXT
nonexistentProgramUniform3uiEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3uiEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4uiEXT :: FunPtr FuntypeProgramUniform4uiEXT -> FuntypeProgramUniform4uiEXT
nonexistentProgramUniform4uiEXT :: FuntypeProgramUniform4uiEXT
nonexistentProgramUniform4uiEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4uiEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1uivEXT :: FunPtr FuntypeProgramUniform1uivEXT -> FuntypeProgramUniform1uivEXT
nonexistentProgramUniform1uivEXT :: FuntypeProgramUniform1uivEXT
nonexistentProgramUniform1uivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1uivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2uivEXT :: FunPtr FuntypeProgramUniform2uivEXT -> FuntypeProgramUniform2uivEXT
nonexistentProgramUniform2uivEXT :: FuntypeProgramUniform2uivEXT
nonexistentProgramUniform2uivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2uivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3uivEXT :: FunPtr FuntypeProgramUniform3uivEXT -> FuntypeProgramUniform3uivEXT
nonexistentProgramUniform3uivEXT :: FuntypeProgramUniform3uivEXT
nonexistentProgramUniform3uivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3uivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4uivEXT :: FunPtr FuntypeProgramUniform4uivEXT -> FuntypeProgramUniform4uivEXT
nonexistentProgramUniform4uivEXT :: FuntypeProgramUniform4uivEXT
nonexistentProgramUniform4uivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4uivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameters4fvEXT :: FunPtr FuntypeNamedProgramLocalParameters4fvEXT -> FuntypeNamedProgramLocalParameters4fvEXT
nonexistentNamedProgramLocalParameters4fvEXT :: FuntypeNamedProgramLocalParameters4fvEXT
nonexistentNamedProgramLocalParameters4fvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameters4fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameterI4iEXT :: FunPtr FuntypeNamedProgramLocalParameterI4iEXT -> FuntypeNamedProgramLocalParameterI4iEXT
nonexistentNamedProgramLocalParameterI4iEXT :: FuntypeNamedProgramLocalParameterI4iEXT
nonexistentNamedProgramLocalParameterI4iEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameterI4iEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameterI4ivEXT :: FunPtr FuntypeNamedProgramLocalParameterI4ivEXT -> FuntypeNamedProgramLocalParameterI4ivEXT
nonexistentNamedProgramLocalParameterI4ivEXT :: FuntypeNamedProgramLocalParameterI4ivEXT
nonexistentNamedProgramLocalParameterI4ivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameterI4ivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParametersI4ivEXT :: FunPtr FuntypeNamedProgramLocalParametersI4ivEXT -> FuntypeNamedProgramLocalParametersI4ivEXT
nonexistentNamedProgramLocalParametersI4ivEXT :: FuntypeNamedProgramLocalParametersI4ivEXT
nonexistentNamedProgramLocalParametersI4ivEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParametersI4ivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameterI4uiEXT :: FunPtr FuntypeNamedProgramLocalParameterI4uiEXT -> FuntypeNamedProgramLocalParameterI4uiEXT
nonexistentNamedProgramLocalParameterI4uiEXT :: FuntypeNamedProgramLocalParameterI4uiEXT
nonexistentNamedProgramLocalParameterI4uiEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameterI4uiEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameterI4uivEXT :: FunPtr FuntypeNamedProgramLocalParameterI4uivEXT -> FuntypeNamedProgramLocalParameterI4uivEXT
nonexistentNamedProgramLocalParameterI4uivEXT :: FuntypeNamedProgramLocalParameterI4uivEXT
nonexistentNamedProgramLocalParameterI4uivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameterI4uivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParametersI4uivEXT :: FunPtr FuntypeNamedProgramLocalParametersI4uivEXT -> FuntypeNamedProgramLocalParametersI4uivEXT
nonexistentNamedProgramLocalParametersI4uivEXT :: FuntypeNamedProgramLocalParametersI4uivEXT
nonexistentNamedProgramLocalParametersI4uivEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParametersI4uivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedProgramLocalParameterIivEXT :: FunPtr FuntypeGetNamedProgramLocalParameterIivEXT -> FuntypeGetNamedProgramLocalParameterIivEXT
nonexistentGetNamedProgramLocalParameterIivEXT :: FuntypeGetNamedProgramLocalParameterIivEXT
nonexistentGetNamedProgramLocalParameterIivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedProgramLocalParameterIivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedProgramLocalParameterIuivEXT :: FunPtr FuntypeGetNamedProgramLocalParameterIuivEXT -> FuntypeGetNamedProgramLocalParameterIuivEXT
nonexistentGetNamedProgramLocalParameterIuivEXT :: FuntypeGetNamedProgramLocalParameterIuivEXT
nonexistentGetNamedProgramLocalParameterIuivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedProgramLocalParameterIuivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEnableClientStateiEXT :: FunPtr FuntypeEnableClientStateiEXT -> FuntypeEnableClientStateiEXT
nonexistentEnableClientStateiEXT :: FuntypeEnableClientStateiEXT
nonexistentEnableClientStateiEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glEnableClientStateiEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDisableClientStateiEXT :: FunPtr FuntypeDisableClientStateiEXT -> FuntypeDisableClientStateiEXT
nonexistentDisableClientStateiEXT :: FuntypeDisableClientStateiEXT
nonexistentDisableClientStateiEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDisableClientStateiEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetFloati_vEXT :: FunPtr FuntypeGetFloati_vEXT -> FuntypeGetFloati_vEXT
nonexistentGetFloati_vEXT :: FuntypeGetFloati_vEXT
nonexistentGetFloati_vEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetFloati_vEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetDoublei_vEXT :: FunPtr FuntypeGetDoublei_vEXT -> FuntypeGetDoublei_vEXT
nonexistentGetDoublei_vEXT :: FuntypeGetDoublei_vEXT
nonexistentGetDoublei_vEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetDoublei_vEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetPointeri_vEXT :: FunPtr FuntypeGetPointeri_vEXT -> FuntypeGetPointeri_vEXT
nonexistentGetPointeri_vEXT :: FuntypeGetPointeri_vEXT
nonexistentGetPointeri_vEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetPointeri_vEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramStringEXT :: FunPtr FuntypeNamedProgramStringEXT -> FuntypeNamedProgramStringEXT
nonexistentNamedProgramStringEXT :: FuntypeNamedProgramStringEXT
nonexistentNamedProgramStringEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramStringEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameter4dEXT :: FunPtr FuntypeNamedProgramLocalParameter4dEXT -> FuntypeNamedProgramLocalParameter4dEXT
nonexistentNamedProgramLocalParameter4dEXT :: FuntypeNamedProgramLocalParameter4dEXT
nonexistentNamedProgramLocalParameter4dEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameter4dEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameter4dvEXT :: FunPtr FuntypeNamedProgramLocalParameter4dvEXT -> FuntypeNamedProgramLocalParameter4dvEXT
nonexistentNamedProgramLocalParameter4dvEXT :: FuntypeNamedProgramLocalParameter4dvEXT
nonexistentNamedProgramLocalParameter4dvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameter4dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameter4fEXT :: FunPtr FuntypeNamedProgramLocalParameter4fEXT -> FuntypeNamedProgramLocalParameter4fEXT
nonexistentNamedProgramLocalParameter4fEXT :: FuntypeNamedProgramLocalParameter4fEXT
nonexistentNamedProgramLocalParameter4fEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameter4fEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedProgramLocalParameter4fvEXT :: FunPtr FuntypeNamedProgramLocalParameter4fvEXT -> FuntypeNamedProgramLocalParameter4fvEXT
nonexistentNamedProgramLocalParameter4fvEXT :: FuntypeNamedProgramLocalParameter4fvEXT
nonexistentNamedProgramLocalParameter4fvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedProgramLocalParameter4fvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedProgramLocalParameterdvEXT :: FunPtr FuntypeGetNamedProgramLocalParameterdvEXT -> FuntypeGetNamedProgramLocalParameterdvEXT
nonexistentGetNamedProgramLocalParameterdvEXT :: FuntypeGetNamedProgramLocalParameterdvEXT
nonexistentGetNamedProgramLocalParameterdvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedProgramLocalParameterdvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedProgramLocalParameterfvEXT :: FunPtr FuntypeGetNamedProgramLocalParameterfvEXT -> FuntypeGetNamedProgramLocalParameterfvEXT
nonexistentGetNamedProgramLocalParameterfvEXT :: FuntypeGetNamedProgramLocalParameterfvEXT
nonexistentGetNamedProgramLocalParameterfvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedProgramLocalParameterfvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedProgramivEXT :: FunPtr FuntypeGetNamedProgramivEXT -> FuntypeGetNamedProgramivEXT
nonexistentGetNamedProgramivEXT :: FuntypeGetNamedProgramivEXT
nonexistentGetNamedProgramivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedProgramivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedProgramStringEXT :: FunPtr FuntypeGetNamedProgramStringEXT -> FuntypeGetNamedProgramStringEXT
nonexistentGetNamedProgramStringEXT :: FuntypeGetNamedProgramStringEXT
nonexistentGetNamedProgramStringEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedProgramStringEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedRenderbufferStorageEXT :: FunPtr FuntypeNamedRenderbufferStorageEXT -> FuntypeNamedRenderbufferStorageEXT
nonexistentNamedRenderbufferStorageEXT :: FuntypeNamedRenderbufferStorageEXT
nonexistentNamedRenderbufferStorageEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedRenderbufferStorageEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedRenderbufferParameterivEXT :: FunPtr FuntypeGetNamedRenderbufferParameterivEXT -> FuntypeGetNamedRenderbufferParameterivEXT
nonexistentGetNamedRenderbufferParameterivEXT :: FuntypeGetNamedRenderbufferParameterivEXT
nonexistentGetNamedRenderbufferParameterivEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedRenderbufferParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedRenderbufferStorageMultisampleEXT :: FunPtr FuntypeNamedRenderbufferStorageMultisampleEXT -> FuntypeNamedRenderbufferStorageMultisampleEXT
nonexistentNamedRenderbufferStorageMultisampleEXT :: FuntypeNamedRenderbufferStorageMultisampleEXT
nonexistentNamedRenderbufferStorageMultisampleEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedRenderbufferStorageMultisampleEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedRenderbufferStorageMultisampleCoverageEXT :: FunPtr FuntypeNamedRenderbufferStorageMultisampleCoverageEXT -> FuntypeNamedRenderbufferStorageMultisampleCoverageEXT
nonexistentNamedRenderbufferStorageMultisampleCoverageEXT :: FuntypeNamedRenderbufferStorageMultisampleCoverageEXT
nonexistentNamedRenderbufferStorageMultisampleCoverageEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedRenderbufferStorageMultisampleCoverageEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCheckNamedFramebufferStatusEXT :: FunPtr FuntypeCheckNamedFramebufferStatusEXT -> FuntypeCheckNamedFramebufferStatusEXT
nonexistentCheckNamedFramebufferStatusEXT :: FuntypeCheckNamedFramebufferStatusEXT
nonexistentCheckNamedFramebufferStatusEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCheckNamedFramebufferStatusEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedFramebufferTexture1DEXT :: FunPtr FuntypeNamedFramebufferTexture1DEXT -> FuntypeNamedFramebufferTexture1DEXT
nonexistentNamedFramebufferTexture1DEXT :: FuntypeNamedFramebufferTexture1DEXT
nonexistentNamedFramebufferTexture1DEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedFramebufferTexture1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedFramebufferTexture2DEXT :: FunPtr FuntypeNamedFramebufferTexture2DEXT -> FuntypeNamedFramebufferTexture2DEXT
nonexistentNamedFramebufferTexture2DEXT :: FuntypeNamedFramebufferTexture2DEXT
nonexistentNamedFramebufferTexture2DEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedFramebufferTexture2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedFramebufferTexture3DEXT :: FunPtr FuntypeNamedFramebufferTexture3DEXT -> FuntypeNamedFramebufferTexture3DEXT
nonexistentNamedFramebufferTexture3DEXT :: FuntypeNamedFramebufferTexture3DEXT
nonexistentNamedFramebufferTexture3DEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedFramebufferTexture3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedFramebufferRenderbufferEXT :: FunPtr FuntypeNamedFramebufferRenderbufferEXT -> FuntypeNamedFramebufferRenderbufferEXT
nonexistentNamedFramebufferRenderbufferEXT :: FuntypeNamedFramebufferRenderbufferEXT
nonexistentNamedFramebufferRenderbufferEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedFramebufferRenderbufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedFramebufferAttachmentParameterivEXT :: FunPtr FuntypeGetNamedFramebufferAttachmentParameterivEXT -> FuntypeGetNamedFramebufferAttachmentParameterivEXT
nonexistentGetNamedFramebufferAttachmentParameterivEXT :: FuntypeGetNamedFramebufferAttachmentParameterivEXT
nonexistentGetNamedFramebufferAttachmentParameterivEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedFramebufferAttachmentParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenerateTextureMipmapEXT :: FunPtr FuntypeGenerateTextureMipmapEXT -> FuntypeGenerateTextureMipmapEXT
nonexistentGenerateTextureMipmapEXT :: FuntypeGenerateTextureMipmapEXT
nonexistentGenerateTextureMipmapEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenerateTextureMipmapEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenerateMultiTexMipmapEXT :: FunPtr FuntypeGenerateMultiTexMipmapEXT -> FuntypeGenerateMultiTexMipmapEXT
nonexistentGenerateMultiTexMipmapEXT :: FuntypeGenerateMultiTexMipmapEXT
nonexistentGenerateMultiTexMipmapEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenerateMultiTexMipmapEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferDrawBufferEXT :: FunPtr FuntypeFramebufferDrawBufferEXT -> FuntypeFramebufferDrawBufferEXT
nonexistentFramebufferDrawBufferEXT :: FuntypeFramebufferDrawBufferEXT
nonexistentFramebufferDrawBufferEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferDrawBufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferDrawBuffersEXT :: FunPtr FuntypeFramebufferDrawBuffersEXT -> FuntypeFramebufferDrawBuffersEXT
nonexistentFramebufferDrawBuffersEXT :: FuntypeFramebufferDrawBuffersEXT
nonexistentFramebufferDrawBuffersEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferDrawBuffersEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFramebufferReadBufferEXT :: FunPtr FuntypeFramebufferReadBufferEXT -> FuntypeFramebufferReadBufferEXT
nonexistentFramebufferReadBufferEXT :: FuntypeFramebufferReadBufferEXT
nonexistentFramebufferReadBufferEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFramebufferReadBufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetFramebufferParameterivEXT :: FunPtr FuntypeGetFramebufferParameterivEXT -> FuntypeGetFramebufferParameterivEXT
nonexistentGetFramebufferParameterivEXT :: FuntypeGetFramebufferParameterivEXT
nonexistentGetFramebufferParameterivEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetFramebufferParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedCopyBufferSubDataEXT :: FunPtr FuntypeNamedCopyBufferSubDataEXT -> FuntypeNamedCopyBufferSubDataEXT
nonexistentNamedCopyBufferSubDataEXT :: FuntypeNamedCopyBufferSubDataEXT
nonexistentNamedCopyBufferSubDataEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedCopyBufferSubDataEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedFramebufferTextureEXT :: FunPtr FuntypeNamedFramebufferTextureEXT -> FuntypeNamedFramebufferTextureEXT
nonexistentNamedFramebufferTextureEXT :: FuntypeNamedFramebufferTextureEXT
nonexistentNamedFramebufferTextureEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedFramebufferTextureEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedFramebufferTextureLayerEXT :: FunPtr FuntypeNamedFramebufferTextureLayerEXT -> FuntypeNamedFramebufferTextureLayerEXT
nonexistentNamedFramebufferTextureLayerEXT :: FuntypeNamedFramebufferTextureLayerEXT
nonexistentNamedFramebufferTextureLayerEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedFramebufferTextureLayerEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedFramebufferTextureFaceEXT :: FunPtr FuntypeNamedFramebufferTextureFaceEXT -> FuntypeNamedFramebufferTextureFaceEXT
nonexistentNamedFramebufferTextureFaceEXT :: FuntypeNamedFramebufferTextureFaceEXT
nonexistentNamedFramebufferTextureFaceEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedFramebufferTextureFaceEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureRenderbufferEXT :: FunPtr FuntypeTextureRenderbufferEXT -> FuntypeTextureRenderbufferEXT
nonexistentTextureRenderbufferEXT :: FuntypeTextureRenderbufferEXT
nonexistentTextureRenderbufferEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureRenderbufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMultiTexRenderbufferEXT :: FunPtr FuntypeMultiTexRenderbufferEXT -> FuntypeMultiTexRenderbufferEXT
nonexistentMultiTexRenderbufferEXT :: FuntypeMultiTexRenderbufferEXT
nonexistentMultiTexRenderbufferEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMultiTexRenderbufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexOffsetEXT :: FunPtr FuntypeVertexArrayVertexOffsetEXT -> FuntypeVertexArrayVertexOffsetEXT
nonexistentVertexArrayVertexOffsetEXT :: FuntypeVertexArrayVertexOffsetEXT
nonexistentVertexArrayVertexOffsetEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayColorOffsetEXT :: FunPtr FuntypeVertexArrayColorOffsetEXT -> FuntypeVertexArrayColorOffsetEXT
nonexistentVertexArrayColorOffsetEXT :: FuntypeVertexArrayColorOffsetEXT
nonexistentVertexArrayColorOffsetEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayColorOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayEdgeFlagOffsetEXT :: FunPtr FuntypeVertexArrayEdgeFlagOffsetEXT -> FuntypeVertexArrayEdgeFlagOffsetEXT
nonexistentVertexArrayEdgeFlagOffsetEXT :: FuntypeVertexArrayEdgeFlagOffsetEXT
nonexistentVertexArrayEdgeFlagOffsetEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayEdgeFlagOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayIndexOffsetEXT :: FunPtr FuntypeVertexArrayIndexOffsetEXT -> FuntypeVertexArrayIndexOffsetEXT
nonexistentVertexArrayIndexOffsetEXT :: FuntypeVertexArrayIndexOffsetEXT
nonexistentVertexArrayIndexOffsetEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayIndexOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayNormalOffsetEXT :: FunPtr FuntypeVertexArrayNormalOffsetEXT -> FuntypeVertexArrayNormalOffsetEXT
nonexistentVertexArrayNormalOffsetEXT :: FuntypeVertexArrayNormalOffsetEXT
nonexistentVertexArrayNormalOffsetEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayNormalOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayTexCoordOffsetEXT :: FunPtr FuntypeVertexArrayTexCoordOffsetEXT -> FuntypeVertexArrayTexCoordOffsetEXT
nonexistentVertexArrayTexCoordOffsetEXT :: FuntypeVertexArrayTexCoordOffsetEXT
nonexistentVertexArrayTexCoordOffsetEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayTexCoordOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayMultiTexCoordOffsetEXT :: FunPtr FuntypeVertexArrayMultiTexCoordOffsetEXT -> FuntypeVertexArrayMultiTexCoordOffsetEXT
nonexistentVertexArrayMultiTexCoordOffsetEXT :: FuntypeVertexArrayMultiTexCoordOffsetEXT
nonexistentVertexArrayMultiTexCoordOffsetEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayMultiTexCoordOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayFogCoordOffsetEXT :: FunPtr FuntypeVertexArrayFogCoordOffsetEXT -> FuntypeVertexArrayFogCoordOffsetEXT
nonexistentVertexArrayFogCoordOffsetEXT :: FuntypeVertexArrayFogCoordOffsetEXT
nonexistentVertexArrayFogCoordOffsetEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayFogCoordOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArraySecondaryColorOffsetEXT :: FunPtr FuntypeVertexArraySecondaryColorOffsetEXT -> FuntypeVertexArraySecondaryColorOffsetEXT
nonexistentVertexArraySecondaryColorOffsetEXT :: FuntypeVertexArraySecondaryColorOffsetEXT
nonexistentVertexArraySecondaryColorOffsetEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArraySecondaryColorOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexAttribOffsetEXT :: FunPtr FuntypeVertexArrayVertexAttribOffsetEXT -> FuntypeVertexArrayVertexAttribOffsetEXT
nonexistentVertexArrayVertexAttribOffsetEXT :: FuntypeVertexArrayVertexAttribOffsetEXT
nonexistentVertexArrayVertexAttribOffsetEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexAttribOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexAttribIOffsetEXT :: FunPtr FuntypeVertexArrayVertexAttribIOffsetEXT -> FuntypeVertexArrayVertexAttribIOffsetEXT
nonexistentVertexArrayVertexAttribIOffsetEXT :: FuntypeVertexArrayVertexAttribIOffsetEXT
nonexistentVertexArrayVertexAttribIOffsetEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexAttribIOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEnableVertexArrayEXT :: FunPtr FuntypeEnableVertexArrayEXT -> FuntypeEnableVertexArrayEXT
nonexistentEnableVertexArrayEXT :: FuntypeEnableVertexArrayEXT
nonexistentEnableVertexArrayEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glEnableVertexArrayEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDisableVertexArrayEXT :: FunPtr FuntypeDisableVertexArrayEXT -> FuntypeDisableVertexArrayEXT
nonexistentDisableVertexArrayEXT :: FuntypeDisableVertexArrayEXT
nonexistentDisableVertexArrayEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDisableVertexArrayEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynEnableVertexArrayAttribEXT :: FunPtr FuntypeEnableVertexArrayAttribEXT -> FuntypeEnableVertexArrayAttribEXT
nonexistentEnableVertexArrayAttribEXT :: FuntypeEnableVertexArrayAttribEXT
nonexistentEnableVertexArrayAttribEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glEnableVertexArrayAttribEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDisableVertexArrayAttribEXT :: FunPtr FuntypeDisableVertexArrayAttribEXT -> FuntypeDisableVertexArrayAttribEXT
nonexistentDisableVertexArrayAttribEXT :: FuntypeDisableVertexArrayAttribEXT
nonexistentDisableVertexArrayAttribEXT
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDisableVertexArrayAttribEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexArrayIntegervEXT :: FunPtr FuntypeGetVertexArrayIntegervEXT -> FuntypeGetVertexArrayIntegervEXT
nonexistentGetVertexArrayIntegervEXT :: FuntypeGetVertexArrayIntegervEXT
nonexistentGetVertexArrayIntegervEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexArrayIntegervEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexArrayPointervEXT :: FunPtr FuntypeGetVertexArrayPointervEXT -> FuntypeGetVertexArrayPointervEXT
nonexistentGetVertexArrayPointervEXT :: FuntypeGetVertexArrayPointervEXT
nonexistentGetVertexArrayPointervEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexArrayPointervEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexArrayIntegeri_vEXT :: FunPtr FuntypeGetVertexArrayIntegeri_vEXT -> FuntypeGetVertexArrayIntegeri_vEXT
nonexistentGetVertexArrayIntegeri_vEXT :: FuntypeGetVertexArrayIntegeri_vEXT
nonexistentGetVertexArrayIntegeri_vEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexArrayIntegeri_vEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetVertexArrayPointeri_vEXT :: FunPtr FuntypeGetVertexArrayPointeri_vEXT -> FuntypeGetVertexArrayPointeri_vEXT
nonexistentGetVertexArrayPointeri_vEXT :: FuntypeGetVertexArrayPointeri_vEXT
nonexistentGetVertexArrayPointeri_vEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetVertexArrayPointeri_vEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynMapNamedBufferRangeEXT :: FunPtr FuntypeMapNamedBufferRangeEXT -> FuntypeMapNamedBufferRangeEXT
nonexistentMapNamedBufferRangeEXT :: FuntypeMapNamedBufferRangeEXT
nonexistentMapNamedBufferRangeEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glMapNamedBufferRangeEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynFlushMappedNamedBufferRangeEXT :: FunPtr FuntypeFlushMappedNamedBufferRangeEXT -> FuntypeFlushMappedNamedBufferRangeEXT
nonexistentFlushMappedNamedBufferRangeEXT :: FuntypeFlushMappedNamedBufferRangeEXT
nonexistentFlushMappedNamedBufferRangeEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glFlushMappedNamedBufferRangeEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedBufferStorageEXT :: FunPtr FuntypeNamedBufferStorageEXT -> FuntypeNamedBufferStorageEXT
nonexistentNamedBufferStorageEXT :: FuntypeNamedBufferStorageEXT
nonexistentNamedBufferStorageEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedBufferStorageEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearNamedBufferDataEXT :: FunPtr FuntypeClearNamedBufferDataEXT -> FuntypeClearNamedBufferDataEXT
nonexistentClearNamedBufferDataEXT :: FuntypeClearNamedBufferDataEXT
nonexistentClearNamedBufferDataEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClearNamedBufferDataEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynClearNamedBufferSubDataEXT :: FunPtr FuntypeClearNamedBufferSubDataEXT -> FuntypeClearNamedBufferSubDataEXT
nonexistentClearNamedBufferSubDataEXT :: FuntypeClearNamedBufferSubDataEXT
nonexistentClearNamedBufferSubDataEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glClearNamedBufferSubDataEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynNamedFramebufferParameteriEXT :: FunPtr FuntypeNamedFramebufferParameteriEXT -> FuntypeNamedFramebufferParameteriEXT
nonexistentNamedFramebufferParameteriEXT :: FuntypeNamedFramebufferParameteriEXT
nonexistentNamedFramebufferParameteriEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glNamedFramebufferParameteriEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetNamedFramebufferParameterivEXT :: FunPtr FuntypeGetNamedFramebufferParameterivEXT -> FuntypeGetNamedFramebufferParameterivEXT
nonexistentGetNamedFramebufferParameterivEXT :: FuntypeGetNamedFramebufferParameterivEXT
nonexistentGetNamedFramebufferParameterivEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetNamedFramebufferParameterivEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1dEXT :: FunPtr FuntypeProgramUniform1dEXT -> FuntypeProgramUniform1dEXT
nonexistentProgramUniform1dEXT :: FuntypeProgramUniform1dEXT
nonexistentProgramUniform1dEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1dEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2dEXT :: FunPtr FuntypeProgramUniform2dEXT -> FuntypeProgramUniform2dEXT
nonexistentProgramUniform2dEXT :: FuntypeProgramUniform2dEXT
nonexistentProgramUniform2dEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2dEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3dEXT :: FunPtr FuntypeProgramUniform3dEXT -> FuntypeProgramUniform3dEXT
nonexistentProgramUniform3dEXT :: FuntypeProgramUniform3dEXT
nonexistentProgramUniform3dEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3dEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4dEXT :: FunPtr FuntypeProgramUniform4dEXT -> FuntypeProgramUniform4dEXT
nonexistentProgramUniform4dEXT :: FuntypeProgramUniform4dEXT
nonexistentProgramUniform4dEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4dEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1dvEXT :: FunPtr FuntypeProgramUniform1dvEXT -> FuntypeProgramUniform1dvEXT
nonexistentProgramUniform1dvEXT :: FuntypeProgramUniform1dvEXT
nonexistentProgramUniform1dvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2dvEXT :: FunPtr FuntypeProgramUniform2dvEXT -> FuntypeProgramUniform2dvEXT
nonexistentProgramUniform2dvEXT :: FuntypeProgramUniform2dvEXT
nonexistentProgramUniform2dvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3dvEXT :: FunPtr FuntypeProgramUniform3dvEXT -> FuntypeProgramUniform3dvEXT
nonexistentProgramUniform3dvEXT :: FuntypeProgramUniform3dvEXT
nonexistentProgramUniform3dvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4dvEXT :: FunPtr FuntypeProgramUniform4dvEXT -> FuntypeProgramUniform4dvEXT
nonexistentProgramUniform4dvEXT :: FuntypeProgramUniform4dvEXT
nonexistentProgramUniform4dvEXT
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2dvEXT :: FunPtr FuntypeProgramUniformMatrix2dvEXT -> FuntypeProgramUniformMatrix2dvEXT
nonexistentProgramUniformMatrix2dvEXT :: FuntypeProgramUniformMatrix2dvEXT
nonexistentProgramUniformMatrix2dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3dvEXT :: FunPtr FuntypeProgramUniformMatrix3dvEXT -> FuntypeProgramUniformMatrix3dvEXT
nonexistentProgramUniformMatrix3dvEXT :: FuntypeProgramUniformMatrix3dvEXT
nonexistentProgramUniformMatrix3dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4dvEXT :: FunPtr FuntypeProgramUniformMatrix4dvEXT -> FuntypeProgramUniformMatrix4dvEXT
nonexistentProgramUniformMatrix4dvEXT :: FuntypeProgramUniformMatrix4dvEXT
nonexistentProgramUniformMatrix4dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2x3dvEXT :: FunPtr FuntypeProgramUniformMatrix2x3dvEXT -> FuntypeProgramUniformMatrix2x3dvEXT
nonexistentProgramUniformMatrix2x3dvEXT :: FuntypeProgramUniformMatrix2x3dvEXT
nonexistentProgramUniformMatrix2x3dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2x3dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2x4dvEXT :: FunPtr FuntypeProgramUniformMatrix2x4dvEXT -> FuntypeProgramUniformMatrix2x4dvEXT
nonexistentProgramUniformMatrix2x4dvEXT :: FuntypeProgramUniformMatrix2x4dvEXT
nonexistentProgramUniformMatrix2x4dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2x4dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3x2dvEXT :: FunPtr FuntypeProgramUniformMatrix3x2dvEXT -> FuntypeProgramUniformMatrix3x2dvEXT
nonexistentProgramUniformMatrix3x2dvEXT :: FuntypeProgramUniformMatrix3x2dvEXT
nonexistentProgramUniformMatrix3x2dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3x2dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3x4dvEXT :: FunPtr FuntypeProgramUniformMatrix3x4dvEXT -> FuntypeProgramUniformMatrix3x4dvEXT
nonexistentProgramUniformMatrix3x4dvEXT :: FuntypeProgramUniformMatrix3x4dvEXT
nonexistentProgramUniformMatrix3x4dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3x4dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4x2dvEXT :: FunPtr FuntypeProgramUniformMatrix4x2dvEXT -> FuntypeProgramUniformMatrix4x2dvEXT
nonexistentProgramUniformMatrix4x2dvEXT :: FuntypeProgramUniformMatrix4x2dvEXT
nonexistentProgramUniformMatrix4x2dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4x2dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4x3dvEXT :: FunPtr FuntypeProgramUniformMatrix4x3dvEXT -> FuntypeProgramUniformMatrix4x3dvEXT
nonexistentProgramUniformMatrix4x3dvEXT :: FuntypeProgramUniformMatrix4x3dvEXT
nonexistentProgramUniformMatrix4x3dvEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4x3dvEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureBufferRangeEXT :: FunPtr FuntypeTextureBufferRangeEXT -> FuntypeTextureBufferRangeEXT
nonexistentTextureBufferRangeEXT :: FuntypeTextureBufferRangeEXT
nonexistentTextureBufferRangeEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureBufferRangeEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureStorage1DEXT :: FunPtr FuntypeTextureStorage1DEXT -> FuntypeTextureStorage1DEXT
nonexistentTextureStorage1DEXT :: FuntypeTextureStorage1DEXT
nonexistentTextureStorage1DEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureStorage1DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureStorage2DEXT :: FunPtr FuntypeTextureStorage2DEXT -> FuntypeTextureStorage2DEXT
nonexistentTextureStorage2DEXT :: FuntypeTextureStorage2DEXT
nonexistentTextureStorage2DEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureStorage2DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureStorage3DEXT :: FunPtr FuntypeTextureStorage3DEXT -> FuntypeTextureStorage3DEXT
nonexistentTextureStorage3DEXT :: FuntypeTextureStorage3DEXT
nonexistentTextureStorage3DEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureStorage3DEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureStorage2DMultisampleEXT :: FunPtr FuntypeTextureStorage2DMultisampleEXT -> FuntypeTextureStorage2DMultisampleEXT
nonexistentTextureStorage2DMultisampleEXT :: FuntypeTextureStorage2DMultisampleEXT
nonexistentTextureStorage2DMultisampleEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureStorage2DMultisampleEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTextureStorage3DMultisampleEXT :: FunPtr FuntypeTextureStorage3DMultisampleEXT -> FuntypeTextureStorage3DMultisampleEXT
nonexistentTextureStorage3DMultisampleEXT :: FuntypeTextureStorage3DMultisampleEXT
nonexistentTextureStorage3DMultisampleEXT
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTextureStorage3DMultisampleEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayBindVertexBufferEXT :: FunPtr FuntypeVertexArrayBindVertexBufferEXT -> FuntypeVertexArrayBindVertexBufferEXT
nonexistentVertexArrayBindVertexBufferEXT :: FuntypeVertexArrayBindVertexBufferEXT
nonexistentVertexArrayBindVertexBufferEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayBindVertexBufferEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexAttribFormatEXT :: FunPtr FuntypeVertexArrayVertexAttribFormatEXT -> FuntypeVertexArrayVertexAttribFormatEXT
nonexistentVertexArrayVertexAttribFormatEXT :: FuntypeVertexArrayVertexAttribFormatEXT
nonexistentVertexArrayVertexAttribFormatEXT
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexAttribFormatEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexAttribIFormatEXT :: FunPtr FuntypeVertexArrayVertexAttribIFormatEXT -> FuntypeVertexArrayVertexAttribIFormatEXT
nonexistentVertexArrayVertexAttribIFormatEXT :: FuntypeVertexArrayVertexAttribIFormatEXT
nonexistentVertexArrayVertexAttribIFormatEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexAttribIFormatEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexAttribLFormatEXT :: FunPtr FuntypeVertexArrayVertexAttribLFormatEXT -> FuntypeVertexArrayVertexAttribLFormatEXT
nonexistentVertexArrayVertexAttribLFormatEXT :: FuntypeVertexArrayVertexAttribLFormatEXT
nonexistentVertexArrayVertexAttribLFormatEXT
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexAttribLFormatEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexAttribBindingEXT :: FunPtr FuntypeVertexArrayVertexAttribBindingEXT -> FuntypeVertexArrayVertexAttribBindingEXT
nonexistentVertexArrayVertexAttribBindingEXT :: FuntypeVertexArrayVertexAttribBindingEXT
nonexistentVertexArrayVertexAttribBindingEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexAttribBindingEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexBindingDivisorEXT :: FunPtr FuntypeVertexArrayVertexBindingDivisorEXT -> FuntypeVertexArrayVertexBindingDivisorEXT
nonexistentVertexArrayVertexBindingDivisorEXT :: FuntypeVertexArrayVertexBindingDivisorEXT
nonexistentVertexArrayVertexBindingDivisorEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexBindingDivisorEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexAttribLOffsetEXT :: FunPtr FuntypeVertexArrayVertexAttribLOffsetEXT -> FuntypeVertexArrayVertexAttribLOffsetEXT
nonexistentVertexArrayVertexAttribLOffsetEXT :: FuntypeVertexArrayVertexAttribLOffsetEXT
nonexistentVertexArrayVertexAttribLOffsetEXT
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexAttribLOffsetEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynTexturePageCommitmentEXT :: FunPtr FuntypeTexturePageCommitmentEXT -> FuntypeTexturePageCommitmentEXT
nonexistentTexturePageCommitmentEXT :: FuntypeTexturePageCommitmentEXT
nonexistentTexturePageCommitmentEXT
    _
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glTexturePageCommitmentEXT"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynVertexArrayVertexAttribDivisorEXT :: FunPtr FuntypeVertexArrayVertexAttribDivisorEXT -> FuntypeVertexArrayVertexAttribDivisorEXT
nonexistentVertexArrayVertexAttribDivisorEXT :: FuntypeVertexArrayVertexAttribDivisorEXT
nonexistentVertexArrayVertexAttribDivisorEXT
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glVertexArrayVertexAttribDivisorEXT"

-- GL_ARB_buffer_storage

foreign import ccall APIENTRY unsafe "dynamic"
    gldynBufferStorage :: FunPtr FuntypeBufferStorage -> FuntypeBufferStorage
nonexistentBufferStorage :: FuntypeBufferStorage
nonexistentBufferStorage
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glBufferStorage"

-- GL_ARB_separate_shader_objects

foreign import ccall APIENTRY unsafe "dynamic"
    gldynUseProgramStages :: FunPtr FuntypeUseProgramStages -> FuntypeUseProgramStages
nonexistentUseProgramStages :: FuntypeUseProgramStages
nonexistentUseProgramStages
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glUseProgramStages"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynActiveShaderProgram :: FunPtr FuntypeActiveShaderProgram -> FuntypeActiveShaderProgram
nonexistentActiveShaderProgram :: FuntypeActiveShaderProgram
nonexistentActiveShaderProgram
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glActiveShaderProgram"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynCreateShaderProgramv :: FunPtr FuntypeCreateShaderProgramv -> FuntypeCreateShaderProgramv
nonexistentCreateShaderProgramv :: FuntypeCreateShaderProgramv
nonexistentCreateShaderProgramv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glCreateShaderProgramv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynBindProgramPipeline :: FunPtr FuntypeBindProgramPipeline -> FuntypeBindProgramPipeline
nonexistentBindProgramPipeline :: FuntypeBindProgramPipeline
nonexistentBindProgramPipeline
    _
    = throwIO $ NonExistentOpenGLFunction "glBindProgramPipeline"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynDeleteProgramPipelines :: FunPtr FuntypeDeleteProgramPipelines -> FuntypeDeleteProgramPipelines
nonexistentDeleteProgramPipelines :: FuntypeDeleteProgramPipelines
nonexistentDeleteProgramPipelines
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glDeleteProgramPipelines"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGenProgramPipelines :: FunPtr FuntypeGenProgramPipelines -> FuntypeGenProgramPipelines
nonexistentGenProgramPipelines :: FuntypeGenProgramPipelines
nonexistentGenProgramPipelines
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGenProgramPipelines"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynIsProgramPipeline :: FunPtr FuntypeIsProgramPipeline -> FuntypeIsProgramPipeline
nonexistentIsProgramPipeline :: FuntypeIsProgramPipeline
nonexistentIsProgramPipeline
    _
    = throwIO $ NonExistentOpenGLFunction "glIsProgramPipeline"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetProgramPipelineiv :: FunPtr FuntypeGetProgramPipelineiv -> FuntypeGetProgramPipelineiv
nonexistentGetProgramPipelineiv :: FuntypeGetProgramPipelineiv
nonexistentGetProgramPipelineiv
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetProgramPipelineiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1i :: FunPtr FuntypeProgramUniform1i -> FuntypeProgramUniform1i
nonexistentProgramUniform1i :: FuntypeProgramUniform1i
nonexistentProgramUniform1i
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1iv :: FunPtr FuntypeProgramUniform1iv -> FuntypeProgramUniform1iv
nonexistentProgramUniform1iv :: FuntypeProgramUniform1iv
nonexistentProgramUniform1iv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1f :: FunPtr FuntypeProgramUniform1f -> FuntypeProgramUniform1f
nonexistentProgramUniform1f :: FuntypeProgramUniform1f
nonexistentProgramUniform1f
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1fv :: FunPtr FuntypeProgramUniform1fv -> FuntypeProgramUniform1fv
nonexistentProgramUniform1fv :: FuntypeProgramUniform1fv
nonexistentProgramUniform1fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1d :: FunPtr FuntypeProgramUniform1d -> FuntypeProgramUniform1d
nonexistentProgramUniform1d :: FuntypeProgramUniform1d
nonexistentProgramUniform1d
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1d"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1dv :: FunPtr FuntypeProgramUniform1dv -> FuntypeProgramUniform1dv
nonexistentProgramUniform1dv :: FuntypeProgramUniform1dv
nonexistentProgramUniform1dv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1ui :: FunPtr FuntypeProgramUniform1ui -> FuntypeProgramUniform1ui
nonexistentProgramUniform1ui :: FuntypeProgramUniform1ui
nonexistentProgramUniform1ui
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform1uiv :: FunPtr FuntypeProgramUniform1uiv -> FuntypeProgramUniform1uiv
nonexistentProgramUniform1uiv :: FuntypeProgramUniform1uiv
nonexistentProgramUniform1uiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform1uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2i :: FunPtr FuntypeProgramUniform2i -> FuntypeProgramUniform2i
nonexistentProgramUniform2i :: FuntypeProgramUniform2i
nonexistentProgramUniform2i
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2iv :: FunPtr FuntypeProgramUniform2iv -> FuntypeProgramUniform2iv
nonexistentProgramUniform2iv :: FuntypeProgramUniform2iv
nonexistentProgramUniform2iv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2f :: FunPtr FuntypeProgramUniform2f -> FuntypeProgramUniform2f
nonexistentProgramUniform2f :: FuntypeProgramUniform2f
nonexistentProgramUniform2f
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2fv :: FunPtr FuntypeProgramUniform2fv -> FuntypeProgramUniform2fv
nonexistentProgramUniform2fv :: FuntypeProgramUniform2fv
nonexistentProgramUniform2fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2d :: FunPtr FuntypeProgramUniform2d -> FuntypeProgramUniform2d
nonexistentProgramUniform2d :: FuntypeProgramUniform2d
nonexistentProgramUniform2d
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2d"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2dv :: FunPtr FuntypeProgramUniform2dv -> FuntypeProgramUniform2dv
nonexistentProgramUniform2dv :: FuntypeProgramUniform2dv
nonexistentProgramUniform2dv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2ui :: FunPtr FuntypeProgramUniform2ui -> FuntypeProgramUniform2ui
nonexistentProgramUniform2ui :: FuntypeProgramUniform2ui
nonexistentProgramUniform2ui
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform2uiv :: FunPtr FuntypeProgramUniform2uiv -> FuntypeProgramUniform2uiv
nonexistentProgramUniform2uiv :: FuntypeProgramUniform2uiv
nonexistentProgramUniform2uiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform2uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3i :: FunPtr FuntypeProgramUniform3i -> FuntypeProgramUniform3i
nonexistentProgramUniform3i :: FuntypeProgramUniform3i
nonexistentProgramUniform3i
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3iv :: FunPtr FuntypeProgramUniform3iv -> FuntypeProgramUniform3iv
nonexistentProgramUniform3iv :: FuntypeProgramUniform3iv
nonexistentProgramUniform3iv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3f :: FunPtr FuntypeProgramUniform3f -> FuntypeProgramUniform3f
nonexistentProgramUniform3f :: FuntypeProgramUniform3f
nonexistentProgramUniform3f
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3fv :: FunPtr FuntypeProgramUniform3fv -> FuntypeProgramUniform3fv
nonexistentProgramUniform3fv :: FuntypeProgramUniform3fv
nonexistentProgramUniform3fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3d :: FunPtr FuntypeProgramUniform3d -> FuntypeProgramUniform3d
nonexistentProgramUniform3d :: FuntypeProgramUniform3d
nonexistentProgramUniform3d
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3d"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3dv :: FunPtr FuntypeProgramUniform3dv -> FuntypeProgramUniform3dv
nonexistentProgramUniform3dv :: FuntypeProgramUniform3dv
nonexistentProgramUniform3dv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3ui :: FunPtr FuntypeProgramUniform3ui -> FuntypeProgramUniform3ui
nonexistentProgramUniform3ui :: FuntypeProgramUniform3ui
nonexistentProgramUniform3ui
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform3uiv :: FunPtr FuntypeProgramUniform3uiv -> FuntypeProgramUniform3uiv
nonexistentProgramUniform3uiv :: FuntypeProgramUniform3uiv
nonexistentProgramUniform3uiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform3uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4i :: FunPtr FuntypeProgramUniform4i -> FuntypeProgramUniform4i
nonexistentProgramUniform4i :: FuntypeProgramUniform4i
nonexistentProgramUniform4i
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4i"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4iv :: FunPtr FuntypeProgramUniform4iv -> FuntypeProgramUniform4iv
nonexistentProgramUniform4iv :: FuntypeProgramUniform4iv
nonexistentProgramUniform4iv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4iv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4f :: FunPtr FuntypeProgramUniform4f -> FuntypeProgramUniform4f
nonexistentProgramUniform4f :: FuntypeProgramUniform4f
nonexistentProgramUniform4f
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4f"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4fv :: FunPtr FuntypeProgramUniform4fv -> FuntypeProgramUniform4fv
nonexistentProgramUniform4fv :: FuntypeProgramUniform4fv
nonexistentProgramUniform4fv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4d :: FunPtr FuntypeProgramUniform4d -> FuntypeProgramUniform4d
nonexistentProgramUniform4d :: FuntypeProgramUniform4d
nonexistentProgramUniform4d
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4d"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4dv :: FunPtr FuntypeProgramUniform4dv -> FuntypeProgramUniform4dv
nonexistentProgramUniform4dv :: FuntypeProgramUniform4dv
nonexistentProgramUniform4dv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4ui :: FunPtr FuntypeProgramUniform4ui -> FuntypeProgramUniform4ui
nonexistentProgramUniform4ui :: FuntypeProgramUniform4ui
nonexistentProgramUniform4ui
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4ui"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniform4uiv :: FunPtr FuntypeProgramUniform4uiv -> FuntypeProgramUniform4uiv
nonexistentProgramUniform4uiv :: FuntypeProgramUniform4uiv
nonexistentProgramUniform4uiv
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniform4uiv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2fv :: FunPtr FuntypeProgramUniformMatrix2fv -> FuntypeProgramUniformMatrix2fv
nonexistentProgramUniformMatrix2fv :: FuntypeProgramUniformMatrix2fv
nonexistentProgramUniformMatrix2fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3fv :: FunPtr FuntypeProgramUniformMatrix3fv -> FuntypeProgramUniformMatrix3fv
nonexistentProgramUniformMatrix3fv :: FuntypeProgramUniformMatrix3fv
nonexistentProgramUniformMatrix3fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4fv :: FunPtr FuntypeProgramUniformMatrix4fv -> FuntypeProgramUniformMatrix4fv
nonexistentProgramUniformMatrix4fv :: FuntypeProgramUniformMatrix4fv
nonexistentProgramUniformMatrix4fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2dv :: FunPtr FuntypeProgramUniformMatrix2dv -> FuntypeProgramUniformMatrix2dv
nonexistentProgramUniformMatrix2dv :: FuntypeProgramUniformMatrix2dv
nonexistentProgramUniformMatrix2dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3dv :: FunPtr FuntypeProgramUniformMatrix3dv -> FuntypeProgramUniformMatrix3dv
nonexistentProgramUniformMatrix3dv :: FuntypeProgramUniformMatrix3dv
nonexistentProgramUniformMatrix3dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4dv :: FunPtr FuntypeProgramUniformMatrix4dv -> FuntypeProgramUniformMatrix4dv
nonexistentProgramUniformMatrix4dv :: FuntypeProgramUniformMatrix4dv
nonexistentProgramUniformMatrix4dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2x3fv :: FunPtr FuntypeProgramUniformMatrix2x3fv -> FuntypeProgramUniformMatrix2x3fv
nonexistentProgramUniformMatrix2x3fv :: FuntypeProgramUniformMatrix2x3fv
nonexistentProgramUniformMatrix2x3fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2x3fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3x2fv :: FunPtr FuntypeProgramUniformMatrix3x2fv -> FuntypeProgramUniformMatrix3x2fv
nonexistentProgramUniformMatrix3x2fv :: FuntypeProgramUniformMatrix3x2fv
nonexistentProgramUniformMatrix3x2fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3x2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2x4fv :: FunPtr FuntypeProgramUniformMatrix2x4fv -> FuntypeProgramUniformMatrix2x4fv
nonexistentProgramUniformMatrix2x4fv :: FuntypeProgramUniformMatrix2x4fv
nonexistentProgramUniformMatrix2x4fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2x4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4x2fv :: FunPtr FuntypeProgramUniformMatrix4x2fv -> FuntypeProgramUniformMatrix4x2fv
nonexistentProgramUniformMatrix4x2fv :: FuntypeProgramUniformMatrix4x2fv
nonexistentProgramUniformMatrix4x2fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4x2fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3x4fv :: FunPtr FuntypeProgramUniformMatrix3x4fv -> FuntypeProgramUniformMatrix3x4fv
nonexistentProgramUniformMatrix3x4fv :: FuntypeProgramUniformMatrix3x4fv
nonexistentProgramUniformMatrix3x4fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3x4fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4x3fv :: FunPtr FuntypeProgramUniformMatrix4x3fv -> FuntypeProgramUniformMatrix4x3fv
nonexistentProgramUniformMatrix4x3fv :: FuntypeProgramUniformMatrix4x3fv
nonexistentProgramUniformMatrix4x3fv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4x3fv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2x3dv :: FunPtr FuntypeProgramUniformMatrix2x3dv -> FuntypeProgramUniformMatrix2x3dv
nonexistentProgramUniformMatrix2x3dv :: FuntypeProgramUniformMatrix2x3dv
nonexistentProgramUniformMatrix2x3dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2x3dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3x2dv :: FunPtr FuntypeProgramUniformMatrix3x2dv -> FuntypeProgramUniformMatrix3x2dv
nonexistentProgramUniformMatrix3x2dv :: FuntypeProgramUniformMatrix3x2dv
nonexistentProgramUniformMatrix3x2dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3x2dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix2x4dv :: FunPtr FuntypeProgramUniformMatrix2x4dv -> FuntypeProgramUniformMatrix2x4dv
nonexistentProgramUniformMatrix2x4dv :: FuntypeProgramUniformMatrix2x4dv
nonexistentProgramUniformMatrix2x4dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix2x4dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4x2dv :: FunPtr FuntypeProgramUniformMatrix4x2dv -> FuntypeProgramUniformMatrix4x2dv
nonexistentProgramUniformMatrix4x2dv :: FuntypeProgramUniformMatrix4x2dv
nonexistentProgramUniformMatrix4x2dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4x2dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix3x4dv :: FunPtr FuntypeProgramUniformMatrix3x4dv -> FuntypeProgramUniformMatrix3x4dv
nonexistentProgramUniformMatrix3x4dv :: FuntypeProgramUniformMatrix3x4dv
nonexistentProgramUniformMatrix3x4dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix3x4dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynProgramUniformMatrix4x3dv :: FunPtr FuntypeProgramUniformMatrix4x3dv -> FuntypeProgramUniformMatrix4x3dv
nonexistentProgramUniformMatrix4x3dv :: FuntypeProgramUniformMatrix4x3dv
nonexistentProgramUniformMatrix4x3dv
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glProgramUniformMatrix4x3dv"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynValidateProgramPipeline :: FunPtr FuntypeValidateProgramPipeline -> FuntypeValidateProgramPipeline
nonexistentValidateProgramPipeline :: FuntypeValidateProgramPipeline
nonexistentValidateProgramPipeline
    _
    = throwIO $ NonExistentOpenGLFunction "glValidateProgramPipeline"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynGetProgramPipelineInfoLog :: FunPtr FuntypeGetProgramPipelineInfoLog -> FuntypeGetProgramPipelineInfoLog
nonexistentGetProgramPipelineInfoLog :: FuntypeGetProgramPipelineInfoLog
nonexistentGetProgramPipelineInfoLog
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glGetProgramPipelineInfoLog"

-- GL_ATI_meminfo


-- GL_NVX_gpu_memory_info


-- GL_ARB_invalidate_subdata

foreign import ccall APIENTRY unsafe "dynamic"
    gldynInvalidateTexSubImage :: FunPtr FuntypeInvalidateTexSubImage -> FuntypeInvalidateTexSubImage
nonexistentInvalidateTexSubImage :: FuntypeInvalidateTexSubImage
nonexistentInvalidateTexSubImage
    _
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glInvalidateTexSubImage"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynInvalidateTexImage :: FunPtr FuntypeInvalidateTexImage -> FuntypeInvalidateTexImage
nonexistentInvalidateTexImage :: FuntypeInvalidateTexImage
nonexistentInvalidateTexImage
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glInvalidateTexImage"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynInvalidateBufferSubData :: FunPtr FuntypeInvalidateBufferSubData -> FuntypeInvalidateBufferSubData
nonexistentInvalidateBufferSubData :: FuntypeInvalidateBufferSubData
nonexistentInvalidateBufferSubData
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glInvalidateBufferSubData"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynInvalidateBufferData :: FunPtr FuntypeInvalidateBufferData -> FuntypeInvalidateBufferData
nonexistentInvalidateBufferData :: FuntypeInvalidateBufferData
nonexistentInvalidateBufferData
    _
    = throwIO $ NonExistentOpenGLFunction "glInvalidateBufferData"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynInvalidateFramebuffer :: FunPtr FuntypeInvalidateFramebuffer -> FuntypeInvalidateFramebuffer
nonexistentInvalidateFramebuffer :: FuntypeInvalidateFramebuffer
nonexistentInvalidateFramebuffer
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glInvalidateFramebuffer"
foreign import ccall APIENTRY unsafe "dynamic"
    gldynInvalidateSubFramebuffer :: FunPtr FuntypeInvalidateSubFramebuffer -> FuntypeInvalidateSubFramebuffer
nonexistentInvalidateSubFramebuffer :: FuntypeInvalidateSubFramebuffer
nonexistentInvalidateSubFramebuffer
    _
    _
    _
    _
    _
    _
    _
    = throwIO $ NonExistentOpenGLFunction "glInvalidateSubFramebuffer"

