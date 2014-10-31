-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.GetTextureSubImage (
	-- * Extension Support
	  gl_ARB_get_texture_sub_image

	-- * GL_ARB_get_texture_sub_image
	, glGetCompressedTextureSubImage
	, glGetTextureSubImage
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_get_texture_sub_image :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_get_texture_sub_image = extGL 115