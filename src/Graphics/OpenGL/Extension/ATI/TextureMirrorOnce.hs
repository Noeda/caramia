-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.TextureMirrorOnce (
	-- * Extension Support
	  gl_ATI_texture_mirror_once

	-- * GL_ATI_texture_mirror_once
	, gl_MIRROR_CLAMP_ATI
	, gl_MIRROR_CLAMP_TO_EDGE_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_texture_mirror_once :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_texture_mirror_once = extGL 240

gl_MIRROR_CLAMP_ATI :: GLenum
gl_MIRROR_CLAMP_ATI = 0x8742

gl_MIRROR_CLAMP_TO_EDGE_ATI :: GLenum
gl_MIRROR_CLAMP_TO_EDGE_ATI = 0x8743