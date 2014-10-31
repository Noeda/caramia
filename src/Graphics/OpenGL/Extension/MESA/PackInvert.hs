-- This file was automatically generated.
module Graphics.OpenGL.Extension.MESA.PackInvert (
	-- * Extension Support
	  gl_MESA_pack_invert

	-- * GL_MESA_pack_invert
	, gl_PACK_INVERT_MESA
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_MESA_pack_invert :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_MESA_pack_invert = extGL 422

gl_PACK_INVERT_MESA :: GLenum
gl_PACK_INVERT_MESA = 0x8758