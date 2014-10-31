-- This file was automatically generated.
module Graphics.OpenGL.Extension.QCOM.WriteonlyRendering (
	-- * Extension Support
	  gl_QCOM_writeonly_rendering

	-- * GL_QCOM_writeonly_rendering
	, gl_WRITEONLY_RENDERING_QCOM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_QCOM_writeonly_rendering :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_QCOM_writeonly_rendering = extGL 610

gl_WRITEONLY_RENDERING_QCOM :: GLenum
gl_WRITEONLY_RENDERING_QCOM = 0x8823