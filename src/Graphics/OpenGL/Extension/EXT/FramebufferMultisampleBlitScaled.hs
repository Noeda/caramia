-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.FramebufferMultisampleBlitScaled (
	-- * Extension Support
	  gl_EXT_framebuffer_multisample_blit_scaled

	-- * GL_EXT_framebuffer_multisample_blit_scaled
	, gl_SCALED_RESOLVE_FASTEST_EXT
	, gl_SCALED_RESOLVE_NICEST_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_framebuffer_multisample_blit_scaled :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_framebuffer_multisample_blit_scaled = extGL 280

gl_SCALED_RESOLVE_FASTEST_EXT :: GLenum
gl_SCALED_RESOLVE_FASTEST_EXT = 0x90BA

gl_SCALED_RESOLVE_NICEST_EXT :: GLenum
gl_SCALED_RESOLVE_NICEST_EXT = 0x90BB