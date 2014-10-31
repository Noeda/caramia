-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.CopyDepthToColor (
	-- * Extension Support
	  gl_NV_copy_depth_to_color

	-- * GL_NV_copy_depth_to_color
	, gl_DEPTH_STENCIL_TO_BGRA_NV
	, gl_DEPTH_STENCIL_TO_RGBA_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_copy_depth_to_color :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_copy_depth_to_color = extGL 438

gl_DEPTH_STENCIL_TO_BGRA_NV :: GLenum
gl_DEPTH_STENCIL_TO_BGRA_NV = 0x886F

gl_DEPTH_STENCIL_TO_RGBA_NV :: GLenum
gl_DEPTH_STENCIL_TO_RGBA_NV = 0x886E