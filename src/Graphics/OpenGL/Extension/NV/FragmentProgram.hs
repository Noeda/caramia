-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FragmentProgram (
	-- * Extension Support
	  gl_NV_fragment_program

	-- * GL_NV_fragment_program
	, glGetProgramNamedParameterdvNV
	, glGetProgramNamedParameterfvNV
	, glProgramNamedParameter4dNV
	, glProgramNamedParameter4dvNV
	, glProgramNamedParameter4fNV
	, glProgramNamedParameter4fvNV
	, gl_FRAGMENT_PROGRAM_BINDING_NV
	, gl_FRAGMENT_PROGRAM_NV
	, gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV
	, gl_MAX_TEXTURE_COORDS_NV
	, gl_MAX_TEXTURE_IMAGE_UNITS_NV
	, gl_PROGRAM_ERROR_STRING_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_fragment_program :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_fragment_program = extGL 457

glGetProgramNamedParameterdvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> m ()
glGetProgramNamedParameterdvNV v0 v1 v2 v3 = funGL 1614 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetProgramNamedParameterfvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> m ()
glGetProgramNamedParameterfvNV v0 v1 v2 v3 = funGL 1615 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramNamedParameter4dNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLubyte -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glProgramNamedParameter4dNV v0 v1 v2 v3 v4 v5 v6 = funGL 1616 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glProgramNamedParameter4dvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLdouble -> m ()
glProgramNamedParameter4dvNV v0 v1 v2 v3 = funGL 1617 >>= \f -> liftIO $ f v0 v1 v2 v3

glProgramNamedParameter4fNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLubyte -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glProgramNamedParameter4fNV v0 v1 v2 v3 v4 v5 v6 = funGL 1618 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glProgramNamedParameter4fvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLubyte -> Ptr GLfloat -> m ()
glProgramNamedParameter4fvNV v0 v1 v2 v3 = funGL 1619 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_FRAGMENT_PROGRAM_BINDING_NV :: GLenum
gl_FRAGMENT_PROGRAM_BINDING_NV = 0x8873

gl_FRAGMENT_PROGRAM_NV :: GLenum
gl_FRAGMENT_PROGRAM_NV = 0x8870

gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV :: GLenum
gl_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV = 0x8868

gl_MAX_TEXTURE_COORDS_NV :: GLenum
gl_MAX_TEXTURE_COORDS_NV = 0x8871

gl_MAX_TEXTURE_IMAGE_UNITS_NV :: GLenum
gl_MAX_TEXTURE_IMAGE_UNITS_NV = 0x8872

gl_PROGRAM_ERROR_STRING_NV :: GLenum
gl_PROGRAM_ERROR_STRING_NV = 0x8874