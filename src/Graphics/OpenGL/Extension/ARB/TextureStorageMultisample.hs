-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureStorageMultisample (
	-- * Extension Support
	  gl_ARB_texture_storage_multisample

	-- * GL_ARB_texture_storage_multisample
	, glTexStorage2DMultisample
	, glTexStorage3DMultisample
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_texture_storage_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_storage_multisample = extGL 201