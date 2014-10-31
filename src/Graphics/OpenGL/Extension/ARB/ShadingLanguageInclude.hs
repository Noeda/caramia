-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ShadingLanguageInclude (
	-- * Extension Support
	  gl_ARB_shading_language_include

	-- * GL_ARB_shading_language_include
	, glCompileShaderIncludeARB
	, glDeleteNamedStringARB
	, glGetNamedStringARB
	, glGetNamedStringivARB
	, glIsNamedStringARB
	, glNamedStringARB
	, gl_NAMED_STRING_LENGTH_ARB
	, gl_NAMED_STRING_TYPE_ARB
	, gl_SHADER_INCLUDE_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_shading_language_include :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_shading_language_include = extGL 165

glCompileShaderIncludeARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLchar -> Ptr GLint -> m ()
glCompileShaderIncludeARB v0 v1 v2 v3 = funGL 596 >>= \f -> liftIO $ f v0 v1 v2 v3

glDeleteNamedStringARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLchar -> m ()
glDeleteNamedStringARB v0 v1 = funGL 597 >>= \f -> liftIO $ f v0 v1

glGetNamedStringARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLchar -> GLsizei -> Ptr GLint -> Ptr GLchar -> m ()
glGetNamedStringARB v0 v1 v2 v3 v4 = funGL 598 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetNamedStringivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLchar -> GLenum -> Ptr GLint -> m ()
glGetNamedStringivARB v0 v1 v2 v3 = funGL 599 >>= \f -> liftIO $ f v0 v1 v2 v3

glIsNamedStringARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> Ptr GLchar -> m GLboolean
glIsNamedStringARB v0 v1 = funGL 600 >>= \f -> liftIO $ f v0 v1

glNamedStringARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> Ptr GLchar -> GLint -> Ptr GLchar -> m ()
glNamedStringARB v0 v1 v2 v3 v4 = funGL 601 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

gl_NAMED_STRING_LENGTH_ARB :: GLenum
gl_NAMED_STRING_LENGTH_ARB = 0x8DE9

gl_NAMED_STRING_TYPE_ARB :: GLenum
gl_NAMED_STRING_TYPE_ARB = 0x8DEA

gl_SHADER_INCLUDE_ARB :: GLenum
gl_SHADER_INCLUDE_ARB = 0x8DAE