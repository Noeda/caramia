-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ShaderObjects (
	-- * Extension Support
	  gl_ARB_shader_objects

	-- * GL_ARB_shader_objects
	, glAttachObjectARB
	, glCompileShaderARB
	, glCreateProgramObjectARB
	, glCreateShaderObjectARB
	, glDeleteObjectARB
	, glDetachObjectARB
	, glGetActiveUniformARB
	, glGetAttachedObjectsARB
	, glGetHandleARB
	, glGetInfoLogARB
	, glGetObjectParameterfvARB
	, glGetObjectParameterivARB
	, glGetShaderSourceARB
	, glGetUniformLocationARB
	, glGetUniformfvARB
	, glGetUniformivARB
	, glLinkProgramARB
	, glShaderSourceARB
	, glUniform1fARB
	, glUniform1fvARB
	, glUniform1iARB
	, glUniform1ivARB
	, glUniform2fARB
	, glUniform2fvARB
	, glUniform2iARB
	, glUniform2ivARB
	, glUniform3fARB
	, glUniform3fvARB
	, glUniform3iARB
	, glUniform3ivARB
	, glUniform4fARB
	, glUniform4fvARB
	, glUniform4iARB
	, glUniform4ivARB
	, glUniformMatrix2fvARB
	, glUniformMatrix3fvARB
	, glUniformMatrix4fvARB
	, glUseProgramObjectARB
	, glValidateProgramARB
	, gl_BOOL_ARB
	, gl_BOOL_VEC2_ARB
	, gl_BOOL_VEC3_ARB
	, gl_BOOL_VEC4_ARB
	, gl_FLOAT_MAT2_ARB
	, gl_FLOAT_MAT3_ARB
	, gl_FLOAT_MAT4_ARB
	, gl_FLOAT_VEC2_ARB
	, gl_FLOAT_VEC3_ARB
	, gl_FLOAT_VEC4_ARB
	, gl_INT_VEC2_ARB
	, gl_INT_VEC3_ARB
	, gl_INT_VEC4_ARB
	, gl_OBJECT_ACTIVE_UNIFORMS_ARB
	, gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB
	, gl_OBJECT_ATTACHED_OBJECTS_ARB
	, gl_OBJECT_COMPILE_STATUS_ARB
	, gl_OBJECT_DELETE_STATUS_ARB
	, gl_OBJECT_INFO_LOG_LENGTH_ARB
	, gl_OBJECT_LINK_STATUS_ARB
	, gl_OBJECT_SHADER_SOURCE_LENGTH_ARB
	, gl_OBJECT_SUBTYPE_ARB
	, gl_OBJECT_TYPE_ARB
	, gl_OBJECT_VALIDATE_STATUS_ARB
	, gl_PROGRAM_OBJECT_ARB
	, gl_SAMPLER_1D_ARB
	, gl_SAMPLER_1D_SHADOW_ARB
	, gl_SAMPLER_2D_ARB
	, gl_SAMPLER_2D_RECT_ARB
	, gl_SAMPLER_2D_RECT_SHADOW_ARB
	, gl_SAMPLER_2D_SHADOW_ARB
	, gl_SAMPLER_3D_ARB
	, gl_SAMPLER_CUBE_ARB
	, gl_SHADER_OBJECT_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_shader_objects :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_shader_objects = extGL 156

glAttachObjectARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLhandleARB -> m ()
glAttachObjectARB v0 v1 = funGL 548 >>= \f -> liftIO $ f v0 v1

glCompileShaderARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> m ()
glCompileShaderARB v0 = funGL 549 >>= \f -> liftIO $ f v0

glCreateProgramObjectARB :: (MonadIO m, MonadReader e m, HasScope e) => m GLhandleARB
glCreateProgramObjectARB = funGL 550 >>= \f -> liftIO $ f

glCreateShaderObjectARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLhandleARB
glCreateShaderObjectARB v0 = funGL 551 >>= \f -> liftIO $ f v0

glDeleteObjectARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> m ()
glDeleteObjectARB v0 = funGL 552 >>= \f -> liftIO $ f v0

glDetachObjectARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLhandleARB -> m ()
glDetachObjectARB v0 v1 = funGL 553 >>= \f -> liftIO $ f v0 v1

glGetActiveUniformARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLcharARB -> m ()
glGetActiveUniformARB v0 v1 v2 v3 v4 v5 v6 = funGL 554 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glGetAttachedObjectsARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLsizei -> Ptr GLsizei -> Ptr GLhandleARB -> m ()
glGetAttachedObjectsARB v0 v1 v2 v3 = funGL 555 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetHandleARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLhandleARB
glGetHandleARB v0 = funGL 556 >>= \f -> liftIO $ f v0

glGetInfoLogARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLsizei -> Ptr GLsizei -> Ptr GLcharARB -> m ()
glGetInfoLogARB v0 v1 v2 v3 = funGL 557 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetObjectParameterfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLenum -> Ptr GLfloat -> m ()
glGetObjectParameterfvARB v0 v1 v2 = funGL 558 >>= \f -> liftIO $ f v0 v1 v2

glGetObjectParameterivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLenum -> Ptr GLint -> m ()
glGetObjectParameterivARB v0 v1 v2 = funGL 559 >>= \f -> liftIO $ f v0 v1 v2

glGetShaderSourceARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLsizei -> Ptr GLsizei -> Ptr GLcharARB -> m ()
glGetShaderSourceARB v0 v1 v2 v3 = funGL 560 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetUniformLocationARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> Ptr GLcharARB -> m GLint
glGetUniformLocationARB v0 v1 = funGL 561 >>= \f -> liftIO $ f v0 v1

glGetUniformfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLint -> Ptr GLfloat -> m ()
glGetUniformfvARB v0 v1 v2 = funGL 562 >>= \f -> liftIO $ f v0 v1 v2

glGetUniformivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLint -> Ptr GLint -> m ()
glGetUniformivARB v0 v1 v2 = funGL 563 >>= \f -> liftIO $ f v0 v1 v2

glLinkProgramARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> m ()
glLinkProgramARB v0 = funGL 564 >>= \f -> liftIO $ f v0

glShaderSourceARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLsizei -> Ptr GLcharARB -> Ptr GLint -> m ()
glShaderSourceARB v0 v1 v2 v3 = funGL 565 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform1fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> m ()
glUniform1fARB v0 v1 = funGL 566 >>= \f -> liftIO $ f v0 v1

glUniform1fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLfloat -> m ()
glUniform1fvARB v0 v1 v2 = funGL 567 >>= \f -> liftIO $ f v0 v1 v2

glUniform1iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> m ()
glUniform1iARB v0 v1 = funGL 568 >>= \f -> liftIO $ f v0 v1

glUniform1ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint -> m ()
glUniform1ivARB v0 v1 v2 = funGL 569 >>= \f -> liftIO $ f v0 v1 v2

glUniform2fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> GLfloat -> m ()
glUniform2fARB v0 v1 v2 = funGL 570 >>= \f -> liftIO $ f v0 v1 v2

glUniform2fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLfloat -> m ()
glUniform2fvARB v0 v1 v2 = funGL 571 >>= \f -> liftIO $ f v0 v1 v2

glUniform2iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glUniform2iARB v0 v1 v2 = funGL 572 >>= \f -> liftIO $ f v0 v1 v2

glUniform2ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint -> m ()
glUniform2ivARB v0 v1 v2 = funGL 573 >>= \f -> liftIO $ f v0 v1 v2

glUniform3fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> GLfloat -> GLfloat -> m ()
glUniform3fARB v0 v1 v2 v3 = funGL 574 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLfloat -> m ()
glUniform3fvARB v0 v1 v2 = funGL 575 >>= \f -> liftIO $ f v0 v1 v2

glUniform3iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> m ()
glUniform3iARB v0 v1 v2 v3 = funGL 576 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniform3ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint -> m ()
glUniform3ivARB v0 v1 v2 = funGL 577 >>= \f -> liftIO $ f v0 v1 v2

glUniform4fARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glUniform4fARB v0 v1 v2 v3 v4 = funGL 578 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLfloat -> m ()
glUniform4fvARB v0 v1 v2 = funGL 579 >>= \f -> liftIO $ f v0 v1 v2

glUniform4iARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> GLint -> GLint -> m ()
glUniform4iARB v0 v1 v2 v3 v4 = funGL 580 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glUniform4ivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> Ptr GLint -> m ()
glUniform4ivARB v0 v1 v2 = funGL 581 >>= \f -> liftIO $ f v0 v1 v2

glUniformMatrix2fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix2fvARB v0 v1 v2 v3 = funGL 582 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix3fvARB v0 v1 v2 v3 = funGL 583 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4fvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix4fvARB v0 v1 v2 v3 = funGL 584 >>= \f -> liftIO $ f v0 v1 v2 v3

glUseProgramObjectARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> m ()
glUseProgramObjectARB v0 = funGL 585 >>= \f -> liftIO $ f v0

glValidateProgramARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> m ()
glValidateProgramARB v0 = funGL 586 >>= \f -> liftIO $ f v0

gl_BOOL_ARB :: GLenum
gl_BOOL_ARB = 0x8B56

gl_BOOL_VEC2_ARB :: GLenum
gl_BOOL_VEC2_ARB = 0x8B57

gl_BOOL_VEC3_ARB :: GLenum
gl_BOOL_VEC3_ARB = 0x8B58

gl_BOOL_VEC4_ARB :: GLenum
gl_BOOL_VEC4_ARB = 0x8B59

gl_INT_VEC2_ARB :: GLenum
gl_INT_VEC2_ARB = 0x8B53

gl_INT_VEC3_ARB :: GLenum
gl_INT_VEC3_ARB = 0x8B54

gl_INT_VEC4_ARB :: GLenum
gl_INT_VEC4_ARB = 0x8B55

gl_OBJECT_ACTIVE_UNIFORMS_ARB :: GLenum
gl_OBJECT_ACTIVE_UNIFORMS_ARB = 0x8B86

gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB :: GLenum
gl_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB = 0x8B87

gl_OBJECT_ATTACHED_OBJECTS_ARB :: GLenum
gl_OBJECT_ATTACHED_OBJECTS_ARB = 0x8B85

gl_OBJECT_COMPILE_STATUS_ARB :: GLenum
gl_OBJECT_COMPILE_STATUS_ARB = 0x8B81

gl_OBJECT_DELETE_STATUS_ARB :: GLenum
gl_OBJECT_DELETE_STATUS_ARB = 0x8B80

gl_OBJECT_INFO_LOG_LENGTH_ARB :: GLenum
gl_OBJECT_INFO_LOG_LENGTH_ARB = 0x8B84

gl_OBJECT_LINK_STATUS_ARB :: GLenum
gl_OBJECT_LINK_STATUS_ARB = 0x8B82

gl_OBJECT_SHADER_SOURCE_LENGTH_ARB :: GLenum
gl_OBJECT_SHADER_SOURCE_LENGTH_ARB = 0x8B88

gl_OBJECT_SUBTYPE_ARB :: GLenum
gl_OBJECT_SUBTYPE_ARB = 0x8B4F

gl_OBJECT_TYPE_ARB :: GLenum
gl_OBJECT_TYPE_ARB = 0x8B4E

gl_OBJECT_VALIDATE_STATUS_ARB :: GLenum
gl_OBJECT_VALIDATE_STATUS_ARB = 0x8B83

gl_PROGRAM_OBJECT_ARB :: GLenum
gl_PROGRAM_OBJECT_ARB = 0x8B40

gl_SAMPLER_1D_ARB :: GLenum
gl_SAMPLER_1D_ARB = 0x8B5D

gl_SAMPLER_1D_SHADOW_ARB :: GLenum
gl_SAMPLER_1D_SHADOW_ARB = 0x8B61

gl_SAMPLER_2D_ARB :: GLenum
gl_SAMPLER_2D_ARB = 0x8B5E

gl_SAMPLER_2D_RECT_ARB :: GLenum
gl_SAMPLER_2D_RECT_ARB = 0x8B63

gl_SAMPLER_2D_RECT_SHADOW_ARB :: GLenum
gl_SAMPLER_2D_RECT_SHADOW_ARB = 0x8B64

gl_SAMPLER_2D_SHADOW_ARB :: GLenum
gl_SAMPLER_2D_SHADOW_ARB = 0x8B62

gl_SAMPLER_3D_ARB :: GLenum
gl_SAMPLER_3D_ARB = 0x8B5F

gl_SAMPLER_CUBE_ARB :: GLenum
gl_SAMPLER_CUBE_ARB = 0x8B60

gl_SHADER_OBJECT_ARB :: GLenum
gl_SHADER_OBJECT_ARB = 0x8B48