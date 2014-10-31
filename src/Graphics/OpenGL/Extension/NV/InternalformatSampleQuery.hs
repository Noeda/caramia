-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.InternalformatSampleQuery (
	-- * Extension Support
	  gl_NV_internalformat_sample_query

	-- * GL_NV_internalformat_sample_query
	, glGetInternalformatSampleivNV
	, gl_CONFORMANT_NV
	, gl_MULTISAMPLES_NV
	, gl_RENDERBUFFER
	, gl_SUPERSAMPLE_SCALE_X_NV
	, gl_SUPERSAMPLE_SCALE_Y_NV
	, gl_TEXTURE_2D_MULTISAMPLE
	, gl_TEXTURE_2D_MULTISAMPLE_ARRAY
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_internalformat_sample_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_internalformat_sample_query = extGL 476

glGetInternalformatSampleivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLenum -> GLsizei -> Ptr GLint -> m ()
glGetInternalformatSampleivNV v0 v1 v2 v3 v4 v5 = funGL 1693 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_CONFORMANT_NV :: GLenum
gl_CONFORMANT_NV = 0x9374

gl_MULTISAMPLES_NV :: GLenum
gl_MULTISAMPLES_NV = 0x9371

gl_SUPERSAMPLE_SCALE_X_NV :: GLenum
gl_SUPERSAMPLE_SCALE_X_NV = 0x9372

gl_SUPERSAMPLE_SCALE_Y_NV :: GLenum
gl_SUPERSAMPLE_SCALE_Y_NV = 0x9373