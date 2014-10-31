-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.TextureEnvCombine4 (
	-- * Extension Support
	  gl_NV_texture_env_combine4

	-- * GL_NV_texture_env_combine4
	, gl_COMBINE4_NV
	, gl_OPERAND3_ALPHA_NV
	, gl_OPERAND3_RGB_NV
	, gl_SOURCE3_ALPHA_NV
	, gl_SOURCE3_RGB_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_texture_env_combine4 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_texture_env_combine4 = extGL 519

gl_COMBINE4_NV :: GLenum
gl_COMBINE4_NV = 0x8503

gl_OPERAND3_ALPHA_NV :: GLenum
gl_OPERAND3_ALPHA_NV = 0x859B

gl_OPERAND3_RGB_NV :: GLenum
gl_OPERAND3_RGB_NV = 0x8593

gl_SOURCE3_ALPHA_NV :: GLenum
gl_SOURCE3_ALPHA_NV = 0x858B

gl_SOURCE3_RGB_NV :: GLenum
gl_SOURCE3_RGB_NV = 0x8583