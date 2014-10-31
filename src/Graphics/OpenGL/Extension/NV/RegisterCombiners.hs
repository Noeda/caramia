-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.RegisterCombiners (
	-- * Extension Support
	  gl_NV_register_combiners

	-- * GL_NV_register_combiners
	, glCombinerInputNV
	, glCombinerOutputNV
	, glCombinerParameterfNV
	, glCombinerParameterfvNV
	, glCombinerParameteriNV
	, glCombinerParameterivNV
	, glFinalCombinerInputNV
	, glGetCombinerInputParameterfvNV
	, glGetCombinerInputParameterivNV
	, glGetCombinerOutputParameterfvNV
	, glGetCombinerOutputParameterivNV
	, glGetFinalCombinerInputParameterfvNV
	, glGetFinalCombinerInputParameterivNV
	, gl_BIAS_BY_NEGATIVE_ONE_HALF_NV
	, gl_COLOR_SUM_CLAMP_NV
	, gl_COMBINER0_NV
	, gl_COMBINER1_NV
	, gl_COMBINER2_NV
	, gl_COMBINER3_NV
	, gl_COMBINER4_NV
	, gl_COMBINER5_NV
	, gl_COMBINER6_NV
	, gl_COMBINER7_NV
	, gl_COMBINER_AB_DOT_PRODUCT_NV
	, gl_COMBINER_AB_OUTPUT_NV
	, gl_COMBINER_BIAS_NV
	, gl_COMBINER_CD_DOT_PRODUCT_NV
	, gl_COMBINER_CD_OUTPUT_NV
	, gl_COMBINER_COMPONENT_USAGE_NV
	, gl_COMBINER_INPUT_NV
	, gl_COMBINER_MAPPING_NV
	, gl_COMBINER_MUX_SUM_NV
	, gl_COMBINER_SCALE_NV
	, gl_COMBINER_SUM_OUTPUT_NV
	, gl_CONSTANT_COLOR0_NV
	, gl_CONSTANT_COLOR1_NV
	, gl_DISCARD_NV
	, gl_EXPAND_NEGATE_NV
	, gl_EXPAND_NORMAL_NV
	, gl_E_TIMES_F_NV
	, gl_FOG
	, gl_HALF_BIAS_NEGATE_NV
	, gl_HALF_BIAS_NORMAL_NV
	, gl_MAX_GENERAL_COMBINERS_NV
	, gl_NONE
	, gl_NUM_GENERAL_COMBINERS_NV
	, gl_PRIMARY_COLOR_NV
	, gl_REGISTER_COMBINERS_NV
	, gl_SCALE_BY_FOUR_NV
	, gl_SCALE_BY_ONE_HALF_NV
	, gl_SCALE_BY_TWO_NV
	, gl_SECONDARY_COLOR_NV
	, gl_SIGNED_IDENTITY_NV
	, gl_SIGNED_NEGATE_NV
	, gl_SPARE0_NV
	, gl_SPARE0_PLUS_SECONDARY_COLOR_NV
	, gl_SPARE1_NV
	, gl_TEXTURE0_ARB
	, gl_TEXTURE1_ARB
	, gl_UNSIGNED_IDENTITY_NV
	, gl_UNSIGNED_INVERT_NV
	, gl_VARIABLE_A_NV
	, gl_VARIABLE_B_NV
	, gl_VARIABLE_C_NV
	, gl_VARIABLE_D_NV
	, gl_VARIABLE_E_NV
	, gl_VARIABLE_F_NV
	, gl_VARIABLE_G_NV
	, gl_ZERO
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_register_combiners :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_register_combiners = extGL 495

glCombinerInputNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
glCombinerInputNV v0 v1 v2 v3 v4 v5 = funGL 1787 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glCombinerOutputNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLenum -> GLboolean -> GLboolean -> GLboolean -> m ()
glCombinerOutputNV v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1788 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glCombinerParameterfNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glCombinerParameterfNV v0 v1 = funGL 1789 >>= \f -> liftIO $ f v0 v1

glCombinerParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glCombinerParameterfvNV v0 v1 = funGL 1790 >>= \f -> liftIO $ f v0 v1

glCombinerParameteriNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glCombinerParameteriNV v0 v1 = funGL 1791 >>= \f -> liftIO $ f v0 v1

glCombinerParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glCombinerParameterivNV v0 v1 = funGL 1792 >>= \f -> liftIO $ f v0 v1

glFinalCombinerInputNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> m ()
glFinalCombinerInputNV v0 v1 v2 v3 = funGL 1793 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetCombinerInputParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetCombinerInputParameterfvNV v0 v1 v2 v3 v4 = funGL 1794 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetCombinerInputParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetCombinerInputParameterivNV v0 v1 v2 v3 v4 = funGL 1795 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetCombinerOutputParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetCombinerOutputParameterfvNV v0 v1 v2 v3 = funGL 1796 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetCombinerOutputParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetCombinerOutputParameterivNV v0 v1 v2 v3 = funGL 1797 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetFinalCombinerInputParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetFinalCombinerInputParameterfvNV v0 v1 v2 = funGL 1798 >>= \f -> liftIO $ f v0 v1 v2

glGetFinalCombinerInputParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetFinalCombinerInputParameterivNV v0 v1 v2 = funGL 1799 >>= \f -> liftIO $ f v0 v1 v2

gl_BIAS_BY_NEGATIVE_ONE_HALF_NV :: GLenum
gl_BIAS_BY_NEGATIVE_ONE_HALF_NV = 0x8541

gl_COLOR_SUM_CLAMP_NV :: GLenum
gl_COLOR_SUM_CLAMP_NV = 0x854F

gl_COMBINER0_NV :: GLenum
gl_COMBINER0_NV = 0x8550

gl_COMBINER1_NV :: GLenum
gl_COMBINER1_NV = 0x8551

gl_COMBINER2_NV :: GLenum
gl_COMBINER2_NV = 0x8552

gl_COMBINER3_NV :: GLenum
gl_COMBINER3_NV = 0x8553

gl_COMBINER4_NV :: GLenum
gl_COMBINER4_NV = 0x8554

gl_COMBINER5_NV :: GLenum
gl_COMBINER5_NV = 0x8555

gl_COMBINER6_NV :: GLenum
gl_COMBINER6_NV = 0x8556

gl_COMBINER7_NV :: GLenum
gl_COMBINER7_NV = 0x8557

gl_COMBINER_AB_DOT_PRODUCT_NV :: GLenum
gl_COMBINER_AB_DOT_PRODUCT_NV = 0x8545

gl_COMBINER_AB_OUTPUT_NV :: GLenum
gl_COMBINER_AB_OUTPUT_NV = 0x854A

gl_COMBINER_BIAS_NV :: GLenum
gl_COMBINER_BIAS_NV = 0x8549

gl_COMBINER_CD_DOT_PRODUCT_NV :: GLenum
gl_COMBINER_CD_DOT_PRODUCT_NV = 0x8546

gl_COMBINER_CD_OUTPUT_NV :: GLenum
gl_COMBINER_CD_OUTPUT_NV = 0x854B

gl_COMBINER_COMPONENT_USAGE_NV :: GLenum
gl_COMBINER_COMPONENT_USAGE_NV = 0x8544

gl_COMBINER_INPUT_NV :: GLenum
gl_COMBINER_INPUT_NV = 0x8542

gl_COMBINER_MAPPING_NV :: GLenum
gl_COMBINER_MAPPING_NV = 0x8543

gl_COMBINER_MUX_SUM_NV :: GLenum
gl_COMBINER_MUX_SUM_NV = 0x8547

gl_COMBINER_SCALE_NV :: GLenum
gl_COMBINER_SCALE_NV = 0x8548

gl_COMBINER_SUM_OUTPUT_NV :: GLenum
gl_COMBINER_SUM_OUTPUT_NV = 0x854C

gl_CONSTANT_COLOR0_NV :: GLenum
gl_CONSTANT_COLOR0_NV = 0x852A

gl_CONSTANT_COLOR1_NV :: GLenum
gl_CONSTANT_COLOR1_NV = 0x852B

gl_DISCARD_NV :: GLenum
gl_DISCARD_NV = 0x8530

gl_EXPAND_NEGATE_NV :: GLenum
gl_EXPAND_NEGATE_NV = 0x8539

gl_EXPAND_NORMAL_NV :: GLenum
gl_EXPAND_NORMAL_NV = 0x8538

gl_E_TIMES_F_NV :: GLenum
gl_E_TIMES_F_NV = 0x8531

gl_HALF_BIAS_NEGATE_NV :: GLenum
gl_HALF_BIAS_NEGATE_NV = 0x853B

gl_HALF_BIAS_NORMAL_NV :: GLenum
gl_HALF_BIAS_NORMAL_NV = 0x853A

gl_MAX_GENERAL_COMBINERS_NV :: GLenum
gl_MAX_GENERAL_COMBINERS_NV = 0x854D

gl_NUM_GENERAL_COMBINERS_NV :: GLenum
gl_NUM_GENERAL_COMBINERS_NV = 0x854E

gl_REGISTER_COMBINERS_NV :: GLenum
gl_REGISTER_COMBINERS_NV = 0x8522

gl_SCALE_BY_FOUR_NV :: GLenum
gl_SCALE_BY_FOUR_NV = 0x853F

gl_SCALE_BY_ONE_HALF_NV :: GLenum
gl_SCALE_BY_ONE_HALF_NV = 0x8540

gl_SCALE_BY_TWO_NV :: GLenum
gl_SCALE_BY_TWO_NV = 0x853E

gl_SIGNED_IDENTITY_NV :: GLenum
gl_SIGNED_IDENTITY_NV = 0x853C

gl_SIGNED_NEGATE_NV :: GLenum
gl_SIGNED_NEGATE_NV = 0x853D

gl_SPARE0_NV :: GLenum
gl_SPARE0_NV = 0x852E

gl_SPARE0_PLUS_SECONDARY_COLOR_NV :: GLenum
gl_SPARE0_PLUS_SECONDARY_COLOR_NV = 0x8532

gl_SPARE1_NV :: GLenum
gl_SPARE1_NV = 0x852F

gl_UNSIGNED_IDENTITY_NV :: GLenum
gl_UNSIGNED_IDENTITY_NV = 0x8536

gl_UNSIGNED_INVERT_NV :: GLenum
gl_UNSIGNED_INVERT_NV = 0x8537

gl_VARIABLE_A_NV :: GLenum
gl_VARIABLE_A_NV = 0x8523

gl_VARIABLE_B_NV :: GLenum
gl_VARIABLE_B_NV = 0x8524

gl_VARIABLE_C_NV :: GLenum
gl_VARIABLE_C_NV = 0x8525

gl_VARIABLE_D_NV :: GLenum
gl_VARIABLE_D_NV = 0x8526

gl_VARIABLE_E_NV :: GLenum
gl_VARIABLE_E_NV = 0x8527

gl_VARIABLE_F_NV :: GLenum
gl_VARIABLE_F_NV = 0x8528

gl_VARIABLE_G_NV :: GLenum
gl_VARIABLE_G_NV = 0x8529