-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.ElementArray (
	-- * Extension Support
	  gl_APPLE_element_array

	-- * GL_APPLE_element_array
	, glDrawElementArrayAPPLE
	, glDrawRangeElementArrayAPPLE
	, glElementPointerAPPLE
	, glMultiDrawElementArrayAPPLE
	, glMultiDrawRangeElementArrayAPPLE
	, gl_ELEMENT_ARRAY_APPLE
	, gl_ELEMENT_ARRAY_POINTER_APPLE
	, gl_ELEMENT_ARRAY_TYPE_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_element_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_element_array = extGL 49

glDrawElementArrayAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> m ()
glDrawElementArrayAPPLE v0 v1 v2 = funGL 73 >>= \f -> liftIO $ f v0 v1 v2

glDrawRangeElementArrayAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLint -> GLsizei -> m ()
glDrawRangeElementArrayAPPLE v0 v1 v2 v3 v4 = funGL 74 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glElementPointerAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr () -> m ()
glElementPointerAPPLE v0 v1 = funGL 75 >>= \f -> liftIO $ f v0 v1

glMultiDrawElementArrayAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> Ptr GLsizei -> GLsizei -> m ()
glMultiDrawElementArrayAPPLE v0 v1 v2 v3 = funGL 76 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiDrawRangeElementArrayAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> Ptr GLint -> Ptr GLsizei -> GLsizei -> m ()
glMultiDrawRangeElementArrayAPPLE v0 v1 v2 v3 v4 v5 = funGL 77 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_ELEMENT_ARRAY_APPLE :: GLenum
gl_ELEMENT_ARRAY_APPLE = 0x8A0C

gl_ELEMENT_ARRAY_POINTER_APPLE :: GLenum
gl_ELEMENT_ARRAY_POINTER_APPLE = 0x8A0E

gl_ELEMENT_ARRAY_TYPE_APPLE :: GLenum
gl_ELEMENT_ARRAY_TYPE_APPLE = 0x8A0D