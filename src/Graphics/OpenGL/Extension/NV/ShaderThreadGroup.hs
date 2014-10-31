-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.ShaderThreadGroup (
	-- * Extension Support
	  gl_NV_shader_thread_group

	-- * GL_NV_shader_thread_group
	, gl_SM_COUNT_NV
	, gl_WARPS_PER_SM_NV
	, gl_WARP_SIZE_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_shader_thread_group :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_shader_thread_group = extGL 508

gl_SM_COUNT_NV :: GLenum
gl_SM_COUNT_NV = 0x933B

gl_WARPS_PER_SM_NV :: GLenum
gl_WARPS_PER_SM_NV = 0x933A

gl_WARP_SIZE_NV :: GLenum
gl_WARP_SIZE_NV = 0x9339