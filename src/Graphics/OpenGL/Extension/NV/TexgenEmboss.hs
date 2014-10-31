-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TexgenEmboss (
	-- * Extension Support
	  gl_NV_texgen_emboss

	-- * GL_NV_texgen_emboss
	, gl_EMBOSS_CONSTANT_NV
	, gl_EMBOSS_LIGHT_NV
	, gl_EMBOSS_MAP_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texgen_emboss :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texgen_emboss = extGL 513

gl_EMBOSS_CONSTANT_NV :: GLenum
gl_EMBOSS_CONSTANT_NV = 0x855E

gl_EMBOSS_LIGHT_NV :: GLenum
gl_EMBOSS_LIGHT_NV = 0x855D

gl_EMBOSS_MAP_NV :: GLenum
gl_EMBOSS_MAP_NV = 0x855F