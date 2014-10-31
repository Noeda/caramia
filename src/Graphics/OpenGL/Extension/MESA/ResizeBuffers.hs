-- This file was automatically generated.
module Graphics.OpenGL.Extension.MESA.ResizeBuffers (
	-- * Extension Support
	  gl_MESA_resize_buffers

	-- * GL_MESA_resize_buffers
	, glResizeBuffersMESA
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_MESA_resize_buffers :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_MESA_resize_buffers = extGL 423

glResizeBuffersMESA :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glResizeBuffersMESA = funGL 1536 >>= \f -> liftIO $ f