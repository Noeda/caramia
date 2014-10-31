-- This file was automatically generated.
module Graphics.OpenGL.Profile.EmbeddedLite10 (
	-- * Graphics.OpenGL.Profile.EmbeddedLite10
	  glActiveTexture
	, glAlphaFuncx
	, glBindBuffer
	, glBindTexture
	, glBlendFunc
	, glBufferData
	, glBufferSubData
	, glClear
	, glClearColorx
	, glClearDepthx
	, glClearStencil
	, glClientActiveTexture
	, glClipPlanex
	, glColor4ub
	, glColor4x
	, glColorMask
	, glColorPointer
	, glCompressedTexImage2D
	, glCompressedTexSubImage2D
	, glCopyTexImage2D
	, glCopyTexSubImage2D
	, glCullFace
	, glDeleteBuffers
	, glDeleteTextures
	, glDepthFunc
	, glDepthMask
	, glDepthRangex
	, glDisable
	, glDisableClientState
	, glDrawArrays
	, glDrawElements
	, glEnable
	, glEnableClientState
	, glFinish
	, glFlush
	, glFogx
	, glFogxv
	, glFrontFace
	, glFrustumx
	, glGenBuffers
	, glGenTextures
	, glGetBooleanv
	, glGetBufferParameteriv
	, glGetClipPlanex
	, glGetError
	, glGetFixedv
	, glGetIntegerv
	, glGetLightxv
	, glGetMaterialxv
	, glGetPointerv
	, glGetString
	, glGetTexEnviv
	, glGetTexEnvxv
	, glGetTexParameteriv
	, glGetTexParameterxv
	, glHint
	, glIsBuffer
	, glIsEnabled
	, glIsTexture
	, glLightModelx
	, glLightModelxv
	, glLightx
	, glLightxv
	, glLineWidthx
	, glLoadIdentity
	, glLoadMatrixx
	, glLogicOp
	, glMaterialx
	, glMaterialxv
	, glMatrixMode
	, glMultMatrixx
	, glMultiTexCoord4x
	, glNormal3x
	, glNormalPointer
	, glOrthox
	, glPixelStorei
	, glPointParameterx
	, glPointParameterxv
	, glPointSizex
	, glPolygonOffsetx
	, glPopMatrix
	, glPushMatrix
	, glReadPixels
	, glRotatex
	, glSampleCoverage
	, glSampleCoveragex
	, glScalex
	, glScissor
	, glShadeModel
	, glStencilFunc
	, glStencilMask
	, glStencilOp
	, glTexCoordPointer
	, glTexEnvi
	, glTexEnviv
	, glTexEnvx
	, glTexEnvxv
	, glTexImage2D
	, glTexParameteri
	, glTexParameteriv
	, glTexParameterx
	, glTexParameterxv
	, glTexSubImage2D
	, glTranslatex
	, glVertexPointer
	, glViewport
	, gl_ACTIVE_TEXTURE
	, gl_ADD
	, gl_ADD_SIGNED
	, gl_ALIASED_LINE_WIDTH_RANGE
	, gl_ALIASED_POINT_SIZE_RANGE
	, gl_ALPHA
	, gl_ALPHA_BITS
	, gl_ALPHA_SCALE
	, gl_ALPHA_TEST
	, gl_ALPHA_TEST_FUNC
	, gl_ALPHA_TEST_REF
	, gl_ALWAYS
	, gl_AMBIENT
	, gl_AMBIENT_AND_DIFFUSE
	, gl_AND
	, gl_AND_INVERTED
	, gl_AND_REVERSE
	, gl_ARRAY_BUFFER
	, gl_ARRAY_BUFFER_BINDING
	, gl_BACK
	, gl_BLEND
	, gl_BLEND_DST
	, gl_BLEND_SRC
	, gl_BLUE_BITS
	, gl_BUFFER_SIZE
	, gl_BUFFER_USAGE
	, gl_BYTE
	, gl_CCW
	, gl_CLAMP_TO_EDGE
	, gl_CLEAR
	, gl_CLIENT_ACTIVE_TEXTURE
	, gl_CLIP_PLANE0
	, gl_CLIP_PLANE1
	, gl_CLIP_PLANE2
	, gl_CLIP_PLANE3
	, gl_CLIP_PLANE4
	, gl_CLIP_PLANE5
	, gl_COLOR_ARRAY
	, gl_COLOR_ARRAY_BUFFER_BINDING
	, gl_COLOR_ARRAY_POINTER
	, gl_COLOR_ARRAY_SIZE
	, gl_COLOR_ARRAY_STRIDE
	, gl_COLOR_ARRAY_TYPE
	, gl_COLOR_BUFFER_BIT
	, gl_COLOR_CLEAR_VALUE
	, gl_COLOR_LOGIC_OP
	, gl_COLOR_MATERIAL
	, gl_COLOR_WRITEMASK
	, gl_COMBINE
	, gl_COMBINE_ALPHA
	, gl_COMBINE_RGB
	, gl_COMPRESSED_TEXTURE_FORMATS
	, gl_CONSTANT
	, gl_CONSTANT_ATTENUATION
	, gl_COPY
	, gl_COPY_INVERTED
	, gl_CULL_FACE
	, gl_CULL_FACE_MODE
	, gl_CURRENT_COLOR
	, gl_CURRENT_NORMAL
	, gl_CURRENT_TEXTURE_COORDS
	, gl_CW
	, gl_DECAL
	, gl_DECR
	, gl_DEPTH_BITS
	, gl_DEPTH_BUFFER_BIT
	, gl_DEPTH_CLEAR_VALUE
	, gl_DEPTH_FUNC
	, gl_DEPTH_RANGE
	, gl_DEPTH_TEST
	, gl_DEPTH_WRITEMASK
	, gl_DIFFUSE
	, gl_DITHER
	, gl_DONT_CARE
	, gl_DOT3_RGB
	, gl_DOT3_RGBA
	, gl_DST_ALPHA
	, gl_DST_COLOR
	, gl_DYNAMIC_DRAW
	, gl_ELEMENT_ARRAY_BUFFER
	, gl_ELEMENT_ARRAY_BUFFER_BINDING
	, gl_EMISSION
	, gl_EQUAL
	, gl_EQUIV
	, gl_EXP
	, gl_EXP2
	, gl_EXTENSIONS
	, gl_FALSE
	, gl_FASTEST
	, gl_FIXED
	, gl_FLAT
	, gl_FLOAT
	, gl_FOG
	, gl_FOG_COLOR
	, gl_FOG_DENSITY
	, gl_FOG_END
	, gl_FOG_HINT
	, gl_FOG_MODE
	, gl_FOG_START
	, gl_FRONT
	, gl_FRONT_AND_BACK
	, gl_FRONT_FACE
	, gl_GENERATE_MIPMAP
	, gl_GENERATE_MIPMAP_HINT
	, gl_GEQUAL
	, gl_GREATER
	, gl_GREEN_BITS
	, gl_INCR
	, gl_INTERPOLATE
	, gl_INVALID_ENUM
	, gl_INVALID_OPERATION
	, gl_INVALID_VALUE
	, gl_INVERT
	, gl_KEEP
	, gl_LEQUAL
	, gl_LESS
	, gl_LIGHT0
	, gl_LIGHT1
	, gl_LIGHT2
	, gl_LIGHT3
	, gl_LIGHT4
	, gl_LIGHT5
	, gl_LIGHT6
	, gl_LIGHT7
	, gl_LIGHTING
	, gl_LIGHT_MODEL_AMBIENT
	, gl_LIGHT_MODEL_TWO_SIDE
	, gl_LINEAR
	, gl_LINEAR_ATTENUATION
	, gl_LINEAR_MIPMAP_LINEAR
	, gl_LINEAR_MIPMAP_NEAREST
	, gl_LINES
	, gl_LINE_LOOP
	, gl_LINE_SMOOTH
	, gl_LINE_SMOOTH_HINT
	, gl_LINE_STRIP
	, gl_LINE_WIDTH
	, gl_LOGIC_OP_MODE
	, gl_LUMINANCE
	, gl_LUMINANCE_ALPHA
	, gl_MATRIX_MODE
	, gl_MAX_CLIP_PLANES
	, gl_MAX_LIGHTS
	, gl_MAX_MODELVIEW_STACK_DEPTH
	, gl_MAX_PROJECTION_STACK_DEPTH
	, gl_MAX_TEXTURE_SIZE
	, gl_MAX_TEXTURE_STACK_DEPTH
	, gl_MAX_TEXTURE_UNITS
	, gl_MAX_VIEWPORT_DIMS
	, gl_MODELVIEW
	, gl_MODELVIEW_MATRIX
	, gl_MODELVIEW_STACK_DEPTH
	, gl_MODULATE
	, gl_MULTISAMPLE
	, gl_NAND
	, gl_NEAREST
	, gl_NEAREST_MIPMAP_LINEAR
	, gl_NEAREST_MIPMAP_NEAREST
	, gl_NEVER
	, gl_NICEST
	, gl_NOOP
	, gl_NOR
	, gl_NORMALIZE
	, gl_NORMAL_ARRAY
	, gl_NORMAL_ARRAY_BUFFER_BINDING
	, gl_NORMAL_ARRAY_POINTER
	, gl_NORMAL_ARRAY_STRIDE
	, gl_NORMAL_ARRAY_TYPE
	, gl_NOTEQUAL
	, gl_NO_ERROR
	, gl_NUM_COMPRESSED_TEXTURE_FORMATS
	, gl_ONE
	, gl_ONE_MINUS_DST_ALPHA
	, gl_ONE_MINUS_DST_COLOR
	, gl_ONE_MINUS_SRC_ALPHA
	, gl_ONE_MINUS_SRC_COLOR
	, gl_OPERAND0_ALPHA
	, gl_OPERAND0_RGB
	, gl_OPERAND1_ALPHA
	, gl_OPERAND1_RGB
	, gl_OPERAND2_ALPHA
	, gl_OPERAND2_RGB
	, gl_OR
	, gl_OR_INVERTED
	, gl_OR_REVERSE
	, gl_OUT_OF_MEMORY
	, gl_PACK_ALIGNMENT
	, gl_PERSPECTIVE_CORRECTION_HINT
	, gl_POINTS
	, gl_POINT_DISTANCE_ATTENUATION
	, gl_POINT_FADE_THRESHOLD_SIZE
	, gl_POINT_SIZE
	, gl_POINT_SIZE_MAX
	, gl_POINT_SIZE_MIN
	, gl_POINT_SMOOTH
	, gl_POINT_SMOOTH_HINT
	, gl_POLYGON_OFFSET_FACTOR
	, gl_POLYGON_OFFSET_FILL
	, gl_POLYGON_OFFSET_UNITS
	, gl_POSITION
	, gl_PREVIOUS
	, gl_PRIMARY_COLOR
	, gl_PROJECTION
	, gl_PROJECTION_MATRIX
	, gl_PROJECTION_STACK_DEPTH
	, gl_QUADRATIC_ATTENUATION
	, gl_RED_BITS
	, gl_RENDERER
	, gl_REPEAT
	, gl_REPLACE
	, gl_RESCALE_NORMAL
	, gl_RGB
	, gl_RGBA
	, gl_RGB_SCALE
	, gl_SAMPLES
	, gl_SAMPLE_ALPHA_TO_COVERAGE
	, gl_SAMPLE_ALPHA_TO_ONE
	, gl_SAMPLE_BUFFERS
	, gl_SAMPLE_COVERAGE
	, gl_SAMPLE_COVERAGE_INVERT
	, gl_SAMPLE_COVERAGE_VALUE
	, gl_SCISSOR_BOX
	, gl_SCISSOR_TEST
	, gl_SET
	, gl_SHADE_MODEL
	, gl_SHININESS
	, gl_SHORT
	, gl_SMOOTH
	, gl_SMOOTH_LINE_WIDTH_RANGE
	, gl_SMOOTH_POINT_SIZE_RANGE
	, gl_SPECULAR
	, gl_SPOT_CUTOFF
	, gl_SPOT_DIRECTION
	, gl_SPOT_EXPONENT
	, gl_SRC0_ALPHA
	, gl_SRC0_RGB
	, gl_SRC1_ALPHA
	, gl_SRC1_RGB
	, gl_SRC2_ALPHA
	, gl_SRC2_RGB
	, gl_SRC_ALPHA
	, gl_SRC_ALPHA_SATURATE
	, gl_SRC_COLOR
	, gl_STACK_OVERFLOW
	, gl_STACK_UNDERFLOW
	, gl_STATIC_DRAW
	, gl_STENCIL_BITS
	, gl_STENCIL_BUFFER_BIT
	, gl_STENCIL_CLEAR_VALUE
	, gl_STENCIL_FAIL
	, gl_STENCIL_FUNC
	, gl_STENCIL_PASS_DEPTH_FAIL
	, gl_STENCIL_PASS_DEPTH_PASS
	, gl_STENCIL_REF
	, gl_STENCIL_TEST
	, gl_STENCIL_VALUE_MASK
	, gl_STENCIL_WRITEMASK
	, gl_SUBPIXEL_BITS
	, gl_SUBTRACT
	, gl_TEXTURE
	, gl_TEXTURE0
	, gl_TEXTURE1
	, gl_TEXTURE10
	, gl_TEXTURE11
	, gl_TEXTURE12
	, gl_TEXTURE13
	, gl_TEXTURE14
	, gl_TEXTURE15
	, gl_TEXTURE16
	, gl_TEXTURE17
	, gl_TEXTURE18
	, gl_TEXTURE19
	, gl_TEXTURE2
	, gl_TEXTURE20
	, gl_TEXTURE21
	, gl_TEXTURE22
	, gl_TEXTURE23
	, gl_TEXTURE24
	, gl_TEXTURE25
	, gl_TEXTURE26
	, gl_TEXTURE27
	, gl_TEXTURE28
	, gl_TEXTURE29
	, gl_TEXTURE3
	, gl_TEXTURE30
	, gl_TEXTURE31
	, gl_TEXTURE4
	, gl_TEXTURE5
	, gl_TEXTURE6
	, gl_TEXTURE7
	, gl_TEXTURE8
	, gl_TEXTURE9
	, gl_TEXTURE_2D
	, gl_TEXTURE_BINDING_2D
	, gl_TEXTURE_COORD_ARRAY
	, gl_TEXTURE_COORD_ARRAY_BUFFER_BINDING
	, gl_TEXTURE_COORD_ARRAY_POINTER
	, gl_TEXTURE_COORD_ARRAY_SIZE
	, gl_TEXTURE_COORD_ARRAY_STRIDE
	, gl_TEXTURE_COORD_ARRAY_TYPE
	, gl_TEXTURE_ENV
	, gl_TEXTURE_ENV_COLOR
	, gl_TEXTURE_ENV_MODE
	, gl_TEXTURE_MAG_FILTER
	, gl_TEXTURE_MATRIX
	, gl_TEXTURE_MIN_FILTER
	, gl_TEXTURE_STACK_DEPTH
	, gl_TEXTURE_WRAP_S
	, gl_TEXTURE_WRAP_T
	, gl_TRIANGLES
	, gl_TRIANGLE_FAN
	, gl_TRIANGLE_STRIP
	, gl_TRUE
	, gl_UNPACK_ALIGNMENT
	, gl_UNSIGNED_BYTE
	, gl_UNSIGNED_SHORT
	, gl_UNSIGNED_SHORT_4_4_4_4
	, gl_UNSIGNED_SHORT_5_5_5_1
	, gl_UNSIGNED_SHORT_5_6_5
	, gl_VENDOR
	, gl_VERSION
	, gl_VERSION_ES_CL_1_0
	, gl_VERSION_ES_CL_1_1
	, gl_VERSION_ES_CM_1_1
	, gl_VERTEX_ARRAY
	, gl_VERTEX_ARRAY_BUFFER_BINDING
	, gl_VERTEX_ARRAY_POINTER
	, gl_VERTEX_ARRAY_SIZE
	, gl_VERTEX_ARRAY_STRIDE
	, gl_VERTEX_ARRAY_TYPE
	, gl_VIEWPORT
	, gl_XOR
	, gl_ZERO
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

glAlphaFuncx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glAlphaFuncx v0 v1 = funGL 2975 >>= \f -> liftIO $ f v0 v1

glClearColorx :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glClearColorx v0 v1 v2 v3 = funGL 2976 >>= \f -> liftIO $ f v0 v1 v2 v3

glClearDepthx :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glClearDepthx v0 = funGL 2977 >>= \f -> liftIO $ f v0

glClipPlanex :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glClipPlanex v0 v1 = funGL 2978 >>= \f -> liftIO $ f v0 v1

glColor4x :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glColor4x v0 v1 v2 v3 = funGL 2979 >>= \f -> liftIO $ f v0 v1 v2 v3

glDepthRangex :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glDepthRangex v0 v1 = funGL 2980 >>= \f -> liftIO $ f v0 v1

glFogx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glFogx v0 v1 = funGL 2981 >>= \f -> liftIO $ f v0 v1

glFogxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glFogxv v0 v1 = funGL 2982 >>= \f -> liftIO $ f v0 v1

glFrustumx :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glFrustumx v0 v1 v2 v3 v4 v5 = funGL 2983 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetClipPlanex :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glGetClipPlanex v0 v1 = funGL 2984 >>= \f -> liftIO $ f v0 v1

glGetFixedv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glGetFixedv v0 v1 = funGL 2985 >>= \f -> liftIO $ f v0 v1

glGetLightxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetLightxv v0 v1 v2 = funGL 2986 >>= \f -> liftIO $ f v0 v1 v2

glGetMaterialxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetMaterialxv v0 v1 v2 = funGL 2987 >>= \f -> liftIO $ f v0 v1 v2

glGetTexEnvxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetTexEnvxv v0 v1 v2 = funGL 2988 >>= \f -> liftIO $ f v0 v1 v2

glGetTexParameterxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glGetTexParameterxv v0 v1 v2 = funGL 2989 >>= \f -> liftIO $ f v0 v1 v2

glLightModelx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glLightModelx v0 v1 = funGL 2990 >>= \f -> liftIO $ f v0 v1

glLightModelxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glLightModelxv v0 v1 = funGL 2991 >>= \f -> liftIO $ f v0 v1

glLightx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glLightx v0 v1 v2 = funGL 2992 >>= \f -> liftIO $ f v0 v1 v2

glLightxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glLightxv v0 v1 v2 = funGL 2993 >>= \f -> liftIO $ f v0 v1 v2

glLineWidthx :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glLineWidthx v0 = funGL 2994 >>= \f -> liftIO $ f v0

glLoadMatrixx :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glLoadMatrixx v0 = funGL 2995 >>= \f -> liftIO $ f v0

glMaterialx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glMaterialx v0 v1 v2 = funGL 2996 >>= \f -> liftIO $ f v0 v1 v2

glMaterialxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glMaterialxv v0 v1 v2 = funGL 2997 >>= \f -> liftIO $ f v0 v1 v2

glMultMatrixx :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> m ()
glMultMatrixx v0 = funGL 2998 >>= \f -> liftIO $ f v0

glMultiTexCoord4x :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glMultiTexCoord4x v0 v1 v2 v3 v4 = funGL 2999 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glNormal3x :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glNormal3x v0 v1 v2 = funGL 3000 >>= \f -> liftIO $ f v0 v1 v2

glOrthox :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glOrthox v0 v1 v2 v3 v4 v5 = funGL 3001 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glPointParameterx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfixed -> m ()
glPointParameterx v0 v1 = funGL 3002 >>= \f -> liftIO $ f v0 v1

glPointParameterxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glPointParameterxv v0 v1 = funGL 3003 >>= \f -> liftIO $ f v0 v1

glPointSizex :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> m ()
glPointSizex v0 = funGL 3004 >>= \f -> liftIO $ f v0

glPolygonOffsetx :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> m ()
glPolygonOffsetx v0 v1 = funGL 3005 >>= \f -> liftIO $ f v0 v1

glRotatex :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> GLfixed -> m ()
glRotatex v0 v1 v2 v3 = funGL 3006 >>= \f -> liftIO $ f v0 v1 v2 v3

glSampleCoveragex :: (MonadIO m, MonadReader e m, HasScope e) => GLclampx -> GLboolean -> m ()
glSampleCoveragex v0 v1 = funGL 3007 >>= \f -> liftIO $ f v0 v1

glScalex :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glScalex v0 v1 v2 = funGL 3008 >>= \f -> liftIO $ f v0 v1 v2

glTexEnvx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glTexEnvx v0 v1 v2 = funGL 3009 >>= \f -> liftIO $ f v0 v1 v2

glTexEnvxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glTexEnvxv v0 v1 v2 = funGL 3010 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterx :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfixed -> m ()
glTexParameterx v0 v1 v2 = funGL 3011 >>= \f -> liftIO $ f v0 v1 v2

glTexParameterxv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfixed -> m ()
glTexParameterxv v0 v1 v2 = funGL 3012 >>= \f -> liftIO $ f v0 v1 v2

glTranslatex :: (MonadIO m, MonadReader e m, HasScope e) => GLfixed -> GLfixed -> GLfixed -> m ()
glTranslatex v0 v1 v2 = funGL 3013 >>= \f -> liftIO $ f v0 v1 v2

gl_VERSION_ES_CL_1_0 :: GLenum
gl_VERSION_ES_CL_1_0 = 1

gl_VERSION_ES_CL_1_1 :: GLenum
gl_VERSION_ES_CL_1_1 = 1

gl_VERSION_ES_CM_1_1 :: GLenum
gl_VERSION_ES_CM_1_1 = 1