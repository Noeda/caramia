-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.TextureEnvCombine3 (
	-- * Extension Support
	  gl_ATI_texture_env_combine3

	-- * GL_ATI_texture_env_combine3
	, gl_MODULATE_ADD_ATI
	, gl_MODULATE_SIGNED_ADD_ATI
	, gl_MODULATE_SUBTRACT_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_texture_env_combine3 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_texture_env_combine3 = extGL 238

gl_MODULATE_ADD_ATI :: GLenum
gl_MODULATE_ADD_ATI = 0x8744

gl_MODULATE_SIGNED_ADD_ATI :: GLenum
gl_MODULATE_SIGNED_ADD_ATI = 0x8745

gl_MODULATE_SUBTRACT_ATI :: GLenum
gl_MODULATE_SUBTRACT_ATI = 0x8746