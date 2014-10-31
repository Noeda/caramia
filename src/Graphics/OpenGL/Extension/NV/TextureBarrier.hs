-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TextureBarrier (
	-- * Extension Support
	  gl_NV_texture_barrier

	-- * GL_NV_texture_barrier
	, glTextureBarrierNV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texture_barrier :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texture_barrier = extGL 515

glTextureBarrierNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glTextureBarrierNV = funGL 1818 >>= \f -> liftIO $ f