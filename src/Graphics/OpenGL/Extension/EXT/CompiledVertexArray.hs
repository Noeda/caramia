-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.CompiledVertexArray (
	-- * Extension Support
	  gl_EXT_compiled_vertex_array

	-- * GL_EXT_compiled_vertex_array
	, glLockArraysEXT
	, glUnlockArraysEXT
	, gl_ARRAY_ELEMENT_LOCK_COUNT_EXT
	, gl_ARRAY_ELEMENT_LOCK_FIRST_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_compiled_vertex_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_compiled_vertex_array = extGL 260

glLockArraysEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLsizei -> m ()
glLockArraysEXT v0 v1 = funGL 910 >>= \f -> liftIO $ f v0 v1

glUnlockArraysEXT :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glUnlockArraysEXT = funGL 911 >>= \f -> liftIO $ f

gl_ARRAY_ELEMENT_LOCK_COUNT_EXT :: GLenum
gl_ARRAY_ELEMENT_LOCK_COUNT_EXT = 0x81A9

gl_ARRAY_ELEMENT_LOCK_FIRST_EXT :: GLenum
gl_ARRAY_ELEMENT_LOCK_FIRST_EXT = 0x81A8