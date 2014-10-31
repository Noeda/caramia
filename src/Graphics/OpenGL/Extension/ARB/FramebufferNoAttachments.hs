-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.FramebufferNoAttachments (
	-- * Extension Support
	  gl_ARB_framebuffer_no_attachments

	-- * GL_ARB_framebuffer_no_attachments
	, glFramebufferParameteri
	, glGetFramebufferParameteriv
	, gl_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
	, gl_FRAMEBUFFER_DEFAULT_HEIGHT
	, gl_FRAMEBUFFER_DEFAULT_LAYERS
	, gl_FRAMEBUFFER_DEFAULT_SAMPLES
	, gl_FRAMEBUFFER_DEFAULT_WIDTH
	, gl_MAX_FRAMEBUFFER_HEIGHT
	, gl_MAX_FRAMEBUFFER_LAYERS
	, gl_MAX_FRAMEBUFFER_SAMPLES
	, gl_MAX_FRAMEBUFFER_WIDTH
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_framebuffer_no_attachments :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_framebuffer_no_attachments = extGL 110