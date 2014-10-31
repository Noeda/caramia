-- This file was automatically generated.
module Graphics.OpenGL.Extension.SUN.TriangleList (
	-- * Extension Support
	  gl_SUN_triangle_list

	-- * GL_SUN_triangle_list
	, glReplacementCodePointerSUN
	, glReplacementCodeubSUN
	, glReplacementCodeubvSUN
	, glReplacementCodeuiSUN
	, glReplacementCodeuivSUN
	, glReplacementCodeusSUN
	, glReplacementCodeusvSUN
	, gl_R1UI_C3F_V3F_SUN
	, gl_R1UI_C4F_N3F_V3F_SUN
	, gl_R1UI_C4UB_V3F_SUN
	, gl_R1UI_N3F_V3F_SUN
	, gl_R1UI_T2F_C4F_N3F_V3F_SUN
	, gl_R1UI_T2F_N3F_V3F_SUN
	, gl_R1UI_T2F_V3F_SUN
	, gl_R1UI_V3F_SUN
	, gl_REPLACEMENT_CODE_ARRAY_POINTER_SUN
	, gl_REPLACEMENT_CODE_ARRAY_STRIDE_SUN
	, gl_REPLACEMENT_CODE_ARRAY_SUN
	, gl_REPLACEMENT_CODE_ARRAY_TYPE_SUN
	, gl_REPLACEMENT_CODE_SUN
	, gl_REPLACE_MIDDLE_SUN
	, gl_REPLACE_OLDEST_SUN
	, gl_RESTART_SUN
	, gl_TRIANGLE_LIST_SUN
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SUN_triangle_list :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SUN_triangle_list = extGL 674

glReplacementCodePointerSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glReplacementCodePointerSUN v0 v1 v2 = funGL 2288 >>= \f -> liftIO $ f v0 v1 v2

glReplacementCodeubSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> m ()
glReplacementCodeubSUN v0 = funGL 2289 >>= \f -> liftIO $ f v0

glReplacementCodeubvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> m ()
glReplacementCodeubvSUN v0 = funGL 2290 >>= \f -> liftIO $ f v0

glReplacementCodeuiSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glReplacementCodeuiSUN v0 = funGL 2291 >>= \f -> liftIO $ f v0

glReplacementCodeuivSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> m ()
glReplacementCodeuivSUN v0 = funGL 2292 >>= \f -> liftIO $ f v0

glReplacementCodeusSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLushort -> m ()
glReplacementCodeusSUN v0 = funGL 2293 >>= \f -> liftIO $ f v0

glReplacementCodeusvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLushort -> m ()
glReplacementCodeusvSUN v0 = funGL 2294 >>= \f -> liftIO $ f v0

gl_R1UI_C3F_V3F_SUN :: GLenum
gl_R1UI_C3F_V3F_SUN = 0x85C6

gl_R1UI_C4F_N3F_V3F_SUN :: GLenum
gl_R1UI_C4F_N3F_V3F_SUN = 0x85C8

gl_R1UI_C4UB_V3F_SUN :: GLenum
gl_R1UI_C4UB_V3F_SUN = 0x85C5

gl_R1UI_N3F_V3F_SUN :: GLenum
gl_R1UI_N3F_V3F_SUN = 0x85C7

gl_R1UI_T2F_C4F_N3F_V3F_SUN :: GLenum
gl_R1UI_T2F_C4F_N3F_V3F_SUN = 0x85CB

gl_R1UI_T2F_N3F_V3F_SUN :: GLenum
gl_R1UI_T2F_N3F_V3F_SUN = 0x85CA

gl_R1UI_T2F_V3F_SUN :: GLenum
gl_R1UI_T2F_V3F_SUN = 0x85C9

gl_R1UI_V3F_SUN :: GLenum
gl_R1UI_V3F_SUN = 0x85C4

gl_REPLACEMENT_CODE_ARRAY_POINTER_SUN :: GLenum
gl_REPLACEMENT_CODE_ARRAY_POINTER_SUN = 0x85C3

gl_REPLACEMENT_CODE_ARRAY_STRIDE_SUN :: GLenum
gl_REPLACEMENT_CODE_ARRAY_STRIDE_SUN = 0x85C2

gl_REPLACEMENT_CODE_ARRAY_SUN :: GLenum
gl_REPLACEMENT_CODE_ARRAY_SUN = 0x85C0

gl_REPLACEMENT_CODE_ARRAY_TYPE_SUN :: GLenum
gl_REPLACEMENT_CODE_ARRAY_TYPE_SUN = 0x85C1

gl_REPLACEMENT_CODE_SUN :: GLenum
gl_REPLACEMENT_CODE_SUN = 0x81D8

gl_REPLACE_MIDDLE_SUN :: GLenum
gl_REPLACE_MIDDLE_SUN = 0x0002

gl_REPLACE_OLDEST_SUN :: GLenum
gl_REPLACE_OLDEST_SUN = 0x0003

gl_RESTART_SUN :: GLenum
gl_RESTART_SUN = 0x0001

gl_TRIANGLE_LIST_SUN :: GLenum
gl_TRIANGLE_LIST_SUN = 0x81D7