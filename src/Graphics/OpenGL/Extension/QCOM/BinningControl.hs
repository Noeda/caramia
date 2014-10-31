-- This file was automatically generated.
module Graphics.OpenGL.Extension.QCOM.BinningControl (
	-- * Extension Support
	  gl_QCOM_binning_control

	-- * GL_QCOM_binning_control
	, gl_BINNING_CONTROL_HINT_QCOM
	, gl_CPU_OPTIMIZED_QCOM
	, gl_GPU_OPTIMIZED_QCOM
	, gl_RENDER_DIRECT_TO_FRAMEBUFFER_QCOM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_QCOM_binning_control :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_QCOM_binning_control = extGL 604

gl_BINNING_CONTROL_HINT_QCOM :: GLenum
gl_BINNING_CONTROL_HINT_QCOM = 0x8FB0

gl_CPU_OPTIMIZED_QCOM :: GLenum
gl_CPU_OPTIMIZED_QCOM = 0x8FB1

gl_GPU_OPTIMIZED_QCOM :: GLenum
gl_GPU_OPTIMIZED_QCOM = 0x8FB2

gl_RENDER_DIRECT_TO_FRAMEBUFFER_QCOM :: GLenum
gl_RENDER_DIRECT_TO_FRAMEBUFFER_QCOM = 0x8FB3