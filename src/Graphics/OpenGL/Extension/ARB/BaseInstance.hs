-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.BaseInstance (
	-- * Extension Support
	  gl_ARB_base_instance

	-- * GL_ARB_base_instance
	, glDrawArraysInstancedBaseInstance
	, glDrawElementsInstancedBaseInstance
	, glDrawElementsInstancedBaseVertexBaseInstance
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_base_instance :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_base_instance = extGL 73