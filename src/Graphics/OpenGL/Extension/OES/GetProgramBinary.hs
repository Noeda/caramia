-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.GetProgramBinary (
	-- * Extension Support
	  gl_OES_get_program_binary

	-- * GL_OES_get_program_binary
	, glGetProgramBinaryOES
	, glProgramBinaryOES
	, gl_NUM_PROGRAM_BINARY_FORMATS_OES
	, gl_PROGRAM_BINARY_FORMATS_OES
	, gl_PROGRAM_BINARY_LENGTH_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_get_program_binary :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_get_program_binary = extGL 561

glGetProgramBinaryOES :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLenum -> Ptr () -> m ()
glGetProgramBinaryOES v0 v1 v2 v3 v4 = funGL 2146 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramBinaryOES :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> Ptr () -> GLint -> m ()
glProgramBinaryOES v0 v1 v2 v3 = funGL 2147 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_NUM_PROGRAM_BINARY_FORMATS_OES :: GLenum
gl_NUM_PROGRAM_BINARY_FORMATS_OES = 0x87FE

gl_PROGRAM_BINARY_FORMATS_OES :: GLenum
gl_PROGRAM_BINARY_FORMATS_OES = 0x87FF

gl_PROGRAM_BINARY_LENGTH_OES :: GLenum
gl_PROGRAM_BINARY_LENGTH_OES = 0x8741