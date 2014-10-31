-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.RescaleNormal (
	-- * Extension Support
	  gl_EXT_rescale_normal

	-- * GL_EXT_rescale_normal
	, gl_RESCALE_NORMAL_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_rescale_normal :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_rescale_normal = extGL 319

gl_RESCALE_NORMAL_EXT :: GLenum
gl_RESCALE_NORMAL_EXT = 0x803A