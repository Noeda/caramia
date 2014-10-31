-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.TextureMultiBuffer (
	-- * Extension Support
	  gl_SGIX_texture_multi_buffer

	-- * GL_SGIX_texture_multi_buffer
	, gl_TEXTURE_MULTI_BUFFER_HINT_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_texture_multi_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_texture_multi_buffer = extGL 660

gl_TEXTURE_MULTI_BUFFER_HINT_SGIX :: GLenum
gl_TEXTURE_MULTI_BUFFER_HINT_SGIX = 0x812E