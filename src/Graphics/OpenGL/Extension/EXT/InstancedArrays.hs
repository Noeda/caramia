-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.InstancedArrays (
	-- * Extension Support
	  gl_EXT_instanced_arrays

	-- * GL_EXT_instanced_arrays
	, glDrawArraysInstancedEXT
	, glDrawElementsInstancedEXT
	, glVertexAttribDivisorEXT
	, gl_VERTEX_ATTRIB_ARRAY_DIVISOR_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_instanced_arrays :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_instanced_arrays = extGL 294

glVertexAttribDivisorEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexAttribDivisorEXT v0 v1 = funGL 1292 >>= \f -> liftIO $ f v0 v1

gl_VERTEX_ATTRIB_ARRAY_DIVISOR_EXT :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR_EXT = 0x88FE