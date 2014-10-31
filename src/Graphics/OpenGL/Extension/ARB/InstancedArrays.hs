-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.InstancedArrays (
	-- * Extension Support
	  gl_ARB_instanced_arrays

	-- * GL_ARB_instanced_arrays
	, glVertexAttribDivisorARB
	, gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_instanced_arrays :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_instanced_arrays = extGL 122

glVertexAttribDivisorARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexAttribDivisorARB v0 v1 = funGL 374 >>= \f -> liftIO $ f v0 v1

gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB = 0x88FE