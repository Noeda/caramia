-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.PathRendering (
	-- * Extension Support
	  gl_NV_path_rendering

	-- * GL_NV_path_rendering
	, glCopyPathNV
	, glCoverFillPathInstancedNV
	, glCoverFillPathNV
	, glCoverStrokePathInstancedNV
	, glCoverStrokePathNV
	, glDeletePathsNV
	, glGenPathsNV
	, glGetPathColorGenfvNV
	, glGetPathColorGenivNV
	, glGetPathCommandsNV
	, glGetPathCoordsNV
	, glGetPathDashArrayNV
	, glGetPathLengthNV
	, glGetPathMetricRangeNV
	, glGetPathMetricsNV
	, glGetPathParameterfvNV
	, glGetPathParameterivNV
	, glGetPathSpacingNV
	, glGetPathTexGenfvNV
	, glGetPathTexGenivNV
	, glGetProgramResourcefvNV
	, glInterpolatePathsNV
	, glIsPathNV
	, glIsPointInFillPathNV
	, glIsPointInStrokePathNV
	, glMatrixLoad3x2fNV
	, glMatrixLoad3x3fNV
	, glMatrixLoadTranspose3x3fNV
	, glMatrixMult3x2fNV
	, glMatrixMult3x3fNV
	, glMatrixMultTranspose3x3fNV
	, glPathColorGenNV
	, glPathCommandsNV
	, glPathCoordsNV
	, glPathCoverDepthFuncNV
	, glPathDashArrayNV
	, glPathFogGenNV
	, glPathGlyphIndexArrayNV
	, glPathGlyphIndexRangeNV
	, glPathGlyphRangeNV
	, glPathGlyphsNV
	, glPathMemoryGlyphIndexArrayNV
	, glPathParameterfNV
	, glPathParameterfvNV
	, glPathParameteriNV
	, glPathParameterivNV
	, glPathStencilDepthOffsetNV
	, glPathStencilFuncNV
	, glPathStringNV
	, glPathSubCommandsNV
	, glPathSubCoordsNV
	, glPathTexGenNV
	, glPointAlongPathNV
	, glProgramPathFragmentInputGenNV
	, glStencilFillPathInstancedNV
	, glStencilFillPathNV
	, glStencilStrokePathInstancedNV
	, glStencilStrokePathNV
	, glStencilThenCoverFillPathInstancedNV
	, glStencilThenCoverFillPathNV
	, glStencilThenCoverStrokePathInstancedNV
	, glStencilThenCoverStrokePathNV
	, glTransformPathNV
	, glWeightPathsNV
	, gl_2_BYTES_NV
	, gl_3_BYTES_NV
	, gl_4_BYTES_NV
	, gl_ACCUM_ADJACENT_PAIRS_NV
	, gl_ADJACENT_PAIRS_NV
	, gl_AFFINE_2D_NV
	, gl_AFFINE_3D_NV
	, gl_ARC_TO_NV
	, gl_BEVEL_NV
	, gl_BOLD_BIT_NV
	, gl_BOUNDING_BOX_NV
	, gl_BOUNDING_BOX_OF_BOUNDING_BOXES_NV
	, gl_CIRCULAR_CCW_ARC_TO_NV
	, gl_CIRCULAR_CW_ARC_TO_NV
	, gl_CIRCULAR_TANGENT_ARC_TO_NV
	, gl_CLOSE_PATH_NV
	, gl_CONIC_CURVE_TO_NV
	, gl_CONSTANT_NV
	, gl_CONVEX_HULL_NV
	, gl_COUNT_DOWN_NV
	, gl_COUNT_UP_NV
	, gl_CUBIC_CURVE_TO_NV
	, gl_DUP_FIRST_CUBIC_CURVE_TO_NV
	, gl_DUP_LAST_CUBIC_CURVE_TO_NV
	, gl_EYE_LINEAR_NV
	, gl_FILE_NAME_NV
	, gl_FIRST_TO_REST_NV
	, gl_FONT_ASCENDER_BIT_NV
	, gl_FONT_DESCENDER_BIT_NV
	, gl_FONT_GLYPHS_AVAILABLE_NV
	, gl_FONT_HAS_KERNING_BIT_NV
	, gl_FONT_HEIGHT_BIT_NV
	, gl_FONT_MAX_ADVANCE_HEIGHT_BIT_NV
	, gl_FONT_MAX_ADVANCE_WIDTH_BIT_NV
	, gl_FONT_NUM_GLYPH_INDICES_BIT_NV
	, gl_FONT_TARGET_UNAVAILABLE_NV
	, gl_FONT_UNAVAILABLE_NV
	, gl_FONT_UNDERLINE_POSITION_BIT_NV
	, gl_FONT_UNDERLINE_THICKNESS_BIT_NV
	, gl_FONT_UNINTELLIGIBLE_NV
	, gl_FONT_UNITS_PER_EM_BIT_NV
	, gl_FONT_X_MAX_BOUNDS_BIT_NV
	, gl_FONT_X_MIN_BOUNDS_BIT_NV
	, gl_FONT_Y_MAX_BOUNDS_BIT_NV
	, gl_FONT_Y_MIN_BOUNDS_BIT_NV
	, gl_FRAGMENT_INPUT_NV
	, gl_GLYPH_HAS_KERNING_BIT_NV
	, gl_GLYPH_HEIGHT_BIT_NV
	, gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV
	, gl_GLYPH_HORIZONTAL_BEARING_X_BIT_NV
	, gl_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV
	, gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV
	, gl_GLYPH_VERTICAL_BEARING_X_BIT_NV
	, gl_GLYPH_VERTICAL_BEARING_Y_BIT_NV
	, gl_GLYPH_WIDTH_BIT_NV
	, gl_HORIZONTAL_LINE_TO_NV
	, gl_ITALIC_BIT_NV
	, gl_LARGE_CCW_ARC_TO_NV
	, gl_LARGE_CW_ARC_TO_NV
	, gl_LINE_TO_NV
	, gl_MITER_REVERT_NV
	, gl_MITER_TRUNCATE_NV
	, gl_MOVE_TO_CONTINUES_NV
	, gl_MOVE_TO_NV
	, gl_MOVE_TO_RESETS_NV
	, gl_OBJECT_LINEAR_NV
	, gl_PATH_CLIENT_LENGTH_NV
	, gl_PATH_COMMAND_COUNT_NV
	, gl_PATH_COMPUTED_LENGTH_NV
	, gl_PATH_COORD_COUNT_NV
	, gl_PATH_COVER_DEPTH_FUNC_NV
	, gl_PATH_DASH_ARRAY_COUNT_NV
	, gl_PATH_DASH_CAPS_NV
	, gl_PATH_DASH_OFFSET_NV
	, gl_PATH_DASH_OFFSET_RESET_NV
	, gl_PATH_END_CAPS_NV
	, gl_PATH_ERROR_POSITION_NV
	, gl_PATH_FILL_BOUNDING_BOX_NV
	, gl_PATH_FILL_COVER_MODE_NV
	, gl_PATH_FILL_MASK_NV
	, gl_PATH_FILL_MODE_NV
	, gl_PATH_FOG_GEN_MODE_NV
	, gl_PATH_FORMAT_PS_NV
	, gl_PATH_FORMAT_SVG_NV
	, gl_PATH_GEN_COEFF_NV
	, gl_PATH_GEN_COLOR_FORMAT_NV
	, gl_PATH_GEN_COMPONENTS_NV
	, gl_PATH_GEN_MODE_NV
	, gl_PATH_INITIAL_DASH_CAP_NV
	, gl_PATH_INITIAL_END_CAP_NV
	, gl_PATH_JOIN_STYLE_NV
	, gl_PATH_MAX_MODELVIEW_STACK_DEPTH_NV
	, gl_PATH_MAX_PROJECTION_STACK_DEPTH_NV
	, gl_PATH_MITER_LIMIT_NV
	, gl_PATH_MODELVIEW_MATRIX_NV
	, gl_PATH_MODELVIEW_NV
	, gl_PATH_MODELVIEW_STACK_DEPTH_NV
	, gl_PATH_OBJECT_BOUNDING_BOX_NV
	, gl_PATH_PROJECTION_MATRIX_NV
	, gl_PATH_PROJECTION_NV
	, gl_PATH_PROJECTION_STACK_DEPTH_NV
	, gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV
	, gl_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV
	, gl_PATH_STENCIL_FUNC_NV
	, gl_PATH_STENCIL_REF_NV
	, gl_PATH_STENCIL_VALUE_MASK_NV
	, gl_PATH_STROKE_BOUNDING_BOX_NV
	, gl_PATH_STROKE_COVER_MODE_NV
	, gl_PATH_STROKE_MASK_NV
	, gl_PATH_STROKE_WIDTH_NV
	, gl_PATH_TERMINAL_DASH_CAP_NV
	, gl_PATH_TERMINAL_END_CAP_NV
	, gl_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV
	, gl_PATH_TRANSPOSE_PROJECTION_MATRIX_NV
	, gl_PRIMARY_COLOR
	, gl_PRIMARY_COLOR_NV
	, gl_QUADRATIC_CURVE_TO_NV
	, gl_RECT_NV
	, gl_RELATIVE_ARC_TO_NV
	, gl_RELATIVE_CONIC_CURVE_TO_NV
	, gl_RELATIVE_CUBIC_CURVE_TO_NV
	, gl_RELATIVE_HORIZONTAL_LINE_TO_NV
	, gl_RELATIVE_LARGE_CCW_ARC_TO_NV
	, gl_RELATIVE_LARGE_CW_ARC_TO_NV
	, gl_RELATIVE_LINE_TO_NV
	, gl_RELATIVE_MOVE_TO_NV
	, gl_RELATIVE_QUADRATIC_CURVE_TO_NV
	, gl_RELATIVE_RECT_NV
	, gl_RELATIVE_ROUNDED_RECT2_NV
	, gl_RELATIVE_ROUNDED_RECT4_NV
	, gl_RELATIVE_ROUNDED_RECT8_NV
	, gl_RELATIVE_ROUNDED_RECT_NV
	, gl_RELATIVE_SMALL_CCW_ARC_TO_NV
	, gl_RELATIVE_SMALL_CW_ARC_TO_NV
	, gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV
	, gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV
	, gl_RELATIVE_VERTICAL_LINE_TO_NV
	, gl_RESTART_PATH_NV
	, gl_ROUNDED_RECT2_NV
	, gl_ROUNDED_RECT4_NV
	, gl_ROUNDED_RECT8_NV
	, gl_ROUNDED_RECT_NV
	, gl_ROUND_NV
	, gl_SECONDARY_COLOR_NV
	, gl_SKIP_MISSING_GLYPH_NV
	, gl_SMALL_CCW_ARC_TO_NV
	, gl_SMALL_CW_ARC_TO_NV
	, gl_SMOOTH_CUBIC_CURVE_TO_NV
	, gl_SMOOTH_QUADRATIC_CURVE_TO_NV
	, gl_SQUARE_NV
	, gl_STANDARD_FONT_FORMAT_NV
	, gl_STANDARD_FONT_NAME_NV
	, gl_SYSTEM_FONT_NAME_NV
	, gl_TRANSLATE_2D_NV
	, gl_TRANSLATE_3D_NV
	, gl_TRANSLATE_X_NV
	, gl_TRANSLATE_Y_NV
	, gl_TRANSPOSE_AFFINE_2D_NV
	, gl_TRANSPOSE_AFFINE_3D_NV
	, gl_TRIANGULAR_NV
	, gl_USE_MISSING_GLYPH_NV
	, gl_UTF16_NV
	, gl_UTF8_NV
	, gl_VERTICAL_LINE_TO_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_path_rendering :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_path_rendering = extGL 485

glCopyPathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glCopyPathNV v0 v1 = funGL 1710 >>= \f -> liftIO $ f v0 v1

glCoverFillPathInstancedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glCoverFillPathInstancedNV v0 v1 v2 v3 v4 v5 v6 = funGL 1711 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCoverFillPathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glCoverFillPathNV v0 v1 = funGL 1712 >>= \f -> liftIO $ f v0 v1

glCoverStrokePathInstancedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glCoverStrokePathInstancedNV v0 v1 v2 v3 v4 v5 v6 = funGL 1713 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glCoverStrokePathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glCoverStrokePathNV v0 v1 = funGL 1714 >>= \f -> liftIO $ f v0 v1

glDeletePathsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> m ()
glDeletePathsNV v0 v1 = funGL 1715 >>= \f -> liftIO $ f v0 v1

glGenPathsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> m GLuint
glGenPathsNV v0 = funGL 1716 >>= \f -> liftIO $ f v0

glGetPathColorGenfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetPathColorGenfvNV v0 v1 v2 = funGL 1717 >>= \f -> liftIO $ f v0 v1 v2

glGetPathColorGenivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetPathColorGenivNV v0 v1 v2 = funGL 1718 >>= \f -> liftIO $ f v0 v1 v2

glGetPathCommandsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLubyte -> m ()
glGetPathCommandsNV v0 v1 = funGL 1719 >>= \f -> liftIO $ f v0 v1

glGetPathCoordsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glGetPathCoordsNV v0 v1 = funGL 1720 >>= \f -> liftIO $ f v0 v1

glGetPathDashArrayNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLfloat -> m ()
glGetPathDashArrayNV v0 v1 = funGL 1721 >>= \f -> liftIO $ f v0 v1

glGetPathLengthNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLsizei -> m GLfloat
glGetPathLengthNV v0 v1 v2 = funGL 1722 >>= \f -> liftIO $ f v0 v1 v2

glGetPathMetricRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> GLuint -> GLsizei -> GLsizei -> Ptr GLfloat -> m ()
glGetPathMetricRangeNV v0 v1 v2 v3 v4 = funGL 1723 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetPathMetricsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLsizei -> Ptr GLfloat -> m ()
glGetPathMetricsNV v0 v1 v2 v3 v4 v5 v6 = funGL 1724 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glGetPathParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetPathParameterfvNV v0 v1 v2 = funGL 1725 >>= \f -> liftIO $ f v0 v1 v2

glGetPathParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetPathParameterivNV v0 v1 v2 = funGL 1726 >>= \f -> liftIO $ f v0 v1 v2

glGetPathSpacingNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLuint -> GLfloat -> GLfloat -> GLenum -> Ptr GLfloat -> m ()
glGetPathSpacingNV v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1727 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glGetPathTexGenfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetPathTexGenfvNV v0 v1 v2 = funGL 1728 >>= \f -> liftIO $ f v0 v1 v2

glGetPathTexGenivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetPathTexGenivNV v0 v1 v2 = funGL 1729 >>= \f -> liftIO $ f v0 v1 v2

glGetProgramResourcefvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLsizei -> Ptr GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLfloat -> m ()
glGetProgramResourcefvNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1730 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glInterpolatePathsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLfloat -> m ()
glInterpolatePathsNV v0 v1 v2 v3 = funGL 1731 >>= \f -> liftIO $ f v0 v1 v2 v3

glIsPathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsPathNV v0 = funGL 1732 >>= \f -> liftIO $ f v0

glIsPointInFillPathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLfloat -> GLfloat -> m GLboolean
glIsPointInFillPathNV v0 v1 v2 v3 = funGL 1733 >>= \f -> liftIO $ f v0 v1 v2 v3

glIsPointInStrokePathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> m GLboolean
glIsPointInStrokePathNV v0 v1 v2 = funGL 1734 >>= \f -> liftIO $ f v0 v1 v2

glMatrixLoad3x2fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixLoad3x2fNV v0 v1 = funGL 1735 >>= \f -> liftIO $ f v0 v1

glMatrixLoad3x3fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixLoad3x3fNV v0 v1 = funGL 1736 >>= \f -> liftIO $ f v0 v1

glMatrixLoadTranspose3x3fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixLoadTranspose3x3fNV v0 v1 = funGL 1737 >>= \f -> liftIO $ f v0 v1

glMatrixMult3x2fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixMult3x2fNV v0 v1 = funGL 1738 >>= \f -> liftIO $ f v0 v1

glMatrixMult3x3fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixMult3x3fNV v0 v1 = funGL 1739 >>= \f -> liftIO $ f v0 v1

glMatrixMultTranspose3x3fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glMatrixMultTranspose3x3fNV v0 v1 = funGL 1740 >>= \f -> liftIO $ f v0 v1

glPathColorGenNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glPathColorGenNV v0 v1 v2 v3 = funGL 1741 >>= \f -> liftIO $ f v0 v1 v2 v3

glPathCommandsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr () -> m ()
glPathCommandsNV v0 v1 v2 v3 v4 v5 = funGL 1742 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glPathCoordsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLenum -> Ptr () -> m ()
glPathCoordsNV v0 v1 v2 v3 = funGL 1743 >>= \f -> liftIO $ f v0 v1 v2 v3

glPathCoverDepthFuncNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glPathCoverDepthFuncNV v0 = funGL 1744 >>= \f -> liftIO $ f v0

glPathDashArrayNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLfloat -> m ()
glPathDashArrayNV v0 v1 v2 = funGL 1745 >>= \f -> liftIO $ f v0 v1 v2

glPathFogGenNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glPathFogGenNV v0 = funGL 1746 >>= \f -> liftIO $ f v0

glPathGlyphIndexArrayNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> GLbitfield -> GLuint -> GLsizei -> GLuint -> GLfloat -> m GLenum
glPathGlyphIndexArrayNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1747 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glPathGlyphIndexRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> GLbitfield -> GLuint -> GLfloat -> GLuint -> m GLenum
glPathGlyphIndexRangeNV v0 v1 v2 v3 v4 v5 = funGL 1748 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glPathGlyphRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> GLbitfield -> GLuint -> GLsizei -> GLenum -> GLuint -> GLfloat -> m ()
glPathGlyphRangeNV v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1749 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glPathGlyphsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> GLbitfield -> GLsizei -> GLenum -> Ptr () -> GLenum -> GLuint -> GLfloat -> m ()
glPathGlyphsNV v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 1750 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glPathMemoryGlyphIndexArrayNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizeiptr -> Ptr () -> GLsizei -> GLuint -> GLsizei -> GLuint -> GLfloat -> m GLenum
glPathMemoryGlyphIndexArrayNV v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1751 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glPathParameterfNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLfloat -> m ()
glPathParameterfNV v0 v1 v2 = funGL 1752 >>= \f -> liftIO $ f v0 v1 v2

glPathParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLfloat -> m ()
glPathParameterfvNV v0 v1 v2 = funGL 1753 >>= \f -> liftIO $ f v0 v1 v2

glPathParameteriNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLint -> m ()
glPathParameteriNV v0 v1 v2 = funGL 1754 >>= \f -> liftIO $ f v0 v1 v2

glPathParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glPathParameterivNV v0 v1 v2 = funGL 1755 >>= \f -> liftIO $ f v0 v1 v2

glPathStencilDepthOffsetNV :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> m ()
glPathStencilDepthOffsetNV v0 v1 = funGL 1756 >>= \f -> liftIO $ f v0 v1

glPathStencilFuncNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLuint -> m ()
glPathStencilFuncNV v0 v1 v2 = funGL 1757 >>= \f -> liftIO $ f v0 v1 v2

glPathStringNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLsizei -> Ptr () -> m ()
glPathStringNV v0 v1 v2 v3 = funGL 1758 >>= \f -> liftIO $ f v0 v1 v2 v3

glPathSubCommandsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLsizei -> GLsizei -> Ptr GLubyte -> GLsizei -> GLenum -> Ptr () -> m ()
glPathSubCommandsNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1759 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glPathSubCoordsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLsizei -> GLenum -> Ptr () -> m ()
glPathSubCoordsNV v0 v1 v2 v3 v4 = funGL 1760 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glPathTexGenNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> Ptr GLfloat -> m ()
glPathTexGenNV v0 v1 v2 v3 = funGL 1761 >>= \f -> liftIO $ f v0 v1 v2 v3

glPointAlongPathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> GLsizei -> GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m GLboolean
glPointAlongPathNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1762 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glProgramPathFragmentInputGenNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLint -> Ptr GLfloat -> m ()
glProgramPathFragmentInputGenNV v0 v1 v2 v3 v4 = funGL 1763 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glStencilFillPathInstancedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLuint -> GLenum -> Ptr GLfloat -> m ()
glStencilFillPathInstancedNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1764 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glStencilFillPathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> m ()
glStencilFillPathNV v0 v1 v2 = funGL 1765 >>= \f -> liftIO $ f v0 v1 v2

glStencilStrokePathInstancedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr () -> GLuint -> GLint -> GLuint -> GLenum -> Ptr GLfloat -> m ()
glStencilStrokePathInstancedNV v0 v1 v2 v3 v4 v5 v6 v7 = funGL 1766 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glStencilStrokePathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> m ()
glStencilStrokePathNV v0 v1 v2 = funGL 1767 >>= \f -> liftIO $ f v0 v1 v2

glStencilThenCoverFillPathInstancedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr () -> GLuint -> GLenum -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glStencilThenCoverFillPathInstancedNV v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1768 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glStencilThenCoverFillPathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLuint -> GLenum -> m ()
glStencilThenCoverFillPathNV v0 v1 v2 v3 = funGL 1769 >>= \f -> liftIO $ f v0 v1 v2 v3

glStencilThenCoverStrokePathInstancedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> GLenum -> Ptr () -> GLuint -> GLint -> GLuint -> GLenum -> GLenum -> Ptr GLfloat -> m ()
glStencilThenCoverStrokePathInstancedNV v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1770 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glStencilThenCoverStrokePathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> GLenum -> m ()
glStencilThenCoverStrokePathNV v0 v1 v2 v3 = funGL 1771 >>= \f -> liftIO $ f v0 v1 v2 v3

glTransformPathNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLenum -> Ptr GLfloat -> m ()
glTransformPathNV v0 v1 v2 v3 = funGL 1772 >>= \f -> liftIO $ f v0 v1 v2 v3

glWeightPathsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLuint -> Ptr GLfloat -> m ()
glWeightPathsNV v0 v1 v2 v3 = funGL 1773 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_2_BYTES_NV :: GLenum
gl_2_BYTES_NV = 0x1407

gl_3_BYTES_NV :: GLenum
gl_3_BYTES_NV = 0x1408

gl_4_BYTES_NV :: GLenum
gl_4_BYTES_NV = 0x1409

gl_ACCUM_ADJACENT_PAIRS_NV :: GLenum
gl_ACCUM_ADJACENT_PAIRS_NV = 0x90AD

gl_ADJACENT_PAIRS_NV :: GLenum
gl_ADJACENT_PAIRS_NV = 0x90AE

gl_AFFINE_2D_NV :: GLenum
gl_AFFINE_2D_NV = 0x9092

gl_AFFINE_3D_NV :: GLenum
gl_AFFINE_3D_NV = 0x9094

gl_ARC_TO_NV :: GLenum
gl_ARC_TO_NV = 0xFE

gl_BEVEL_NV :: GLenum
gl_BEVEL_NV = 0x90A6

gl_BOLD_BIT_NV :: GLenum
gl_BOLD_BIT_NV = 0x01

gl_BOUNDING_BOX_NV :: GLenum
gl_BOUNDING_BOX_NV = 0x908D

gl_BOUNDING_BOX_OF_BOUNDING_BOXES_NV :: GLenum
gl_BOUNDING_BOX_OF_BOUNDING_BOXES_NV = 0x909C

gl_CIRCULAR_CCW_ARC_TO_NV :: GLenum
gl_CIRCULAR_CCW_ARC_TO_NV = 0xF8

gl_CIRCULAR_CW_ARC_TO_NV :: GLenum
gl_CIRCULAR_CW_ARC_TO_NV = 0xFA

gl_CIRCULAR_TANGENT_ARC_TO_NV :: GLenum
gl_CIRCULAR_TANGENT_ARC_TO_NV = 0xFC

gl_CLOSE_PATH_NV :: GLenum
gl_CLOSE_PATH_NV = 0x00

gl_CONIC_CURVE_TO_NV :: GLenum
gl_CONIC_CURVE_TO_NV = 0x1A

gl_CONSTANT_NV :: GLenum
gl_CONSTANT_NV = 0x8576

gl_CONVEX_HULL_NV :: GLenum
gl_CONVEX_HULL_NV = 0x908B

gl_COUNT_DOWN_NV :: GLenum
gl_COUNT_DOWN_NV = 0x9089

gl_COUNT_UP_NV :: GLenum
gl_COUNT_UP_NV = 0x9088

gl_CUBIC_CURVE_TO_NV :: GLenum
gl_CUBIC_CURVE_TO_NV = 0x0C

gl_DUP_FIRST_CUBIC_CURVE_TO_NV :: GLenum
gl_DUP_FIRST_CUBIC_CURVE_TO_NV = 0xF2

gl_DUP_LAST_CUBIC_CURVE_TO_NV :: GLenum
gl_DUP_LAST_CUBIC_CURVE_TO_NV = 0xF4

gl_EYE_LINEAR_NV :: GLenum
gl_EYE_LINEAR_NV = 0x2400

gl_FILE_NAME_NV :: GLenum
gl_FILE_NAME_NV = 0x9074

gl_FIRST_TO_REST_NV :: GLenum
gl_FIRST_TO_REST_NV = 0x90AF

gl_FONT_ASCENDER_BIT_NV :: GLenum
gl_FONT_ASCENDER_BIT_NV = 0x00200000

gl_FONT_DESCENDER_BIT_NV :: GLenum
gl_FONT_DESCENDER_BIT_NV = 0x00400000

gl_FONT_GLYPHS_AVAILABLE_NV :: GLenum
gl_FONT_GLYPHS_AVAILABLE_NV = 0x9368

gl_FONT_HAS_KERNING_BIT_NV :: GLenum
gl_FONT_HAS_KERNING_BIT_NV = 0x10000000

gl_FONT_HEIGHT_BIT_NV :: GLenum
gl_FONT_HEIGHT_BIT_NV = 0x00800000

gl_FONT_MAX_ADVANCE_HEIGHT_BIT_NV :: GLenum
gl_FONT_MAX_ADVANCE_HEIGHT_BIT_NV = 0x02000000

gl_FONT_MAX_ADVANCE_WIDTH_BIT_NV :: GLenum
gl_FONT_MAX_ADVANCE_WIDTH_BIT_NV = 0x01000000

gl_FONT_NUM_GLYPH_INDICES_BIT_NV :: GLenum
gl_FONT_NUM_GLYPH_INDICES_BIT_NV = 0x20000000

gl_FONT_TARGET_UNAVAILABLE_NV :: GLenum
gl_FONT_TARGET_UNAVAILABLE_NV = 0x9369

gl_FONT_UNAVAILABLE_NV :: GLenum
gl_FONT_UNAVAILABLE_NV = 0x936A

gl_FONT_UNDERLINE_POSITION_BIT_NV :: GLenum
gl_FONT_UNDERLINE_POSITION_BIT_NV = 0x04000000

gl_FONT_UNDERLINE_THICKNESS_BIT_NV :: GLenum
gl_FONT_UNDERLINE_THICKNESS_BIT_NV = 0x08000000

gl_FONT_UNINTELLIGIBLE_NV :: GLenum
gl_FONT_UNINTELLIGIBLE_NV = 0x936B

gl_FONT_UNITS_PER_EM_BIT_NV :: GLenum
gl_FONT_UNITS_PER_EM_BIT_NV = 0x00100000

gl_FONT_X_MAX_BOUNDS_BIT_NV :: GLenum
gl_FONT_X_MAX_BOUNDS_BIT_NV = 0x00040000

gl_FONT_X_MIN_BOUNDS_BIT_NV :: GLenum
gl_FONT_X_MIN_BOUNDS_BIT_NV = 0x00010000

gl_FONT_Y_MAX_BOUNDS_BIT_NV :: GLenum
gl_FONT_Y_MAX_BOUNDS_BIT_NV = 0x00080000

gl_FONT_Y_MIN_BOUNDS_BIT_NV :: GLenum
gl_FONT_Y_MIN_BOUNDS_BIT_NV = 0x00020000

gl_FRAGMENT_INPUT_NV :: GLenum
gl_FRAGMENT_INPUT_NV = 0x936D

gl_GLYPH_HAS_KERNING_BIT_NV :: GLenum
gl_GLYPH_HAS_KERNING_BIT_NV = 0x100

gl_GLYPH_HEIGHT_BIT_NV :: GLenum
gl_GLYPH_HEIGHT_BIT_NV = 0x02

gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV :: GLenum
gl_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV = 0x10

gl_GLYPH_HORIZONTAL_BEARING_X_BIT_NV :: GLenum
gl_GLYPH_HORIZONTAL_BEARING_X_BIT_NV = 0x04

gl_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV :: GLenum
gl_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV = 0x08

gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV :: GLenum
gl_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV = 0x80

gl_GLYPH_VERTICAL_BEARING_X_BIT_NV :: GLenum
gl_GLYPH_VERTICAL_BEARING_X_BIT_NV = 0x20

gl_GLYPH_VERTICAL_BEARING_Y_BIT_NV :: GLenum
gl_GLYPH_VERTICAL_BEARING_Y_BIT_NV = 0x40

gl_GLYPH_WIDTH_BIT_NV :: GLenum
gl_GLYPH_WIDTH_BIT_NV = 0x01

gl_HORIZONTAL_LINE_TO_NV :: GLenum
gl_HORIZONTAL_LINE_TO_NV = 0x06

gl_ITALIC_BIT_NV :: GLenum
gl_ITALIC_BIT_NV = 0x02

gl_LARGE_CCW_ARC_TO_NV :: GLenum
gl_LARGE_CCW_ARC_TO_NV = 0x16

gl_LARGE_CW_ARC_TO_NV :: GLenum
gl_LARGE_CW_ARC_TO_NV = 0x18

gl_LINE_TO_NV :: GLenum
gl_LINE_TO_NV = 0x04

gl_MITER_REVERT_NV :: GLenum
gl_MITER_REVERT_NV = 0x90A7

gl_MITER_TRUNCATE_NV :: GLenum
gl_MITER_TRUNCATE_NV = 0x90A8

gl_MOVE_TO_CONTINUES_NV :: GLenum
gl_MOVE_TO_CONTINUES_NV = 0x90B6

gl_MOVE_TO_NV :: GLenum
gl_MOVE_TO_NV = 0x02

gl_MOVE_TO_RESETS_NV :: GLenum
gl_MOVE_TO_RESETS_NV = 0x90B5

gl_OBJECT_LINEAR_NV :: GLenum
gl_OBJECT_LINEAR_NV = 0x2401

gl_PATH_CLIENT_LENGTH_NV :: GLenum
gl_PATH_CLIENT_LENGTH_NV = 0x907F

gl_PATH_COMMAND_COUNT_NV :: GLenum
gl_PATH_COMMAND_COUNT_NV = 0x909D

gl_PATH_COMPUTED_LENGTH_NV :: GLenum
gl_PATH_COMPUTED_LENGTH_NV = 0x90A0

gl_PATH_COORD_COUNT_NV :: GLenum
gl_PATH_COORD_COUNT_NV = 0x909E

gl_PATH_COVER_DEPTH_FUNC_NV :: GLenum
gl_PATH_COVER_DEPTH_FUNC_NV = 0x90BF

gl_PATH_DASH_ARRAY_COUNT_NV :: GLenum
gl_PATH_DASH_ARRAY_COUNT_NV = 0x909F

gl_PATH_DASH_CAPS_NV :: GLenum
gl_PATH_DASH_CAPS_NV = 0x907B

gl_PATH_DASH_OFFSET_NV :: GLenum
gl_PATH_DASH_OFFSET_NV = 0x907E

gl_PATH_DASH_OFFSET_RESET_NV :: GLenum
gl_PATH_DASH_OFFSET_RESET_NV = 0x90B4

gl_PATH_END_CAPS_NV :: GLenum
gl_PATH_END_CAPS_NV = 0x9076

gl_PATH_ERROR_POSITION_NV :: GLenum
gl_PATH_ERROR_POSITION_NV = 0x90AB

gl_PATH_FILL_BOUNDING_BOX_NV :: GLenum
gl_PATH_FILL_BOUNDING_BOX_NV = 0x90A1

gl_PATH_FILL_COVER_MODE_NV :: GLenum
gl_PATH_FILL_COVER_MODE_NV = 0x9082

gl_PATH_FILL_MASK_NV :: GLenum
gl_PATH_FILL_MASK_NV = 0x9081

gl_PATH_FILL_MODE_NV :: GLenum
gl_PATH_FILL_MODE_NV = 0x9080

gl_PATH_FOG_GEN_MODE_NV :: GLenum
gl_PATH_FOG_GEN_MODE_NV = 0x90AC

gl_PATH_FORMAT_PS_NV :: GLenum
gl_PATH_FORMAT_PS_NV = 0x9071

gl_PATH_FORMAT_SVG_NV :: GLenum
gl_PATH_FORMAT_SVG_NV = 0x9070

gl_PATH_GEN_COEFF_NV :: GLenum
gl_PATH_GEN_COEFF_NV = 0x90B1

gl_PATH_GEN_COLOR_FORMAT_NV :: GLenum
gl_PATH_GEN_COLOR_FORMAT_NV = 0x90B2

gl_PATH_GEN_COMPONENTS_NV :: GLenum
gl_PATH_GEN_COMPONENTS_NV = 0x90B3

gl_PATH_GEN_MODE_NV :: GLenum
gl_PATH_GEN_MODE_NV = 0x90B0

gl_PATH_INITIAL_DASH_CAP_NV :: GLenum
gl_PATH_INITIAL_DASH_CAP_NV = 0x907C

gl_PATH_INITIAL_END_CAP_NV :: GLenum
gl_PATH_INITIAL_END_CAP_NV = 0x9077

gl_PATH_JOIN_STYLE_NV :: GLenum
gl_PATH_JOIN_STYLE_NV = 0x9079

gl_PATH_MAX_MODELVIEW_STACK_DEPTH_NV :: GLenum
gl_PATH_MAX_MODELVIEW_STACK_DEPTH_NV = 0x0D36

gl_PATH_MAX_PROJECTION_STACK_DEPTH_NV :: GLenum
gl_PATH_MAX_PROJECTION_STACK_DEPTH_NV = 0x0D38

gl_PATH_MITER_LIMIT_NV :: GLenum
gl_PATH_MITER_LIMIT_NV = 0x907A

gl_PATH_MODELVIEW_MATRIX_NV :: GLenum
gl_PATH_MODELVIEW_MATRIX_NV = 0x0BA6

gl_PATH_MODELVIEW_NV :: GLenum
gl_PATH_MODELVIEW_NV = 0x1700

gl_PATH_MODELVIEW_STACK_DEPTH_NV :: GLenum
gl_PATH_MODELVIEW_STACK_DEPTH_NV = 0x0BA3

gl_PATH_OBJECT_BOUNDING_BOX_NV :: GLenum
gl_PATH_OBJECT_BOUNDING_BOX_NV = 0x908A

gl_PATH_PROJECTION_MATRIX_NV :: GLenum
gl_PATH_PROJECTION_MATRIX_NV = 0x0BA7

gl_PATH_PROJECTION_NV :: GLenum
gl_PATH_PROJECTION_NV = 0x1701

gl_PATH_PROJECTION_STACK_DEPTH_NV :: GLenum
gl_PATH_PROJECTION_STACK_DEPTH_NV = 0x0BA4

gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV :: GLenum
gl_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV = 0x90BD

gl_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV :: GLenum
gl_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV = 0x90BE

gl_PATH_STENCIL_FUNC_NV :: GLenum
gl_PATH_STENCIL_FUNC_NV = 0x90B7

gl_PATH_STENCIL_REF_NV :: GLenum
gl_PATH_STENCIL_REF_NV = 0x90B8

gl_PATH_STENCIL_VALUE_MASK_NV :: GLenum
gl_PATH_STENCIL_VALUE_MASK_NV = 0x90B9

gl_PATH_STROKE_BOUNDING_BOX_NV :: GLenum
gl_PATH_STROKE_BOUNDING_BOX_NV = 0x90A2

gl_PATH_STROKE_COVER_MODE_NV :: GLenum
gl_PATH_STROKE_COVER_MODE_NV = 0x9083

gl_PATH_STROKE_MASK_NV :: GLenum
gl_PATH_STROKE_MASK_NV = 0x9084

gl_PATH_STROKE_WIDTH_NV :: GLenum
gl_PATH_STROKE_WIDTH_NV = 0x9075

gl_PATH_TERMINAL_DASH_CAP_NV :: GLenum
gl_PATH_TERMINAL_DASH_CAP_NV = 0x907D

gl_PATH_TERMINAL_END_CAP_NV :: GLenum
gl_PATH_TERMINAL_END_CAP_NV = 0x9078

gl_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV :: GLenum
gl_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV = 0x84E3

gl_PATH_TRANSPOSE_PROJECTION_MATRIX_NV :: GLenum
gl_PATH_TRANSPOSE_PROJECTION_MATRIX_NV = 0x84E4

gl_QUADRATIC_CURVE_TO_NV :: GLenum
gl_QUADRATIC_CURVE_TO_NV = 0x0A

gl_RECT_NV :: GLenum
gl_RECT_NV = 0xF6

gl_RELATIVE_ARC_TO_NV :: GLenum
gl_RELATIVE_ARC_TO_NV = 0xFF

gl_RELATIVE_CONIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_CONIC_CURVE_TO_NV = 0x1B

gl_RELATIVE_CUBIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_CUBIC_CURVE_TO_NV = 0x0D

gl_RELATIVE_HORIZONTAL_LINE_TO_NV :: GLenum
gl_RELATIVE_HORIZONTAL_LINE_TO_NV = 0x07

gl_RELATIVE_LARGE_CCW_ARC_TO_NV :: GLenum
gl_RELATIVE_LARGE_CCW_ARC_TO_NV = 0x17

gl_RELATIVE_LARGE_CW_ARC_TO_NV :: GLenum
gl_RELATIVE_LARGE_CW_ARC_TO_NV = 0x19

gl_RELATIVE_LINE_TO_NV :: GLenum
gl_RELATIVE_LINE_TO_NV = 0x05

gl_RELATIVE_MOVE_TO_NV :: GLenum
gl_RELATIVE_MOVE_TO_NV = 0x03

gl_RELATIVE_QUADRATIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_QUADRATIC_CURVE_TO_NV = 0x0B

gl_RELATIVE_RECT_NV :: GLenum
gl_RELATIVE_RECT_NV = 0xF7

gl_RELATIVE_ROUNDED_RECT2_NV :: GLenum
gl_RELATIVE_ROUNDED_RECT2_NV = 0xEB

gl_RELATIVE_ROUNDED_RECT4_NV :: GLenum
gl_RELATIVE_ROUNDED_RECT4_NV = 0xED

gl_RELATIVE_ROUNDED_RECT8_NV :: GLenum
gl_RELATIVE_ROUNDED_RECT8_NV = 0xEF

gl_RELATIVE_ROUNDED_RECT_NV :: GLenum
gl_RELATIVE_ROUNDED_RECT_NV = 0xE9

gl_RELATIVE_SMALL_CCW_ARC_TO_NV :: GLenum
gl_RELATIVE_SMALL_CCW_ARC_TO_NV = 0x13

gl_RELATIVE_SMALL_CW_ARC_TO_NV :: GLenum
gl_RELATIVE_SMALL_CW_ARC_TO_NV = 0x15

gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV = 0x11

gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV :: GLenum
gl_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV = 0x0F

gl_RELATIVE_VERTICAL_LINE_TO_NV :: GLenum
gl_RELATIVE_VERTICAL_LINE_TO_NV = 0x09

gl_RESTART_PATH_NV :: GLenum
gl_RESTART_PATH_NV = 0xF0

gl_ROUNDED_RECT2_NV :: GLenum
gl_ROUNDED_RECT2_NV = 0xEA

gl_ROUNDED_RECT4_NV :: GLenum
gl_ROUNDED_RECT4_NV = 0xEC

gl_ROUNDED_RECT8_NV :: GLenum
gl_ROUNDED_RECT8_NV = 0xEE

gl_ROUNDED_RECT_NV :: GLenum
gl_ROUNDED_RECT_NV = 0xE8

gl_ROUND_NV :: GLenum
gl_ROUND_NV = 0x90A4

gl_SKIP_MISSING_GLYPH_NV :: GLenum
gl_SKIP_MISSING_GLYPH_NV = 0x90A9

gl_SMALL_CCW_ARC_TO_NV :: GLenum
gl_SMALL_CCW_ARC_TO_NV = 0x12

gl_SMALL_CW_ARC_TO_NV :: GLenum
gl_SMALL_CW_ARC_TO_NV = 0x14

gl_SMOOTH_CUBIC_CURVE_TO_NV :: GLenum
gl_SMOOTH_CUBIC_CURVE_TO_NV = 0x10

gl_SMOOTH_QUADRATIC_CURVE_TO_NV :: GLenum
gl_SMOOTH_QUADRATIC_CURVE_TO_NV = 0x0E

gl_SQUARE_NV :: GLenum
gl_SQUARE_NV = 0x90A3

gl_STANDARD_FONT_FORMAT_NV :: GLenum
gl_STANDARD_FONT_FORMAT_NV = 0x936C

gl_STANDARD_FONT_NAME_NV :: GLenum
gl_STANDARD_FONT_NAME_NV = 0x9072

gl_SYSTEM_FONT_NAME_NV :: GLenum
gl_SYSTEM_FONT_NAME_NV = 0x9073

gl_TRANSLATE_2D_NV :: GLenum
gl_TRANSLATE_2D_NV = 0x9090

gl_TRANSLATE_3D_NV :: GLenum
gl_TRANSLATE_3D_NV = 0x9091

gl_TRANSLATE_X_NV :: GLenum
gl_TRANSLATE_X_NV = 0x908E

gl_TRANSLATE_Y_NV :: GLenum
gl_TRANSLATE_Y_NV = 0x908F

gl_TRANSPOSE_AFFINE_2D_NV :: GLenum
gl_TRANSPOSE_AFFINE_2D_NV = 0x9096

gl_TRANSPOSE_AFFINE_3D_NV :: GLenum
gl_TRANSPOSE_AFFINE_3D_NV = 0x9098

gl_TRIANGULAR_NV :: GLenum
gl_TRIANGULAR_NV = 0x90A5

gl_USE_MISSING_GLYPH_NV :: GLenum
gl_USE_MISSING_GLYPH_NV = 0x90AA

gl_UTF16_NV :: GLenum
gl_UTF16_NV = 0x909B

gl_UTF8_NV :: GLenum
gl_UTF8_NV = 0x909A

gl_VERTICAL_LINE_TO_NV :: GLenum
gl_VERTICAL_LINE_TO_NV = 0x08