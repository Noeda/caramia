-- This file was automatically generated.
module Graphics.OpenGL.Extension.IBM.TextureMirroredRepeat (
	-- * Extension Support
	  gl_IBM_texture_mirrored_repeat

	-- * GL_IBM_texture_mirrored_repeat
	, gl_MIRRORED_REPEAT_IBM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IBM_texture_mirrored_repeat :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IBM_texture_mirrored_repeat = extGL 396

gl_MIRRORED_REPEAT_IBM :: GLenum
gl_MIRRORED_REPEAT_IBM = 0x8370