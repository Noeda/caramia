-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.InvalidateSubdata (
	-- * Extension Support
	  gl_ARB_invalidate_subdata

	-- * GL_ARB_invalidate_subdata
	, glInvalidateBufferData
	, glInvalidateBufferSubData
	, glInvalidateFramebuffer
	, glInvalidateSubFramebuffer
	, glInvalidateTexImage
	, glInvalidateTexSubImage
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_invalidate_subdata :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_invalidate_subdata = extGL 125