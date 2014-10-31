-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.VertexShaderTessellator (
	-- * Extension Support
	  gl_AMD_vertex_shader_tessellator

	-- * GL_AMD_vertex_shader_tessellator
	, glTessellationFactorAMD
	, glTessellationModeAMD
	, gl_CONTINUOUS_AMD
	, gl_DISCRETE_AMD
	, gl_INT_SAMPLER_BUFFER_AMD
	, gl_SAMPLER_BUFFER_AMD
	, gl_TESSELLATION_FACTOR_AMD
	, gl_TESSELLATION_MODE_AMD
	, gl_UNSIGNED_INT_SAMPLER_BUFFER_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_vertex_shader_tessellator :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_vertex_shader_tessellator = extGL 31

glTessellationFactorAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glTessellationFactorAMD v0 = funGL 64 >>= \f -> liftIO $ f v0

glTessellationModeAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glTessellationModeAMD v0 = funGL 65 >>= \f -> liftIO $ f v0

gl_CONTINUOUS_AMD :: GLenum
gl_CONTINUOUS_AMD = 0x9007

gl_DISCRETE_AMD :: GLenum
gl_DISCRETE_AMD = 0x9006

gl_INT_SAMPLER_BUFFER_AMD :: GLenum
gl_INT_SAMPLER_BUFFER_AMD = 0x9002

gl_SAMPLER_BUFFER_AMD :: GLenum
gl_SAMPLER_BUFFER_AMD = 0x9001

gl_TESSELLATION_FACTOR_AMD :: GLenum
gl_TESSELLATION_FACTOR_AMD = 0x9005

gl_TESSELLATION_MODE_AMD :: GLenum
gl_TESSELLATION_MODE_AMD = 0x9004

gl_UNSIGNED_INT_SAMPLER_BUFFER_AMD :: GLenum
gl_UNSIGNED_INT_SAMPLER_BUFFER_AMD = 0x9003