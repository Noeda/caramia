-- | Automatically generated raw OpenGL bindings using flextGL
--
-- <https://github.com/Noeda/flextGL>
--

{-# LANGUAGE EmptyDataDecls #-}



module Graphics.Caramia.Internal.FlextGLFuntypes
    (
    DummyFlextGLThing()
    , FuntypeCullFace
    , FuntypeFrontFace
    , FuntypeHint
    , FuntypeLineWidth
    , FuntypePointSize
    , FuntypePolygonMode
    , FuntypeScissor
    , FuntypeTexParameterf
    , FuntypeTexParameterfv
    , FuntypeTexParameteri
    , FuntypeTexParameteriv
    , FuntypeTexImage1D
    , FuntypeTexImage2D
    , FuntypeDrawBuffer
    , FuntypeClear
    , FuntypeClearColor
    , FuntypeClearStencil
    , FuntypeClearDepth
    , FuntypeStencilMask
    , FuntypeColorMask
    , FuntypeDepthMask
    , FuntypeDisable
    , FuntypeEnable
    , FuntypeFinish
    , FuntypeFlush
    , FuntypeBlendFunc
    , FuntypeLogicOp
    , FuntypeStencilFunc
    , FuntypeStencilOp
    , FuntypeDepthFunc
    , FuntypePixelStoref
    , FuntypePixelStorei
    , FuntypeReadBuffer
    , FuntypeReadPixels
    , FuntypeGetBooleanv
    , FuntypeGetDoublev
    , FuntypeGetError
    , FuntypeGetFloatv
    , FuntypeGetIntegerv
    , FuntypeGetString
    , FuntypeGetTexImage
    , FuntypeGetTexParameterfv
    , FuntypeGetTexParameteriv
    , FuntypeGetTexLevelParameterfv
    , FuntypeGetTexLevelParameteriv
    , FuntypeIsEnabled
    , FuntypeDepthRange
    , FuntypeViewport
    , FuntypeDrawArrays
    , FuntypeDrawElements
    , FuntypePolygonOffset
    , FuntypeCopyTexImage1D
    , FuntypeCopyTexImage2D
    , FuntypeCopyTexSubImage1D
    , FuntypeCopyTexSubImage2D
    , FuntypeTexSubImage1D
    , FuntypeTexSubImage2D
    , FuntypeBindTexture
    , FuntypeDeleteTextures
    , FuntypeGenTextures
    , FuntypeIsTexture
    , FuntypeDrawRangeElements
    , FuntypeTexImage3D
    , FuntypeTexSubImage3D
    , FuntypeCopyTexSubImage3D
    , FuntypeActiveTexture
    , FuntypeSampleCoverage
    , FuntypeCompressedTexImage3D
    , FuntypeCompressedTexImage2D
    , FuntypeCompressedTexImage1D
    , FuntypeCompressedTexSubImage3D
    , FuntypeCompressedTexSubImage2D
    , FuntypeCompressedTexSubImage1D
    , FuntypeGetCompressedTexImage
    , FuntypeBlendFuncSeparate
    , FuntypeMultiDrawArrays
    , FuntypeMultiDrawElements
    , FuntypePointParameterf
    , FuntypePointParameterfv
    , FuntypePointParameteri
    , FuntypePointParameteriv
    , FuntypeBlendColor
    , FuntypeBlendEquation
    , FuntypeGenQueries
    , FuntypeDeleteQueries
    , FuntypeIsQuery
    , FuntypeBeginQuery
    , FuntypeEndQuery
    , FuntypeGetQueryiv
    , FuntypeGetQueryObjectiv
    , FuntypeGetQueryObjectuiv
    , FuntypeBindBuffer
    , FuntypeDeleteBuffers
    , FuntypeGenBuffers
    , FuntypeIsBuffer
    , FuntypeBufferData
    , FuntypeBufferSubData
    , FuntypeGetBufferSubData
    , FuntypeMapBuffer
    , FuntypeUnmapBuffer
    , FuntypeGetBufferParameteriv
    , FuntypeGetBufferPointerv
    , FuntypeBlendEquationSeparate
    , FuntypeDrawBuffers
    , FuntypeStencilOpSeparate
    , FuntypeStencilFuncSeparate
    , FuntypeStencilMaskSeparate
    , FuntypeAttachShader
    , FuntypeBindAttribLocation
    , FuntypeCompileShader
    , FuntypeCreateProgram
    , FuntypeCreateShader
    , FuntypeDeleteProgram
    , FuntypeDeleteShader
    , FuntypeDetachShader
    , FuntypeDisableVertexAttribArray
    , FuntypeEnableVertexAttribArray
    , FuntypeGetActiveAttrib
    , FuntypeGetActiveUniform
    , FuntypeGetAttachedShaders
    , FuntypeGetAttribLocation
    , FuntypeGetProgramiv
    , FuntypeGetProgramInfoLog
    , FuntypeGetShaderiv
    , FuntypeGetShaderInfoLog
    , FuntypeGetShaderSource
    , FuntypeGetUniformLocation
    , FuntypeGetUniformfv
    , FuntypeGetUniformiv
    , FuntypeGetVertexAttribdv
    , FuntypeGetVertexAttribfv
    , FuntypeGetVertexAttribiv
    , FuntypeGetVertexAttribPointerv
    , FuntypeIsProgram
    , FuntypeIsShader
    , FuntypeLinkProgram
    , FuntypeShaderSource
    , FuntypeUseProgram
    , FuntypeUniform1f
    , FuntypeUniform2f
    , FuntypeUniform3f
    , FuntypeUniform4f
    , FuntypeUniform1i
    , FuntypeUniform2i
    , FuntypeUniform3i
    , FuntypeUniform4i
    , FuntypeUniform1fv
    , FuntypeUniform2fv
    , FuntypeUniform3fv
    , FuntypeUniform4fv
    , FuntypeUniform1iv
    , FuntypeUniform2iv
    , FuntypeUniform3iv
    , FuntypeUniform4iv
    , FuntypeUniformMatrix2fv
    , FuntypeUniformMatrix3fv
    , FuntypeUniformMatrix4fv
    , FuntypeValidateProgram
    , FuntypeVertexAttrib1d
    , FuntypeVertexAttrib1dv
    , FuntypeVertexAttrib1f
    , FuntypeVertexAttrib1fv
    , FuntypeVertexAttrib1s
    , FuntypeVertexAttrib1sv
    , FuntypeVertexAttrib2d
    , FuntypeVertexAttrib2dv
    , FuntypeVertexAttrib2f
    , FuntypeVertexAttrib2fv
    , FuntypeVertexAttrib2s
    , FuntypeVertexAttrib2sv
    , FuntypeVertexAttrib3d
    , FuntypeVertexAttrib3dv
    , FuntypeVertexAttrib3f
    , FuntypeVertexAttrib3fv
    , FuntypeVertexAttrib3s
    , FuntypeVertexAttrib3sv
    , FuntypeVertexAttrib4Nbv
    , FuntypeVertexAttrib4Niv
    , FuntypeVertexAttrib4Nsv
    , FuntypeVertexAttrib4Nub
    , FuntypeVertexAttrib4Nubv
    , FuntypeVertexAttrib4Nuiv
    , FuntypeVertexAttrib4Nusv
    , FuntypeVertexAttrib4bv
    , FuntypeVertexAttrib4d
    , FuntypeVertexAttrib4dv
    , FuntypeVertexAttrib4f
    , FuntypeVertexAttrib4fv
    , FuntypeVertexAttrib4iv
    , FuntypeVertexAttrib4s
    , FuntypeVertexAttrib4sv
    , FuntypeVertexAttrib4ubv
    , FuntypeVertexAttrib4uiv
    , FuntypeVertexAttrib4usv
    , FuntypeVertexAttribPointer
    , FuntypeUniformMatrix2x3fv
    , FuntypeUniformMatrix3x2fv
    , FuntypeUniformMatrix2x4fv
    , FuntypeUniformMatrix4x2fv
    , FuntypeUniformMatrix3x4fv
    , FuntypeUniformMatrix4x3fv
    , FuntypeColorMaski
    , FuntypeGetBooleani_v
    , FuntypeGetIntegeri_v
    , FuntypeEnablei
    , FuntypeDisablei
    , FuntypeIsEnabledi
    , FuntypeBeginTransformFeedback
    , FuntypeEndTransformFeedback
    , FuntypeBindBufferRange
    , FuntypeBindBufferBase
    , FuntypeTransformFeedbackVaryings
    , FuntypeGetTransformFeedbackVarying
    , FuntypeClampColor
    , FuntypeBeginConditionalRender
    , FuntypeEndConditionalRender
    , FuntypeVertexAttribIPointer
    , FuntypeGetVertexAttribIiv
    , FuntypeGetVertexAttribIuiv
    , FuntypeVertexAttribI1i
    , FuntypeVertexAttribI2i
    , FuntypeVertexAttribI3i
    , FuntypeVertexAttribI4i
    , FuntypeVertexAttribI1ui
    , FuntypeVertexAttribI2ui
    , FuntypeVertexAttribI3ui
    , FuntypeVertexAttribI4ui
    , FuntypeVertexAttribI1iv
    , FuntypeVertexAttribI2iv
    , FuntypeVertexAttribI3iv
    , FuntypeVertexAttribI4iv
    , FuntypeVertexAttribI1uiv
    , FuntypeVertexAttribI2uiv
    , FuntypeVertexAttribI3uiv
    , FuntypeVertexAttribI4uiv
    , FuntypeVertexAttribI4bv
    , FuntypeVertexAttribI4sv
    , FuntypeVertexAttribI4ubv
    , FuntypeVertexAttribI4usv
    , FuntypeGetUniformuiv
    , FuntypeBindFragDataLocation
    , FuntypeGetFragDataLocation
    , FuntypeUniform1ui
    , FuntypeUniform2ui
    , FuntypeUniform3ui
    , FuntypeUniform4ui
    , FuntypeUniform1uiv
    , FuntypeUniform2uiv
    , FuntypeUniform3uiv
    , FuntypeUniform4uiv
    , FuntypeTexParameterIiv
    , FuntypeTexParameterIuiv
    , FuntypeGetTexParameterIiv
    , FuntypeGetTexParameterIuiv
    , FuntypeClearBufferiv
    , FuntypeClearBufferuiv
    , FuntypeClearBufferfv
    , FuntypeClearBufferfi
    , FuntypeGetStringi
    , FuntypeIsRenderbuffer
    , FuntypeBindRenderbuffer
    , FuntypeDeleteRenderbuffers
    , FuntypeGenRenderbuffers
    , FuntypeRenderbufferStorage
    , FuntypeGetRenderbufferParameteriv
    , FuntypeIsFramebuffer
    , FuntypeBindFramebuffer
    , FuntypeDeleteFramebuffers
    , FuntypeGenFramebuffers
    , FuntypeCheckFramebufferStatus
    , FuntypeFramebufferTexture1D
    , FuntypeFramebufferTexture2D
    , FuntypeFramebufferTexture3D
    , FuntypeFramebufferRenderbuffer
    , FuntypeGetFramebufferAttachmentParameteriv
    , FuntypeGenerateMipmap
    , FuntypeBlitFramebuffer
    , FuntypeRenderbufferStorageMultisample
    , FuntypeFramebufferTextureLayer
    , FuntypeMapBufferRange
    , FuntypeFlushMappedBufferRange
    , FuntypeBindVertexArray
    , FuntypeDeleteVertexArrays
    , FuntypeGenVertexArrays
    , FuntypeIsVertexArray
    , FuntypeDrawArraysInstanced
    , FuntypeDrawElementsInstanced
    , FuntypeTexBuffer
    , FuntypePrimitiveRestartIndex
    , FuntypeCopyBufferSubData
    , FuntypeGetUniformIndices
    , FuntypeGetActiveUniformsiv
    , FuntypeGetActiveUniformName
    , FuntypeGetUniformBlockIndex
    , FuntypeGetActiveUniformBlockiv
    , FuntypeGetActiveUniformBlockName
    , FuntypeUniformBlockBinding
    , FuntypeDrawElementsBaseVertex
    , FuntypeDrawRangeElementsBaseVertex
    , FuntypeDrawElementsInstancedBaseVertex
    , FuntypeMultiDrawElementsBaseVertex
    , FuntypeProvokingVertex
    , FuntypeFenceSync
    , FuntypeIsSync
    , FuntypeDeleteSync
    , FuntypeClientWaitSync
    , FuntypeWaitSync
    , FuntypeGetInteger64v
    , FuntypeGetSynciv
    , FuntypeGetInteger64i_v
    , FuntypeGetBufferParameteri64v
    , FuntypeFramebufferTexture
    , FuntypeTexImage2DMultisample
    , FuntypeTexImage3DMultisample
    , FuntypeGetMultisamplefv
    , FuntypeSampleMaski
    , FuntypeBindFragDataLocationIndexed
    , FuntypeGetFragDataIndex
    , FuntypeGenSamplers
    , FuntypeDeleteSamplers
    , FuntypeIsSampler
    , FuntypeBindSampler
    , FuntypeSamplerParameteri
    , FuntypeSamplerParameteriv
    , FuntypeSamplerParameterf
    , FuntypeSamplerParameterfv
    , FuntypeSamplerParameterIiv
    , FuntypeSamplerParameterIuiv
    , FuntypeGetSamplerParameteriv
    , FuntypeGetSamplerParameterIiv
    , FuntypeGetSamplerParameterfv
    , FuntypeGetSamplerParameterIuiv
    , FuntypeQueryCounter
    , FuntypeGetQueryObjecti64v
    , FuntypeGetQueryObjectui64v
    , FuntypeVertexAttribDivisor
    , FuntypeVertexAttribP1ui
    , FuntypeVertexAttribP1uiv
    , FuntypeVertexAttribP2ui
    , FuntypeVertexAttribP2uiv
    , FuntypeVertexAttribP3ui
    , FuntypeVertexAttribP3uiv
    , FuntypeVertexAttribP4ui
    , FuntypeVertexAttribP4uiv
    , FuntypeTexStorage1D
    , FuntypeTexStorage2D
    , FuntypeTexStorage3D
    , FuntypeDebugMessageControl
    , FuntypeDebugMessageInsert
    , FuntypeDebugMessageCallback
    , FuntypeGetDebugMessageLog
    , FuntypePushDebugGroup
    , FuntypePopDebugGroup
    , FuntypeObjectLabel
    , FuntypeGetObjectLabel
    , FuntypeObjectPtrLabel
    , FuntypeGetObjectPtrLabel
    , FuntypeGetPointerv
    , FuntypeDebugMessageControlKHR
    , FuntypeDebugMessageInsertKHR
    , FuntypeDebugMessageCallbackKHR
    , FuntypeGetDebugMessageLogKHR
    , FuntypePushDebugGroupKHR
    , FuntypePopDebugGroupKHR
    , FuntypeObjectLabelKHR
    , FuntypeGetObjectLabelKHR
    , FuntypeObjectPtrLabelKHR
    , FuntypeGetObjectPtrLabelKHR
    , FuntypeGetPointervKHR
    , FuntypeMatrixLoadfEXT
    , FuntypeMatrixLoaddEXT
    , FuntypeMatrixMultfEXT
    , FuntypeMatrixMultdEXT
    , FuntypeMatrixLoadIdentityEXT
    , FuntypeMatrixRotatefEXT
    , FuntypeMatrixRotatedEXT
    , FuntypeMatrixScalefEXT
    , FuntypeMatrixScaledEXT
    , FuntypeMatrixTranslatefEXT
    , FuntypeMatrixTranslatedEXT
    , FuntypeMatrixFrustumEXT
    , FuntypeMatrixOrthoEXT
    , FuntypeMatrixPopEXT
    , FuntypeMatrixPushEXT
    , FuntypeClientAttribDefaultEXT
    , FuntypePushClientAttribDefaultEXT
    , FuntypeTextureParameterfEXT
    , FuntypeTextureParameterfvEXT
    , FuntypeTextureParameteriEXT
    , FuntypeTextureParameterivEXT
    , FuntypeTextureImage1DEXT
    , FuntypeTextureImage2DEXT
    , FuntypeTextureSubImage1DEXT
    , FuntypeTextureSubImage2DEXT
    , FuntypeCopyTextureImage1DEXT
    , FuntypeCopyTextureImage2DEXT
    , FuntypeCopyTextureSubImage1DEXT
    , FuntypeCopyTextureSubImage2DEXT
    , FuntypeGetTextureImageEXT
    , FuntypeGetTextureParameterfvEXT
    , FuntypeGetTextureParameterivEXT
    , FuntypeGetTextureLevelParameterfvEXT
    , FuntypeGetTextureLevelParameterivEXT
    , FuntypeTextureImage3DEXT
    , FuntypeTextureSubImage3DEXT
    , FuntypeCopyTextureSubImage3DEXT
    , FuntypeBindMultiTextureEXT
    , FuntypeMultiTexCoordPointerEXT
    , FuntypeMultiTexEnvfEXT
    , FuntypeMultiTexEnvfvEXT
    , FuntypeMultiTexEnviEXT
    , FuntypeMultiTexEnvivEXT
    , FuntypeMultiTexGendEXT
    , FuntypeMultiTexGendvEXT
    , FuntypeMultiTexGenfEXT
    , FuntypeMultiTexGenfvEXT
    , FuntypeMultiTexGeniEXT
    , FuntypeMultiTexGenivEXT
    , FuntypeGetMultiTexEnvfvEXT
    , FuntypeGetMultiTexEnvivEXT
    , FuntypeGetMultiTexGendvEXT
    , FuntypeGetMultiTexGenfvEXT
    , FuntypeGetMultiTexGenivEXT
    , FuntypeMultiTexParameteriEXT
    , FuntypeMultiTexParameterivEXT
    , FuntypeMultiTexParameterfEXT
    , FuntypeMultiTexParameterfvEXT
    , FuntypeMultiTexImage1DEXT
    , FuntypeMultiTexImage2DEXT
    , FuntypeMultiTexSubImage1DEXT
    , FuntypeMultiTexSubImage2DEXT
    , FuntypeCopyMultiTexImage1DEXT
    , FuntypeCopyMultiTexImage2DEXT
    , FuntypeCopyMultiTexSubImage1DEXT
    , FuntypeCopyMultiTexSubImage2DEXT
    , FuntypeGetMultiTexImageEXT
    , FuntypeGetMultiTexParameterfvEXT
    , FuntypeGetMultiTexParameterivEXT
    , FuntypeGetMultiTexLevelParameterfvEXT
    , FuntypeGetMultiTexLevelParameterivEXT
    , FuntypeMultiTexImage3DEXT
    , FuntypeMultiTexSubImage3DEXT
    , FuntypeCopyMultiTexSubImage3DEXT
    , FuntypeEnableClientStateIndexedEXT
    , FuntypeDisableClientStateIndexedEXT
    , FuntypeGetFloatIndexedvEXT
    , FuntypeGetDoubleIndexedvEXT
    , FuntypeGetPointerIndexedvEXT
    , FuntypeEnableIndexedEXT
    , FuntypeDisableIndexedEXT
    , FuntypeIsEnabledIndexedEXT
    , FuntypeGetIntegerIndexedvEXT
    , FuntypeGetBooleanIndexedvEXT
    , FuntypeCompressedTextureImage3DEXT
    , FuntypeCompressedTextureImage2DEXT
    , FuntypeCompressedTextureImage1DEXT
    , FuntypeCompressedTextureSubImage3DEXT
    , FuntypeCompressedTextureSubImage2DEXT
    , FuntypeCompressedTextureSubImage1DEXT
    , FuntypeGetCompressedTextureImageEXT
    , FuntypeCompressedMultiTexImage3DEXT
    , FuntypeCompressedMultiTexImage2DEXT
    , FuntypeCompressedMultiTexImage1DEXT
    , FuntypeCompressedMultiTexSubImage3DEXT
    , FuntypeCompressedMultiTexSubImage2DEXT
    , FuntypeCompressedMultiTexSubImage1DEXT
    , FuntypeGetCompressedMultiTexImageEXT
    , FuntypeMatrixLoadTransposefEXT
    , FuntypeMatrixLoadTransposedEXT
    , FuntypeMatrixMultTransposefEXT
    , FuntypeMatrixMultTransposedEXT
    , FuntypeNamedBufferDataEXT
    , FuntypeNamedBufferSubDataEXT
    , FuntypeMapNamedBufferEXT
    , FuntypeUnmapNamedBufferEXT
    , FuntypeGetNamedBufferParameterivEXT
    , FuntypeGetNamedBufferPointervEXT
    , FuntypeGetNamedBufferSubDataEXT
    , FuntypeProgramUniform1fEXT
    , FuntypeProgramUniform2fEXT
    , FuntypeProgramUniform3fEXT
    , FuntypeProgramUniform4fEXT
    , FuntypeProgramUniform1iEXT
    , FuntypeProgramUniform2iEXT
    , FuntypeProgramUniform3iEXT
    , FuntypeProgramUniform4iEXT
    , FuntypeProgramUniform1fvEXT
    , FuntypeProgramUniform2fvEXT
    , FuntypeProgramUniform3fvEXT
    , FuntypeProgramUniform4fvEXT
    , FuntypeProgramUniform1ivEXT
    , FuntypeProgramUniform2ivEXT
    , FuntypeProgramUniform3ivEXT
    , FuntypeProgramUniform4ivEXT
    , FuntypeProgramUniformMatrix2fvEXT
    , FuntypeProgramUniformMatrix3fvEXT
    , FuntypeProgramUniformMatrix4fvEXT
    , FuntypeProgramUniformMatrix2x3fvEXT
    , FuntypeProgramUniformMatrix3x2fvEXT
    , FuntypeProgramUniformMatrix2x4fvEXT
    , FuntypeProgramUniformMatrix4x2fvEXT
    , FuntypeProgramUniformMatrix3x4fvEXT
    , FuntypeProgramUniformMatrix4x3fvEXT
    , FuntypeTextureBufferEXT
    , FuntypeMultiTexBufferEXT
    , FuntypeTextureParameterIivEXT
    , FuntypeTextureParameterIuivEXT
    , FuntypeGetTextureParameterIivEXT
    , FuntypeGetTextureParameterIuivEXT
    , FuntypeMultiTexParameterIivEXT
    , FuntypeMultiTexParameterIuivEXT
    , FuntypeGetMultiTexParameterIivEXT
    , FuntypeGetMultiTexParameterIuivEXT
    , FuntypeProgramUniform1uiEXT
    , FuntypeProgramUniform2uiEXT
    , FuntypeProgramUniform3uiEXT
    , FuntypeProgramUniform4uiEXT
    , FuntypeProgramUniform1uivEXT
    , FuntypeProgramUniform2uivEXT
    , FuntypeProgramUniform3uivEXT
    , FuntypeProgramUniform4uivEXT
    , FuntypeNamedProgramLocalParameters4fvEXT
    , FuntypeNamedProgramLocalParameterI4iEXT
    , FuntypeNamedProgramLocalParameterI4ivEXT
    , FuntypeNamedProgramLocalParametersI4ivEXT
    , FuntypeNamedProgramLocalParameterI4uiEXT
    , FuntypeNamedProgramLocalParameterI4uivEXT
    , FuntypeNamedProgramLocalParametersI4uivEXT
    , FuntypeGetNamedProgramLocalParameterIivEXT
    , FuntypeGetNamedProgramLocalParameterIuivEXT
    , FuntypeEnableClientStateiEXT
    , FuntypeDisableClientStateiEXT
    , FuntypeGetFloati_vEXT
    , FuntypeGetDoublei_vEXT
    , FuntypeGetPointeri_vEXT
    , FuntypeNamedProgramStringEXT
    , FuntypeNamedProgramLocalParameter4dEXT
    , FuntypeNamedProgramLocalParameter4dvEXT
    , FuntypeNamedProgramLocalParameter4fEXT
    , FuntypeNamedProgramLocalParameter4fvEXT
    , FuntypeGetNamedProgramLocalParameterdvEXT
    , FuntypeGetNamedProgramLocalParameterfvEXT
    , FuntypeGetNamedProgramivEXT
    , FuntypeGetNamedProgramStringEXT
    , FuntypeNamedRenderbufferStorageEXT
    , FuntypeGetNamedRenderbufferParameterivEXT
    , FuntypeNamedRenderbufferStorageMultisampleEXT
    , FuntypeNamedRenderbufferStorageMultisampleCoverageEXT
    , FuntypeCheckNamedFramebufferStatusEXT
    , FuntypeNamedFramebufferTexture1DEXT
    , FuntypeNamedFramebufferTexture2DEXT
    , FuntypeNamedFramebufferTexture3DEXT
    , FuntypeNamedFramebufferRenderbufferEXT
    , FuntypeGetNamedFramebufferAttachmentParameterivEXT
    , FuntypeGenerateTextureMipmapEXT
    , FuntypeGenerateMultiTexMipmapEXT
    , FuntypeFramebufferDrawBufferEXT
    , FuntypeFramebufferDrawBuffersEXT
    , FuntypeFramebufferReadBufferEXT
    , FuntypeGetFramebufferParameterivEXT
    , FuntypeNamedCopyBufferSubDataEXT
    , FuntypeNamedFramebufferTextureEXT
    , FuntypeNamedFramebufferTextureLayerEXT
    , FuntypeNamedFramebufferTextureFaceEXT
    , FuntypeTextureRenderbufferEXT
    , FuntypeMultiTexRenderbufferEXT
    , FuntypeVertexArrayVertexOffsetEXT
    , FuntypeVertexArrayColorOffsetEXT
    , FuntypeVertexArrayEdgeFlagOffsetEXT
    , FuntypeVertexArrayIndexOffsetEXT
    , FuntypeVertexArrayNormalOffsetEXT
    , FuntypeVertexArrayTexCoordOffsetEXT
    , FuntypeVertexArrayMultiTexCoordOffsetEXT
    , FuntypeVertexArrayFogCoordOffsetEXT
    , FuntypeVertexArraySecondaryColorOffsetEXT
    , FuntypeVertexArrayVertexAttribOffsetEXT
    , FuntypeVertexArrayVertexAttribIOffsetEXT
    , FuntypeEnableVertexArrayEXT
    , FuntypeDisableVertexArrayEXT
    , FuntypeEnableVertexArrayAttribEXT
    , FuntypeDisableVertexArrayAttribEXT
    , FuntypeGetVertexArrayIntegervEXT
    , FuntypeGetVertexArrayPointervEXT
    , FuntypeGetVertexArrayIntegeri_vEXT
    , FuntypeGetVertexArrayPointeri_vEXT
    , FuntypeMapNamedBufferRangeEXT
    , FuntypeFlushMappedNamedBufferRangeEXT
    , FuntypeNamedBufferStorageEXT
    , FuntypeClearNamedBufferDataEXT
    , FuntypeClearNamedBufferSubDataEXT
    , FuntypeNamedFramebufferParameteriEXT
    , FuntypeGetNamedFramebufferParameterivEXT
    , FuntypeProgramUniform1dEXT
    , FuntypeProgramUniform2dEXT
    , FuntypeProgramUniform3dEXT
    , FuntypeProgramUniform4dEXT
    , FuntypeProgramUniform1dvEXT
    , FuntypeProgramUniform2dvEXT
    , FuntypeProgramUniform3dvEXT
    , FuntypeProgramUniform4dvEXT
    , FuntypeProgramUniformMatrix2dvEXT
    , FuntypeProgramUniformMatrix3dvEXT
    , FuntypeProgramUniformMatrix4dvEXT
    , FuntypeProgramUniformMatrix2x3dvEXT
    , FuntypeProgramUniformMatrix2x4dvEXT
    , FuntypeProgramUniformMatrix3x2dvEXT
    , FuntypeProgramUniformMatrix3x4dvEXT
    , FuntypeProgramUniformMatrix4x2dvEXT
    , FuntypeProgramUniformMatrix4x3dvEXT
    , FuntypeTextureBufferRangeEXT
    , FuntypeTextureStorage1DEXT
    , FuntypeTextureStorage2DEXT
    , FuntypeTextureStorage3DEXT
    , FuntypeTextureStorage2DMultisampleEXT
    , FuntypeTextureStorage3DMultisampleEXT
    , FuntypeVertexArrayBindVertexBufferEXT
    , FuntypeVertexArrayVertexAttribFormatEXT
    , FuntypeVertexArrayVertexAttribIFormatEXT
    , FuntypeVertexArrayVertexAttribLFormatEXT
    , FuntypeVertexArrayVertexAttribBindingEXT
    , FuntypeVertexArrayVertexBindingDivisorEXT
    , FuntypeVertexArrayVertexAttribLOffsetEXT
    , FuntypeTexturePageCommitmentEXT
    , FuntypeVertexArrayVertexAttribDivisorEXT
    , FuntypeBufferStorage
    , FuntypeUseProgramStages
    , FuntypeActiveShaderProgram
    , FuntypeCreateShaderProgramv
    , FuntypeBindProgramPipeline
    , FuntypeDeleteProgramPipelines
    , FuntypeGenProgramPipelines
    , FuntypeIsProgramPipeline
    , FuntypeGetProgramPipelineiv
    , FuntypeProgramUniform1i
    , FuntypeProgramUniform1iv
    , FuntypeProgramUniform1f
    , FuntypeProgramUniform1fv
    , FuntypeProgramUniform1d
    , FuntypeProgramUniform1dv
    , FuntypeProgramUniform1ui
    , FuntypeProgramUniform1uiv
    , FuntypeProgramUniform2i
    , FuntypeProgramUniform2iv
    , FuntypeProgramUniform2f
    , FuntypeProgramUniform2fv
    , FuntypeProgramUniform2d
    , FuntypeProgramUniform2dv
    , FuntypeProgramUniform2ui
    , FuntypeProgramUniform2uiv
    , FuntypeProgramUniform3i
    , FuntypeProgramUniform3iv
    , FuntypeProgramUniform3f
    , FuntypeProgramUniform3fv
    , FuntypeProgramUniform3d
    , FuntypeProgramUniform3dv
    , FuntypeProgramUniform3ui
    , FuntypeProgramUniform3uiv
    , FuntypeProgramUniform4i
    , FuntypeProgramUniform4iv
    , FuntypeProgramUniform4f
    , FuntypeProgramUniform4fv
    , FuntypeProgramUniform4d
    , FuntypeProgramUniform4dv
    , FuntypeProgramUniform4ui
    , FuntypeProgramUniform4uiv
    , FuntypeProgramUniformMatrix2fv
    , FuntypeProgramUniformMatrix3fv
    , FuntypeProgramUniformMatrix4fv
    , FuntypeProgramUniformMatrix2dv
    , FuntypeProgramUniformMatrix3dv
    , FuntypeProgramUniformMatrix4dv
    , FuntypeProgramUniformMatrix2x3fv
    , FuntypeProgramUniformMatrix3x2fv
    , FuntypeProgramUniformMatrix2x4fv
    , FuntypeProgramUniformMatrix4x2fv
    , FuntypeProgramUniformMatrix3x4fv
    , FuntypeProgramUniformMatrix4x3fv
    , FuntypeProgramUniformMatrix2x3dv
    , FuntypeProgramUniformMatrix3x2dv
    , FuntypeProgramUniformMatrix2x4dv
    , FuntypeProgramUniformMatrix4x2dv
    , FuntypeProgramUniformMatrix3x4dv
    , FuntypeProgramUniformMatrix4x3dv
    , FuntypeValidateProgramPipeline
    , FuntypeGetProgramPipelineInfoLog
    , FuntypeInvalidateTexSubImage
    , FuntypeInvalidateTexImage
    , FuntypeInvalidateBufferSubData
    , FuntypeInvalidateBufferData
    , FuntypeInvalidateFramebuffer
    , FuntypeInvalidateSubFramebuffer
    )
    where

import Graphics.Caramia.Internal.FlextGLTypes
import Foreign.Ptr

data DummyFlextGLThing

type FuntypeCullFace =
    GLenum ->
    IO ( () )
type FuntypeFrontFace =
    GLenum ->
    IO ( () )
type FuntypeHint =
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeLineWidth =
    GLfloat ->
    IO ( () )
type FuntypePointSize =
    GLfloat ->
    IO ( () )
type FuntypePolygonMode =
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeScissor =
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeTexParameterf =
    GLenum ->
    GLenum ->
    GLfloat ->
    IO ( () )
type FuntypeTexParameterfv =
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeTexParameteri =
    GLenum ->
    GLenum ->
    GLint ->
    IO ( () )
type FuntypeTexParameteriv =
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeTexImage1D =
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeTexImage2D =
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeDrawBuffer =
    GLenum ->
    IO ( () )
type FuntypeClear =
    GLbitfield ->
    IO ( () )
type FuntypeClearColor =
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeClearStencil =
    GLint ->
    IO ( () )
type FuntypeClearDepth =
    GLdouble ->
    IO ( () )
type FuntypeStencilMask =
    GLuint ->
    IO ( () )
type FuntypeColorMask =
    GLboolean ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    IO ( () )
type FuntypeDepthMask =
    GLboolean ->
    IO ( () )
type FuntypeDisable =
    GLenum ->
    IO ( () )
type FuntypeEnable =
    GLenum ->
    IO ( () )
type FuntypeFinish =
    IO ( () )
type FuntypeFlush =
    IO ( () )
type FuntypeBlendFunc =
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeLogicOp =
    GLenum ->
    IO ( () )
type FuntypeStencilFunc =
    GLenum ->
    GLint ->
    GLuint ->
    IO ( () )
type FuntypeStencilOp =
    GLenum ->
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeDepthFunc =
    GLenum ->
    IO ( () )
type FuntypePixelStoref =
    GLenum ->
    GLfloat ->
    IO ( () )
type FuntypePixelStorei =
    GLenum ->
    GLint ->
    IO ( () )
type FuntypeReadBuffer =
    GLenum ->
    IO ( () )
type FuntypeReadPixels =
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeGetBooleanv =
    GLenum ->
    Ptr (GLboolean) ->
    IO ( () )
type FuntypeGetDoublev =
    GLenum ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeGetError =
    IO ( GLenum )
type FuntypeGetFloatv =
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetIntegerv =
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetString =
    GLenum ->
    IO ( Ptr (GLubyte) )
type FuntypeGetTexImage =
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeGetTexParameterfv =
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetTexParameteriv =
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetTexLevelParameterfv =
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetTexLevelParameteriv =
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeIsEnabled =
    GLenum ->
    IO ( GLboolean )
type FuntypeDepthRange =
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeViewport =
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeDrawArrays =
    GLenum ->
    GLint ->
    GLsizei ->
    IO ( () )
type FuntypeDrawElements =
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypePolygonOffset =
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeCopyTexImage1D =
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    IO ( () )
type FuntypeCopyTexImage2D =
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    IO ( () )
type FuntypeCopyTexSubImage1D =
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    IO ( () )
type FuntypeCopyTexSubImage2D =
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeTexSubImage1D =
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeTexSubImage2D =
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeBindTexture =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeDeleteTextures =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGenTextures =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeIsTexture =
    GLuint ->
    IO ( GLboolean )
type FuntypeDrawRangeElements =
    GLenum ->
    GLuint ->
    GLuint ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeTexImage3D =
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
    IO ( () )
type FuntypeTexSubImage3D =
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
    IO ( () )
type FuntypeCopyTexSubImage3D =
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeActiveTexture =
    GLenum ->
    IO ( () )
type FuntypeSampleCoverage =
    GLfloat ->
    GLboolean ->
    IO ( () )
type FuntypeCompressedTexImage3D =
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedTexImage2D =
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedTexImage1D =
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedTexSubImage3D =
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
    IO ( () )
type FuntypeCompressedTexSubImage2D =
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedTexSubImage1D =
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeGetCompressedTexImage =
    GLenum ->
    GLint ->
    Ptr () ->
    IO ( () )
type FuntypeBlendFuncSeparate =
    GLenum ->
    GLenum ->
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeMultiDrawArrays =
    GLenum ->
    Ptr (GLint) ->
    Ptr (GLsizei) ->
    GLsizei ->
    IO ( () )
type FuntypeMultiDrawElements =
    GLenum ->
    Ptr (GLsizei) ->
    GLenum ->
    Ptr (Ptr ()) ->
    GLsizei ->
    IO ( () )
type FuntypePointParameterf =
    GLenum ->
    GLfloat ->
    IO ( () )
type FuntypePointParameterfv =
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypePointParameteri =
    GLenum ->
    GLint ->
    IO ( () )
type FuntypePointParameteriv =
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeBlendColor =
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeBlendEquation =
    GLenum ->
    IO ( () )
type FuntypeGenQueries =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeDeleteQueries =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeIsQuery =
    GLuint ->
    IO ( GLboolean )
type FuntypeBeginQuery =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeEndQuery =
    GLenum ->
    IO ( () )
type FuntypeGetQueryiv =
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetQueryObjectiv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetQueryObjectuiv =
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeBindBuffer =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeDeleteBuffers =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGenBuffers =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeIsBuffer =
    GLuint ->
    IO ( GLboolean )
type FuntypeBufferData =
    GLenum ->
    GLsizeiptr ->
    Ptr () ->
    GLenum ->
    IO ( () )
type FuntypeBufferSubData =
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    IO ( () )
type FuntypeGetBufferSubData =
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    IO ( () )
type FuntypeMapBuffer =
    GLenum ->
    GLenum ->
    IO ( Ptr () )
type FuntypeUnmapBuffer =
    GLenum ->
    IO ( GLboolean )
type FuntypeGetBufferParameteriv =
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetBufferPointerv =
    GLenum ->
    GLenum ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeBlendEquationSeparate =
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeDrawBuffers =
    GLsizei ->
    Ptr (GLenum) ->
    IO ( () )
type FuntypeStencilOpSeparate =
    GLenum ->
    GLenum ->
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeStencilFuncSeparate =
    GLenum ->
    GLenum ->
    GLint ->
    GLuint ->
    IO ( () )
type FuntypeStencilMaskSeparate =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeAttachShader =
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeBindAttribLocation =
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeCompileShader =
    GLuint ->
    IO ( () )
type FuntypeCreateProgram =
    IO ( GLuint )
type FuntypeCreateShader =
    GLenum ->
    IO ( GLuint )
type FuntypeDeleteProgram =
    GLuint ->
    IO ( () )
type FuntypeDeleteShader =
    GLuint ->
    IO ( () )
type FuntypeDetachShader =
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeDisableVertexAttribArray =
    GLuint ->
    IO ( () )
type FuntypeEnableVertexAttribArray =
    GLuint ->
    IO ( () )
type FuntypeGetActiveAttrib =
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetActiveUniform =
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetAttachedShaders =
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGetAttribLocation =
    GLuint ->
    Ptr (GLchar) ->
    IO ( GLint )
type FuntypeGetProgramiv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetProgramInfoLog =
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetShaderiv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetShaderInfoLog =
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetShaderSource =
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetUniformLocation =
    GLuint ->
    Ptr (GLchar) ->
    IO ( GLint )
type FuntypeGetUniformfv =
    GLuint ->
    GLint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetUniformiv =
    GLuint ->
    GLint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetVertexAttribdv =
    GLuint ->
    GLenum ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeGetVertexAttribfv =
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetVertexAttribiv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetVertexAttribPointerv =
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeIsProgram =
    GLuint ->
    IO ( GLboolean )
type FuntypeIsShader =
    GLuint ->
    IO ( GLboolean )
type FuntypeLinkProgram =
    GLuint ->
    IO ( () )
type FuntypeShaderSource =
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeUseProgram =
    GLuint ->
    IO ( () )
type FuntypeUniform1f =
    GLint ->
    GLfloat ->
    IO ( () )
type FuntypeUniform2f =
    GLint ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeUniform3f =
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeUniform4f =
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeUniform1i =
    GLint ->
    GLint ->
    IO ( () )
type FuntypeUniform2i =
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeUniform3i =
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeUniform4i =
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeUniform1fv =
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniform2fv =
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniform3fv =
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniform4fv =
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniform1iv =
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeUniform2iv =
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeUniform3iv =
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeUniform4iv =
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeUniformMatrix2fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniformMatrix3fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniformMatrix4fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeValidateProgram =
    GLuint ->
    IO ( () )
type FuntypeVertexAttrib1d =
    GLuint ->
    GLdouble ->
    IO ( () )
type FuntypeVertexAttrib1dv =
    GLuint ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeVertexAttrib1f =
    GLuint ->
    GLfloat ->
    IO ( () )
type FuntypeVertexAttrib1fv =
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeVertexAttrib1s =
    GLuint ->
    GLshort ->
    IO ( () )
type FuntypeVertexAttrib1sv =
    GLuint ->
    Ptr (GLshort) ->
    IO ( () )
type FuntypeVertexAttrib2d =
    GLuint ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeVertexAttrib2dv =
    GLuint ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeVertexAttrib2f =
    GLuint ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeVertexAttrib2fv =
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeVertexAttrib2s =
    GLuint ->
    GLshort ->
    GLshort ->
    IO ( () )
type FuntypeVertexAttrib2sv =
    GLuint ->
    Ptr (GLshort) ->
    IO ( () )
type FuntypeVertexAttrib3d =
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeVertexAttrib3dv =
    GLuint ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeVertexAttrib3f =
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeVertexAttrib3fv =
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeVertexAttrib3s =
    GLuint ->
    GLshort ->
    GLshort ->
    GLshort ->
    IO ( () )
type FuntypeVertexAttrib3sv =
    GLuint ->
    Ptr (GLshort) ->
    IO ( () )
type FuntypeVertexAttrib4Nbv =
    GLuint ->
    Ptr (GLbyte) ->
    IO ( () )
type FuntypeVertexAttrib4Niv =
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeVertexAttrib4Nsv =
    GLuint ->
    Ptr (GLshort) ->
    IO ( () )
type FuntypeVertexAttrib4Nub =
    GLuint ->
    GLubyte ->
    GLubyte ->
    GLubyte ->
    GLubyte ->
    IO ( () )
type FuntypeVertexAttrib4Nubv =
    GLuint ->
    Ptr (GLubyte) ->
    IO ( () )
type FuntypeVertexAttrib4Nuiv =
    GLuint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttrib4Nusv =
    GLuint ->
    Ptr (GLushort) ->
    IO ( () )
type FuntypeVertexAttrib4bv =
    GLuint ->
    Ptr (GLbyte) ->
    IO ( () )
type FuntypeVertexAttrib4d =
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeVertexAttrib4dv =
    GLuint ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeVertexAttrib4f =
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeVertexAttrib4fv =
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeVertexAttrib4iv =
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeVertexAttrib4s =
    GLuint ->
    GLshort ->
    GLshort ->
    GLshort ->
    GLshort ->
    IO ( () )
type FuntypeVertexAttrib4sv =
    GLuint ->
    Ptr (GLshort) ->
    IO ( () )
type FuntypeVertexAttrib4ubv =
    GLuint ->
    Ptr (GLubyte) ->
    IO ( () )
type FuntypeVertexAttrib4uiv =
    GLuint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttrib4usv =
    GLuint ->
    Ptr (GLushort) ->
    IO ( () )
type FuntypeVertexAttribPointer =
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeUniformMatrix2x3fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniformMatrix3x2fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniformMatrix2x4fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniformMatrix4x2fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniformMatrix3x4fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeUniformMatrix4x3fv =
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeColorMaski =
    GLuint ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    GLboolean ->
    IO ( () )
type FuntypeGetBooleani_v =
    GLenum ->
    GLuint ->
    Ptr (GLboolean) ->
    IO ( () )
type FuntypeGetIntegeri_v =
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeEnablei =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeDisablei =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeIsEnabledi =
    GLenum ->
    GLuint ->
    IO ( GLboolean )
type FuntypeBeginTransformFeedback =
    GLenum ->
    IO ( () )
type FuntypeEndTransformFeedback =
    IO ( () )
type FuntypeBindBufferRange =
    GLenum ->
    GLuint ->
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    IO ( () )
type FuntypeBindBufferBase =
    GLenum ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeTransformFeedbackVaryings =
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    GLenum ->
    IO ( () )
type FuntypeGetTransformFeedbackVarying =
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLsizei) ->
    Ptr (GLenum) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeClampColor =
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeBeginConditionalRender =
    GLuint ->
    GLenum ->
    IO ( () )
type FuntypeEndConditionalRender =
    IO ( () )
type FuntypeVertexAttribIPointer =
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeGetVertexAttribIiv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetVertexAttribIuiv =
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttribI1i =
    GLuint ->
    GLint ->
    IO ( () )
type FuntypeVertexAttribI2i =
    GLuint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeVertexAttribI3i =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeVertexAttribI4i =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeVertexAttribI1ui =
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribI2ui =
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribI3ui =
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribI4ui =
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribI1iv =
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeVertexAttribI2iv =
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeVertexAttribI3iv =
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeVertexAttribI4iv =
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeVertexAttribI1uiv =
    GLuint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttribI2uiv =
    GLuint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttribI3uiv =
    GLuint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttribI4uiv =
    GLuint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttribI4bv =
    GLuint ->
    Ptr (GLbyte) ->
    IO ( () )
type FuntypeVertexAttribI4sv =
    GLuint ->
    Ptr (GLshort) ->
    IO ( () )
type FuntypeVertexAttribI4ubv =
    GLuint ->
    Ptr (GLubyte) ->
    IO ( () )
type FuntypeVertexAttribI4usv =
    GLuint ->
    Ptr (GLushort) ->
    IO ( () )
type FuntypeGetUniformuiv =
    GLuint ->
    GLint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeBindFragDataLocation =
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetFragDataLocation =
    GLuint ->
    Ptr (GLchar) ->
    IO ( GLint )
type FuntypeUniform1ui =
    GLint ->
    GLuint ->
    IO ( () )
type FuntypeUniform2ui =
    GLint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeUniform3ui =
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeUniform4ui =
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeUniform1uiv =
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeUniform2uiv =
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeUniform3uiv =
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeUniform4uiv =
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeTexParameterIiv =
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeTexParameterIuiv =
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGetTexParameterIiv =
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetTexParameterIuiv =
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeClearBufferiv =
    GLenum ->
    GLint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeClearBufferuiv =
    GLenum ->
    GLint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeClearBufferfv =
    GLenum ->
    GLint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeClearBufferfi =
    GLenum ->
    GLint ->
    GLfloat ->
    GLint ->
    IO ( () )
type FuntypeGetStringi =
    GLenum ->
    GLuint ->
    IO ( Ptr (GLubyte) )
type FuntypeIsRenderbuffer =
    GLuint ->
    IO ( GLboolean )
type FuntypeBindRenderbuffer =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeDeleteRenderbuffers =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGenRenderbuffers =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeRenderbufferStorage =
    GLenum ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeGetRenderbufferParameteriv =
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeIsFramebuffer =
    GLuint ->
    IO ( GLboolean )
type FuntypeBindFramebuffer =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeDeleteFramebuffers =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGenFramebuffers =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeCheckFramebufferStatus =
    GLenum ->
    IO ( GLenum )
type FuntypeFramebufferTexture1D =
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    IO ( () )
type FuntypeFramebufferTexture2D =
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    IO ( () )
type FuntypeFramebufferTexture3D =
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeFramebufferRenderbuffer =
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeGetFramebufferAttachmentParameteriv =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGenerateMipmap =
    GLenum ->
    IO ( () )
type FuntypeBlitFramebuffer =
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
    IO ( () )
type FuntypeRenderbufferStorageMultisample =
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeFramebufferTextureLayer =
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeMapBufferRange =
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    GLbitfield ->
    IO ( Ptr () )
type FuntypeFlushMappedBufferRange =
    GLenum ->
    GLintptr ->
    GLsizeiptr ->
    IO ( () )
type FuntypeBindVertexArray =
    GLuint ->
    IO ( () )
type FuntypeDeleteVertexArrays =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGenVertexArrays =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeIsVertexArray =
    GLuint ->
    IO ( GLboolean )
type FuntypeDrawArraysInstanced =
    GLenum ->
    GLint ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeDrawElementsInstanced =
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLsizei ->
    IO ( () )
type FuntypeTexBuffer =
    GLenum ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypePrimitiveRestartIndex =
    GLuint ->
    IO ( () )
type FuntypeCopyBufferSubData =
    GLenum ->
    GLenum ->
    GLintptr ->
    GLintptr ->
    GLsizeiptr ->
    IO ( () )
type FuntypeGetUniformIndices =
    GLuint ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGetActiveUniformsiv =
    GLuint ->
    GLsizei ->
    Ptr (GLuint) ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetActiveUniformName =
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetUniformBlockIndex =
    GLuint ->
    Ptr (GLchar) ->
    IO ( GLuint )
type FuntypeGetActiveUniformBlockiv =
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetActiveUniformBlockName =
    GLuint ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeUniformBlockBinding =
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeDrawElementsBaseVertex =
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLint ->
    IO ( () )
type FuntypeDrawRangeElementsBaseVertex =
    GLenum ->
    GLuint ->
    GLuint ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLint ->
    IO ( () )
type FuntypeDrawElementsInstancedBaseVertex =
    GLenum ->
    GLsizei ->
    GLenum ->
    Ptr () ->
    GLsizei ->
    GLint ->
    IO ( () )
type FuntypeMultiDrawElementsBaseVertex =
    GLenum ->
    Ptr (GLsizei) ->
    GLenum ->
    Ptr (Ptr ()) ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProvokingVertex =
    GLenum ->
    IO ( () )
type FuntypeFenceSync =
    GLenum ->
    GLbitfield ->
    IO ( GLsync )
type FuntypeIsSync =
    GLsync ->
    IO ( GLboolean )
type FuntypeDeleteSync =
    GLsync ->
    IO ( () )
type FuntypeClientWaitSync =
    GLsync ->
    GLbitfield ->
    GLuint64 ->
    IO ( GLenum )
type FuntypeWaitSync =
    GLsync ->
    GLbitfield ->
    GLuint64 ->
    IO ( () )
type FuntypeGetInteger64v =
    GLenum ->
    Ptr (GLint64) ->
    IO ( () )
type FuntypeGetSynciv =
    GLsync ->
    GLenum ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetInteger64i_v =
    GLenum ->
    GLuint ->
    Ptr (GLint64) ->
    IO ( () )
type FuntypeGetBufferParameteri64v =
    GLenum ->
    GLenum ->
    Ptr (GLint64) ->
    IO ( () )
type FuntypeFramebufferTexture =
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    IO ( () )
type FuntypeTexImage2DMultisample =
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    IO ( () )
type FuntypeTexImage3DMultisample =
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    IO ( () )
type FuntypeGetMultisamplefv =
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeSampleMaski =
    GLuint ->
    GLbitfield ->
    IO ( () )
type FuntypeBindFragDataLocationIndexed =
    GLuint ->
    GLuint ->
    GLuint ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetFragDataIndex =
    GLuint ->
    Ptr (GLchar) ->
    IO ( GLint )
type FuntypeGenSamplers =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeDeleteSamplers =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeIsSampler =
    GLuint ->
    IO ( GLboolean )
type FuntypeBindSampler =
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeSamplerParameteri =
    GLuint ->
    GLenum ->
    GLint ->
    IO ( () )
type FuntypeSamplerParameteriv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeSamplerParameterf =
    GLuint ->
    GLenum ->
    GLfloat ->
    IO ( () )
type FuntypeSamplerParameterfv =
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeSamplerParameterIiv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeSamplerParameterIuiv =
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGetSamplerParameteriv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetSamplerParameterIiv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetSamplerParameterfv =
    GLuint ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetSamplerParameterIuiv =
    GLuint ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeQueryCounter =
    GLuint ->
    GLenum ->
    IO ( () )
type FuntypeGetQueryObjecti64v =
    GLuint ->
    GLenum ->
    Ptr (GLint64) ->
    IO ( () )
type FuntypeGetQueryObjectui64v =
    GLuint ->
    GLenum ->
    Ptr (GLuint64) ->
    IO ( () )
type FuntypeVertexAttribDivisor =
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribP1ui =
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribP1uiv =
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttribP2ui =
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribP2uiv =
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttribP3ui =
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribP3uiv =
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeVertexAttribP4ui =
    GLuint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    IO ( () )
type FuntypeVertexAttribP4uiv =
    GLuint ->
    GLenum ->
    GLboolean ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeTexStorage1D =
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    IO ( () )
type FuntypeTexStorage2D =
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeTexStorage3D =
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeDebugMessageControl =
    GLenum ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr (GLuint) ->
    GLboolean ->
    IO ( () )
type FuntypeDebugMessageInsert =
    GLenum ->
    GLenum ->
    GLuint ->
    GLenum ->
    GLsizei ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeDebugMessageCallback =
    GLDEBUGPROC ->
    Ptr () ->
    IO ( () )
type FuntypeGetDebugMessageLog =
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    Ptr (GLenum) ->
    Ptr (GLuint) ->
    Ptr (GLenum) ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( GLuint )
type FuntypePushDebugGroup =
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypePopDebugGroup =
    IO ( () )
type FuntypeObjectLabel =
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetObjectLabel =
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeObjectPtrLabel =
    Ptr () ->
    GLsizei ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetObjectPtrLabel =
    Ptr () ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetPointerv =
    GLenum ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeDebugMessageControlKHR =
    GLenum ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr (GLuint) ->
    GLboolean ->
    IO ( () )
type FuntypeDebugMessageInsertKHR =
    GLenum ->
    GLenum ->
    GLuint ->
    GLenum ->
    GLsizei ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeDebugMessageCallbackKHR =
    GLDEBUGPROCKHR ->
    Ptr () ->
    IO ( () )
type FuntypeGetDebugMessageLogKHR =
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    Ptr (GLenum) ->
    Ptr (GLuint) ->
    Ptr (GLenum) ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( GLuint )
type FuntypePushDebugGroupKHR =
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypePopDebugGroupKHR =
    IO ( () )
type FuntypeObjectLabelKHR =
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetObjectLabelKHR =
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeObjectPtrLabelKHR =
    Ptr () ->
    GLsizei ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetObjectPtrLabelKHR =
    Ptr () ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeGetPointervKHR =
    GLenum ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeMatrixLoadfEXT =
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeMatrixLoaddEXT =
    GLenum ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeMatrixMultfEXT =
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeMatrixMultdEXT =
    GLenum ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeMatrixLoadIdentityEXT =
    GLenum ->
    IO ( () )
type FuntypeMatrixRotatefEXT =
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeMatrixRotatedEXT =
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeMatrixScalefEXT =
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeMatrixScaledEXT =
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeMatrixTranslatefEXT =
    GLenum ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeMatrixTranslatedEXT =
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeMatrixFrustumEXT =
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeMatrixOrthoEXT =
    GLenum ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeMatrixPopEXT =
    GLenum ->
    IO ( () )
type FuntypeMatrixPushEXT =
    GLenum ->
    IO ( () )
type FuntypeClientAttribDefaultEXT =
    GLbitfield ->
    IO ( () )
type FuntypePushClientAttribDefaultEXT =
    GLbitfield ->
    IO ( () )
type FuntypeTextureParameterfEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLfloat ->
    IO ( () )
type FuntypeTextureParameterfvEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeTextureParameteriEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLint ->
    IO ( () )
type FuntypeTextureParameterivEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeTextureImage1DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeTextureImage2DEXT =
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
    IO ( () )
type FuntypeTextureSubImage1DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeTextureSubImage2DEXT =
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
    IO ( () )
type FuntypeCopyTextureImage1DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    IO ( () )
type FuntypeCopyTextureImage2DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    IO ( () )
type FuntypeCopyTextureSubImage1DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    IO ( () )
type FuntypeCopyTextureSubImage2DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeGetTextureImageEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeGetTextureParameterfvEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetTextureParameterivEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetTextureLevelParameterfvEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetTextureLevelParameterivEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeTextureImage3DEXT =
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
    IO ( () )
type FuntypeTextureSubImage3DEXT =
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
    IO ( () )
type FuntypeCopyTextureSubImage3DEXT =
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
    IO ( () )
type FuntypeBindMultiTextureEXT =
    GLenum ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeMultiTexCoordPointerEXT =
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeMultiTexEnvfEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    IO ( () )
type FuntypeMultiTexEnvfvEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeMultiTexEnviEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    IO ( () )
type FuntypeMultiTexEnvivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeMultiTexGendEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    GLdouble ->
    IO ( () )
type FuntypeMultiTexGendvEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeMultiTexGenfEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    IO ( () )
type FuntypeMultiTexGenfvEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeMultiTexGeniEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    IO ( () )
type FuntypeMultiTexGenivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetMultiTexEnvfvEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetMultiTexEnvivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetMultiTexGendvEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeGetMultiTexGenfvEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetMultiTexGenivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeMultiTexParameteriEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    GLint ->
    IO ( () )
type FuntypeMultiTexParameterivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeMultiTexParameterfEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    GLfloat ->
    IO ( () )
type FuntypeMultiTexParameterfvEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeMultiTexImage1DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeMultiTexImage2DEXT =
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
    IO ( () )
type FuntypeMultiTexSubImage1DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeMultiTexSubImage2DEXT =
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
    IO ( () )
type FuntypeCopyMultiTexImage1DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLint ->
    IO ( () )
type FuntypeCopyMultiTexImage2DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLint ->
    IO ( () )
type FuntypeCopyMultiTexSubImage1DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    IO ( () )
type FuntypeCopyMultiTexSubImage2DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeGetMultiTexImageEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeGetMultiTexParameterfvEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetMultiTexParameterivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetMultiTexLevelParameterfvEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetMultiTexLevelParameterivEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeMultiTexImage3DEXT =
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
    IO ( () )
type FuntypeMultiTexSubImage3DEXT =
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
    IO ( () )
type FuntypeCopyMultiTexSubImage3DEXT =
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
    IO ( () )
type FuntypeEnableClientStateIndexedEXT =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeDisableClientStateIndexedEXT =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeGetFloatIndexedvEXT =
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetDoubleIndexedvEXT =
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeGetPointerIndexedvEXT =
    GLenum ->
    GLuint ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeEnableIndexedEXT =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeDisableIndexedEXT =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeIsEnabledIndexedEXT =
    GLenum ->
    GLuint ->
    IO ( GLboolean )
type FuntypeGetIntegerIndexedvEXT =
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetBooleanIndexedvEXT =
    GLenum ->
    GLuint ->
    Ptr (GLboolean) ->
    IO ( () )
type FuntypeCompressedTextureImage3DEXT =
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
    IO ( () )
type FuntypeCompressedTextureImage2DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedTextureImage1DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedTextureSubImage3DEXT =
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
    IO ( () )
type FuntypeCompressedTextureSubImage2DEXT =
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
    IO ( () )
type FuntypeCompressedTextureSubImage1DEXT =
    GLuint ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeGetCompressedTextureImageEXT =
    GLuint ->
    GLenum ->
    GLint ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedMultiTexImage3DEXT =
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
    IO ( () )
type FuntypeCompressedMultiTexImage2DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedMultiTexImage1DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLint ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeCompressedMultiTexSubImage3DEXT =
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
    IO ( () )
type FuntypeCompressedMultiTexSubImage2DEXT =
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
    IO ( () )
type FuntypeCompressedMultiTexSubImage1DEXT =
    GLenum ->
    GLenum ->
    GLint ->
    GLint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeGetCompressedMultiTexImageEXT =
    GLenum ->
    GLenum ->
    GLint ->
    Ptr () ->
    IO ( () )
type FuntypeMatrixLoadTransposefEXT =
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeMatrixLoadTransposedEXT =
    GLenum ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeMatrixMultTransposefEXT =
    GLenum ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeMatrixMultTransposedEXT =
    GLenum ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeNamedBufferDataEXT =
    GLuint ->
    GLsizeiptr ->
    Ptr () ->
    GLenum ->
    IO ( () )
type FuntypeNamedBufferSubDataEXT =
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    IO ( () )
type FuntypeMapNamedBufferEXT =
    GLuint ->
    GLenum ->
    IO ( Ptr () )
type FuntypeUnmapNamedBufferEXT =
    GLuint ->
    IO ( GLboolean )
type FuntypeGetNamedBufferParameterivEXT =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetNamedBufferPointervEXT =
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeGetNamedBufferSubDataEXT =
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    Ptr () ->
    IO ( () )
type FuntypeProgramUniform1fEXT =
    GLuint ->
    GLint ->
    GLfloat ->
    IO ( () )
type FuntypeProgramUniform2fEXT =
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeProgramUniform3fEXT =
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeProgramUniform4fEXT =
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeProgramUniform1iEXT =
    GLuint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeProgramUniform2iEXT =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeProgramUniform3iEXT =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeProgramUniform4iEXT =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeProgramUniform1fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniform2fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniform3fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniform4fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniform1ivEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform2ivEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform3ivEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform4ivEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniformMatrix2fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix3fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix4fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix2x3fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix3x2fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix2x4fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix4x2fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix3x4fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix4x3fvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeTextureBufferEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeMultiTexBufferEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeTextureParameterIivEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeTextureParameterIuivEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGetTextureParameterIivEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetTextureParameterIuivEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeMultiTexParameterIivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeMultiTexParameterIuivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGetMultiTexParameterIivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetMultiTexParameterIuivEXT =
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeProgramUniform1uiEXT =
    GLuint ->
    GLint ->
    GLuint ->
    IO ( () )
type FuntypeProgramUniform2uiEXT =
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeProgramUniform3uiEXT =
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeProgramUniform4uiEXT =
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeProgramUniform1uivEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeProgramUniform2uivEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeProgramUniform3uivEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeProgramUniform4uivEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeNamedProgramLocalParameters4fvEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeNamedProgramLocalParameterI4iEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeNamedProgramLocalParameterI4ivEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeNamedProgramLocalParametersI4ivEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeNamedProgramLocalParameterI4uiEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeNamedProgramLocalParameterI4uivEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeNamedProgramLocalParametersI4uivEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGetNamedProgramLocalParameterIivEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetNamedProgramLocalParameterIuivEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeEnableClientStateiEXT =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeDisableClientStateiEXT =
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeGetFloati_vEXT =
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetDoublei_vEXT =
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeGetPointeri_vEXT =
    GLenum ->
    GLuint ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeNamedProgramStringEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLsizei ->
    Ptr () ->
    IO ( () )
type FuntypeNamedProgramLocalParameter4dEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeNamedProgramLocalParameter4dvEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeNamedProgramLocalParameter4fEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeNamedProgramLocalParameter4fvEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetNamedProgramLocalParameterdvEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeGetNamedProgramLocalParameterfvEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeGetNamedProgramivEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetNamedProgramStringEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeNamedRenderbufferStorageEXT =
    GLuint ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeGetNamedRenderbufferParameterivEXT =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeNamedRenderbufferStorageMultisampleEXT =
    GLuint ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeNamedRenderbufferStorageMultisampleCoverageEXT =
    GLuint ->
    GLsizei ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeCheckNamedFramebufferStatusEXT =
    GLuint ->
    GLenum ->
    IO ( GLenum )
type FuntypeNamedFramebufferTexture1DEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    IO ( () )
type FuntypeNamedFramebufferTexture2DEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    IO ( () )
type FuntypeNamedFramebufferTexture3DEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeNamedFramebufferRenderbufferEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeGetNamedFramebufferAttachmentParameterivEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGenerateTextureMipmapEXT =
    GLuint ->
    GLenum ->
    IO ( () )
type FuntypeGenerateMultiTexMipmapEXT =
    GLenum ->
    GLenum ->
    IO ( () )
type FuntypeFramebufferDrawBufferEXT =
    GLuint ->
    GLenum ->
    IO ( () )
type FuntypeFramebufferDrawBuffersEXT =
    GLuint ->
    GLsizei ->
    Ptr (GLenum) ->
    IO ( () )
type FuntypeFramebufferReadBufferEXT =
    GLuint ->
    GLenum ->
    IO ( () )
type FuntypeGetFramebufferParameterivEXT =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeNamedCopyBufferSubDataEXT =
    GLuint ->
    GLuint ->
    GLintptr ->
    GLintptr ->
    GLsizeiptr ->
    IO ( () )
type FuntypeNamedFramebufferTextureEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    IO ( () )
type FuntypeNamedFramebufferTextureLayerEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeNamedFramebufferTextureFaceEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    GLint ->
    GLenum ->
    IO ( () )
type FuntypeTextureRenderbufferEXT =
    GLuint ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeMultiTexRenderbufferEXT =
    GLenum ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeVertexArrayVertexOffsetEXT =
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayColorOffsetEXT =
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayEdgeFlagOffsetEXT =
    GLuint ->
    GLuint ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayIndexOffsetEXT =
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayNormalOffsetEXT =
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayTexCoordOffsetEXT =
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayMultiTexCoordOffsetEXT =
    GLuint ->
    GLuint ->
    GLenum ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayFogCoordOffsetEXT =
    GLuint ->
    GLuint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArraySecondaryColorOffsetEXT =
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayVertexAttribOffsetEXT =
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeVertexArrayVertexAttribIOffsetEXT =
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeEnableVertexArrayEXT =
    GLuint ->
    GLenum ->
    IO ( () )
type FuntypeDisableVertexArrayEXT =
    GLuint ->
    GLenum ->
    IO ( () )
type FuntypeEnableVertexArrayAttribEXT =
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeDisableVertexArrayAttribEXT =
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeGetVertexArrayIntegervEXT =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetVertexArrayPointervEXT =
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeGetVertexArrayIntegeri_vEXT =
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeGetVertexArrayPointeri_vEXT =
    GLuint ->
    GLuint ->
    GLenum ->
    Ptr (Ptr ()) ->
    IO ( () )
type FuntypeMapNamedBufferRangeEXT =
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    GLbitfield ->
    IO ( Ptr () )
type FuntypeFlushMappedNamedBufferRangeEXT =
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    IO ( () )
type FuntypeNamedBufferStorageEXT =
    GLuint ->
    GLsizeiptr ->
    Ptr () ->
    GLbitfield ->
    IO ( () )
type FuntypeClearNamedBufferDataEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeClearNamedBufferSubDataEXT =
    GLuint ->
    GLenum ->
    GLsizeiptr ->
    GLsizeiptr ->
    GLenum ->
    GLenum ->
    Ptr () ->
    IO ( () )
type FuntypeNamedFramebufferParameteriEXT =
    GLuint ->
    GLenum ->
    GLint ->
    IO ( () )
type FuntypeGetNamedFramebufferParameterivEXT =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform1dEXT =
    GLuint ->
    GLint ->
    GLdouble ->
    IO ( () )
type FuntypeProgramUniform2dEXT =
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeProgramUniform3dEXT =
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeProgramUniform4dEXT =
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeProgramUniform1dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniform2dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniform3dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniform4dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix2dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix3dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix4dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix2x3dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix2x4dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix3x2dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix3x4dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix4x2dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix4x3dvEXT =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeTextureBufferRangeEXT =
    GLuint ->
    GLenum ->
    GLenum ->
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    IO ( () )
type FuntypeTextureStorage1DEXT =
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    IO ( () )
type FuntypeTextureStorage2DEXT =
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeTextureStorage3DEXT =
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeTextureStorage2DMultisampleEXT =
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    IO ( () )
type FuntypeTextureStorage3DMultisampleEXT =
    GLuint ->
    GLenum ->
    GLsizei ->
    GLenum ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    IO ( () )
type FuntypeVertexArrayBindVertexBufferEXT =
    GLuint ->
    GLuint ->
    GLuint ->
    GLintptr ->
    GLsizei ->
    IO ( () )
type FuntypeVertexArrayVertexAttribFormatEXT =
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLboolean ->
    GLuint ->
    IO ( () )
type FuntypeVertexArrayVertexAttribIFormatEXT =
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeVertexArrayVertexAttribLFormatEXT =
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLuint ->
    IO ( () )
type FuntypeVertexArrayVertexAttribBindingEXT =
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeVertexArrayVertexBindingDivisorEXT =
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeVertexArrayVertexAttribLOffsetEXT =
    GLuint ->
    GLuint ->
    GLuint ->
    GLint ->
    GLenum ->
    GLsizei ->
    GLintptr ->
    IO ( () )
type FuntypeTexturePageCommitmentEXT =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    GLboolean ->
    IO ( () )
type FuntypeVertexArrayVertexAttribDivisorEXT =
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeBufferStorage =
    GLenum ->
    GLsizeiptr ->
    Ptr () ->
    GLbitfield ->
    IO ( () )
type FuntypeUseProgramStages =
    GLuint ->
    GLbitfield ->
    GLuint ->
    IO ( () )
type FuntypeActiveShaderProgram =
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeCreateShaderProgramv =
    GLenum ->
    GLsizei ->
    Ptr (Ptr (GLchar)) ->
    IO ( GLuint )
type FuntypeBindProgramPipeline =
    GLuint ->
    IO ( () )
type FuntypeDeleteProgramPipelines =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeGenProgramPipelines =
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeIsProgramPipeline =
    GLuint ->
    IO ( GLboolean )
type FuntypeGetProgramPipelineiv =
    GLuint ->
    GLenum ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform1i =
    GLuint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeProgramUniform1iv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform1f =
    GLuint ->
    GLint ->
    GLfloat ->
    IO ( () )
type FuntypeProgramUniform1fv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniform1d =
    GLuint ->
    GLint ->
    GLdouble ->
    IO ( () )
type FuntypeProgramUniform1dv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniform1ui =
    GLuint ->
    GLint ->
    GLuint ->
    IO ( () )
type FuntypeProgramUniform1uiv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeProgramUniform2i =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeProgramUniform2iv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform2f =
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeProgramUniform2fv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniform2d =
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeProgramUniform2dv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniform2ui =
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeProgramUniform2uiv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeProgramUniform3i =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeProgramUniform3iv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform3f =
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeProgramUniform3fv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniform3d =
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeProgramUniform3dv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniform3ui =
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeProgramUniform3uiv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeProgramUniform4i =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    IO ( () )
type FuntypeProgramUniform4iv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLint) ->
    IO ( () )
type FuntypeProgramUniform4f =
    GLuint ->
    GLint ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    GLfloat ->
    IO ( () )
type FuntypeProgramUniform4fv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniform4d =
    GLuint ->
    GLint ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    GLdouble ->
    IO ( () )
type FuntypeProgramUniform4dv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniform4ui =
    GLuint ->
    GLint ->
    GLuint ->
    GLuint ->
    GLuint ->
    GLuint ->
    IO ( () )
type FuntypeProgramUniform4uiv =
    GLuint ->
    GLint ->
    GLsizei ->
    Ptr (GLuint) ->
    IO ( () )
type FuntypeProgramUniformMatrix2fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix3fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix4fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix2dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix3dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix4dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix2x3fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix3x2fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix2x4fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix4x2fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix3x4fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix4x3fv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLfloat) ->
    IO ( () )
type FuntypeProgramUniformMatrix2x3dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix3x2dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix2x4dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix4x2dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix3x4dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeProgramUniformMatrix4x3dv =
    GLuint ->
    GLint ->
    GLsizei ->
    GLboolean ->
    Ptr (GLdouble) ->
    IO ( () )
type FuntypeValidateProgramPipeline =
    GLuint ->
    IO ( () )
type FuntypeGetProgramPipelineInfoLog =
    GLuint ->
    GLsizei ->
    Ptr (GLsizei) ->
    Ptr (GLchar) ->
    IO ( () )
type FuntypeInvalidateTexSubImage =
    GLuint ->
    GLint ->
    GLint ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    GLsizei ->
    IO ( () )
type FuntypeInvalidateTexImage =
    GLuint ->
    GLint ->
    IO ( () )
type FuntypeInvalidateBufferSubData =
    GLuint ->
    GLintptr ->
    GLsizeiptr ->
    IO ( () )
type FuntypeInvalidateBufferData =
    GLuint ->
    IO ( () )
type FuntypeInvalidateFramebuffer =
    GLenum ->
    GLsizei ->
    Ptr (GLenum) ->
    IO ( () )
type FuntypeInvalidateSubFramebuffer =
    GLenum ->
    GLsizei ->
    Ptr (GLenum) ->
    GLint ->
    GLint ->
    GLsizei ->
    GLsizei ->
    IO ( () )

