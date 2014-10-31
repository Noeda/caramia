-- This file was automatically generated.
module Graphics.OpenGL.Extension.QCOM.PerfmonGlobalMode (
	-- * Extension Support
	  gl_QCOM_perfmon_global_mode

	-- * GL_QCOM_perfmon_global_mode
	, gl_PERFMON_GLOBAL_MODE_QCOM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_QCOM_perfmon_global_mode :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_QCOM_perfmon_global_mode = extGL 608

gl_PERFMON_GLOBAL_MODE_QCOM :: GLenum
gl_PERFMON_GLOBAL_MODE_QCOM = 0x8FA0