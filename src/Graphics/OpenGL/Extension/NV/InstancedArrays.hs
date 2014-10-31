-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.InstancedArrays (
	-- * Extension Support
	  gl_NV_instanced_arrays

	-- * GL_NV_instanced_arrays
	, glVertexAttribDivisorNV
	, gl_VERTEX_ATTRIB_ARRAY_DIVISOR_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_instanced_arrays :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_instanced_arrays = extGL 475

glVertexAttribDivisorNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexAttribDivisorNV v0 v1 = funGL 1692 >>= \f -> liftIO $ f v0 v1

gl_VERTEX_ATTRIB_ARRAY_DIVISOR_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR_NV = 0x88FE