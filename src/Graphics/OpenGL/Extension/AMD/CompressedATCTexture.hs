-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.CompressedATCTexture (
	-- * Extension Support
	  gl_AMD_compressed_ATC_texture

	-- * GL_AMD_compressed_ATC_texture
	, gl_ATC_RGBA_EXPLICIT_ALPHA_AMD
	, gl_ATC_RGBA_INTERPOLATED_ALPHA_AMD
	, gl_ATC_RGB_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_compressed_ATC_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_compressed_ATC_texture = extGL 5

gl_ATC_RGBA_EXPLICIT_ALPHA_AMD :: GLenum
gl_ATC_RGBA_EXPLICIT_ALPHA_AMD = 0x8C93

gl_ATC_RGBA_INTERPOLATED_ALPHA_AMD :: GLenum
gl_ATC_RGBA_INTERPOLATED_ALPHA_AMD = 0x87EE

gl_ATC_RGB_AMD :: GLenum
gl_ATC_RGB_AMD = 0x8C92