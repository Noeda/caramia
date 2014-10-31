-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.FramebufferMultisample (
	-- * Extension Support
	  gl_EXT_framebuffer_multisample

	-- * GL_EXT_framebuffer_multisample
	, glRenderbufferStorageMultisampleEXT
	, gl_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT
	, gl_MAX_SAMPLES_EXT
	, gl_RENDERBUFFER_SAMPLES_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_framebuffer_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_framebuffer_multisample = extGL 279