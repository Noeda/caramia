-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TexgenReflection (
	-- * Extension Support
	  gl_NV_texgen_reflection

	-- * GL_NV_texgen_reflection
	, gl_NORMAL_MAP_NV
	, gl_REFLECTION_MAP_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texgen_reflection :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texgen_reflection = extGL 514

gl_NORMAL_MAP_NV :: GLenum
gl_NORMAL_MAP_NV = 0x8511

gl_REFLECTION_MAP_NV :: GLenum
gl_REFLECTION_MAP_NV = 0x8512