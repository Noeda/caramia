-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ExplicitMultisample (
	-- * Extension Support
	  gl_NV_explicit_multisample

	-- * GL_NV_explicit_multisample
	, glGetMultisamplefvNV
	, glSampleMaskIndexedNV
	, glTexRenderbufferNV
	, gl_INT_SAMPLER_RENDERBUFFER_NV
	, gl_MAX_SAMPLE_MASK_WORDS_NV
	, gl_SAMPLER_RENDERBUFFER_NV
	, gl_SAMPLE_MASK_NV
	, gl_SAMPLE_MASK_VALUE_NV
	, gl_SAMPLE_POSITION_NV
	, gl_TEXTURE_BINDING_RENDERBUFFER_NV
	, gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV
	, gl_TEXTURE_RENDERBUFFER_NV
	, gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_explicit_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_explicit_multisample = extGL 450

glGetMultisamplefvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLfloat -> m ()
glGetMultisamplefvNV v0 v1 v2 = funGL 1603 >>= \f -> liftIO $ f v0 v1 v2

glSampleMaskIndexedNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLbitfield -> m ()
glSampleMaskIndexedNV v0 v1 = funGL 1604 >>= \f -> liftIO $ f v0 v1

glTexRenderbufferNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glTexRenderbufferNV v0 v1 = funGL 1605 >>= \f -> liftIO $ f v0 v1

gl_INT_SAMPLER_RENDERBUFFER_NV :: GLenum
gl_INT_SAMPLER_RENDERBUFFER_NV = 0x8E57

gl_MAX_SAMPLE_MASK_WORDS_NV :: GLenum
gl_MAX_SAMPLE_MASK_WORDS_NV = 0x8E59

gl_SAMPLER_RENDERBUFFER_NV :: GLenum
gl_SAMPLER_RENDERBUFFER_NV = 0x8E56

gl_SAMPLE_MASK_NV :: GLenum
gl_SAMPLE_MASK_NV = 0x8E51

gl_SAMPLE_MASK_VALUE_NV :: GLenum
gl_SAMPLE_MASK_VALUE_NV = 0x8E52

gl_SAMPLE_POSITION_NV :: GLenum
gl_SAMPLE_POSITION_NV = 0x8E50

gl_TEXTURE_BINDING_RENDERBUFFER_NV :: GLenum
gl_TEXTURE_BINDING_RENDERBUFFER_NV = 0x8E53

gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV :: GLenum
gl_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV = 0x8E54

gl_TEXTURE_RENDERBUFFER_NV :: GLenum
gl_TEXTURE_RENDERBUFFER_NV = 0x8E55

gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV :: GLenum
gl_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV = 0x8E58