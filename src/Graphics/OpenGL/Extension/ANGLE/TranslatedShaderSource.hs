-- This file was automatically generated.
module Graphics.OpenGL.Extension.ANGLE.TranslatedShaderSource (
	-- * Extension Support
	  gl_ANGLE_translated_shader_source

	-- * GL_ANGLE_translated_shader_source
	, glGetTranslatedShaderSourceANGLE
	, gl_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ANGLE_translated_shader_source :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ANGLE_translated_shader_source = extGL 43

glGetTranslatedShaderSourceANGLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLsizei -> Ptr GLchar -> m ()
glGetTranslatedShaderSourceANGLE v0 v1 v2 v3 = funGL 71 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE :: GLenum
gl_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE = 0x93A0