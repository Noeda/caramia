-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureBorderClamp (
	-- * Extension Support
	  gl_ARB_texture_border_clamp

	-- * GL_ARB_texture_border_clamp
	, gl_CLAMP_TO_BORDER_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_texture_border_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_border_clamp = extGL 175

gl_CLAMP_TO_BORDER_ARB :: GLenum
gl_CLAMP_TO_BORDER_ARB = 0x812D