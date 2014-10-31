-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.TextureMirroredRepeat (
	-- * Extension Support
	  gl_OES_texture_mirrored_repeat

	-- * GL_OES_texture_mirrored_repeat
	, gl_MIRRORED_REPEAT_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_texture_mirrored_repeat :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_texture_mirrored_repeat = extGL 591

gl_MIRRORED_REPEAT_OES :: GLenum
gl_MIRRORED_REPEAT_OES = 0x8370