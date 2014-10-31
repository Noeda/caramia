-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.CopyImage (
	-- * Extension Support
	  gl_ARB_copy_image

	-- * GL_ARB_copy_image
	, glCopyImageSubData
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_copy_image :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_copy_image = extGL 89