-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.TextureStorageMultisample2dArray (
	-- * Extension Support
	  gl_OES_texture_storage_multisample_2d_array

	-- * GL_OES_texture_storage_multisample_2d_array
	, glTexStorage3DMultisampleOES
	, gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES
	, gl_SAMPLER_2D_MULTISAMPLE_ARRAY_OES
	, gl_TEXTURE_2D_MULTISAMPLE_ARRAY_OES
	, gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY_OES
	, gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_texture_storage_multisample_2d_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_texture_storage_multisample_2d_array = extGL 594

glTexStorage3DMultisampleOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexStorage3DMultisampleOES v0 v1 v2 v3 v4 v5 v6 = funGL 2176 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES :: GLenum
gl_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES = 0x910C

gl_SAMPLER_2D_MULTISAMPLE_ARRAY_OES :: GLenum
gl_SAMPLER_2D_MULTISAMPLE_ARRAY_OES = 0x910B

gl_TEXTURE_2D_MULTISAMPLE_ARRAY_OES :: GLenum
gl_TEXTURE_2D_MULTISAMPLE_ARRAY_OES = 0x9102

gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY_OES :: GLenum
gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY_OES = 0x9105

gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES :: GLenum
gl_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES = 0x910D