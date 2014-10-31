-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DirectStateAccess (
	-- * Extension Support
	  gl_EXT_direct_state_access

	-- * GL_EXT_direct_state_access
	, glBindMultiTextureEXT
	, glCheckNamedFramebufferStatusEXT
	, glClearNamedBufferDataEXT
	, glClearNamedBufferSubDataEXT
	, glClientAttribDefaultEXT
	, glCompressedMultiTexImage1DEXT
	, glCompressedMultiTexImage2DEXT
	, glCompressedMultiTexImage3DEXT
	, glCompressedMultiTexSubImage1DEXT
	, glCompressedMultiTexSubImage2DEXT
	, glCompressedMultiTexSubImage3DEXT
	, glCompressedTextureImage1DEXT
	, glCompressedTextureImage2DEXT
	, glCompressedTextureImage3DEXT
	, glCompressedTextureSubImage1DEXT
	, glCompressedTextureSubImage2DEXT
	, glCompressedTextureSubImage3DEXT
	, glCopyMultiTexImage1DEXT
	, glCopyMultiTexImage2DEXT
	, glCopyMultiTexSubImage1DEXT
	, glCopyMultiTexSubImage2DEXT
	, glCopyMultiTexSubImage3DEXT
	, glCopyTextureImage1DEXT
	, glCopyTextureImage2DEXT
	, glCopyTextureSubImage1DEXT
	, glCopyTextureSubImage2DEXT
	, glCopyTextureSubImage3DEXT
	, glDisableClientStateIndexedEXT
	, glDisableClientStateiEXT
	, glDisableIndexedEXT
	, glDisableVertexArrayAttribEXT
	, glDisableVertexArrayEXT
	, glEnableClientStateIndexedEXT
	, glEnableClientStateiEXT
	, glEnableIndexedEXT
	, glEnableVertexArrayAttribEXT
	, glEnableVertexArrayEXT
	, glFlushMappedNamedBufferRangeEXT
	, glFramebufferDrawBufferEXT
	, glFramebufferDrawBuffersEXT
	, glFramebufferReadBufferEXT
	, glGenerateMultiTexMipmapEXT
	, glGenerateTextureMipmapEXT
	, glGetBooleanIndexedvEXT
	, glGetCompressedMultiTexImageEXT
	, glGetCompressedTextureImageEXT
	, glGetDoubleIndexedvEXT
	, glGetDoublei_vEXT
	, glGetFloatIndexedvEXT
	, glGetFloati_vEXT
	, glGetFramebufferParameterivEXT
	, glGetIntegerIndexedvEXT
	, glGetMultiTexEnvfvEXT
	, glGetMultiTexEnvivEXT
	, glGetMultiTexGendvEXT
	, glGetMultiTexGenfvEXT
	, glGetMultiTexGenivEXT
	, glGetMultiTexImageEXT
	, glGetMultiTexLevelParameterfvEXT
	, glGetMultiTexLevelParameterivEXT
	, glGetMultiTexParameterIivEXT
	, glGetMultiTexParameterIuivEXT
	, glGetMultiTexParameterfvEXT
	, glGetMultiTexParameterivEXT
	, glGetNamedBufferParameterivEXT
	, glGetNamedBufferPointervEXT
	, glGetNamedBufferSubDataEXT
	, glGetNamedFramebufferAttachmentParameterivEXT
	, glGetNamedFramebufferParameterivEXT
	, glGetNamedProgramLocalParameterIivEXT
	, glGetNamedProgramLocalParameterIuivEXT
	, glGetNamedProgramLocalParameterdvEXT
	, glGetNamedProgramLocalParameterfvEXT
	, glGetNamedProgramStringEXT
	, glGetNamedProgramivEXT
	, glGetNamedRenderbufferParameterivEXT
	, glGetPointerIndexedvEXT
	, glGetPointeri_vEXT
	, glGetTextureImageEXT
	, glGetTextureLevelParameterfvEXT
	, glGetTextureLevelParameterivEXT
	, glGetTextureParameterIivEXT
	, glGetTextureParameterIuivEXT
	, glGetTextureParameterfvEXT
	, glGetTextureParameterivEXT
	, glGetVertexArrayIntegeri_vEXT
	, glGetVertexArrayIntegervEXT
	, glGetVertexArrayPointeri_vEXT
	, glGetVertexArrayPointervEXT
	, glIsEnabledIndexedEXT
	, glMapNamedBufferEXT
	, glMapNamedBufferRangeEXT
	, glMatrixFrustumEXT
	, glMatrixLoadIdentityEXT
	, glMatrixLoadTransposedEXT
	, glMatrixLoadTransposefEXT
	, glMatrixLoaddEXT
	, glMatrixLoadfEXT
	, glMatrixMultTransposedEXT
	, glMatrixMultTransposefEXT
	, glMatrixMultdEXT
	, glMatrixMultfEXT
	, glMatrixOrthoEXT
	, glMatrixPopEXT
	, glMatrixPushEXT
	, glMatrixRotatedEXT
	, glMatrixRotatefEXT
	, glMatrixScaledEXT
	, glMatrixScalefEXT
	, glMatrixTranslatedEXT
	, glMatrixTranslatefEXT
	, glMultiTexBufferEXT
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
	, glMultiTexImage1DEXT
	, glMultiTexImage2DEXT
	, glMultiTexImage3DEXT
	, glMultiTexParameterIivEXT
	, glMultiTexParameterIuivEXT
	, glMultiTexParameterfEXT
	, glMultiTexParameterfvEXT
	, glMultiTexParameteriEXT
	, glMultiTexParameterivEXT
	, glMultiTexRenderbufferEXT
	, glMultiTexSubImage1DEXT
	, glMultiTexSubImage2DEXT
	, glMultiTexSubImage3DEXT
	, glNamedBufferDataEXT
	, glNamedBufferStorageEXT
	, glNamedBufferSubDataEXT
	, glNamedCopyBufferSubDataEXT
	, glNamedFramebufferParameteriEXT
	, glNamedFramebufferRenderbufferEXT
	, glNamedFramebufferTexture1DEXT
	, glNamedFramebufferTexture2DEXT
	, glNamedFramebufferTexture3DEXT
	, glNamedFramebufferTextureEXT
	, glNamedFramebufferTextureFaceEXT
	, glNamedFramebufferTextureLayerEXT
	, glNamedProgramLocalParameter4dEXT
	, glNamedProgramLocalParameter4dvEXT
	, glNamedProgramLocalParameter4fEXT
	, glNamedProgramLocalParameter4fvEXT
	, glNamedProgramLocalParameterI4iEXT
	, glNamedProgramLocalParameterI4ivEXT
	, glNamedProgramLocalParameterI4uiEXT
	, glNamedProgramLocalParameterI4uivEXT
	, glNamedProgramLocalParameters4fvEXT
	, glNamedProgramLocalParametersI4ivEXT
	, glNamedProgramLocalParametersI4uivEXT
	, glNamedProgramStringEXT
	, glNamedRenderbufferStorageEXT
	, glNamedRenderbufferStorageMultisampleCoverageEXT
	, glNamedRenderbufferStorageMultisampleEXT
	, glProgramUniform1dEXT
	, glProgramUniform1dvEXT
	, glProgramUniform1fEXT
	, glProgramUniform1fvEXT
	, glProgramUniform1iEXT
	, glProgramUniform1ivEXT
	, glProgramUniform1uiEXT
	, glProgramUniform1uivEXT
	, glProgramUniform2dEXT
	, glProgramUniform2dvEXT
	, glProgramUniform2fEXT
	, glProgramUniform2fvEXT
	, glProgramUniform2iEXT
	, glProgramUniform2ivEXT
	, glProgramUniform2uiEXT
	, glProgramUniform2uivEXT
	, glProgramUniform3dEXT
	, glProgramUniform3dvEXT
	, glProgramUniform3fEXT
	, glProgramUniform3fvEXT
	, glProgramUniform3iEXT
	, glProgramUniform3ivEXT
	, glProgramUniform3uiEXT
	, glProgramUniform3uivEXT
	, glProgramUniform4dEXT
	, glProgramUniform4dvEXT
	, glProgramUniform4fEXT
	, glProgramUniform4fvEXT
	, glProgramUniform4iEXT
	, glProgramUniform4ivEXT
	, glProgramUniform4uiEXT
	, glProgramUniform4uivEXT
	, glProgramUniformMatrix2dvEXT
	, glProgramUniformMatrix2fvEXT
	, glProgramUniformMatrix2x3dvEXT
	, glProgramUniformMatrix2x3fvEXT
	, glProgramUniformMatrix2x4dvEXT
	, glProgramUniformMatrix2x4fvEXT
	, glProgramUniformMatrix3dvEXT
	, glProgramUniformMatrix3fvEXT
	, glProgramUniformMatrix3x2dvEXT
	, glProgramUniformMatrix3x2fvEXT
	, glProgramUniformMatrix3x4dvEXT
	, glProgramUniformMatrix3x4fvEXT
	, glProgramUniformMatrix4dvEXT
	, glProgramUniformMatrix4fvEXT
	, glProgramUniformMatrix4x2dvEXT
	, glProgramUniformMatrix4x2fvEXT
	, glProgramUniformMatrix4x3dvEXT
	, glProgramUniformMatrix4x3fvEXT
	, glPushClientAttribDefaultEXT
	, glTextureBufferEXT
	, glTextureBufferRangeEXT
	, glTextureImage1DEXT
	, glTextureImage2DEXT
	, glTextureImage3DEXT
	, glTexturePageCommitmentEXT
	, glTextureParameterIivEXT
	, glTextureParameterIuivEXT
	, glTextureParameterfEXT
	, glTextureParameterfvEXT
	, glTextureParameteriEXT
	, glTextureParameterivEXT
	, glTextureRenderbufferEXT
	, glTextureStorage1DEXT
	, glTextureStorage2DEXT
	, glTextureStorage2DMultisampleEXT
	, glTextureStorage3DEXT
	, glTextureStorage3DMultisampleEXT
	, glTextureSubImage1DEXT
	, glTextureSubImage2DEXT
	, glTextureSubImage3DEXT
	, glUnmapNamedBufferEXT
	, glVertexArrayBindVertexBufferEXT
	, glVertexArrayColorOffsetEXT
	, glVertexArrayEdgeFlagOffsetEXT
	, glVertexArrayFogCoordOffsetEXT
	, glVertexArrayIndexOffsetEXT
	, glVertexArrayMultiTexCoordOffsetEXT
	, glVertexArrayNormalOffsetEXT
	, glVertexArraySecondaryColorOffsetEXT
	, glVertexArrayTexCoordOffsetEXT
	, glVertexArrayVertexAttribBindingEXT
	, glVertexArrayVertexAttribDivisorEXT
	, glVertexArrayVertexAttribFormatEXT
	, glVertexArrayVertexAttribIFormatEXT
	, glVertexArrayVertexAttribIOffsetEXT
	, glVertexArrayVertexAttribLFormatEXT
	, glVertexArrayVertexAttribLOffsetEXT
	, glVertexArrayVertexAttribOffsetEXT
	, glVertexArrayVertexBindingDivisorEXT
	, glVertexArrayVertexOffsetEXT
	, gl_PROGRAM_MATRIX_EXT
	, gl_PROGRAM_MATRIX_STACK_DEPTH_EXT
	, gl_TRANSPOSE_PROGRAM_MATRIX_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_direct_state_access :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_direct_state_access = extGL 269

glBindMultiTextureEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glBindMultiTextureEXT v0 v1 v2 = funGL 961 >>= \f -> liftIO $ f v0 v1 v2

glCheckNamedFramebufferStatusEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m GLenum
glCheckNamedFramebufferStatusEXT v0 v1 = funGL 962 >>= \f -> liftIO $ f v0 v1

glClearNamedBufferDataEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLenum -> Ptr () -> m ()
glClearNamedBufferDataEXT v0 v1 v2 v3 v4 = funGL 963 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glClearNamedBufferSubDataEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizeiptr -> GLsizeiptr -> GLenum -> GLenum -> Ptr () -> m ()
glClearNamedBufferSubDataEXT v0 v1 v2 v3 v4 v5 v6 = funGL 964 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glClientAttribDefaultEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glClientAttribDefaultEXT v0 = funGL 965 >>= \f -> liftIO $ f v0

glCompressedMultiTexImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedMultiTexImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 966 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCompressedMultiTexImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedMultiTexImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 967 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCompressedMultiTexImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedMultiTexImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 968 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glCompressedMultiTexSubImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedMultiTexSubImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 969 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCompressedMultiTexSubImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedMultiTexSubImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 970 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glCompressedMultiTexSubImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedMultiTexSubImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = funGL 971 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

glCompressedTextureImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTextureImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 972 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCompressedTextureImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTextureImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 973 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCompressedTextureImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLsizei -> Ptr () -> m ()
glCompressedTextureImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 974 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glCompressedTextureSubImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTextureSubImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 975 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCompressedTextureSubImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTextureSubImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 976 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glCompressedTextureSubImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLsizei -> Ptr () -> m ()
glCompressedTextureSubImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = funGL 977 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

glCopyMultiTexImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> m ()
glCopyMultiTexImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 978 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCopyMultiTexImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> m ()
glCopyMultiTexImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 979 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCopyMultiTexSubImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> m ()
glCopyMultiTexSubImage1DEXT v0 v1 v2 v3 v4 v5 v6 = funGL 980 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCopyMultiTexSubImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyMultiTexSubImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 981 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCopyMultiTexSubImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyMultiTexSubImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 982 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glCopyTextureImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> m ()
glCopyTextureImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 983 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glCopyTextureImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> m ()
glCopyTextureImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 984 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCopyTextureSubImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> m ()
glCopyTextureSubImage1DEXT v0 v1 v2 v3 v4 v5 v6 = funGL 985 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCopyTextureSubImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTextureSubImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 986 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glCopyTextureSubImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
glCopyTextureSubImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 987 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glDisableClientStateIndexedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glDisableClientStateIndexedEXT v0 v1 = funGL 988 >>= \f -> liftIO $ f v0 v1

glDisableClientStateiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glDisableClientStateiEXT v0 v1 = funGL 989 >>= \f -> liftIO $ f v0 v1

glDisableVertexArrayAttribEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glDisableVertexArrayAttribEXT v0 v1 = funGL 991 >>= \f -> liftIO $ f v0 v1

glDisableVertexArrayEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glDisableVertexArrayEXT v0 v1 = funGL 992 >>= \f -> liftIO $ f v0 v1

glEnableClientStateIndexedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glEnableClientStateIndexedEXT v0 v1 = funGL 993 >>= \f -> liftIO $ f v0 v1

glEnableClientStateiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glEnableClientStateiEXT v0 v1 = funGL 994 >>= \f -> liftIO $ f v0 v1

glEnableVertexArrayAttribEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glEnableVertexArrayAttribEXT v0 v1 = funGL 996 >>= \f -> liftIO $ f v0 v1

glEnableVertexArrayEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glEnableVertexArrayEXT v0 v1 = funGL 997 >>= \f -> liftIO $ f v0 v1

glFlushMappedNamedBufferRangeEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizeiptr -> m ()
glFlushMappedNamedBufferRangeEXT v0 v1 v2 = funGL 998 >>= \f -> liftIO $ f v0 v1 v2

glFramebufferDrawBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glFramebufferDrawBufferEXT v0 v1 = funGL 999 >>= \f -> liftIO $ f v0 v1

glFramebufferDrawBuffersEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLenum -> m ()
glFramebufferDrawBuffersEXT v0 v1 v2 = funGL 1000 >>= \f -> liftIO $ f v0 v1 v2

glFramebufferReadBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glFramebufferReadBufferEXT v0 v1 = funGL 1001 >>= \f -> liftIO $ f v0 v1

glGenerateMultiTexMipmapEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glGenerateMultiTexMipmapEXT v0 v1 = funGL 1002 >>= \f -> liftIO $ f v0 v1

glGenerateTextureMipmapEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glGenerateTextureMipmapEXT v0 v1 = funGL 1003 >>= \f -> liftIO $ f v0 v1

glGetCompressedMultiTexImageEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> Ptr () -> m ()
glGetCompressedMultiTexImageEXT v0 v1 v2 v3 = funGL 1005 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetCompressedTextureImageEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> Ptr () -> m ()
glGetCompressedTextureImageEXT v0 v1 v2 v3 = funGL 1006 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetDoubleIndexedvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLdouble -> m ()
glGetDoubleIndexedvEXT v0 v1 v2 = funGL 1007 >>= \f -> liftIO $ f v0 v1 v2

glGetDoublei_vEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLdouble -> m ()
glGetDoublei_vEXT v0 v1 v2 = funGL 1008 >>= \f -> liftIO $ f v0 v1 v2

glGetFloatIndexedvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glGetFloatIndexedvEXT v0 v1 v2 = funGL 1009 >>= \f -> liftIO $ f v0 v1 v2

glGetFloati_vEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glGetFloati_vEXT v0 v1 v2 = funGL 1010 >>= \f -> liftIO $ f v0 v1 v2

glGetFramebufferParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetFramebufferParameterivEXT v0 v1 v2 = funGL 1011 >>= \f -> liftIO $ f v0 v1 v2

glGetMultiTexEnvfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetMultiTexEnvfvEXT v0 v1 v2 v3 = funGL 1013 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMultiTexEnvivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetMultiTexEnvivEXT v0 v1 v2 v3 = funGL 1014 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMultiTexGendvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLdouble -> m ()
glGetMultiTexGendvEXT v0 v1 v2 v3 = funGL 1015 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMultiTexGenfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetMultiTexGenfvEXT v0 v1 v2 v3 = funGL 1016 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMultiTexGenivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetMultiTexGenivEXT v0 v1 v2 v3 = funGL 1017 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMultiTexImageEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glGetMultiTexImageEXT v0 v1 v2 v3 v4 v5 = funGL 1018 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetMultiTexLevelParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> m ()
glGetMultiTexLevelParameterfvEXT v0 v1 v2 v3 v4 = funGL 1019 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetMultiTexLevelParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLenum -> Ptr GLint -> m ()
glGetMultiTexLevelParameterivEXT v0 v1 v2 v3 v4 = funGL 1020 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetMultiTexParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetMultiTexParameterIivEXT v0 v1 v2 v3 = funGL 1021 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMultiTexParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLuint -> m ()
glGetMultiTexParameterIuivEXT v0 v1 v2 v3 = funGL 1022 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMultiTexParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetMultiTexParameterfvEXT v0 v1 v2 v3 = funGL 1023 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMultiTexParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetMultiTexParameterivEXT v0 v1 v2 v3 = funGL 1024 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedBufferParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetNamedBufferParameterivEXT v0 v1 v2 = funGL 1025 >>= \f -> liftIO $ f v0 v1 v2

glGetNamedBufferPointervEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glGetNamedBufferPointervEXT v0 v1 v2 = funGL 1026 >>= \f -> liftIO $ f v0 v1 v2

glGetNamedBufferSubDataEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizeiptr -> Ptr () -> m ()
glGetNamedBufferSubDataEXT v0 v1 v2 v3 = funGL 1027 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedFramebufferAttachmentParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetNamedFramebufferAttachmentParameterivEXT v0 v1 v2 v3 = funGL 1028 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedFramebufferParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetNamedFramebufferParameterivEXT v0 v1 v2 = funGL 1029 >>= \f -> liftIO $ f v0 v1 v2

glGetNamedProgramLocalParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLint -> m ()
glGetNamedProgramLocalParameterIivEXT v0 v1 v2 v3 = funGL 1030 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedProgramLocalParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLuint -> m ()
glGetNamedProgramLocalParameterIuivEXT v0 v1 v2 v3 = funGL 1031 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedProgramLocalParameterdvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLdouble -> m ()
glGetNamedProgramLocalParameterdvEXT v0 v1 v2 v3 = funGL 1032 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedProgramLocalParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLfloat -> m ()
glGetNamedProgramLocalParameterfvEXT v0 v1 v2 v3 = funGL 1033 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedProgramStringEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr () -> m ()
glGetNamedProgramStringEXT v0 v1 v2 v3 = funGL 1034 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedProgramivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetNamedProgramivEXT v0 v1 v2 v3 = funGL 1035 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetNamedRenderbufferParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetNamedRenderbufferParameterivEXT v0 v1 v2 = funGL 1036 >>= \f -> liftIO $ f v0 v1 v2

glGetPointerIndexedvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr () -> m ()
glGetPointerIndexedvEXT v0 v1 v2 = funGL 1037 >>= \f -> liftIO $ f v0 v1 v2

glGetPointeri_vEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr () -> m ()
glGetPointeri_vEXT v0 v1 v2 = funGL 1038 >>= \f -> liftIO $ f v0 v1 v2

glGetTextureImageEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glGetTextureImageEXT v0 v1 v2 v3 v4 v5 = funGL 1039 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetTextureLevelParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> Ptr GLfloat -> m ()
glGetTextureLevelParameterfvEXT v0 v1 v2 v3 v4 = funGL 1040 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetTextureLevelParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLenum -> Ptr GLint -> m ()
glGetTextureLevelParameterivEXT v0 v1 v2 v3 v4 = funGL 1041 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetTextureParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetTextureParameterIivEXT v0 v1 v2 v3 = funGL 1042 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTextureParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLuint -> m ()
glGetTextureParameterIuivEXT v0 v1 v2 v3 = funGL 1043 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTextureParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetTextureParameterfvEXT v0 v1 v2 v3 = funGL 1044 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTextureParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetTextureParameterivEXT v0 v1 v2 v3 = funGL 1045 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVertexArrayIntegeri_vEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexArrayIntegeri_vEXT v0 v1 v2 v3 = funGL 1046 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVertexArrayIntegervEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexArrayIntegervEXT v0 v1 v2 = funGL 1047 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexArrayPointeri_vEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr () -> m ()
glGetVertexArrayPointeri_vEXT v0 v1 v2 v3 = funGL 1048 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVertexArrayPointervEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glGetVertexArrayPointervEXT v0 v1 v2 = funGL 1049 >>= \f -> liftIO $ f v0 v1 v2

glMapNamedBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m (Ptr ())
glMapNamedBufferEXT v0 v1 = funGL 1051 >>= \f -> liftIO $ f v0 v1

glMapNamedBufferRangeEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizeiptr -> GLbitfield -> m (Ptr ())
glMapNamedBufferRangeEXT v0 v1 v2 v3 = funGL 1052 >>= \f -> liftIO $ f v0 v1 v2 v3

glMatrixFrustumEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glMatrixFrustumEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1053 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glMatrixLoadIdentityEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glMatrixLoadIdentityEXT v0 = funGL 1054 >>= \f -> liftIO $ f v0

glMatrixLoadTransposedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMatrixLoadTransposedEXT v0 v1 = funGL 1055 >>= \f -> liftIO $ f v0 v1

glMatrixLoadTransposefEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixLoadTransposefEXT v0 v1 = funGL 1056 >>= \f -> liftIO $ f v0 v1

glMatrixLoaddEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMatrixLoaddEXT v0 v1 = funGL 1057 >>= \f -> liftIO $ f v0 v1

glMatrixLoadfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixLoadfEXT v0 v1 = funGL 1058 >>= \f -> liftIO $ f v0 v1

glMatrixMultTransposedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMatrixMultTransposedEXT v0 v1 = funGL 1059 >>= \f -> liftIO $ f v0 v1

glMatrixMultTransposefEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixMultTransposefEXT v0 v1 = funGL 1060 >>= \f -> liftIO $ f v0 v1

glMatrixMultdEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glMatrixMultdEXT v0 v1 = funGL 1061 >>= \f -> liftIO $ f v0 v1

glMatrixMultfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixMultfEXT v0 v1 = funGL 1062 >>= \f -> liftIO $ f v0 v1

glMatrixOrthoEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glMatrixOrthoEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1063 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glMatrixPopEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glMatrixPopEXT v0 = funGL 1064 >>= \f -> liftIO $ f v0

glMatrixPushEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glMatrixPushEXT v0 = funGL 1065 >>= \f -> liftIO $ f v0

glMatrixRotatedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glMatrixRotatedEXT v0 v1 v2 v3 v4 = funGL 1066 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMatrixRotatefEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glMatrixRotatefEXT v0 v1 v2 v3 v4 = funGL 1067 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMatrixScaledEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> m ()
glMatrixScaledEXT v0 v1 v2 v3 = funGL 1068 >>= \f -> liftIO $ f v0 v1 v2 v3

glMatrixScalefEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> m ()
glMatrixScalefEXT v0 v1 v2 v3 = funGL 1069 >>= \f -> liftIO $ f v0 v1 v2 v3

glMatrixTranslatedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> m ()
glMatrixTranslatedEXT v0 v1 v2 v3 = funGL 1070 >>= \f -> liftIO $ f v0 v1 v2 v3

glMatrixTranslatefEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> m ()
glMatrixTranslatefEXT v0 v1 v2 v3 = funGL 1071 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> m ()
glMultiTexBufferEXT v0 v1 v2 v3 = funGL 1072 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoordPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glMultiTexCoordPointerEXT v0 v1 v2 v3 v4 = funGL 1073 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexEnvfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLfloat -> m ()
glMultiTexEnvfEXT v0 v1 v2 v3 = funGL 1074 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexEnvfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glMultiTexEnvfvEXT v0 v1 v2 v3 = funGL 1075 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexEnviEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLint -> m ()
glMultiTexEnviEXT v0 v1 v2 v3 = funGL 1076 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexEnvivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glMultiTexEnvivEXT v0 v1 v2 v3 = funGL 1077 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexGendEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLdouble -> m ()
glMultiTexGendEXT v0 v1 v2 v3 = funGL 1078 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexGendvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLdouble -> m ()
glMultiTexGendvEXT v0 v1 v2 v3 = funGL 1079 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexGenfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLfloat -> m ()
glMultiTexGenfEXT v0 v1 v2 v3 = funGL 1080 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexGenfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glMultiTexGenfvEXT v0 v1 v2 v3 = funGL 1081 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexGeniEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLint -> m ()
glMultiTexGeniEXT v0 v1 v2 v3 = funGL 1082 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexGenivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glMultiTexGenivEXT v0 v1 v2 v3 = funGL 1083 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glMultiTexImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1084 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glMultiTexImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glMultiTexImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1085 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glMultiTexImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glMultiTexImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 1086 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glMultiTexParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glMultiTexParameterIivEXT v0 v1 v2 v3 = funGL 1087 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLuint -> m ()
glMultiTexParameterIuivEXT v0 v1 v2 v3 = funGL 1088 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexParameterfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLfloat -> m ()
glMultiTexParameterfEXT v0 v1 v2 v3 = funGL 1089 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glMultiTexParameterfvEXT v0 v1 v2 v3 = funGL 1090 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexParameteriEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLint -> m ()
glMultiTexParameteriEXT v0 v1 v2 v3 = funGL 1091 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glMultiTexParameterivEXT v0 v1 v2 v3 = funGL 1092 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexRenderbufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> m ()
glMultiTexRenderbufferEXT v0 v1 v2 = funGL 1093 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexSubImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glMultiTexSubImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1094 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glMultiTexSubImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glMultiTexSubImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1095 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glMultiTexSubImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glMultiTexSubImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = funGL 1096 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

glNamedBufferDataEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizeiptr -> Ptr () -> GLenum -> m ()
glNamedBufferDataEXT v0 v1 v2 v3 = funGL 1097 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedBufferStorageEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizeiptr -> Ptr () -> GLbitfield -> m ()
glNamedBufferStorageEXT v0 v1 v2 v3 = funGL 1098 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedBufferSubDataEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizeiptr -> Ptr () -> m ()
glNamedBufferSubDataEXT v0 v1 v2 v3 = funGL 1099 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedCopyBufferSubDataEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLintptr -> GLintptr -> GLsizeiptr -> m ()
glNamedCopyBufferSubDataEXT v0 v1 v2 v3 v4 = funGL 1100 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedFramebufferParameteriEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glNamedFramebufferParameteriEXT v0 v1 v2 = funGL 1101 >>= \f -> liftIO $ f v0 v1 v2

glNamedFramebufferRenderbufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLuint -> m ()
glNamedFramebufferRenderbufferEXT v0 v1 v2 v3 = funGL 1102 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedFramebufferTexture1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLuint -> GLint -> m ()
glNamedFramebufferTexture1DEXT v0 v1 v2 v3 v4 = funGL 1103 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedFramebufferTexture2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLuint -> GLint -> m ()
glNamedFramebufferTexture2DEXT v0 v1 v2 v3 v4 = funGL 1104 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedFramebufferTexture3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> m ()
glNamedFramebufferTexture3DEXT v0 v1 v2 v3 v4 v5 = funGL 1105 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glNamedFramebufferTextureEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLint -> m ()
glNamedFramebufferTextureEXT v0 v1 v2 v3 = funGL 1106 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedFramebufferTextureFaceEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLint -> GLenum -> m ()
glNamedFramebufferTextureFaceEXT v0 v1 v2 v3 v4 = funGL 1107 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedFramebufferTextureLayerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLint -> GLint -> m ()
glNamedFramebufferTextureLayerEXT v0 v1 v2 v3 v4 = funGL 1108 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedProgramLocalParameter4dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glNamedProgramLocalParameter4dEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1109 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glNamedProgramLocalParameter4dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLdouble -> m ()
glNamedProgramLocalParameter4dvEXT v0 v1 v2 v3 = funGL 1110 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedProgramLocalParameter4fEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glNamedProgramLocalParameter4fEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1111 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glNamedProgramLocalParameter4fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLfloat -> m ()
glNamedProgramLocalParameter4fvEXT v0 v1 v2 v3 = funGL 1112 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedProgramLocalParameterI4iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
glNamedProgramLocalParameterI4iEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1113 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glNamedProgramLocalParameterI4ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLint -> m ()
glNamedProgramLocalParameterI4ivEXT v0 v1 v2 v3 = funGL 1114 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedProgramLocalParameterI4uiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glNamedProgramLocalParameterI4uiEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1115 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glNamedProgramLocalParameterI4uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr GLuint -> m ()
glNamedProgramLocalParameterI4uivEXT v0 v1 v2 v3 = funGL 1116 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedProgramLocalParameters4fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> m ()
glNamedProgramLocalParameters4fvEXT v0 v1 v2 v3 v4 = funGL 1117 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedProgramLocalParametersI4ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLint -> m ()
glNamedProgramLocalParametersI4ivEXT v0 v1 v2 v3 v4 = funGL 1118 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedProgramLocalParametersI4uivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLuint -> m ()
glNamedProgramLocalParametersI4uivEXT v0 v1 v2 v3 v4 = funGL 1119 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedProgramStringEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glNamedProgramStringEXT v0 v1 v2 v3 v4 = funGL 1120 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNamedRenderbufferStorageEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLsizei -> m ()
glNamedRenderbufferStorageEXT v0 v1 v2 v3 = funGL 1121 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedRenderbufferStorageMultisampleCoverageEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glNamedRenderbufferStorageMultisampleCoverageEXT v0 v1 v2 v3 v4 v5 = funGL 1122 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glNamedRenderbufferStorageMultisampleEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
glNamedRenderbufferStorageMultisampleEXT v0 v1 v2 v3 v4 = funGL 1123 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform1dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLdouble -> m ()
glProgramUniform1dEXT v0 v1 v2 = funGL 1124 >>= \f -> liftIO $ f v0 v1 v2

glProgramUniform1dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glProgramUniform1dvEXT v0 v1 v2 v3 = funGL 1125 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLdouble -> GLdouble -> m ()
glProgramUniform2dEXT v0 v1 v2 v3 = funGL 1132 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform2dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glProgramUniform2dvEXT v0 v1 v2 v3 = funGL 1133 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform3dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> m ()
glProgramUniform3dEXT v0 v1 v2 v3 v4 = funGL 1140 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniform3dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glProgramUniform3dvEXT v0 v1 v2 v3 = funGL 1141 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniform4dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glProgramUniform4dEXT v0 v1 v2 v3 v4 v5 = funGL 1148 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramUniform4dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glProgramUniform4dvEXT v0 v1 v2 v3 = funGL 1149 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramUniformMatrix2dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix2dvEXT v0 v1 v2 v3 v4 = funGL 1156 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2x3dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix2x3dvEXT v0 v1 v2 v3 v4 = funGL 1158 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix2x4dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix2x4dvEXT v0 v1 v2 v3 v4 = funGL 1160 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix3dvEXT v0 v1 v2 v3 v4 = funGL 1162 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3x2dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix3x2dvEXT v0 v1 v2 v3 v4 = funGL 1164 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix3x4dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix3x4dvEXT v0 v1 v2 v3 v4 = funGL 1166 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix4dvEXT v0 v1 v2 v3 v4 = funGL 1168 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4x2dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix4x2dvEXT v0 v1 v2 v3 v4 = funGL 1170 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramUniformMatrix4x3dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> GLboolean -> Ptr GLdouble -> m ()
glProgramUniformMatrix4x3dvEXT v0 v1 v2 v3 v4 = funGL 1172 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glPushClientAttribDefaultEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glPushClientAttribDefaultEXT v0 = funGL 1174 >>= \f -> liftIO $ f v0

glTextureBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLuint -> m ()
glTextureBufferEXT v0 v1 v2 v3 = funGL 1175 >>= \f -> liftIO $ f v0 v1 v2 v3

glTextureBufferRangeEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLuint -> GLintptr -> GLsizeiptr -> m ()
glTextureBufferRangeEXT v0 v1 v2 v3 v4 v5 = funGL 1176 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glTextureImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTextureImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1177 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glTextureImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTextureImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1178 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glTextureImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> Ptr () -> m ()
glTextureImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 1179 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glTexturePageCommitmentEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexturePageCommitmentEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1180 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glTextureParameterIivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glTextureParameterIivEXT v0 v1 v2 v3 = funGL 1181 >>= \f -> liftIO $ f v0 v1 v2 v3

glTextureParameterIuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLuint -> m ()
glTextureParameterIuivEXT v0 v1 v2 v3 = funGL 1182 >>= \f -> liftIO $ f v0 v1 v2 v3

glTextureParameterfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLfloat -> m ()
glTextureParameterfEXT v0 v1 v2 v3 = funGL 1183 >>= \f -> liftIO $ f v0 v1 v2 v3

glTextureParameterfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glTextureParameterfvEXT v0 v1 v2 v3 = funGL 1184 >>= \f -> liftIO $ f v0 v1 v2 v3

glTextureParameteriEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLint -> m ()
glTextureParameteriEXT v0 v1 v2 v3 = funGL 1185 >>= \f -> liftIO $ f v0 v1 v2 v3

glTextureParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> Ptr GLint -> m ()
glTextureParameterivEXT v0 v1 v2 v3 = funGL 1186 >>= \f -> liftIO $ f v0 v1 v2 v3

glTextureRenderbufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> m ()
glTextureRenderbufferEXT v0 v1 v2 = funGL 1187 >>= \f -> liftIO $ f v0 v1 v2

glTextureStorage2DMultisampleEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLboolean -> m ()
glTextureStorage2DMultisampleEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1190 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTextureStorage3DMultisampleEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTextureStorage3DMultisampleEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1192 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glTextureSubImage1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTextureSubImage1DEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1193 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glTextureSubImage2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTextureSubImage2DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1194 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glTextureSubImage3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr () -> m ()
glTextureSubImage3DEXT v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = funGL 1195 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

glUnmapNamedBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glUnmapNamedBufferEXT v0 = funGL 1196 >>= \f -> liftIO $ f v0

glVertexArrayBindVertexBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLintptr -> GLsizei -> m ()
glVertexArrayBindVertexBufferEXT v0 v1 v2 v3 v4 = funGL 1197 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArrayColorOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayColorOffsetEXT v0 v1 v2 v3 v4 v5 = funGL 1198 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glVertexArrayEdgeFlagOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLsizei -> GLintptr -> m ()
glVertexArrayEdgeFlagOffsetEXT v0 v1 v2 v3 = funGL 1199 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexArrayFogCoordOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayFogCoordOffsetEXT v0 v1 v2 v3 v4 = funGL 1200 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArrayIndexOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayIndexOffsetEXT v0 v1 v2 v3 v4 = funGL 1201 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArrayMultiTexCoordOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayMultiTexCoordOffsetEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1202 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glVertexArrayNormalOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayNormalOffsetEXT v0 v1 v2 v3 v4 = funGL 1203 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArraySecondaryColorOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArraySecondaryColorOffsetEXT v0 v1 v2 v3 v4 v5 = funGL 1204 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glVertexArrayTexCoordOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayTexCoordOffsetEXT v0 v1 v2 v3 v4 v5 = funGL 1205 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glVertexArrayVertexAttribBindingEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glVertexArrayVertexAttribBindingEXT v0 v1 v2 = funGL 1206 >>= \f -> liftIO $ f v0 v1 v2

glVertexArrayVertexAttribDivisorEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glVertexArrayVertexAttribDivisorEXT v0 v1 v2 = funGL 1207 >>= \f -> liftIO $ f v0 v1 v2

glVertexArrayVertexAttribFormatEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLboolean -> GLuint -> m ()
glVertexArrayVertexAttribFormatEXT v0 v1 v2 v3 v4 v5 = funGL 1208 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glVertexArrayVertexAttribIFormatEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLuint -> m ()
glVertexArrayVertexAttribIFormatEXT v0 v1 v2 v3 v4 = funGL 1209 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArrayVertexAttribIOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayVertexAttribIOffsetEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1210 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glVertexArrayVertexAttribLFormatEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLuint -> m ()
glVertexArrayVertexAttribLFormatEXT v0 v1 v2 v3 v4 = funGL 1211 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexArrayVertexAttribLOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayVertexAttribLOffsetEXT v0 v1 v2 v3 v4 v5 v6 = funGL 1212 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glVertexArrayVertexAttribOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> m ()
glVertexArrayVertexAttribOffsetEXT v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1213 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glVertexArrayVertexBindingDivisorEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glVertexArrayVertexBindingDivisorEXT v0 v1 v2 = funGL 1214 >>= \f -> liftIO $ f v0 v1 v2

glVertexArrayVertexOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
glVertexArrayVertexOffsetEXT v0 v1 v2 v3 v4 v5 = funGL 1215 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_PROGRAM_MATRIX_EXT :: GLenum
gl_PROGRAM_MATRIX_EXT = 0x8E2D

gl_PROGRAM_MATRIX_STACK_DEPTH_EXT :: GLenum
gl_PROGRAM_MATRIX_STACK_DEPTH_EXT = 0x8E2F

gl_TRANSPOSE_PROGRAM_MATRIX_EXT :: GLenum
gl_TRANSPOSE_PROGRAM_MATRIX_EXT = 0x8E2E