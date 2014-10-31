-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.GpuProgramParameters (
	-- * Extension Support
	  gl_EXT_gpu_program_parameters

	-- * GL_EXT_gpu_program_parameters
	, glProgramEnvParameters4fvEXT
	, glProgramLocalParameters4fvEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_gpu_program_parameters :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_gpu_program_parameters = extGL 286

glProgramEnvParameters4fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> m ()
glProgramEnvParameters4fvEXT v0 v1 v2 v3 = funGL 1267 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramLocalParameters4fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLfloat -> m ()
glProgramLocalParameters4fvEXT v0 v1 v2 v3 = funGL 1268 >>= \f -> liftIO $ f v0 v1 v2 v3