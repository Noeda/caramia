-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.IglooInterface (
	-- * Extension Support
	  gl_SGIX_igloo_interface

	-- * GL_SGIX_igloo_interface
	, glIglooInterfaceSGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_igloo_interface :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_igloo_interface = extGL 641

glIglooInterfaceSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glIglooInterfaceSGIX v0 v1 = funGL 2255 >>= \f -> liftIO $ f v0 v1