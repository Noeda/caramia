-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.VertexShader (
	-- * Extension Support
	  gl_ARB_vertex_shader

	-- * GL_ARB_vertex_shader
	, glBindAttribLocationARB
	, glDisableVertexAttribArrayARB
	, glEnableVertexAttribArrayARB
	, glGetActiveAttribARB
	, glGetAttribLocationARB
	, glGetVertexAttribPointervARB
	, glGetVertexAttribdvARB
	, glGetVertexAttribfvARB
	, glGetVertexAttribivARB
	, glVertexAttrib1dARB
	, glVertexAttrib1dvARB
	, glVertexAttrib1fARB
	, glVertexAttrib1fvARB
	, glVertexAttrib1sARB
	, glVertexAttrib1svARB
	, glVertexAttrib2dARB
	, glVertexAttrib2dvARB
	, glVertexAttrib2fARB
	, glVertexAttrib2fvARB
	, glVertexAttrib2sARB
	, glVertexAttrib2svARB
	, glVertexAttrib3dARB
	, glVertexAttrib3dvARB
	, glVertexAttrib3fARB
	, glVertexAttrib3fvARB
	, glVertexAttrib3sARB
	, glVertexAttrib3svARB
	, glVertexAttrib4NbvARB
	, glVertexAttrib4NivARB
	, glVertexAttrib4NsvARB
	, glVertexAttrib4NubARB
	, glVertexAttrib4NubvARB
	, glVertexAttrib4NuivARB
	, glVertexAttrib4NusvARB
	, glVertexAttrib4bvARB
	, glVertexAttrib4dARB
	, glVertexAttrib4dvARB
	, glVertexAttrib4fARB
	, glVertexAttrib4fvARB
	, glVertexAttrib4ivARB
	, glVertexAttrib4sARB
	, glVertexAttrib4svARB
	, glVertexAttrib4ubvARB
	, glVertexAttrib4uivARB
	, glVertexAttrib4usvARB
	, glVertexAttribPointerARB
	, gl_CURRENT_VERTEX_ATTRIB_ARB
	, gl_FLOAT
	, gl_FLOAT_MAT2_ARB
	, gl_FLOAT_MAT3_ARB
	, gl_FLOAT_MAT4_ARB
	, gl_FLOAT_VEC2_ARB
	, gl_FLOAT_VEC3_ARB
	, gl_FLOAT_VEC4_ARB
	, gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB
	, gl_MAX_TEXTURE_COORDS_ARB
	, gl_MAX_TEXTURE_IMAGE_UNITS_ARB
	, gl_MAX_VARYING_FLOATS_ARB
	, gl_MAX_VERTEX_ATTRIBS_ARB
	, gl_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
	, gl_MAX_VERTEX_UNIFORM_COMPONENTS_ARB
	, gl_OBJECT_ACTIVE_ATTRIBUTES_ARB
	, gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB
	, gl_VERTEX_ATTRIB_ARRAY_ENABLED_ARB
	, gl_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB
	, gl_VERTEX_ATTRIB_ARRAY_POINTER_ARB
	, gl_VERTEX_ATTRIB_ARRAY_SIZE_ARB
	, gl_VERTEX_ATTRIB_ARRAY_STRIDE_ARB
	, gl_VERTEX_ATTRIB_ARRAY_TYPE_ARB
	, gl_VERTEX_PROGRAM_POINT_SIZE_ARB
	, gl_VERTEX_PROGRAM_TWO_SIDE_ARB
	, gl_VERTEX_SHADER_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_vertex_shader :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_vertex_shader = extGL 218

glBindAttribLocationARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLuint -> Ptr GLcharARB -> m ()
glBindAttribLocationARB v0 v1 v2 = funGL 746 >>= \f -> liftIO $ f v0 v1 v2

glGetActiveAttribARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLint -> Ptr GLenum -> Ptr GLcharARB -> m ()
glGetActiveAttribARB v0 v1 v2 v3 v4 v5 v6 = funGL 747 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glGetAttribLocationARB :: (MonadIO m, MonadReader e m, HasScope e) => GLhandleARB -> Ptr GLcharARB -> m GLint
glGetAttribLocationARB v0 v1 = funGL 748 >>= \f -> liftIO $ f v0 v1

gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB :: GLenum
gl_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB = 0x8B4D

gl_MAX_VARYING_FLOATS_ARB :: GLenum
gl_MAX_VARYING_FLOATS_ARB = 0x8B4B

gl_MAX_VERTEX_UNIFORM_COMPONENTS_ARB :: GLenum
gl_MAX_VERTEX_UNIFORM_COMPONENTS_ARB = 0x8B4A

gl_OBJECT_ACTIVE_ATTRIBUTES_ARB :: GLenum
gl_OBJECT_ACTIVE_ATTRIBUTES_ARB = 0x8B89

gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB :: GLenum
gl_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB = 0x8B8A

gl_VERTEX_SHADER_ARB :: GLenum
gl_VERTEX_SHADER_ARB = 0x8B31