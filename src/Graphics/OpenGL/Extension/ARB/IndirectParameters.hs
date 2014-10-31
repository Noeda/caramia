-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.IndirectParameters (
	-- * Extension Support
	  gl_ARB_indirect_parameters

	-- * GL_ARB_indirect_parameters
	, glMultiDrawArraysIndirectCountARB
	, glMultiDrawElementsIndirectCountARB
	, gl_PARAMETER_BUFFER_ARB
	, gl_PARAMETER_BUFFER_BINDING_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_indirect_parameters :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_indirect_parameters = extGL 121

glMultiDrawArraysIndirectCountARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLintptr -> GLsizei -> GLsizei -> m ()
glMultiDrawArraysIndirectCountARB v0 v1 v2 v3 v4 = funGL 372 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiDrawElementsIndirectCountARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizei -> GLsizei -> m ()
glMultiDrawElementsIndirectCountARB v0 v1 v2 v3 v4 v5 = funGL 373 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_PARAMETER_BUFFER_ARB :: GLenum
gl_PARAMETER_BUFFER_ARB = 0x80EE

gl_PARAMETER_BUFFER_BINDING_ARB :: GLenum
gl_PARAMETER_BUFFER_BINDING_ARB = 0x80EF