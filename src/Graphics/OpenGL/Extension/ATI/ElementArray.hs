-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.ElementArray (
	-- * Extension Support
	  gl_ATI_element_array

	-- * GL_ATI_element_array
	, glDrawElementArrayATI
	, glDrawRangeElementArrayATI
	, glElementPointerATI
	, gl_ELEMENT_ARRAY_ATI
	, gl_ELEMENT_ARRAY_POINTER_ATI
	, gl_ELEMENT_ARRAY_TYPE_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_element_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_element_array = extGL 229

glDrawElementArrayATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> m ()
glDrawElementArrayATI v0 v1 = funGL 814 >>= \f -> liftIO $ f v0 v1

glDrawRangeElementArrayATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLsizei -> m ()
glDrawRangeElementArrayATI v0 v1 v2 v3 = funGL 815 >>= \f -> liftIO $ f v0 v1 v2 v3

glElementPointerATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glElementPointerATI v0 v1 = funGL 816 >>= \f -> liftIO $ f v0 v1

gl_ELEMENT_ARRAY_ATI :: GLenum
gl_ELEMENT_ARRAY_ATI = 0x8768

gl_ELEMENT_ARRAY_POINTER_ATI :: GLenum
gl_ELEMENT_ARRAY_POINTER_ATI = 0x876A

gl_ELEMENT_ARRAY_TYPE_ATI :: GLenum
gl_ELEMENT_ARRAY_TYPE_ATI = 0x8769