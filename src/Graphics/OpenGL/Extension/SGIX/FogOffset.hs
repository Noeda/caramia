-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.FogOffset (
	-- * Extension Support
	  gl_SGIX_fog_offset

	-- * GL_SGIX_fog_offset
	, gl_FOG_OFFSET_SGIX
	, gl_FOG_OFFSET_VALUE_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_fog_offset :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_fog_offset = extGL 638

gl_FOG_OFFSET_SGIX :: GLenum
gl_FOG_OFFSET_SGIX = 0x8198

gl_FOG_OFFSET_VALUE_SGIX :: GLenum
gl_FOG_OFFSET_VALUE_SGIX = 0x8199