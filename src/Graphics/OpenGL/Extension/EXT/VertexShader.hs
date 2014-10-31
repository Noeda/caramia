-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.VertexShader (
	-- * Extension Support
	  gl_EXT_vertex_shader

	-- * GL_EXT_vertex_shader
	, glBeginVertexShaderEXT
	, glBindLightParameterEXT
	, glBindMaterialParameterEXT
	, glBindParameterEXT
	, glBindTexGenParameterEXT
	, glBindTextureUnitParameterEXT
	, glBindVertexShaderEXT
	, glDeleteVertexShaderEXT
	, glDisableVariantClientStateEXT
	, glEnableVariantClientStateEXT
	, glEndVertexShaderEXT
	, glExtractComponentEXT
	, glGenSymbolsEXT
	, glGenVertexShadersEXT
	, glGetInvariantBooleanvEXT
	, glGetInvariantFloatvEXT
	, glGetInvariantIntegervEXT
	, glGetLocalConstantBooleanvEXT
	, glGetLocalConstantFloatvEXT
	, glGetLocalConstantIntegervEXT
	, glGetVariantBooleanvEXT
	, glGetVariantFloatvEXT
	, glGetVariantIntegervEXT
	, glGetVariantPointervEXT
	, glInsertComponentEXT
	, glIsVariantEnabledEXT
	, glSetInvariantEXT
	, glSetLocalConstantEXT
	, glShaderOp1EXT
	, glShaderOp2EXT
	, glShaderOp3EXT
	, glSwizzleEXT
	, glVariantPointerEXT
	, glVariantbvEXT
	, glVariantdvEXT
	, glVariantfvEXT
	, glVariantivEXT
	, glVariantsvEXT
	, glVariantubvEXT
	, glVariantuivEXT
	, glVariantusvEXT
	, glWriteMaskEXT
	, gl_CURRENT_VERTEX_EXT
	, gl_FULL_RANGE_EXT
	, gl_INVARIANT_DATATYPE_EXT
	, gl_INVARIANT_EXT
	, gl_INVARIANT_VALUE_EXT
	, gl_LOCAL_CONSTANT_DATATYPE_EXT
	, gl_LOCAL_CONSTANT_EXT
	, gl_LOCAL_CONSTANT_VALUE_EXT
	, gl_LOCAL_EXT
	, gl_MATRIX_EXT
	, gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT
	, gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT
	, gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT
	, gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
	, gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT
	, gl_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT
	, gl_MAX_VERTEX_SHADER_INVARIANTS_EXT
	, gl_MAX_VERTEX_SHADER_LOCALS_EXT
	, gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
	, gl_MAX_VERTEX_SHADER_VARIANTS_EXT
	, gl_MVP_MATRIX_EXT
	, gl_NEGATIVE_ONE_EXT
	, gl_NEGATIVE_W_EXT
	, gl_NEGATIVE_X_EXT
	, gl_NEGATIVE_Y_EXT
	, gl_NEGATIVE_Z_EXT
	, gl_NORMALIZED_RANGE_EXT
	, gl_ONE_EXT
	, gl_OP_ADD_EXT
	, gl_OP_CLAMP_EXT
	, gl_OP_CROSS_PRODUCT_EXT
	, gl_OP_DOT3_EXT
	, gl_OP_DOT4_EXT
	, gl_OP_EXP_BASE_2_EXT
	, gl_OP_FLOOR_EXT
	, gl_OP_FRAC_EXT
	, gl_OP_INDEX_EXT
	, gl_OP_LOG_BASE_2_EXT
	, gl_OP_MADD_EXT
	, gl_OP_MAX_EXT
	, gl_OP_MIN_EXT
	, gl_OP_MOV_EXT
	, gl_OP_MULTIPLY_MATRIX_EXT
	, gl_OP_MUL_EXT
	, gl_OP_NEGATE_EXT
	, gl_OP_POWER_EXT
	, gl_OP_RECIP_EXT
	, gl_OP_RECIP_SQRT_EXT
	, gl_OP_ROUND_EXT
	, gl_OP_SET_GE_EXT
	, gl_OP_SET_LT_EXT
	, gl_OP_SUB_EXT
	, gl_OUTPUT_COLOR0_EXT
	, gl_OUTPUT_COLOR1_EXT
	, gl_OUTPUT_FOG_EXT
	, gl_OUTPUT_TEXTURE_COORD0_EXT
	, gl_OUTPUT_TEXTURE_COORD10_EXT
	, gl_OUTPUT_TEXTURE_COORD11_EXT
	, gl_OUTPUT_TEXTURE_COORD12_EXT
	, gl_OUTPUT_TEXTURE_COORD13_EXT
	, gl_OUTPUT_TEXTURE_COORD14_EXT
	, gl_OUTPUT_TEXTURE_COORD15_EXT
	, gl_OUTPUT_TEXTURE_COORD16_EXT
	, gl_OUTPUT_TEXTURE_COORD17_EXT
	, gl_OUTPUT_TEXTURE_COORD18_EXT
	, gl_OUTPUT_TEXTURE_COORD19_EXT
	, gl_OUTPUT_TEXTURE_COORD1_EXT
	, gl_OUTPUT_TEXTURE_COORD20_EXT
	, gl_OUTPUT_TEXTURE_COORD21_EXT
	, gl_OUTPUT_TEXTURE_COORD22_EXT
	, gl_OUTPUT_TEXTURE_COORD23_EXT
	, gl_OUTPUT_TEXTURE_COORD24_EXT
	, gl_OUTPUT_TEXTURE_COORD25_EXT
	, gl_OUTPUT_TEXTURE_COORD26_EXT
	, gl_OUTPUT_TEXTURE_COORD27_EXT
	, gl_OUTPUT_TEXTURE_COORD28_EXT
	, gl_OUTPUT_TEXTURE_COORD29_EXT
	, gl_OUTPUT_TEXTURE_COORD2_EXT
	, gl_OUTPUT_TEXTURE_COORD30_EXT
	, gl_OUTPUT_TEXTURE_COORD31_EXT
	, gl_OUTPUT_TEXTURE_COORD3_EXT
	, gl_OUTPUT_TEXTURE_COORD4_EXT
	, gl_OUTPUT_TEXTURE_COORD5_EXT
	, gl_OUTPUT_TEXTURE_COORD6_EXT
	, gl_OUTPUT_TEXTURE_COORD7_EXT
	, gl_OUTPUT_TEXTURE_COORD8_EXT
	, gl_OUTPUT_TEXTURE_COORD9_EXT
	, gl_OUTPUT_VERTEX_EXT
	, gl_SCALAR_EXT
	, gl_VARIANT_ARRAY_EXT
	, gl_VARIANT_ARRAY_POINTER_EXT
	, gl_VARIANT_ARRAY_STRIDE_EXT
	, gl_VARIANT_ARRAY_TYPE_EXT
	, gl_VARIANT_DATATYPE_EXT
	, gl_VARIANT_EXT
	, gl_VARIANT_VALUE_EXT
	, gl_VECTOR_EXT
	, gl_VERTEX_SHADER_BINDING_EXT
	, gl_VERTEX_SHADER_EXT
	, gl_VERTEX_SHADER_INSTRUCTIONS_EXT
	, gl_VERTEX_SHADER_INVARIANTS_EXT
	, gl_VERTEX_SHADER_LOCALS_EXT
	, gl_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
	, gl_VERTEX_SHADER_OPTIMIZED_EXT
	, gl_VERTEX_SHADER_VARIANTS_EXT
	, gl_W_EXT
	, gl_X_EXT
	, gl_Y_EXT
	, gl_ZERO_EXT
	, gl_Z_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_vertex_shader :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_vertex_shader = extGL 382

glBeginVertexShaderEXT :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glBeginVertexShaderEXT = funGL 1416 >>= \f -> liftIO $ f

glBindLightParameterEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m GLuint
glBindLightParameterEXT v0 v1 = funGL 1417 >>= \f -> liftIO $ f v0 v1

glBindMaterialParameterEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m GLuint
glBindMaterialParameterEXT v0 v1 = funGL 1418 >>= \f -> liftIO $ f v0 v1

glBindParameterEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLuint
glBindParameterEXT v0 = funGL 1419 >>= \f -> liftIO $ f v0

glBindTexGenParameterEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> m GLuint
glBindTexGenParameterEXT v0 v1 v2 = funGL 1420 >>= \f -> liftIO $ f v0 v1 v2

glBindTextureUnitParameterEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m GLuint
glBindTextureUnitParameterEXT v0 v1 = funGL 1421 >>= \f -> liftIO $ f v0 v1

glBindVertexShaderEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glBindVertexShaderEXT v0 = funGL 1422 >>= \f -> liftIO $ f v0

glDeleteVertexShaderEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDeleteVertexShaderEXT v0 = funGL 1423 >>= \f -> liftIO $ f v0

glDisableVariantClientStateEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glDisableVariantClientStateEXT v0 = funGL 1424 >>= \f -> liftIO $ f v0

glEnableVariantClientStateEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glEnableVariantClientStateEXT v0 = funGL 1425 >>= \f -> liftIO $ f v0

glEndVertexShaderEXT :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glEndVertexShaderEXT = funGL 1426 >>= \f -> liftIO $ f

glExtractComponentEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glExtractComponentEXT v0 v1 v2 = funGL 1427 >>= \f -> liftIO $ f v0 v1 v2

glGenSymbolsEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> m GLuint
glGenSymbolsEXT v0 v1 v2 v3 = funGL 1428 >>= \f -> liftIO $ f v0 v1 v2 v3

glGenVertexShadersEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLuint
glGenVertexShadersEXT v0 = funGL 1429 >>= \f -> liftIO $ f v0

glGetInvariantBooleanvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLboolean -> m ()
glGetInvariantBooleanvEXT v0 v1 v2 = funGL 1430 >>= \f -> liftIO $ f v0 v1 v2

glGetInvariantFloatvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetInvariantFloatvEXT v0 v1 v2 = funGL 1431 >>= \f -> liftIO $ f v0 v1 v2

glGetInvariantIntegervEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetInvariantIntegervEXT v0 v1 v2 = funGL 1432 >>= \f -> liftIO $ f v0 v1 v2

glGetLocalConstantBooleanvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLboolean -> m ()
glGetLocalConstantBooleanvEXT v0 v1 v2 = funGL 1433 >>= \f -> liftIO $ f v0 v1 v2

glGetLocalConstantFloatvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetLocalConstantFloatvEXT v0 v1 v2 = funGL 1434 >>= \f -> liftIO $ f v0 v1 v2

glGetLocalConstantIntegervEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetLocalConstantIntegervEXT v0 v1 v2 = funGL 1435 >>= \f -> liftIO $ f v0 v1 v2

glGetVariantBooleanvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLboolean -> m ()
glGetVariantBooleanvEXT v0 v1 v2 = funGL 1436 >>= \f -> liftIO $ f v0 v1 v2

glGetVariantFloatvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetVariantFloatvEXT v0 v1 v2 = funGL 1437 >>= \f -> liftIO $ f v0 v1 v2

glGetVariantIntegervEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVariantIntegervEXT v0 v1 v2 = funGL 1438 >>= \f -> liftIO $ f v0 v1 v2

glGetVariantPointervEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glGetVariantPointervEXT v0 v1 v2 = funGL 1439 >>= \f -> liftIO $ f v0 v1 v2

glInsertComponentEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> m ()
glInsertComponentEXT v0 v1 v2 = funGL 1440 >>= \f -> liftIO $ f v0 v1 v2

glIsVariantEnabledEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m GLboolean
glIsVariantEnabledEXT v0 v1 = funGL 1441 >>= \f -> liftIO $ f v0 v1

glSetInvariantEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glSetInvariantEXT v0 v1 v2 = funGL 1442 >>= \f -> liftIO $ f v0 v1 v2

glSetLocalConstantEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> m ()
glSetLocalConstantEXT v0 v1 v2 = funGL 1443 >>= \f -> liftIO $ f v0 v1 v2

glShaderOp1EXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> m ()
glShaderOp1EXT v0 v1 v2 = funGL 1444 >>= \f -> liftIO $ f v0 v1 v2

glShaderOp2EXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> m ()
glShaderOp2EXT v0 v1 v2 v3 = funGL 1445 >>= \f -> liftIO $ f v0 v1 v2 v3

glShaderOp3EXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glShaderOp3EXT v0 v1 v2 v3 v4 = funGL 1446 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glSwizzleEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
glSwizzleEXT v0 v1 v2 v3 v4 v5 = funGL 1447 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glVariantPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> Ptr () -> m ()
glVariantPointerEXT v0 v1 v2 v3 = funGL 1448 >>= \f -> liftIO $ f v0 v1 v2 v3

glVariantbvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLbyte -> m ()
glVariantbvEXT v0 v1 = funGL 1449 >>= \f -> liftIO $ f v0 v1

glVariantdvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLdouble -> m ()
glVariantdvEXT v0 v1 = funGL 1450 >>= \f -> liftIO $ f v0 v1

glVariantfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glVariantfvEXT v0 v1 = funGL 1451 >>= \f -> liftIO $ f v0 v1

glVariantivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLint -> m ()
glVariantivEXT v0 v1 = funGL 1452 >>= \f -> liftIO $ f v0 v1

glVariantsvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLshort -> m ()
glVariantsvEXT v0 v1 = funGL 1453 >>= \f -> liftIO $ f v0 v1

glVariantubvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glVariantubvEXT v0 v1 = funGL 1454 >>= \f -> liftIO $ f v0 v1

glVariantuivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLuint -> m ()
glVariantuivEXT v0 v1 = funGL 1455 >>= \f -> liftIO $ f v0 v1

glVariantusvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLushort -> m ()
glVariantusvEXT v0 v1 = funGL 1456 >>= \f -> liftIO $ f v0 v1

glWriteMaskEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
glWriteMaskEXT v0 v1 v2 v3 v4 v5 = funGL 1457 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_CURRENT_VERTEX_EXT :: GLenum
gl_CURRENT_VERTEX_EXT = 0x87E2

gl_FULL_RANGE_EXT :: GLenum
gl_FULL_RANGE_EXT = 0x87E1

gl_INVARIANT_DATATYPE_EXT :: GLenum
gl_INVARIANT_DATATYPE_EXT = 0x87EB

gl_INVARIANT_EXT :: GLenum
gl_INVARIANT_EXT = 0x87C2

gl_INVARIANT_VALUE_EXT :: GLenum
gl_INVARIANT_VALUE_EXT = 0x87EA

gl_LOCAL_CONSTANT_DATATYPE_EXT :: GLenum
gl_LOCAL_CONSTANT_DATATYPE_EXT = 0x87ED

gl_LOCAL_CONSTANT_EXT :: GLenum
gl_LOCAL_CONSTANT_EXT = 0x87C3

gl_LOCAL_CONSTANT_VALUE_EXT :: GLenum
gl_LOCAL_CONSTANT_VALUE_EXT = 0x87EC

gl_LOCAL_EXT :: GLenum
gl_LOCAL_EXT = 0x87C4

gl_MATRIX_EXT :: GLenum
gl_MATRIX_EXT = 0x87C0

gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CA

gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT = 0x87CD

gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT = 0x87CE

gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87CC

gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT :: GLenum
gl_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT = 0x87CB

gl_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87C5

gl_MAX_VERTEX_SHADER_INVARIANTS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_INVARIANTS_EXT = 0x87C7

gl_MAX_VERTEX_SHADER_LOCALS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_LOCALS_EXT = 0x87C9

gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87C8

gl_MAX_VERTEX_SHADER_VARIANTS_EXT :: GLenum
gl_MAX_VERTEX_SHADER_VARIANTS_EXT = 0x87C6

gl_MVP_MATRIX_EXT :: GLenum
gl_MVP_MATRIX_EXT = 0x87E3

gl_NEGATIVE_ONE_EXT :: GLenum
gl_NEGATIVE_ONE_EXT = 0x87DF

gl_NEGATIVE_W_EXT :: GLenum
gl_NEGATIVE_W_EXT = 0x87DC

gl_NEGATIVE_X_EXT :: GLenum
gl_NEGATIVE_X_EXT = 0x87D9

gl_NEGATIVE_Y_EXT :: GLenum
gl_NEGATIVE_Y_EXT = 0x87DA

gl_NEGATIVE_Z_EXT :: GLenum
gl_NEGATIVE_Z_EXT = 0x87DB

gl_NORMALIZED_RANGE_EXT :: GLenum
gl_NORMALIZED_RANGE_EXT = 0x87E0

gl_ONE_EXT :: GLenum
gl_ONE_EXT = 0x87DE

gl_OP_ADD_EXT :: GLenum
gl_OP_ADD_EXT = 0x8787

gl_OP_CLAMP_EXT :: GLenum
gl_OP_CLAMP_EXT = 0x878E

gl_OP_CROSS_PRODUCT_EXT :: GLenum
gl_OP_CROSS_PRODUCT_EXT = 0x8797

gl_OP_DOT3_EXT :: GLenum
gl_OP_DOT3_EXT = 0x8784

gl_OP_DOT4_EXT :: GLenum
gl_OP_DOT4_EXT = 0x8785

gl_OP_EXP_BASE_2_EXT :: GLenum
gl_OP_EXP_BASE_2_EXT = 0x8791

gl_OP_FLOOR_EXT :: GLenum
gl_OP_FLOOR_EXT = 0x878F

gl_OP_FRAC_EXT :: GLenum
gl_OP_FRAC_EXT = 0x8789

gl_OP_INDEX_EXT :: GLenum
gl_OP_INDEX_EXT = 0x8782

gl_OP_LOG_BASE_2_EXT :: GLenum
gl_OP_LOG_BASE_2_EXT = 0x8792

gl_OP_MADD_EXT :: GLenum
gl_OP_MADD_EXT = 0x8788

gl_OP_MAX_EXT :: GLenum
gl_OP_MAX_EXT = 0x878A

gl_OP_MIN_EXT :: GLenum
gl_OP_MIN_EXT = 0x878B

gl_OP_MOV_EXT :: GLenum
gl_OP_MOV_EXT = 0x8799

gl_OP_MULTIPLY_MATRIX_EXT :: GLenum
gl_OP_MULTIPLY_MATRIX_EXT = 0x8798

gl_OP_MUL_EXT :: GLenum
gl_OP_MUL_EXT = 0x8786

gl_OP_NEGATE_EXT :: GLenum
gl_OP_NEGATE_EXT = 0x8783

gl_OP_POWER_EXT :: GLenum
gl_OP_POWER_EXT = 0x8793

gl_OP_RECIP_EXT :: GLenum
gl_OP_RECIP_EXT = 0x8794

gl_OP_RECIP_SQRT_EXT :: GLenum
gl_OP_RECIP_SQRT_EXT = 0x8795

gl_OP_ROUND_EXT :: GLenum
gl_OP_ROUND_EXT = 0x8790

gl_OP_SET_GE_EXT :: GLenum
gl_OP_SET_GE_EXT = 0x878C

gl_OP_SET_LT_EXT :: GLenum
gl_OP_SET_LT_EXT = 0x878D

gl_OP_SUB_EXT :: GLenum
gl_OP_SUB_EXT = 0x8796

gl_OUTPUT_COLOR0_EXT :: GLenum
gl_OUTPUT_COLOR0_EXT = 0x879B

gl_OUTPUT_COLOR1_EXT :: GLenum
gl_OUTPUT_COLOR1_EXT = 0x879C

gl_OUTPUT_FOG_EXT :: GLenum
gl_OUTPUT_FOG_EXT = 0x87BD

gl_OUTPUT_TEXTURE_COORD0_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD0_EXT = 0x879D

gl_OUTPUT_TEXTURE_COORD10_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD10_EXT = 0x87A7

gl_OUTPUT_TEXTURE_COORD11_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD11_EXT = 0x87A8

gl_OUTPUT_TEXTURE_COORD12_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD12_EXT = 0x87A9

gl_OUTPUT_TEXTURE_COORD13_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD13_EXT = 0x87AA

gl_OUTPUT_TEXTURE_COORD14_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD14_EXT = 0x87AB

gl_OUTPUT_TEXTURE_COORD15_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD15_EXT = 0x87AC

gl_OUTPUT_TEXTURE_COORD16_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD16_EXT = 0x87AD

gl_OUTPUT_TEXTURE_COORD17_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD17_EXT = 0x87AE

gl_OUTPUT_TEXTURE_COORD18_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD18_EXT = 0x87AF

gl_OUTPUT_TEXTURE_COORD19_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD19_EXT = 0x87B0

gl_OUTPUT_TEXTURE_COORD1_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD1_EXT = 0x879E

gl_OUTPUT_TEXTURE_COORD20_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD20_EXT = 0x87B1

gl_OUTPUT_TEXTURE_COORD21_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD21_EXT = 0x87B2

gl_OUTPUT_TEXTURE_COORD22_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD22_EXT = 0x87B3

gl_OUTPUT_TEXTURE_COORD23_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD23_EXT = 0x87B4

gl_OUTPUT_TEXTURE_COORD24_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD24_EXT = 0x87B5

gl_OUTPUT_TEXTURE_COORD25_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD25_EXT = 0x87B6

gl_OUTPUT_TEXTURE_COORD26_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD26_EXT = 0x87B7

gl_OUTPUT_TEXTURE_COORD27_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD27_EXT = 0x87B8

gl_OUTPUT_TEXTURE_COORD28_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD28_EXT = 0x87B9

gl_OUTPUT_TEXTURE_COORD29_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD29_EXT = 0x87BA

gl_OUTPUT_TEXTURE_COORD2_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD2_EXT = 0x879F

gl_OUTPUT_TEXTURE_COORD30_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD30_EXT = 0x87BB

gl_OUTPUT_TEXTURE_COORD31_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD31_EXT = 0x87BC

gl_OUTPUT_TEXTURE_COORD3_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD3_EXT = 0x87A0

gl_OUTPUT_TEXTURE_COORD4_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD4_EXT = 0x87A1

gl_OUTPUT_TEXTURE_COORD5_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD5_EXT = 0x87A2

gl_OUTPUT_TEXTURE_COORD6_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD6_EXT = 0x87A3

gl_OUTPUT_TEXTURE_COORD7_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD7_EXT = 0x87A4

gl_OUTPUT_TEXTURE_COORD8_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD8_EXT = 0x87A5

gl_OUTPUT_TEXTURE_COORD9_EXT :: GLenum
gl_OUTPUT_TEXTURE_COORD9_EXT = 0x87A6

gl_OUTPUT_VERTEX_EXT :: GLenum
gl_OUTPUT_VERTEX_EXT = 0x879A

gl_SCALAR_EXT :: GLenum
gl_SCALAR_EXT = 0x87BE

gl_VARIANT_ARRAY_EXT :: GLenum
gl_VARIANT_ARRAY_EXT = 0x87E8

gl_VARIANT_ARRAY_POINTER_EXT :: GLenum
gl_VARIANT_ARRAY_POINTER_EXT = 0x87E9

gl_VARIANT_ARRAY_STRIDE_EXT :: GLenum
gl_VARIANT_ARRAY_STRIDE_EXT = 0x87E6

gl_VARIANT_ARRAY_TYPE_EXT :: GLenum
gl_VARIANT_ARRAY_TYPE_EXT = 0x87E7

gl_VARIANT_DATATYPE_EXT :: GLenum
gl_VARIANT_DATATYPE_EXT = 0x87E5

gl_VARIANT_EXT :: GLenum
gl_VARIANT_EXT = 0x87C1

gl_VARIANT_VALUE_EXT :: GLenum
gl_VARIANT_VALUE_EXT = 0x87E4

gl_VECTOR_EXT :: GLenum
gl_VECTOR_EXT = 0x87BF

gl_VERTEX_SHADER_BINDING_EXT :: GLenum
gl_VERTEX_SHADER_BINDING_EXT = 0x8781

gl_VERTEX_SHADER_EXT :: GLenum
gl_VERTEX_SHADER_EXT = 0x8780

gl_VERTEX_SHADER_INSTRUCTIONS_EXT :: GLenum
gl_VERTEX_SHADER_INSTRUCTIONS_EXT = 0x87CF

gl_VERTEX_SHADER_INVARIANTS_EXT :: GLenum
gl_VERTEX_SHADER_INVARIANTS_EXT = 0x87D1

gl_VERTEX_SHADER_LOCALS_EXT :: GLenum
gl_VERTEX_SHADER_LOCALS_EXT = 0x87D3

gl_VERTEX_SHADER_LOCAL_CONSTANTS_EXT :: GLenum
gl_VERTEX_SHADER_LOCAL_CONSTANTS_EXT = 0x87D2

gl_VERTEX_SHADER_OPTIMIZED_EXT :: GLenum
gl_VERTEX_SHADER_OPTIMIZED_EXT = 0x87D4

gl_VERTEX_SHADER_VARIANTS_EXT :: GLenum
gl_VERTEX_SHADER_VARIANTS_EXT = 0x87D0

gl_W_EXT :: GLenum
gl_W_EXT = 0x87D8

gl_X_EXT :: GLenum
gl_X_EXT = 0x87D5

gl_Y_EXT :: GLenum
gl_Y_EXT = 0x87D6

gl_ZERO_EXT :: GLenum
gl_ZERO_EXT = 0x87DD

gl_Z_EXT :: GLenum
gl_Z_EXT = 0x87D7