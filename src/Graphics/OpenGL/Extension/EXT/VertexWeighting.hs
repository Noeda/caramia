-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.VertexWeighting (
	-- * Extension Support
	  gl_EXT_vertex_weighting

	-- * GL_EXT_vertex_weighting
	, glVertexWeightPointerEXT
	, glVertexWeightfEXT
	, glVertexWeightfvEXT
	, gl_CURRENT_VERTEX_WEIGHT_EXT
	, gl_MODELVIEW0_EXT
	, gl_MODELVIEW0_MATRIX_EXT
	, gl_MODELVIEW0_STACK_DEPTH_EXT
	, gl_MODELVIEW1_EXT
	, gl_MODELVIEW1_MATRIX_EXT
	, gl_MODELVIEW1_STACK_DEPTH_EXT
	, gl_VERTEX_WEIGHTING_EXT
	, gl_VERTEX_WEIGHT_ARRAY_EXT
	, gl_VERTEX_WEIGHT_ARRAY_POINTER_EXT
	, gl_VERTEX_WEIGHT_ARRAY_SIZE_EXT
	, gl_VERTEX_WEIGHT_ARRAY_STRIDE_EXT
	, gl_VERTEX_WEIGHT_ARRAY_TYPE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_vertex_weighting :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_vertex_weighting = extGL 383

glVertexWeightPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glVertexWeightPointerEXT v0 v1 v2 v3 = funGL 1458 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexWeightfEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glVertexWeightfEXT v0 = funGL 1459 >>= \f -> liftIO $ f v0

glVertexWeightfvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glVertexWeightfvEXT v0 = funGL 1460 >>= \f -> liftIO $ f v0

gl_CURRENT_VERTEX_WEIGHT_EXT :: GLenum
gl_CURRENT_VERTEX_WEIGHT_EXT = 0x850B

gl_MODELVIEW0_EXT :: GLenum
gl_MODELVIEW0_EXT = 0x1700

gl_MODELVIEW0_MATRIX_EXT :: GLenum
gl_MODELVIEW0_MATRIX_EXT = 0x0BA6

gl_MODELVIEW0_STACK_DEPTH_EXT :: GLenum
gl_MODELVIEW0_STACK_DEPTH_EXT = 0x0BA3

gl_MODELVIEW1_EXT :: GLenum
gl_MODELVIEW1_EXT = 0x850A

gl_MODELVIEW1_MATRIX_EXT :: GLenum
gl_MODELVIEW1_MATRIX_EXT = 0x8506

gl_MODELVIEW1_STACK_DEPTH_EXT :: GLenum
gl_MODELVIEW1_STACK_DEPTH_EXT = 0x8502

gl_VERTEX_WEIGHTING_EXT :: GLenum
gl_VERTEX_WEIGHTING_EXT = 0x8509

gl_VERTEX_WEIGHT_ARRAY_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_EXT = 0x850C

gl_VERTEX_WEIGHT_ARRAY_POINTER_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_POINTER_EXT = 0x8510

gl_VERTEX_WEIGHT_ARRAY_SIZE_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_SIZE_EXT = 0x850D

gl_VERTEX_WEIGHT_ARRAY_STRIDE_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_STRIDE_EXT = 0x850F

gl_VERTEX_WEIGHT_ARRAY_TYPE_EXT :: GLenum
gl_VERTEX_WEIGHT_ARRAY_TYPE_EXT = 0x850E