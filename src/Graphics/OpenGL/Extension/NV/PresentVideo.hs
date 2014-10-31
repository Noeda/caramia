-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.PresentVideo (
	-- * Extension Support
	  gl_NV_present_video

	-- * GL_NV_present_video
	, glGetVideoi64vNV
	, glGetVideoivNV
	, glGetVideoui64vNV
	, glGetVideouivNV
	, glPresentFrameDualFillNV
	, glPresentFrameKeyedNV
	, gl_CURRENT_TIME_NV
	, gl_FIELDS_NV
	, gl_FRAME_NV
	, gl_NUM_FILL_STREAMS_NV
	, gl_PRESENT_DURATION_NV
	, gl_PRESENT_TIME_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_present_video :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_present_video = extGL 488

glGetVideoi64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint64EXT -> m ()
glGetVideoi64vNV v0 v1 v2 = funGL 1778 >>= \f -> liftIO $ f v0 v1 v2

glGetVideoivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLint -> m ()
glGetVideoivNV v0 v1 v2 = funGL 1779 >>= \f -> liftIO $ f v0 v1 v2

glGetVideoui64vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint64EXT -> m ()
glGetVideoui64vNV v0 v1 v2 = funGL 1780 >>= \f -> liftIO $ f v0 v1 v2

glGetVideouivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr GLuint -> m ()
glGetVideouivNV v0 v1 v2 = funGL 1781 >>= \f -> liftIO $ f v0 v1 v2

glPresentFrameDualFillNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint64EXT -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> GLenum -> GLuint -> m ()
glPresentFrameDualFillNV v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = funGL 1782 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12

glPresentFrameKeyedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint64EXT -> GLuint -> GLuint -> GLenum -> GLenum -> GLuint -> GLuint -> GLenum -> GLuint -> GLuint -> m ()
glPresentFrameKeyedNV v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 1783 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

gl_CURRENT_TIME_NV :: GLenum
gl_CURRENT_TIME_NV = 0x8E28

gl_FIELDS_NV :: GLenum
gl_FIELDS_NV = 0x8E27

gl_FRAME_NV :: GLenum
gl_FRAME_NV = 0x8E26

gl_NUM_FILL_STREAMS_NV :: GLenum
gl_NUM_FILL_STREAMS_NV = 0x8E29

gl_PRESENT_DURATION_NV :: GLenum
gl_PRESENT_DURATION_NV = 0x8E2B

gl_PRESENT_TIME_NV :: GLenum
gl_PRESENT_TIME_NV = 0x8E2A