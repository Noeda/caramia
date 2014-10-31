-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.MultiBind (
	-- * Extension Support
	  gl_ARB_multi_bind

	-- * GL_ARB_multi_bind
	, glBindBuffersBase
	, glBindBuffersRange
	, glBindImageTextures
	, glBindSamplers
	, glBindTextures
	, glBindVertexBuffers
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_multi_bind :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_multi_bind = extGL 129