-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.TextureBorderClamp (
	-- * Extension Support
	  gl_SGIS_texture_border_clamp

	-- * GL_SGIS_texture_border_clamp
	, gl_CLAMP_TO_BORDER_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_texture_border_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_texture_border_clamp = extGL 622

gl_CLAMP_TO_BORDER_SGIS :: GLenum
gl_CLAMP_TO_BORDER_SGIS = 0x812D