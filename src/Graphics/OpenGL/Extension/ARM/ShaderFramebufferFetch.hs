-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARM.ShaderFramebufferFetch (
	-- * Extension Support
	  gl_ARM_shader_framebuffer_fetch

	-- * GL_ARM_shader_framebuffer_fetch
	, gl_FETCH_PER_SAMPLE_ARM
	, gl_FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARM_shader_framebuffer_fetch :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARM_shader_framebuffer_fetch = extGL 226

gl_FETCH_PER_SAMPLE_ARM :: GLenum
gl_FETCH_PER_SAMPLE_ARM = 0x8F65

gl_FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM :: GLenum
gl_FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM = 0x8F66