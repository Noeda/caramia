-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureMirroredRepeat (
	-- * Extension Support
	  gl_ARB_texture_mirrored_repeat

	-- * GL_ARB_texture_mirrored_repeat
	, gl_MIRRORED_REPEAT_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_texture_mirrored_repeat :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_mirrored_repeat = extGL 191

gl_MIRRORED_REPEAT_ARB :: GLenum
gl_MIRRORED_REPEAT_ARB = 0x8370