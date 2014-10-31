-- This file was automatically generated.
module Graphics.OpenGL.Extension.ThreeDFX.Tbuffer (
	-- * Extension Support
	  gl_3DFX_tbuffer

	-- * GL_3DFX_tbuffer
	, glTbufferMask3DFX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_3DFX_tbuffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_3DFX_tbuffer = extGL 1

glTbufferMask3DFX :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glTbufferMask3DFX v0 = funGL 2336 >>= \f -> liftIO $ f v0