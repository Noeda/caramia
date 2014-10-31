-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.VertexBlend (
	-- * Extension Support
	  gl_ARB_vertex_blend

	-- * GL_ARB_vertex_blend
	, glVertexBlendARB
	, glWeightPointerARB
	, glWeightbvARB
	, glWeightdvARB
	, glWeightfvARB
	, glWeightivARB
	, glWeightsvARB
	, glWeightubvARB
	, glWeightuivARB
	, glWeightusvARB
	, gl_ACTIVE_VERTEX_UNITS_ARB
	, gl_CURRENT_WEIGHT_ARB
	, gl_MAX_VERTEX_UNITS_ARB
	, gl_MODELVIEW0_ARB
	, gl_MODELVIEW10_ARB
	, gl_MODELVIEW11_ARB
	, gl_MODELVIEW12_ARB
	, gl_MODELVIEW13_ARB
	, gl_MODELVIEW14_ARB
	, gl_MODELVIEW15_ARB
	, gl_MODELVIEW16_ARB
	, gl_MODELVIEW17_ARB
	, gl_MODELVIEW18_ARB
	, gl_MODELVIEW19_ARB
	, gl_MODELVIEW1_ARB
	, gl_MODELVIEW20_ARB
	, gl_MODELVIEW21_ARB
	, gl_MODELVIEW22_ARB
	, gl_MODELVIEW23_ARB
	, gl_MODELVIEW24_ARB
	, gl_MODELVIEW25_ARB
	, gl_MODELVIEW26_ARB
	, gl_MODELVIEW27_ARB
	, gl_MODELVIEW28_ARB
	, gl_MODELVIEW29_ARB
	, gl_MODELVIEW2_ARB
	, gl_MODELVIEW30_ARB
	, gl_MODELVIEW31_ARB
	, gl_MODELVIEW3_ARB
	, gl_MODELVIEW4_ARB
	, gl_MODELVIEW5_ARB
	, gl_MODELVIEW6_ARB
	, gl_MODELVIEW7_ARB
	, gl_MODELVIEW8_ARB
	, gl_MODELVIEW9_ARB
	, gl_VERTEX_BLEND_ARB
	, gl_WEIGHT_ARRAY_ARB
	, gl_WEIGHT_ARRAY_POINTER_ARB
	, gl_WEIGHT_ARRAY_SIZE_ARB
	, gl_WEIGHT_ARRAY_STRIDE_ARB
	, gl_WEIGHT_ARRAY_TYPE_ARB
	, gl_WEIGHT_SUM_UNITY_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_vertex_blend :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_vertex_blend = extGL 215

glVertexBlendARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glVertexBlendARB v0 = funGL 682 >>= \f -> liftIO $ f v0

glWeightPointerARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> Ptr () -> m ()
glWeightPointerARB v0 v1 v2 v3 = funGL 683 >>= \f -> liftIO $ f v0 v1 v2 v3

glWeightbvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLbyte -> m ()
glWeightbvARB v0 v1 = funGL 684 >>= \f -> liftIO $ f v0 v1

glWeightdvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLdouble -> m ()
glWeightdvARB v0 v1 = funGL 685 >>= \f -> liftIO $ f v0 v1

glWeightfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLfloat -> m ()
glWeightfvARB v0 v1 = funGL 686 >>= \f -> liftIO $ f v0 v1

glWeightivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLint -> m ()
glWeightivARB v0 v1 = funGL 687 >>= \f -> liftIO $ f v0 v1

glWeightsvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLshort -> m ()
glWeightsvARB v0 v1 = funGL 688 >>= \f -> liftIO $ f v0 v1

glWeightubvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLubyte -> m ()
glWeightubvARB v0 v1 = funGL 689 >>= \f -> liftIO $ f v0 v1

glWeightuivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLuint -> m ()
glWeightuivARB v0 v1 = funGL 690 >>= \f -> liftIO $ f v0 v1

glWeightusvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLushort -> m ()
glWeightusvARB v0 v1 = funGL 691 >>= \f -> liftIO $ f v0 v1

gl_ACTIVE_VERTEX_UNITS_ARB :: GLenum
gl_ACTIVE_VERTEX_UNITS_ARB = 0x86A5

gl_CURRENT_WEIGHT_ARB :: GLenum
gl_CURRENT_WEIGHT_ARB = 0x86A8

gl_MAX_VERTEX_UNITS_ARB :: GLenum
gl_MAX_VERTEX_UNITS_ARB = 0x86A4

gl_MODELVIEW0_ARB :: GLenum
gl_MODELVIEW0_ARB = 0x1700

gl_MODELVIEW10_ARB :: GLenum
gl_MODELVIEW10_ARB = 0x872A

gl_MODELVIEW11_ARB :: GLenum
gl_MODELVIEW11_ARB = 0x872B

gl_MODELVIEW12_ARB :: GLenum
gl_MODELVIEW12_ARB = 0x872C

gl_MODELVIEW13_ARB :: GLenum
gl_MODELVIEW13_ARB = 0x872D

gl_MODELVIEW14_ARB :: GLenum
gl_MODELVIEW14_ARB = 0x872E

gl_MODELVIEW15_ARB :: GLenum
gl_MODELVIEW15_ARB = 0x872F

gl_MODELVIEW16_ARB :: GLenum
gl_MODELVIEW16_ARB = 0x8730

gl_MODELVIEW17_ARB :: GLenum
gl_MODELVIEW17_ARB = 0x8731

gl_MODELVIEW18_ARB :: GLenum
gl_MODELVIEW18_ARB = 0x8732

gl_MODELVIEW19_ARB :: GLenum
gl_MODELVIEW19_ARB = 0x8733

gl_MODELVIEW1_ARB :: GLenum
gl_MODELVIEW1_ARB = 0x850A

gl_MODELVIEW20_ARB :: GLenum
gl_MODELVIEW20_ARB = 0x8734

gl_MODELVIEW21_ARB :: GLenum
gl_MODELVIEW21_ARB = 0x8735

gl_MODELVIEW22_ARB :: GLenum
gl_MODELVIEW22_ARB = 0x8736

gl_MODELVIEW23_ARB :: GLenum
gl_MODELVIEW23_ARB = 0x8737

gl_MODELVIEW24_ARB :: GLenum
gl_MODELVIEW24_ARB = 0x8738

gl_MODELVIEW25_ARB :: GLenum
gl_MODELVIEW25_ARB = 0x8739

gl_MODELVIEW26_ARB :: GLenum
gl_MODELVIEW26_ARB = 0x873A

gl_MODELVIEW27_ARB :: GLenum
gl_MODELVIEW27_ARB = 0x873B

gl_MODELVIEW28_ARB :: GLenum
gl_MODELVIEW28_ARB = 0x873C

gl_MODELVIEW29_ARB :: GLenum
gl_MODELVIEW29_ARB = 0x873D

gl_MODELVIEW2_ARB :: GLenum
gl_MODELVIEW2_ARB = 0x8722

gl_MODELVIEW30_ARB :: GLenum
gl_MODELVIEW30_ARB = 0x873E

gl_MODELVIEW31_ARB :: GLenum
gl_MODELVIEW31_ARB = 0x873F

gl_MODELVIEW3_ARB :: GLenum
gl_MODELVIEW3_ARB = 0x8723

gl_MODELVIEW4_ARB :: GLenum
gl_MODELVIEW4_ARB = 0x8724

gl_MODELVIEW5_ARB :: GLenum
gl_MODELVIEW5_ARB = 0x8725

gl_MODELVIEW6_ARB :: GLenum
gl_MODELVIEW6_ARB = 0x8726

gl_MODELVIEW7_ARB :: GLenum
gl_MODELVIEW7_ARB = 0x8727

gl_MODELVIEW8_ARB :: GLenum
gl_MODELVIEW8_ARB = 0x8728

gl_MODELVIEW9_ARB :: GLenum
gl_MODELVIEW9_ARB = 0x8729

gl_VERTEX_BLEND_ARB :: GLenum
gl_VERTEX_BLEND_ARB = 0x86A7

gl_WEIGHT_ARRAY_ARB :: GLenum
gl_WEIGHT_ARRAY_ARB = 0x86AD

gl_WEIGHT_ARRAY_POINTER_ARB :: GLenum
gl_WEIGHT_ARRAY_POINTER_ARB = 0x86AC

gl_WEIGHT_ARRAY_SIZE_ARB :: GLenum
gl_WEIGHT_ARRAY_SIZE_ARB = 0x86AB

gl_WEIGHT_ARRAY_STRIDE_ARB :: GLenum
gl_WEIGHT_ARRAY_STRIDE_ARB = 0x86AA

gl_WEIGHT_ARRAY_TYPE_ARB :: GLenum
gl_WEIGHT_ARRAY_TYPE_ARB = 0x86A9

gl_WEIGHT_SUM_UNITY_ARB :: GLenum
gl_WEIGHT_SUM_UNITY_ARB = 0x86A6