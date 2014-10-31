-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ClearBufferObject (
	-- * Extension Support
	  gl_ARB_clear_buffer_object

	-- * GL_ARB_clear_buffer_object
	, glClearBufferData
	, glClearBufferSubData
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_clear_buffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_clear_buffer_object = extGL 78