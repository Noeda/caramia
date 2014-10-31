-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.SurfacelessContext (
	-- * Extension Support
	  gl_OES_surfaceless_context

	-- * GL_OES_surfaceless_context
	, gl_FRAMEBUFFER_UNDEFINED_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_surfaceless_context :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_surfaceless_context = extGL 582

gl_FRAMEBUFFER_UNDEFINED_OES :: GLenum
gl_FRAMEBUFFER_UNDEFINED_OES = 0x8219