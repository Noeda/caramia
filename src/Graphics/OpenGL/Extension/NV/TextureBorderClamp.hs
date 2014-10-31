-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TextureBorderClamp (
	-- * Extension Support
	  gl_NV_texture_border_clamp

	-- * GL_NV_texture_border_clamp
	, gl_CLAMP_TO_BORDER_NV
	, gl_TEXTURE_BORDER_COLOR_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texture_border_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texture_border_clamp = extGL 516

gl_CLAMP_TO_BORDER_NV :: GLenum
gl_CLAMP_TO_BORDER_NV = 0x812D

gl_TEXTURE_BORDER_COLOR_NV :: GLenum
gl_TEXTURE_BORDER_COLOR_NV = 0x1004