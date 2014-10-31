-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.FragmentShader (
	-- * Extension Support
	  gl_ATI_fragment_shader

	-- * GL_ATI_fragment_shader
	, glAlphaFragmentOp1ATI
	, glAlphaFragmentOp2ATI
	, glAlphaFragmentOp3ATI
	, glBeginFragmentShaderATI
	, glBindFragmentShaderATI
	, glColorFragmentOp1ATI
	, glColorFragmentOp2ATI
	, glColorFragmentOp3ATI
	, glDeleteFragmentShaderATI
	, glEndFragmentShaderATI
	, glGenFragmentShadersATI
	, glPassTexCoordATI
	, glSampleMapATI
	, glSetFragmentShaderConstantATI
	, gl_2X_BIT_ATI
	, gl_4X_BIT_ATI
	, gl_8X_BIT_ATI
	, gl_ADD_ATI
	, gl_BIAS_BIT_ATI
	, gl_BLUE_BIT_ATI
	, gl_CND0_ATI
	, gl_CND_ATI
	, gl_COLOR_ALPHA_PAIRING_ATI
	, gl_COMP_BIT_ATI
	, gl_CON_0_ATI
	, gl_CON_10_ATI
	, gl_CON_11_ATI
	, gl_CON_12_ATI
	, gl_CON_13_ATI
	, gl_CON_14_ATI
	, gl_CON_15_ATI
	, gl_CON_16_ATI
	, gl_CON_17_ATI
	, gl_CON_18_ATI
	, gl_CON_19_ATI
	, gl_CON_1_ATI
	, gl_CON_20_ATI
	, gl_CON_21_ATI
	, gl_CON_22_ATI
	, gl_CON_23_ATI
	, gl_CON_24_ATI
	, gl_CON_25_ATI
	, gl_CON_26_ATI
	, gl_CON_27_ATI
	, gl_CON_28_ATI
	, gl_CON_29_ATI
	, gl_CON_2_ATI
	, gl_CON_30_ATI
	, gl_CON_31_ATI
	, gl_CON_3_ATI
	, gl_CON_4_ATI
	, gl_CON_5_ATI
	, gl_CON_6_ATI
	, gl_CON_7_ATI
	, gl_CON_8_ATI
	, gl_CON_9_ATI
	, gl_DOT2_ADD_ATI
	, gl_DOT3_ATI
	, gl_DOT4_ATI
	, gl_EIGHTH_BIT_ATI
	, gl_FRAGMENT_SHADER_ATI
	, gl_GREEN_BIT_ATI
	, gl_HALF_BIT_ATI
	, gl_LERP_ATI
	, gl_MAD_ATI
	, gl_MOV_ATI
	, gl_MUL_ATI
	, gl_NEGATE_BIT_ATI
	, gl_NUM_FRAGMENT_CONSTANTS_ATI
	, gl_NUM_FRAGMENT_REGISTERS_ATI
	, gl_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI
	, gl_NUM_INSTRUCTIONS_PER_PASS_ATI
	, gl_NUM_INSTRUCTIONS_TOTAL_ATI
	, gl_NUM_LOOPBACK_COMPONENTS_ATI
	, gl_NUM_PASSES_ATI
	, gl_QUARTER_BIT_ATI
	, gl_RED_BIT_ATI
	, gl_REG_0_ATI
	, gl_REG_10_ATI
	, gl_REG_11_ATI
	, gl_REG_12_ATI
	, gl_REG_13_ATI
	, gl_REG_14_ATI
	, gl_REG_15_ATI
	, gl_REG_16_ATI
	, gl_REG_17_ATI
	, gl_REG_18_ATI
	, gl_REG_19_ATI
	, gl_REG_1_ATI
	, gl_REG_20_ATI
	, gl_REG_21_ATI
	, gl_REG_22_ATI
	, gl_REG_23_ATI
	, gl_REG_24_ATI
	, gl_REG_25_ATI
	, gl_REG_26_ATI
	, gl_REG_27_ATI
	, gl_REG_28_ATI
	, gl_REG_29_ATI
	, gl_REG_2_ATI
	, gl_REG_30_ATI
	, gl_REG_31_ATI
	, gl_REG_3_ATI
	, gl_REG_4_ATI
	, gl_REG_5_ATI
	, gl_REG_6_ATI
	, gl_REG_7_ATI
	, gl_REG_8_ATI
	, gl_REG_9_ATI
	, gl_SATURATE_BIT_ATI
	, gl_SECONDARY_INTERPOLATOR_ATI
	, gl_SUB_ATI
	, gl_SWIZZLE_STQ_ATI
	, gl_SWIZZLE_STQ_DQ_ATI
	, gl_SWIZZLE_STRQ_ATI
	, gl_SWIZZLE_STRQ_DQ_ATI
	, gl_SWIZZLE_STR_ATI
	, gl_SWIZZLE_STR_DR_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_fragment_shader :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_fragment_shader = extGL 231

glAlphaFragmentOp1ATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glAlphaFragmentOp1ATI v0 v1 v2 v3 v4 v5 = funGL 821 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glAlphaFragmentOp2ATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glAlphaFragmentOp2ATI v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 822 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glAlphaFragmentOp3ATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glAlphaFragmentOp3ATI v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = funGL 823 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

glBeginFragmentShaderATI :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glBeginFragmentShaderATI = funGL 824 >>= \f -> liftIO $ f

glBindFragmentShaderATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBindFragmentShaderATI v0 = funGL 825 >>= \f -> liftIO $ f v0

glColorFragmentOp1ATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glColorFragmentOp1ATI v0 v1 v2 v3 v4 v5 v6 = funGL 826 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glColorFragmentOp2ATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glColorFragmentOp2ATI v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 827 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glColorFragmentOp3ATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glColorFragmentOp3ATI v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = funGL 828 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12

glDeleteFragmentShaderATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDeleteFragmentShaderATI v0 = funGL 829 >>= \f -> liftIO $ f v0

glEndFragmentShaderATI :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndFragmentShaderATI = funGL 830 >>= \f -> liftIO $ f

glGenFragmentShadersATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLuint
glGenFragmentShadersATI v0 = funGL 831 >>= \f -> liftIO $ f v0

glPassTexCoordATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> m ()
glPassTexCoordATI v0 v1 v2 = funGL 832 >>= \f -> liftIO $ f v0 v1 v2

glSampleMapATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> m ()
glSampleMapATI v0 v1 v2 = funGL 833 >>= \f -> liftIO $ f v0 v1 v2

glSetFragmentShaderConstantATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glSetFragmentShaderConstantATI v0 v1 = funGL 834 >>= \f -> liftIO $ f v0 v1

gl_2X_BIT_ATI :: GLenum
gl_2X_BIT_ATI = 0x00000001

gl_4X_BIT_ATI :: GLenum
gl_4X_BIT_ATI = 0x00000002

gl_8X_BIT_ATI :: GLenum
gl_8X_BIT_ATI = 0x00000004

gl_ADD_ATI :: GLenum
gl_ADD_ATI = 0x8963

gl_BIAS_BIT_ATI :: GLenum
gl_BIAS_BIT_ATI = 0x00000008

gl_BLUE_BIT_ATI :: GLenum
gl_BLUE_BIT_ATI = 0x00000004

gl_CND0_ATI :: GLenum
gl_CND0_ATI = 0x896B

gl_CND_ATI :: GLenum
gl_CND_ATI = 0x896A

gl_COLOR_ALPHA_PAIRING_ATI :: GLenum
gl_COLOR_ALPHA_PAIRING_ATI = 0x8975

gl_COMP_BIT_ATI :: GLenum
gl_COMP_BIT_ATI = 0x00000002

gl_CON_0_ATI :: GLenum
gl_CON_0_ATI = 0x8941

gl_CON_10_ATI :: GLenum
gl_CON_10_ATI = 0x894B

gl_CON_11_ATI :: GLenum
gl_CON_11_ATI = 0x894C

gl_CON_12_ATI :: GLenum
gl_CON_12_ATI = 0x894D

gl_CON_13_ATI :: GLenum
gl_CON_13_ATI = 0x894E

gl_CON_14_ATI :: GLenum
gl_CON_14_ATI = 0x894F

gl_CON_15_ATI :: GLenum
gl_CON_15_ATI = 0x8950

gl_CON_16_ATI :: GLenum
gl_CON_16_ATI = 0x8951

gl_CON_17_ATI :: GLenum
gl_CON_17_ATI = 0x8952

gl_CON_18_ATI :: GLenum
gl_CON_18_ATI = 0x8953

gl_CON_19_ATI :: GLenum
gl_CON_19_ATI = 0x8954

gl_CON_1_ATI :: GLenum
gl_CON_1_ATI = 0x8942

gl_CON_20_ATI :: GLenum
gl_CON_20_ATI = 0x8955

gl_CON_21_ATI :: GLenum
gl_CON_21_ATI = 0x8956

gl_CON_22_ATI :: GLenum
gl_CON_22_ATI = 0x8957

gl_CON_23_ATI :: GLenum
gl_CON_23_ATI = 0x8958

gl_CON_24_ATI :: GLenum
gl_CON_24_ATI = 0x8959

gl_CON_25_ATI :: GLenum
gl_CON_25_ATI = 0x895A

gl_CON_26_ATI :: GLenum
gl_CON_26_ATI = 0x895B

gl_CON_27_ATI :: GLenum
gl_CON_27_ATI = 0x895C

gl_CON_28_ATI :: GLenum
gl_CON_28_ATI = 0x895D

gl_CON_29_ATI :: GLenum
gl_CON_29_ATI = 0x895E

gl_CON_2_ATI :: GLenum
gl_CON_2_ATI = 0x8943

gl_CON_30_ATI :: GLenum
gl_CON_30_ATI = 0x895F

gl_CON_31_ATI :: GLenum
gl_CON_31_ATI = 0x8960

gl_CON_3_ATI :: GLenum
gl_CON_3_ATI = 0x8944

gl_CON_4_ATI :: GLenum
gl_CON_4_ATI = 0x8945

gl_CON_5_ATI :: GLenum
gl_CON_5_ATI = 0x8946

gl_CON_6_ATI :: GLenum
gl_CON_6_ATI = 0x8947

gl_CON_7_ATI :: GLenum
gl_CON_7_ATI = 0x8948

gl_CON_8_ATI :: GLenum
gl_CON_8_ATI = 0x8949

gl_CON_9_ATI :: GLenum
gl_CON_9_ATI = 0x894A

gl_DOT2_ADD_ATI :: GLenum
gl_DOT2_ADD_ATI = 0x896C

gl_DOT3_ATI :: GLenum
gl_DOT3_ATI = 0x8966

gl_DOT4_ATI :: GLenum
gl_DOT4_ATI = 0x8967

gl_EIGHTH_BIT_ATI :: GLenum
gl_EIGHTH_BIT_ATI = 0x00000020

gl_FRAGMENT_SHADER_ATI :: GLenum
gl_FRAGMENT_SHADER_ATI = 0x8920

gl_GREEN_BIT_ATI :: GLenum
gl_GREEN_BIT_ATI = 0x00000002

gl_HALF_BIT_ATI :: GLenum
gl_HALF_BIT_ATI = 0x00000008

gl_LERP_ATI :: GLenum
gl_LERP_ATI = 0x8969

gl_MAD_ATI :: GLenum
gl_MAD_ATI = 0x8968

gl_MOV_ATI :: GLenum
gl_MOV_ATI = 0x8961

gl_MUL_ATI :: GLenum
gl_MUL_ATI = 0x8964

gl_NEGATE_BIT_ATI :: GLenum
gl_NEGATE_BIT_ATI = 0x00000004

gl_NUM_FRAGMENT_CONSTANTS_ATI :: GLenum
gl_NUM_FRAGMENT_CONSTANTS_ATI = 0x896F

gl_NUM_FRAGMENT_REGISTERS_ATI :: GLenum
gl_NUM_FRAGMENT_REGISTERS_ATI = 0x896E

gl_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI :: GLenum
gl_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 0x8973

gl_NUM_INSTRUCTIONS_PER_PASS_ATI :: GLenum
gl_NUM_INSTRUCTIONS_PER_PASS_ATI = 0x8971

gl_NUM_INSTRUCTIONS_TOTAL_ATI :: GLenum
gl_NUM_INSTRUCTIONS_TOTAL_ATI = 0x8972

gl_NUM_LOOPBACK_COMPONENTS_ATI :: GLenum
gl_NUM_LOOPBACK_COMPONENTS_ATI = 0x8974

gl_NUM_PASSES_ATI :: GLenum
gl_NUM_PASSES_ATI = 0x8970

gl_QUARTER_BIT_ATI :: GLenum
gl_QUARTER_BIT_ATI = 0x00000010

gl_RED_BIT_ATI :: GLenum
gl_RED_BIT_ATI = 0x00000001

gl_REG_0_ATI :: GLenum
gl_REG_0_ATI = 0x8921

gl_REG_10_ATI :: GLenum
gl_REG_10_ATI = 0x892B

gl_REG_11_ATI :: GLenum
gl_REG_11_ATI = 0x892C

gl_REG_12_ATI :: GLenum
gl_REG_12_ATI = 0x892D

gl_REG_13_ATI :: GLenum
gl_REG_13_ATI = 0x892E

gl_REG_14_ATI :: GLenum
gl_REG_14_ATI = 0x892F

gl_REG_15_ATI :: GLenum
gl_REG_15_ATI = 0x8930

gl_REG_16_ATI :: GLenum
gl_REG_16_ATI = 0x8931

gl_REG_17_ATI :: GLenum
gl_REG_17_ATI = 0x8932

gl_REG_18_ATI :: GLenum
gl_REG_18_ATI = 0x8933

gl_REG_19_ATI :: GLenum
gl_REG_19_ATI = 0x8934

gl_REG_1_ATI :: GLenum
gl_REG_1_ATI = 0x8922

gl_REG_20_ATI :: GLenum
gl_REG_20_ATI = 0x8935

gl_REG_21_ATI :: GLenum
gl_REG_21_ATI = 0x8936

gl_REG_22_ATI :: GLenum
gl_REG_22_ATI = 0x8937

gl_REG_23_ATI :: GLenum
gl_REG_23_ATI = 0x8938

gl_REG_24_ATI :: GLenum
gl_REG_24_ATI = 0x8939

gl_REG_25_ATI :: GLenum
gl_REG_25_ATI = 0x893A

gl_REG_26_ATI :: GLenum
gl_REG_26_ATI = 0x893B

gl_REG_27_ATI :: GLenum
gl_REG_27_ATI = 0x893C

gl_REG_28_ATI :: GLenum
gl_REG_28_ATI = 0x893D

gl_REG_29_ATI :: GLenum
gl_REG_29_ATI = 0x893E

gl_REG_2_ATI :: GLenum
gl_REG_2_ATI = 0x8923

gl_REG_30_ATI :: GLenum
gl_REG_30_ATI = 0x893F

gl_REG_31_ATI :: GLenum
gl_REG_31_ATI = 0x8940

gl_REG_3_ATI :: GLenum
gl_REG_3_ATI = 0x8924

gl_REG_4_ATI :: GLenum
gl_REG_4_ATI = 0x8925

gl_REG_5_ATI :: GLenum
gl_REG_5_ATI = 0x8926

gl_REG_6_ATI :: GLenum
gl_REG_6_ATI = 0x8927

gl_REG_7_ATI :: GLenum
gl_REG_7_ATI = 0x8928

gl_REG_8_ATI :: GLenum
gl_REG_8_ATI = 0x8929

gl_REG_9_ATI :: GLenum
gl_REG_9_ATI = 0x892A

gl_SATURATE_BIT_ATI :: GLenum
gl_SATURATE_BIT_ATI = 0x00000040

gl_SECONDARY_INTERPOLATOR_ATI :: GLenum
gl_SECONDARY_INTERPOLATOR_ATI = 0x896D

gl_SUB_ATI :: GLenum
gl_SUB_ATI = 0x8965

gl_SWIZZLE_STQ_ATI :: GLenum
gl_SWIZZLE_STQ_ATI = 0x8977

gl_SWIZZLE_STQ_DQ_ATI :: GLenum
gl_SWIZZLE_STQ_DQ_ATI = 0x8979

gl_SWIZZLE_STRQ_ATI :: GLenum
gl_SWIZZLE_STRQ_ATI = 0x897A

gl_SWIZZLE_STRQ_DQ_ATI :: GLenum
gl_SWIZZLE_STRQ_DQ_ATI = 0x897B

gl_SWIZZLE_STR_ATI :: GLenum
gl_SWIZZLE_STR_ATI = 0x8976

gl_SWIZZLE_STR_DR_ATI :: GLenum
gl_SWIZZLE_STR_DR_ATI = 0x8978