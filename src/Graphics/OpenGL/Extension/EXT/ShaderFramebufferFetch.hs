-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.ShaderFramebufferFetch (
	-- * Extension Support
	  gl_EXT_shader_framebuffer_fetch

	-- * GL_EXT_shader_framebuffer_fetch
	, gl_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_shader_framebuffer_fetch :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_shader_framebuffer_fetch = extGL 326

gl_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT :: GLenum
gl_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT = 0x8A52