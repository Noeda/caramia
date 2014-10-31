-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.ClipVolumeHint (
	-- * Extension Support
	  gl_EXT_clip_volume_hint

	-- * GL_EXT_clip_volume_hint
	, gl_CLIP_VOLUME_CLIPPING_HINT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_clip_volume_hint :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_clip_volume_hint = extGL 256

gl_CLIP_VOLUME_CLIPPING_HINT_EXT :: GLenum
gl_CLIP_VOLUME_CLIPPING_HINT_EXT = 0x80F0