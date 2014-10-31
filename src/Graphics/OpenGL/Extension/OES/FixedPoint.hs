-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.FixedPoint (
	-- * Extension Support
	  gl_OES_fixed_point

	-- * GL_OES_fixed_point
	, glAccumxOES
	, glAlphaFuncxOES
	, glBitmapxOES
	, glBlendColorxOES
	, glClearAccumxOES
	, glClearColorxOES
	, glClearDepthxOES
	, glClipPlanexOES
	, glColor3xOES
	, glColor3xvOES
	, glColor4xOES
	, glColor4xvOES
	, glConvolutionParameterxOES
	, glConvolutionParameterxvOES
	, glDepthRangexOES
	, glEvalCoord1xOES
	, glEvalCoord1xvOES
	, glEvalCoord2xOES
	, glEvalCoord2xvOES
	, glFeedbackBufferxOES
	, glFogxOES
	, glFogxvOES
	, glFrustumxOES
	, glGetClipPlanexOES
	, glGetConvolutionParameterxvOES
	, glGetFixedvOES
	, glGetHistogramParameterxvOES
	, glGetLightxOES
	, glGetLightxvOES
	, glGetMapxvOES
	, glGetMaterialxOES
	, glGetMaterialxvOES
	, glGetPixelMapxv
	, glGetTexEnvxvOES
	, glGetTexGenxvOES
	, glGetTexLevelParameterxvOES
	, glGetTexParameterxvOES
	, glIndexxOES
	, glIndexxvOES
	, glLightModelxOES
	, glLightModelxvOES
	, glLightxOES
	, glLightxvOES
	, glLineWidthxOES
	, glLoadMatrixxOES
	, glLoadTransposeMatrixxOES
	, glMap1xOES
	, glMap2xOES
	, glMapGrid1xOES
	, glMapGrid2xOES
	, glMaterialxOES
	, glMaterialxvOES
	, glMultMatrixxOES
	, glMultTransposeMatrixxOES
	, glMultiTexCoord1xOES
	, glMultiTexCoord1xvOES
	, glMultiTexCoord2xOES
	, glMultiTexCoord2xvOES
	, glMultiTexCoord3xOES
	, glMultiTexCoord3xvOES
	, glMultiTexCoord4xOES
	, glMultiTexCoord4xvOES
	, glNormal3xOES
	, glNormal3xvOES
	, glOrthoxOES
	, glPassThroughxOES
	, glPixelMapx
	, glPixelStorex
	, glPixelTransferxOES
	, glPixelZoomxOES
	, glPointParameterxOES
	, glPointParameterxvOES
	, glPointSizexOES
	, glPolygonOffsetxOES
	, glPrioritizeTexturesxOES
	, glRasterPos2xOES
	, glRasterPos2xvOES
	, glRasterPos3xOES
	, glRasterPos3xvOES
	, glRasterPos4xOES
	, glRasterPos4xvOES
	, glRectxOES
	, glRectxvOES
	, glRotatexOES
	, glSampleCoverageOES
	, glSampleCoveragexOES
	, glScalexOES
	, glTexCoord1xOES
	, glTexCoord1xvOES
	, glTexCoord2xOES
	, glTexCoord2xvOES
	, glTexCoord3xOES
	, glTexCoord3xvOES
	, glTexCoord4xOES
	, glTexCoord4xvOES
	, glTexEnvxOES
	, glTexEnvxvOES
	, glTexGenxOES
	, glTexGenxvOES
	, glTexParameterxOES
	, glTexParameterxvOES
	, glTranslatexOES
	, glVertex2xOES
	, glVertex2xvOES
	, glVertex3xOES
	, glVertex3xvOES
	, glVertex4xOES
	, glVertex4xvOES
	, gl_FIXED_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_OES_fixed_point :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_fixed_point = extGL 558

glAccumxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glAccumxOES v0 v1 = funGL 2023 >>= \f -> liftIO $ f v0 v1

glAlphaFuncxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glAlphaFuncxOES v0 v1 = funGL 2024 >>= \f -> liftIO $ f v0 v1

glBitmapxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLsizei -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> Ptr GLubyte -> m ()
glBitmapxOES v0 v1 v2 v3 v4 v5 v6 = funGL 2025 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glBlendColorxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glBlendColorxOES v0 v1 v2 v3 = funGL 2026 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearAccumxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glClearAccumxOES v0 v1 v2 v3 = funGL 2027 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearColorxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glClearColorxOES v0 v1 v2 v3 = funGL 2028 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearDepthxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glClearDepthxOES v0 = funGL 2029 >>= \f -> liftIO $ f v0

glClipPlanexOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glClipPlanexOES v0 v1 = funGL 2030 >>= \f -> liftIO $ f v0 v1

glColor3xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glColor3xOES v0 v1 v2 = funGL 2031 >>= \f -> liftIO $ f v0 v1 v2

glColor3xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glColor3xvOES v0 = funGL 2032 >>= \f -> liftIO $ f v0

glColor4xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glColor4xOES v0 v1 v2 v3 = funGL 2033 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glColor4xvOES v0 = funGL 2034 >>= \f -> liftIO $ f v0

glConvolutionParameterxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glConvolutionParameterxOES v0 v1 v2 = funGL 2035 >>= \f -> liftIO $ f v0 v1 v2

glConvolutionParameterxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glConvolutionParameterxvOES v0 v1 v2 = funGL 2036 >>= \f -> liftIO $ f v0 v1 v2

glDepthRangexOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glDepthRangexOES v0 v1 = funGL 2037 >>= \f -> liftIO $ f v0 v1

glEvalCoord1xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glEvalCoord1xOES v0 = funGL 2038 >>= \f -> liftIO $ f v0

glEvalCoord1xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glEvalCoord1xvOES v0 = funGL 2039 >>= \f -> liftIO $ f v0

glEvalCoord2xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glEvalCoord2xOES v0 v1 = funGL 2040 >>= \f -> liftIO $ f v0 v1

glEvalCoord2xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glEvalCoord2xvOES v0 = funGL 2041 >>= \f -> liftIO $ f v0

glFeedbackBufferxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr GLfixed -> m ()
glFeedbackBufferxOES v0 v1 v2 = funGL 2042 >>= \f -> liftIO $ f v0 v1 v2

glFogxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glFogxOES v0 v1 = funGL 2043 >>= \f -> liftIO $ f v0 v1

glFogxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glFogxvOES v0 v1 = funGL 2044 >>= \f -> liftIO $ f v0 v1

glFrustumxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glFrustumxOES v0 v1 v2 v3 v4 v5 = funGL 2045 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetClipPlanexOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glGetClipPlanexOES v0 v1 = funGL 2046 >>= \f -> liftIO $ f v0 v1

glGetConvolutionParameterxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetConvolutionParameterxvOES v0 v1 v2 = funGL 2047 >>= \f -> liftIO $ f v0 v1 v2

glGetFixedvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glGetFixedvOES v0 v1 = funGL 2048 >>= \f -> liftIO $ f v0 v1

glGetHistogramParameterxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetHistogramParameterxvOES v0 v1 v2 = funGL 2049 >>= \f -> liftIO $ f v0 v1 v2

glGetLightxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetLightxOES v0 v1 v2 = funGL 2050 >>= \f -> liftIO $ f v0 v1 v2

glGetLightxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetLightxvOES v0 v1 v2 = funGL 2051 >>= \f -> liftIO $ f v0 v1 v2

glGetMapxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetMapxvOES v0 v1 v2 = funGL 2052 >>= \f -> liftIO $ f v0 v1 v2

glGetMaterialxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glGetMaterialxOES v0 v1 v2 = funGL 2053 >>= \f -> liftIO $ f v0 v1 v2

glGetMaterialxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetMaterialxvOES v0 v1 v2 = funGL 2054 >>= \f -> liftIO $ f v0 v1 v2

glGetPixelMapxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr GLfixed -> m ()
glGetPixelMapxv v0 v1 v2 = funGL 2055 >>= \f -> liftIO $ f v0 v1 v2

glGetTexEnvxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetTexEnvxvOES v0 v1 v2 = funGL 2056 >>= \f -> liftIO $ f v0 v1 v2

glGetTexLevelParameterxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> Ptr GLfixed -> m ()
glGetTexLevelParameterxvOES v0 v1 v2 v3 = funGL 2058 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetTexParameterxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetTexParameterxvOES v0 v1 v2 = funGL 2059 >>= \f -> liftIO $ f v0 v1 v2

glIndexxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glIndexxOES v0 = funGL 2060 >>= \f -> liftIO $ f v0

glIndexxvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glIndexxvOES v0 = funGL 2061 >>= \f -> liftIO $ f v0

glLightModelxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glLightModelxOES v0 v1 = funGL 2062 >>= \f -> liftIO $ f v0 v1

glLightModelxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glLightModelxvOES v0 v1 = funGL 2063 >>= \f -> liftIO $ f v0 v1

glLightxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glLightxOES v0 v1 v2 = funGL 2064 >>= \f -> liftIO $ f v0 v1 v2

glLightxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glLightxvOES v0 v1 v2 = funGL 2065 >>= \f -> liftIO $ f v0 v1 v2

glLineWidthxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glLineWidthxOES v0 = funGL 2066 >>= \f -> liftIO $ f v0

glLoadMatrixxOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glLoadMatrixxOES v0 = funGL 2067 >>= \f -> liftIO $ f v0

glLoadTransposeMatrixxOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glLoadTransposeMatrixxOES v0 = funGL 2068 >>= \f -> liftIO $ f v0

glMap1xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> m ()
glMap1xOES v0 v1 v2 v3 v4 v5 = funGL 2069 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glMap2xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> GLfixed -> GLint -> GLint -> GLfixed -> m ()
glMap2xOES v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 2070 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glMapGrid1xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfixed -> GLfixed -> m ()
glMapGrid1xOES v0 v1 v2 = funGL 2071 >>= \f -> liftIO $ f v0 v1 v2

glMapGrid2xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glMapGrid2xOES v0 v1 v2 v3 v4 = funGL 2072 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMaterialxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glMaterialxOES v0 v1 v2 = funGL 2073 >>= \f -> liftIO $ f v0 v1 v2

glMaterialxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glMaterialxvOES v0 v1 v2 = funGL 2074 >>= \f -> liftIO $ f v0 v1 v2

glMultMatrixxOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glMultMatrixxOES v0 = funGL 2075 >>= \f -> liftIO $ f v0

glMultTransposeMatrixxOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glMultTransposeMatrixxOES v0 = funGL 2076 >>= \f -> liftIO $ f v0

glMultiTexCoord1xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glMultiTexCoord1xOES v0 v1 = funGL 2077 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1xvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glMultiTexCoord1xvOES v0 v1 = funGL 2078 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> GLfixed -> m ()
glMultiTexCoord2xOES v0 v1 v2 = funGL 2079 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2xvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glMultiTexCoord2xvOES v0 v1 = funGL 2080 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> GLfixed -> GLfixed -> m ()
glMultiTexCoord3xOES v0 v1 v2 v3 = funGL 2081 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3xvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glMultiTexCoord3xvOES v0 v1 = funGL 2082 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glMultiTexCoord4xOES v0 v1 v2 v3 v4 = funGL 2083 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4xvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glMultiTexCoord4xvOES v0 v1 = funGL 2084 >>= \f -> liftIO $ f v0 v1

glNormal3xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glNormal3xOES v0 v1 v2 = funGL 2085 >>= \f -> liftIO $ f v0 v1 v2

glNormal3xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glNormal3xvOES v0 = funGL 2086 >>= \f -> liftIO $ f v0

glOrthoxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glOrthoxOES v0 v1 v2 v3 v4 v5 = funGL 2087 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glPassThroughxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glPassThroughxOES v0 = funGL 2088 >>= \f -> liftIO $ f v0

glPixelMapx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr GLfixed -> m ()
glPixelMapx v0 v1 v2 = funGL 2089 >>= \f -> liftIO $ f v0 v1 v2

glPixelStorex :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glPixelStorex v0 v1 = funGL 2090 >>= \f -> liftIO $ f v0 v1

glPixelTransferxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glPixelTransferxOES v0 v1 = funGL 2091 >>= \f -> liftIO $ f v0 v1

glPixelZoomxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glPixelZoomxOES v0 v1 = funGL 2092 >>= \f -> liftIO $ f v0 v1

glPointParameterxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glPointParameterxOES v0 v1 = funGL 2093 >>= \f -> liftIO $ f v0 v1

glPointParameterxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glPointParameterxvOES v0 v1 = funGL 2094 >>= \f -> liftIO $ f v0 v1

glPointSizexOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glPointSizexOES v0 = funGL 2095 >>= \f -> liftIO $ f v0

glPolygonOffsetxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glPolygonOffsetxOES v0 v1 = funGL 2096 >>= \f -> liftIO $ f v0 v1

glPrioritizeTexturesxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> Ptr GLfixed -> m ()
glPrioritizeTexturesxOES v0 v1 v2 = funGL 2097 >>= \f -> liftIO $ f v0 v1 v2

glRasterPos2xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glRasterPos2xOES v0 v1 = funGL 2098 >>= \f -> liftIO $ f v0 v1

glRasterPos2xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glRasterPos2xvOES v0 = funGL 2099 >>= \f -> liftIO $ f v0

glRasterPos3xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glRasterPos3xOES v0 v1 v2 = funGL 2100 >>= \f -> liftIO $ f v0 v1 v2

glRasterPos3xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glRasterPos3xvOES v0 = funGL 2101 >>= \f -> liftIO $ f v0

glRasterPos4xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glRasterPos4xOES v0 v1 v2 v3 = funGL 2102 >>= \f -> liftIO $ f v0 v1 v2 v3

glRasterPos4xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glRasterPos4xvOES v0 = funGL 2103 >>= \f -> liftIO $ f v0

glRectxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glRectxOES v0 v1 v2 v3 = funGL 2104 >>= \f -> liftIO $ f v0 v1 v2 v3

glRectxvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> Ptr GLfixed -> m ()
glRectxvOES v0 v1 = funGL 2105 >>= \f -> liftIO $ f v0 v1

glRotatexOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glRotatexOES v0 v1 v2 v3 = funGL 2106 >>= \f -> liftIO $ f v0 v1 v2 v3

glSampleCoverageOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLboolean -> m ()
glSampleCoverageOES v0 v1 = funGL 2107 >>= \f -> liftIO $ f v0 v1

glSampleCoveragexOES :: (MonadIO m, MonadReader e m, HasScope e) => GLclampx -> GLboolean -> m ()
glSampleCoveragexOES v0 v1 = funGL 2108 >>= \f -> liftIO $ f v0 v1

glScalexOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glScalexOES v0 v1 v2 = funGL 2109 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord1xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glTexCoord1xOES v0 = funGL 2110 >>= \f -> liftIO $ f v0

glTexCoord1xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glTexCoord1xvOES v0 = funGL 2111 >>= \f -> liftIO $ f v0

glTexCoord2xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glTexCoord2xOES v0 v1 = funGL 2112 >>= \f -> liftIO $ f v0 v1

glTexCoord2xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glTexCoord2xvOES v0 = funGL 2113 >>= \f -> liftIO $ f v0

glTexCoord3xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glTexCoord3xOES v0 v1 v2 = funGL 2114 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord3xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glTexCoord3xvOES v0 = funGL 2115 >>= \f -> liftIO $ f v0

glTexCoord4xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glTexCoord4xOES v0 v1 v2 v3 = funGL 2116 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord4xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glTexCoord4xvOES v0 = funGL 2117 >>= \f -> liftIO $ f v0

glTexEnvxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glTexEnvxOES v0 v1 v2 = funGL 2118 >>= \f -> liftIO $ f v0 v1 v2

glTexEnvxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glTexEnvxvOES v0 v1 v2 = funGL 2119 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterxOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glTexParameterxOES v0 v1 v2 = funGL 2122 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterxvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glTexParameterxvOES v0 v1 v2 = funGL 2123 >>= \f -> liftIO $ f v0 v1 v2

glTranslatexOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glTranslatexOES v0 v1 v2 = funGL 2124 >>= \f -> liftIO $ f v0 v1 v2

glVertex2xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glVertex2xOES v0 = funGL 2125 >>= \f -> liftIO $ f v0

glVertex2xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glVertex2xvOES v0 = funGL 2126 >>= \f -> liftIO $ f v0

glVertex3xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glVertex3xOES v0 v1 = funGL 2127 >>= \f -> liftIO $ f v0 v1

glVertex3xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glVertex3xvOES v0 = funGL 2128 >>= \f -> liftIO $ f v0

glVertex4xOES :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glVertex4xOES v0 v1 v2 = funGL 2129 >>= \f -> liftIO $ f v0 v1 v2

glVertex4xvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glVertex4xvOES v0 = funGL 2130 >>= \f -> liftIO $ f v0

gl_FIXED_OES :: GLenum
gl_FIXED_OES = 0x140C