-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureMirrorClamp (
	-- * Extension Support
	  gl_EXT_texture_mirror_clamp

	-- * GL_EXT_texture_mirror_clamp
	, gl_MIRROR_CLAMP_EXT
	, gl_MIRROR_CLAMP_TO_BORDER_EXT
	, gl_MIRROR_CLAMP_TO_EDGE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_mirror_clamp :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_mirror_clamp = extGL 364

gl_MIRROR_CLAMP_EXT :: GLenum
gl_MIRROR_CLAMP_EXT = 0x8742

gl_MIRROR_CLAMP_TO_BORDER_EXT :: GLenum
gl_MIRROR_CLAMP_TO_BORDER_EXT = 0x8912

gl_MIRROR_CLAMP_TO_EDGE_EXT :: GLenum
gl_MIRROR_CLAMP_TO_EDGE_EXT = 0x8743