-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.Evaluators (
	-- * Extension Support
	  gl_NV_evaluators

	-- * GL_NV_evaluators
	, glEvalMapsNV
	, glGetMapAttribParameterfvNV
	, glGetMapAttribParameterivNV
	, glGetMapControlPointsNV
	, glGetMapParameterfvNV
	, glGetMapParameterivNV
	, glMapControlPointsNV
	, glMapParameterfvNV
	, glMapParameterivNV
	, gl_EVAL_2D_NV
	, gl_EVAL_FRACTIONAL_TESSELLATION_NV
	, gl_EVAL_TRIANGULAR_2D_NV
	, gl_EVAL_VERTEX_ATTRIB0_NV
	, gl_EVAL_VERTEX_ATTRIB10_NV
	, gl_EVAL_VERTEX_ATTRIB11_NV
	, gl_EVAL_VERTEX_ATTRIB12_NV
	, gl_EVAL_VERTEX_ATTRIB13_NV
	, gl_EVAL_VERTEX_ATTRIB14_NV
	, gl_EVAL_VERTEX_ATTRIB15_NV
	, gl_EVAL_VERTEX_ATTRIB1_NV
	, gl_EVAL_VERTEX_ATTRIB2_NV
	, gl_EVAL_VERTEX_ATTRIB3_NV
	, gl_EVAL_VERTEX_ATTRIB4_NV
	, gl_EVAL_VERTEX_ATTRIB5_NV
	, gl_EVAL_VERTEX_ATTRIB6_NV
	, gl_EVAL_VERTEX_ATTRIB7_NV
	, gl_EVAL_VERTEX_ATTRIB8_NV
	, gl_EVAL_VERTEX_ATTRIB9_NV
	, gl_MAP_ATTRIB_U_ORDER_NV
	, gl_MAP_ATTRIB_V_ORDER_NV
	, gl_MAP_TESSELLATION_NV
	, gl_MAX_MAP_TESSELLATION_NV
	, gl_MAX_RATIONAL_EVAL_ORDER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_evaluators :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_evaluators = extGL 448

glEvalMapsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glEvalMapsNV v0 v1 = funGL 1594 >>= \f -> liftIO $ f v0 v1

glGetMapAttribParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> Ptr GLfloat -> m ()
glGetMapAttribParameterfvNV v0 v1 v2 v3 = funGL 1595 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMapAttribParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> Ptr GLint -> m ()
glGetMapAttribParameterivNV v0 v1 v2 v3 = funGL 1596 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetMapControlPointsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> GLsizei -> GLsizei -> GLboolean -> Ptr () -> m ()
glGetMapControlPointsNV v0 v1 v2 v3 v4 v5 v6 = funGL 1597 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glGetMapParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetMapParameterfvNV v0 v1 v2 = funGL 1598 >>= \f -> liftIO $ f v0 v1 v2

glGetMapParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetMapParameterivNV v0 v1 v2 = funGL 1599 >>= \f -> liftIO $ f v0 v1 v2

glMapControlPointsNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLint -> GLboolean -> Ptr () -> m ()
glMapControlPointsNV v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 1600 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glMapParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glMapParameterfvNV v0 v1 v2 = funGL 1601 >>= \f -> liftIO $ f v0 v1 v2

glMapParameterivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glMapParameterivNV v0 v1 v2 = funGL 1602 >>= \f -> liftIO $ f v0 v1 v2

gl_EVAL_2D_NV :: GLenum
gl_EVAL_2D_NV = 0x86C0

gl_EVAL_FRACTIONAL_TESSELLATION_NV :: GLenum
gl_EVAL_FRACTIONAL_TESSELLATION_NV = 0x86C5

gl_EVAL_TRIANGULAR_2D_NV :: GLenum
gl_EVAL_TRIANGULAR_2D_NV = 0x86C1

gl_EVAL_VERTEX_ATTRIB0_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB0_NV = 0x86C6

gl_EVAL_VERTEX_ATTRIB10_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB10_NV = 0x86D0

gl_EVAL_VERTEX_ATTRIB11_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB11_NV = 0x86D1

gl_EVAL_VERTEX_ATTRIB12_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB12_NV = 0x86D2

gl_EVAL_VERTEX_ATTRIB13_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB13_NV = 0x86D3

gl_EVAL_VERTEX_ATTRIB14_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB14_NV = 0x86D4

gl_EVAL_VERTEX_ATTRIB15_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB15_NV = 0x86D5

gl_EVAL_VERTEX_ATTRIB1_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB1_NV = 0x86C7

gl_EVAL_VERTEX_ATTRIB2_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB2_NV = 0x86C8

gl_EVAL_VERTEX_ATTRIB3_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB3_NV = 0x86C9

gl_EVAL_VERTEX_ATTRIB4_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB4_NV = 0x86CA

gl_EVAL_VERTEX_ATTRIB5_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB5_NV = 0x86CB

gl_EVAL_VERTEX_ATTRIB6_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB6_NV = 0x86CC

gl_EVAL_VERTEX_ATTRIB7_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB7_NV = 0x86CD

gl_EVAL_VERTEX_ATTRIB8_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB8_NV = 0x86CE

gl_EVAL_VERTEX_ATTRIB9_NV :: GLenum
gl_EVAL_VERTEX_ATTRIB9_NV = 0x86CF

gl_MAP_ATTRIB_U_ORDER_NV :: GLenum
gl_MAP_ATTRIB_U_ORDER_NV = 0x86C3

gl_MAP_ATTRIB_V_ORDER_NV :: GLenum
gl_MAP_ATTRIB_V_ORDER_NV = 0x86C4

gl_MAP_TESSELLATION_NV :: GLenum
gl_MAP_TESSELLATION_NV = 0x86C2

gl_MAX_MAP_TESSELLATION_NV :: GLenum
gl_MAX_MAP_TESSELLATION_NV = 0x86D6

gl_MAX_RATIONAL_EVAL_ORDER_NV :: GLenum
gl_MAX_RATIONAL_EVAL_ORDER_NV = 0x86D7