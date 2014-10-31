-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.VertexProgram (
	-- * Extension Support
	  gl_NV_vertex_program

	-- * GL_NV_vertex_program
	, glAreProgramsResidentNV
	, glBindProgramNV
	, glDeleteProgramsNV
	, glExecuteProgramNV
	, glGenProgramsNV
	, glGetProgramParameterdvNV
	, glGetProgramParameterfvNV
	, glGetProgramStringNV
	, glGetProgramivNV
	, glGetTrackMatrixivNV
	, glGetVertexAttribPointervNV
	, glGetVertexAttribdvNV
	, glGetVertexAttribfvNV
	, glGetVertexAttribivNV
	, glIsProgramNV
	, glLoadProgramNV
	, glProgramParameter4dNV
	, glProgramParameter4dvNV
	, glProgramParameter4fNV
	, glProgramParameter4fvNV
	, glProgramParameters4dvNV
	, glProgramParameters4fvNV
	, glRequestResidentProgramsNV
	, glTrackMatrixNV
	, glVertexAttrib1dNV
	, glVertexAttrib1dvNV
	, glVertexAttrib1fNV
	, glVertexAttrib1fvNV
	, glVertexAttrib1sNV
	, glVertexAttrib1svNV
	, glVertexAttrib2dNV
	, glVertexAttrib2dvNV
	, glVertexAttrib2fNV
	, glVertexAttrib2fvNV
	, glVertexAttrib2sNV
	, glVertexAttrib2svNV
	, glVertexAttrib3dNV
	, glVertexAttrib3dvNV
	, glVertexAttrib3fNV
	, glVertexAttrib3fvNV
	, glVertexAttrib3sNV
	, glVertexAttrib3svNV
	, glVertexAttrib4dNV
	, glVertexAttrib4dvNV
	, glVertexAttrib4fNV
	, glVertexAttrib4fvNV
	, glVertexAttrib4sNV
	, glVertexAttrib4svNV
	, glVertexAttrib4ubNV
	, glVertexAttrib4ubvNV
	, glVertexAttribPointerNV
	, glVertexAttribs1dvNV
	, glVertexAttribs1fvNV
	, glVertexAttribs1svNV
	, glVertexAttribs2dvNV
	, glVertexAttribs2fvNV
	, glVertexAttribs2svNV
	, glVertexAttribs3dvNV
	, glVertexAttribs3fvNV
	, glVertexAttribs3svNV
	, glVertexAttribs4dvNV
	, glVertexAttribs4fvNV
	, glVertexAttribs4svNV
	, glVertexAttribs4ubvNV
	, gl_ATTRIB_ARRAY_POINTER_NV
	, gl_ATTRIB_ARRAY_SIZE_NV
	, gl_ATTRIB_ARRAY_STRIDE_NV
	, gl_ATTRIB_ARRAY_TYPE_NV
	, gl_CURRENT_ATTRIB_NV
	, gl_CURRENT_MATRIX_NV
	, gl_CURRENT_MATRIX_STACK_DEPTH_NV
	, gl_IDENTITY_NV
	, gl_INVERSE_NV
	, gl_INVERSE_TRANSPOSE_NV
	, gl_MAP1_VERTEX_ATTRIB0_4_NV
	, gl_MAP1_VERTEX_ATTRIB10_4_NV
	, gl_MAP1_VERTEX_ATTRIB11_4_NV
	, gl_MAP1_VERTEX_ATTRIB12_4_NV
	, gl_MAP1_VERTEX_ATTRIB13_4_NV
	, gl_MAP1_VERTEX_ATTRIB14_4_NV
	, gl_MAP1_VERTEX_ATTRIB15_4_NV
	, gl_MAP1_VERTEX_ATTRIB1_4_NV
	, gl_MAP1_VERTEX_ATTRIB2_4_NV
	, gl_MAP1_VERTEX_ATTRIB3_4_NV
	, gl_MAP1_VERTEX_ATTRIB4_4_NV
	, gl_MAP1_VERTEX_ATTRIB5_4_NV
	, gl_MAP1_VERTEX_ATTRIB6_4_NV
	, gl_MAP1_VERTEX_ATTRIB7_4_NV
	, gl_MAP1_VERTEX_ATTRIB8_4_NV
	, gl_MAP1_VERTEX_ATTRIB9_4_NV
	, gl_MAP2_VERTEX_ATTRIB0_4_NV
	, gl_MAP2_VERTEX_ATTRIB10_4_NV
	, gl_MAP2_VERTEX_ATTRIB11_4_NV
	, gl_MAP2_VERTEX_ATTRIB12_4_NV
	, gl_MAP2_VERTEX_ATTRIB13_4_NV
	, gl_MAP2_VERTEX_ATTRIB14_4_NV
	, gl_MAP2_VERTEX_ATTRIB15_4_NV
	, gl_MAP2_VERTEX_ATTRIB1_4_NV
	, gl_MAP2_VERTEX_ATTRIB2_4_NV
	, gl_MAP2_VERTEX_ATTRIB3_4_NV
	, gl_MAP2_VERTEX_ATTRIB4_4_NV
	, gl_MAP2_VERTEX_ATTRIB5_4_NV
	, gl_MAP2_VERTEX_ATTRIB6_4_NV
	, gl_MAP2_VERTEX_ATTRIB7_4_NV
	, gl_MAP2_VERTEX_ATTRIB8_4_NV
	, gl_MAP2_VERTEX_ATTRIB9_4_NV
	, gl_MATRIX0_NV
	, gl_MATRIX1_NV
	, gl_MATRIX2_NV
	, gl_MATRIX3_NV
	, gl_MATRIX4_NV
	, gl_MATRIX5_NV
	, gl_MATRIX6_NV
	, gl_MATRIX7_NV
	, gl_MAX_TRACK_MATRICES_NV
	, gl_MAX_TRACK_MATRIX_STACK_DEPTH_NV
	, gl_MODELVIEW_PROJECTION_NV
	, gl_PROGRAM_ERROR_POSITION_NV
	, gl_PROGRAM_LENGTH_NV
	, gl_PROGRAM_PARAMETER_NV
	, gl_PROGRAM_RESIDENT_NV
	, gl_PROGRAM_STRING_NV
	, gl_PROGRAM_TARGET_NV
	, gl_TRACK_MATRIX_NV
	, gl_TRACK_MATRIX_TRANSFORM_NV
	, gl_TRANSPOSE_NV
	, gl_VERTEX_ATTRIB_ARRAY0_NV
	, gl_VERTEX_ATTRIB_ARRAY10_NV
	, gl_VERTEX_ATTRIB_ARRAY11_NV
	, gl_VERTEX_ATTRIB_ARRAY12_NV
	, gl_VERTEX_ATTRIB_ARRAY13_NV
	, gl_VERTEX_ATTRIB_ARRAY14_NV
	, gl_VERTEX_ATTRIB_ARRAY15_NV
	, gl_VERTEX_ATTRIB_ARRAY1_NV
	, gl_VERTEX_ATTRIB_ARRAY2_NV
	, gl_VERTEX_ATTRIB_ARRAY3_NV
	, gl_VERTEX_ATTRIB_ARRAY4_NV
	, gl_VERTEX_ATTRIB_ARRAY5_NV
	, gl_VERTEX_ATTRIB_ARRAY6_NV
	, gl_VERTEX_ATTRIB_ARRAY7_NV
	, gl_VERTEX_ATTRIB_ARRAY8_NV
	, gl_VERTEX_ATTRIB_ARRAY9_NV
	, gl_VERTEX_PROGRAM_BINDING_NV
	, gl_VERTEX_PROGRAM_NV
	, gl_VERTEX_PROGRAM_POINT_SIZE_NV
	, gl_VERTEX_PROGRAM_TWO_SIDE_NV
	, gl_VERTEX_STATE_PROGRAM_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_vertex_program :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_vertex_program = extGL 535

glAreProgramsResidentNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> Ptr GLboolean -> m GLboolean
glAreProgramsResidentNV v0 v1 v2 = funGL 1887 >>= \f -> liftIO $ f v0 v1 v2

glBindProgramNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindProgramNV v0 v1 = funGL 1888 >>= \f -> liftIO $ f v0 v1

glDeleteProgramsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteProgramsNV v0 v1 = funGL 1889 >>= \f -> liftIO $ f v0 v1

glExecuteProgramNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glExecuteProgramNV v0 v1 v2 = funGL 1890 >>= \f -> liftIO $ f v0 v1 v2

glGenProgramsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenProgramsNV v0 v1 = funGL 1891 >>= \f -> liftIO $ f v0 v1

glGetProgramParameterdvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> Ptr GLdouble -> m ()
glGetProgramParameterdvNV v0 v1 v2 v3 = funGL 1892 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetProgramParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetProgramParameterfvNV v0 v1 v2 v3 = funGL 1893 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetProgramStringNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLubyte -> m ()
glGetProgramStringNV v0 v1 v2 = funGL 1894 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetProgramivNV v0 v1 v2 = funGL 1895 >>= \f -> liftIO $ f v0 v1 v2

glGetTrackMatrixivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetTrackMatrixivNV v0 v1 v2 v3 = funGL 1896 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetVertexAttribPointervNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glGetVertexAttribPointervNV v0 v1 v2 = funGL 1897 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribdvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLdouble -> m ()
glGetVertexAttribdvNV v0 v1 v2 = funGL 1898 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetVertexAttribfvNV v0 v1 v2 = funGL 1899 >>= \f -> liftIO $ f v0 v1 v2

glGetVertexAttribivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVertexAttribivNV v0 v1 v2 = funGL 1900 >>= \f -> liftIO $ f v0 v1 v2

glIsProgramNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsProgramNV v0 = funGL 1901 >>= \f -> liftIO $ f v0

glLoadProgramNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLubyte -> m ()
glLoadProgramNV v0 v1 v2 v3 = funGL 1902 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramParameter4dNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glProgramParameter4dNV v0 v1 v2 v3 v4 v5 = funGL 1903 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramParameter4dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLdouble -> m ()
glProgramParameter4dvNV v0 v1 v2 = funGL 1904 >>= \f -> liftIO $ f v0 v1 v2

glProgramParameter4fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glProgramParameter4fNV v0 v1 v2 v3 v4 v5 = funGL 1905 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glProgramParameter4fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glProgramParameter4fvNV v0 v1 v2 = funGL 1906 >>= \f -> liftIO $ f v0 v1 v2

glProgramParameters4dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLdouble -> m ()
glProgramParameters4dvNV v0 v1 v2 v3 = funGL 1907 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramParameters4fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> m ()
glProgramParameters4fvNV v0 v1 v2 v3 = funGL 1908 >>= \f -> liftIO $ f v0 v1 v2 v3

glRequestResidentProgramsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glRequestResidentProgramsNV v0 v1 = funGL 1909 >>= \f -> liftIO $ f v0 v1

glTrackMatrixNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> GLenum -> m ()
glTrackMatrixNV v0 v1 v2 v3 = funGL 1910 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib1dNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> m ()
glVertexAttrib1dNV v0 v1 = funGL 1911 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib1dvNV v0 v1 = funGL 1912 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> m ()
glVertexAttrib1fNV v0 v1 = funGL 1913 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib1fvNV v0 v1 = funGL 1914 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1sNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> m ()
glVertexAttrib1sNV v0 v1 = funGL 1915 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1svNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib1svNV v0 v1 = funGL 1916 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2dNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> m ()
glVertexAttrib2dNV v0 v1 v2 = funGL 1917 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib2dvNV v0 v1 = funGL 1918 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> m ()
glVertexAttrib2fNV v0 v1 v2 = funGL 1919 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib2fvNV v0 v1 = funGL 1920 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2sNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> m ()
glVertexAttrib2sNV v0 v1 v2 = funGL 1921 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2svNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib2svNV v0 v1 = funGL 1922 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3dNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttrib3dNV v0 v1 v2 v3 = funGL 1923 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib3dvNV v0 v1 = funGL 1924 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertexAttrib3fNV v0 v1 v2 v3 = funGL 1925 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib3fvNV v0 v1 = funGL 1926 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3sNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> GLshort -> m ()
glVertexAttrib3sNV v0 v1 v2 v3 = funGL 1927 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3svNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib3svNV v0 v1 = funGL 1928 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4dNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexAttrib4dNV v0 v1 v2 v3 v4 = funGL 1929 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVertexAttrib4dvNV v0 v1 = funGL 1930 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertexAttrib4fNV v0 v1 v2 v3 v4 = funGL 1931 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVertexAttrib4fvNV v0 v1 = funGL 1932 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4sNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLshort -> GLshort -> GLshort -> GLshort -> m ()
glVertexAttrib4sNV v0 v1 v2 v3 v4 = funGL 1933 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4svNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVertexAttrib4svNV v0 v1 = funGL 1934 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4ubNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> m ()
glVertexAttrib4ubNV v0 v1 v2 v3 v4 = funGL 1935 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4ubvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glVertexAttrib4ubvNV v0 v1 = funGL 1936 >>= \f -> liftIO $ f v0 v1

glVertexAttribPointerNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glVertexAttribPointerNV v0 v1 v2 v3 v4 = funGL 1937 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribs1dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLdouble -> m ()
glVertexAttribs1dvNV v0 v1 v2 = funGL 1938 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs1fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLfloat -> m ()
glVertexAttribs1fvNV v0 v1 v2 = funGL 1939 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs1svNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLshort -> m ()
glVertexAttribs1svNV v0 v1 v2 = funGL 1940 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs2dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLdouble -> m ()
glVertexAttribs2dvNV v0 v1 v2 = funGL 1941 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs2fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLfloat -> m ()
glVertexAttribs2fvNV v0 v1 v2 = funGL 1942 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs2svNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLshort -> m ()
glVertexAttribs2svNV v0 v1 v2 = funGL 1943 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs3dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLdouble -> m ()
glVertexAttribs3dvNV v0 v1 v2 = funGL 1944 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs3fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLfloat -> m ()
glVertexAttribs3fvNV v0 v1 v2 = funGL 1945 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs3svNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLshort -> m ()
glVertexAttribs3svNV v0 v1 v2 = funGL 1946 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs4dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLdouble -> m ()
glVertexAttribs4dvNV v0 v1 v2 = funGL 1947 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs4fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLfloat -> m ()
glVertexAttribs4fvNV v0 v1 v2 = funGL 1948 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs4svNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLshort -> m ()
glVertexAttribs4svNV v0 v1 v2 = funGL 1949 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs4ubvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLubyte -> m ()
glVertexAttribs4ubvNV v0 v1 v2 = funGL 1950 >>= \f -> liftIO $ f v0 v1 v2

gl_ATTRIB_ARRAY_POINTER_NV :: GLenum
gl_ATTRIB_ARRAY_POINTER_NV = 0x8645

gl_ATTRIB_ARRAY_SIZE_NV :: GLenum
gl_ATTRIB_ARRAY_SIZE_NV = 0x8623

gl_ATTRIB_ARRAY_STRIDE_NV :: GLenum
gl_ATTRIB_ARRAY_STRIDE_NV = 0x8624

gl_ATTRIB_ARRAY_TYPE_NV :: GLenum
gl_ATTRIB_ARRAY_TYPE_NV = 0x8625

gl_CURRENT_ATTRIB_NV :: GLenum
gl_CURRENT_ATTRIB_NV = 0x8626

gl_CURRENT_MATRIX_NV :: GLenum
gl_CURRENT_MATRIX_NV = 0x8641

gl_CURRENT_MATRIX_STACK_DEPTH_NV :: GLenum
gl_CURRENT_MATRIX_STACK_DEPTH_NV = 0x8640

gl_IDENTITY_NV :: GLenum
gl_IDENTITY_NV = 0x862A

gl_INVERSE_NV :: GLenum
gl_INVERSE_NV = 0x862B

gl_INVERSE_TRANSPOSE_NV :: GLenum
gl_INVERSE_TRANSPOSE_NV = 0x862D

gl_MAP1_VERTEX_ATTRIB0_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB0_4_NV = 0x8660

gl_MAP1_VERTEX_ATTRIB10_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB10_4_NV = 0x866A

gl_MAP1_VERTEX_ATTRIB11_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB11_4_NV = 0x866B

gl_MAP1_VERTEX_ATTRIB12_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB12_4_NV = 0x866C

gl_MAP1_VERTEX_ATTRIB13_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB13_4_NV = 0x866D

gl_MAP1_VERTEX_ATTRIB14_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB14_4_NV = 0x866E

gl_MAP1_VERTEX_ATTRIB15_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB15_4_NV = 0x866F

gl_MAP1_VERTEX_ATTRIB1_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB1_4_NV = 0x8661

gl_MAP1_VERTEX_ATTRIB2_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB2_4_NV = 0x8662

gl_MAP1_VERTEX_ATTRIB3_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB3_4_NV = 0x8663

gl_MAP1_VERTEX_ATTRIB4_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB4_4_NV = 0x8664

gl_MAP1_VERTEX_ATTRIB5_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB5_4_NV = 0x8665

gl_MAP1_VERTEX_ATTRIB6_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB6_4_NV = 0x8666

gl_MAP1_VERTEX_ATTRIB7_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB7_4_NV = 0x8667

gl_MAP1_VERTEX_ATTRIB8_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB8_4_NV = 0x8668

gl_MAP1_VERTEX_ATTRIB9_4_NV :: GLenum
gl_MAP1_VERTEX_ATTRIB9_4_NV = 0x8669

gl_MAP2_VERTEX_ATTRIB0_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB0_4_NV = 0x8670

gl_MAP2_VERTEX_ATTRIB10_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB10_4_NV = 0x867A

gl_MAP2_VERTEX_ATTRIB11_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB11_4_NV = 0x867B

gl_MAP2_VERTEX_ATTRIB12_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB12_4_NV = 0x867C

gl_MAP2_VERTEX_ATTRIB13_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB13_4_NV = 0x867D

gl_MAP2_VERTEX_ATTRIB14_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB14_4_NV = 0x867E

gl_MAP2_VERTEX_ATTRIB15_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB15_4_NV = 0x867F

gl_MAP2_VERTEX_ATTRIB1_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB1_4_NV = 0x8671

gl_MAP2_VERTEX_ATTRIB2_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB2_4_NV = 0x8672

gl_MAP2_VERTEX_ATTRIB3_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB3_4_NV = 0x8673

gl_MAP2_VERTEX_ATTRIB4_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB4_4_NV = 0x8674

gl_MAP2_VERTEX_ATTRIB5_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB5_4_NV = 0x8675

gl_MAP2_VERTEX_ATTRIB6_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB6_4_NV = 0x8676

gl_MAP2_VERTEX_ATTRIB7_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB7_4_NV = 0x8677

gl_MAP2_VERTEX_ATTRIB8_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB8_4_NV = 0x8678

gl_MAP2_VERTEX_ATTRIB9_4_NV :: GLenum
gl_MAP2_VERTEX_ATTRIB9_4_NV = 0x8679

gl_MATRIX0_NV :: GLenum
gl_MATRIX0_NV = 0x8630

gl_MATRIX1_NV :: GLenum
gl_MATRIX1_NV = 0x8631

gl_MATRIX2_NV :: GLenum
gl_MATRIX2_NV = 0x8632

gl_MATRIX3_NV :: GLenum
gl_MATRIX3_NV = 0x8633

gl_MATRIX4_NV :: GLenum
gl_MATRIX4_NV = 0x8634

gl_MATRIX5_NV :: GLenum
gl_MATRIX5_NV = 0x8635

gl_MATRIX6_NV :: GLenum
gl_MATRIX6_NV = 0x8636

gl_MATRIX7_NV :: GLenum
gl_MATRIX7_NV = 0x8637

gl_MAX_TRACK_MATRICES_NV :: GLenum
gl_MAX_TRACK_MATRICES_NV = 0x862F

gl_MAX_TRACK_MATRIX_STACK_DEPTH_NV :: GLenum
gl_MAX_TRACK_MATRIX_STACK_DEPTH_NV = 0x862E

gl_MODELVIEW_PROJECTION_NV :: GLenum
gl_MODELVIEW_PROJECTION_NV = 0x8629

gl_PROGRAM_ERROR_POSITION_NV :: GLenum
gl_PROGRAM_ERROR_POSITION_NV = 0x864B

gl_PROGRAM_LENGTH_NV :: GLenum
gl_PROGRAM_LENGTH_NV = 0x8627

gl_PROGRAM_PARAMETER_NV :: GLenum
gl_PROGRAM_PARAMETER_NV = 0x8644

gl_PROGRAM_RESIDENT_NV :: GLenum
gl_PROGRAM_RESIDENT_NV = 0x8647

gl_PROGRAM_STRING_NV :: GLenum
gl_PROGRAM_STRING_NV = 0x8628

gl_PROGRAM_TARGET_NV :: GLenum
gl_PROGRAM_TARGET_NV = 0x8646

gl_TRACK_MATRIX_NV :: GLenum
gl_TRACK_MATRIX_NV = 0x8648

gl_TRACK_MATRIX_TRANSFORM_NV :: GLenum
gl_TRACK_MATRIX_TRANSFORM_NV = 0x8649

gl_TRANSPOSE_NV :: GLenum
gl_TRANSPOSE_NV = 0x862C

gl_VERTEX_ATTRIB_ARRAY0_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY0_NV = 0x8650

gl_VERTEX_ATTRIB_ARRAY10_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY10_NV = 0x865A

gl_VERTEX_ATTRIB_ARRAY11_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY11_NV = 0x865B

gl_VERTEX_ATTRIB_ARRAY12_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY12_NV = 0x865C

gl_VERTEX_ATTRIB_ARRAY13_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY13_NV = 0x865D

gl_VERTEX_ATTRIB_ARRAY14_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY14_NV = 0x865E

gl_VERTEX_ATTRIB_ARRAY15_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY15_NV = 0x865F

gl_VERTEX_ATTRIB_ARRAY1_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY1_NV = 0x8651

gl_VERTEX_ATTRIB_ARRAY2_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY2_NV = 0x8652

gl_VERTEX_ATTRIB_ARRAY3_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY3_NV = 0x8653

gl_VERTEX_ATTRIB_ARRAY4_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY4_NV = 0x8654

gl_VERTEX_ATTRIB_ARRAY5_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY5_NV = 0x8655

gl_VERTEX_ATTRIB_ARRAY6_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY6_NV = 0x8656

gl_VERTEX_ATTRIB_ARRAY7_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY7_NV = 0x8657

gl_VERTEX_ATTRIB_ARRAY8_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY8_NV = 0x8658

gl_VERTEX_ATTRIB_ARRAY9_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY9_NV = 0x8659

gl_VERTEX_PROGRAM_BINDING_NV :: GLenum
gl_VERTEX_PROGRAM_BINDING_NV = 0x864A

gl_VERTEX_PROGRAM_NV :: GLenum
gl_VERTEX_PROGRAM_NV = 0x8620

gl_VERTEX_PROGRAM_POINT_SIZE_NV :: GLenum
gl_VERTEX_PROGRAM_POINT_SIZE_NV = 0x8642

gl_VERTEX_PROGRAM_TWO_SIDE_NV :: GLenum
gl_VERTEX_PROGRAM_TWO_SIDE_NV = 0x8643

gl_VERTEX_STATE_PROGRAM_NV :: GLenum
gl_VERTEX_STATE_PROGRAM_NV = 0x8621