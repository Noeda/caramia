-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.InstancedArrays (
	-- * Extension Support
	  gl_ANGLE_instanced_arrays

	-- * GL_ANGLE_instanced_arrays
	, glDrawArraysInstancedANGLE
	, glDrawElementsInstancedANGLE
	, glVertexAttribDivisorANGLE
	, gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_instanced_arrays :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_instanced_arrays = extGL 37

glDrawArraysInstancedANGLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> GLsizei -> m ()
glDrawArraysInstancedANGLE v0 v1 v2 v3 = funGL 68 >>= \f -> liftIO $ f v0 v1 v2 v3

glDrawElementsInstancedANGLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> GLenum -> Ptr () -> GLsizei -> m ()
glDrawElementsInstancedANGLE v0 v1 v2 v3 v4 = funGL 69 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribDivisorANGLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> m ()
glVertexAttribDivisorANGLE v0 v1 = funGL 70 >>= \f -> liftIO $ f v0 v1

gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE :: GLenum
gl_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE = 0x88FE