-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DebugLabel (
	-- * Extension Support
	  gl_EXT_debug_label

	-- * GL_EXT_debug_label
	, glGetObjectLabelEXT
	, glLabelObjectEXT
	, gl_BUFFER_OBJECT_EXT
	, gl_PROGRAM_OBJECT_EXT
	, gl_PROGRAM_PIPELINE_OBJECT_EXT
	, gl_QUERY_OBJECT_EXT
	, gl_SAMPLER
	, gl_SHADER_OBJECT_EXT
	, gl_TRANSFORM_FEEDBACK
	, gl_VERTEX_ARRAY_OBJECT_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_debug_label :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_debug_label = extGL 266

glGetObjectLabelEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetObjectLabelEXT v0 v1 v2 v3 v4 = funGL 955 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glLabelObjectEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLsizei -> Ptr GLchar -> m ()
glLabelObjectEXT v0 v1 v2 v3 = funGL 956 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_BUFFER_OBJECT_EXT :: GLenum
gl_BUFFER_OBJECT_EXT = 0x9151

gl_PROGRAM_OBJECT_EXT :: GLenum
gl_PROGRAM_OBJECT_EXT = 0x8B40

gl_PROGRAM_PIPELINE_OBJECT_EXT :: GLenum
gl_PROGRAM_PIPELINE_OBJECT_EXT = 0x8A4F

gl_QUERY_OBJECT_EXT :: GLenum
gl_QUERY_OBJECT_EXT = 0x9153

gl_SHADER_OBJECT_EXT :: GLenum
gl_SHADER_OBJECT_EXT = 0x8B48

gl_VERTEX_ARRAY_OBJECT_EXT :: GLenum
gl_VERTEX_ARRAY_OBJECT_EXT = 0x9154