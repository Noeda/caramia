-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.BindableUniform (
	-- * Extension Support
	  gl_EXT_bindable_uniform

	-- * GL_EXT_bindable_uniform
	, glGetUniformBufferSizeEXT
	, glGetUniformOffsetEXT
	, glUniformBufferEXT
	, gl_MAX_BINDABLE_UNIFORM_SIZE_EXT
	, gl_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT
	, gl_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT
	, gl_MAX_VERTEX_BINDABLE_UNIFORMS_EXT
	, gl_UNIFORM_BUFFER_BINDING_EXT
	, gl_UNIFORM_BUFFER_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_bindable_uniform :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_bindable_uniform = extGL 249

glGetUniformBufferSizeEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> m GLint
glGetUniformBufferSizeEXT v0 v1 = funGL 901 >>= \f -> liftIO $ f v0 v1

glGetUniformOffsetEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> m GLintptr
glGetUniformOffsetEXT v0 v1 = funGL 902 >>= \f -> liftIO $ f v0 v1

glUniformBufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLuint -> m ()
glUniformBufferEXT v0 v1 v2 = funGL 903 >>= \f -> liftIO $ f v0 v1 v2

gl_MAX_BINDABLE_UNIFORM_SIZE_EXT :: GLenum
gl_MAX_BINDABLE_UNIFORM_SIZE_EXT = 0x8DED

gl_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT :: GLenum
gl_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT = 0x8DE3

gl_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT :: GLenum
gl_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT = 0x8DE4

gl_MAX_VERTEX_BINDABLE_UNIFORMS_EXT :: GLenum
gl_MAX_VERTEX_BINDABLE_UNIFORMS_EXT = 0x8DE2

gl_UNIFORM_BUFFER_BINDING_EXT :: GLenum
gl_UNIFORM_BUFFER_BINDING_EXT = 0x8DEF

gl_UNIFORM_BUFFER_EXT :: GLenum
gl_UNIFORM_BUFFER_EXT = 0x8DEE