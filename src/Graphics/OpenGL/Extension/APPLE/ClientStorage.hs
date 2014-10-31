-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.ClientStorage (
	-- * Extension Support
	  gl_APPLE_client_storage

	-- * GL_APPLE_client_storage
	, gl_UNPACK_CLIENT_STORAGE_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_client_storage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_client_storage = extGL 45

gl_UNPACK_CLIENT_STORAGE_APPLE :: GLenum
gl_UNPACK_CLIENT_STORAGE_APPLE = 0x85B2