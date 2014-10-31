-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.NonSquareMatrices (
	-- * Extension Support
	  gl_NV_non_square_matrices

	-- * GL_NV_non_square_matrices
	, glUniformMatrix2x3fvNV
	, glUniformMatrix2x4fvNV
	, glUniformMatrix3x2fvNV
	, glUniformMatrix3x4fvNV
	, glUniformMatrix4x2fvNV
	, glUniformMatrix4x3fvNV
	, gl_FLOAT_MAT2x3_NV
	, gl_FLOAT_MAT2x4_NV
	, gl_FLOAT_MAT3x2_NV
	, gl_FLOAT_MAT3x4_NV
	, gl_FLOAT_MAT4x2_NV
	, gl_FLOAT_MAT4x3_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_non_square_matrices :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_non_square_matrices = extGL 480

glUniformMatrix2x3fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix2x3fvNV v0 v1 v2 v3 = funGL 1694 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix2x4fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix2x4fvNV v0 v1 v2 v3 = funGL 1695 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3x2fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix3x2fvNV v0 v1 v2 v3 = funGL 1696 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix3x4fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix3x4fvNV v0 v1 v2 v3 = funGL 1697 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4x2fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix4x2fvNV v0 v1 v2 v3 = funGL 1698 >>= \f -> liftIO $ f v0 v1 v2 v3

glUniformMatrix4x3fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> GLboolean -> Ptr GLfloat -> m ()
glUniformMatrix4x3fvNV v0 v1 v2 v3 = funGL 1699 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_FLOAT_MAT2x3_NV :: GLenum
gl_FLOAT_MAT2x3_NV = 0x8B65

gl_FLOAT_MAT2x4_NV :: GLenum
gl_FLOAT_MAT2x4_NV = 0x8B66

gl_FLOAT_MAT3x2_NV :: GLenum
gl_FLOAT_MAT3x2_NV = 0x8B67

gl_FLOAT_MAT3x4_NV :: GLenum
gl_FLOAT_MAT3x4_NV = 0x8B68

gl_FLOAT_MAT4x2_NV :: GLenum
gl_FLOAT_MAT4x2_NV = 0x8B69

gl_FLOAT_MAT4x3_NV :: GLenum
gl_FLOAT_MAT4x3_NV = 0x8B6A