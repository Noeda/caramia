-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.SpecularVector (
	-- * Extension Support
	  gl_APPLE_specular_vector

	-- * GL_APPLE_specular_vector
	, gl_LIGHT_MODEL_SPECULAR_VECTOR_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_specular_vector :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_specular_vector = extGL 57

gl_LIGHT_MODEL_SPECULAR_VECTOR_APPLE :: GLenum
gl_LIGHT_MODEL_SPECULAR_VECTOR_APPLE = 0x85B0