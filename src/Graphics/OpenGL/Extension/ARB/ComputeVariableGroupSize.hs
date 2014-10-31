-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ComputeVariableGroupSize (
	-- * Extension Support
	  gl_ARB_compute_variable_group_size

	-- * GL_ARB_compute_variable_group_size
	, glDispatchComputeGroupSizeARB
	, gl_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB
	, gl_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB
	, gl_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB
	, gl_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_compute_variable_group_size :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_compute_variable_group_size = extGL 85

glDispatchComputeGroupSizeARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
glDispatchComputeGroupSizeARB v0 v1 v2 v3 v4 v5 = funGL 147 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB :: GLenum
gl_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB = 0x90EB

gl_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB :: GLenum
gl_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB = 0x91BF

gl_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB :: GLenum
gl_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB = 0x9344

gl_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB :: GLenum
gl_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB = 0x9345