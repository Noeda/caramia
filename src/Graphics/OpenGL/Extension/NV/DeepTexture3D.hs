-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.DeepTexture3D (
	-- * Extension Support
	  gl_NV_deep_texture3D

	-- * GL_NV_deep_texture3D
	, gl_MAX_DEEP_3D_TEXTURE_DEPTH_NV
	, gl_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_deep_texture3D :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_deep_texture3D = extGL 441

gl_MAX_DEEP_3D_TEXTURE_DEPTH_NV :: GLenum
gl_MAX_DEEP_3D_TEXTURE_DEPTH_NV = 0x90D1

gl_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV :: GLenum
gl_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV = 0x90D0