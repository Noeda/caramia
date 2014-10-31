-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.VertexShaderLayer (
	-- * Extension Support
	  gl_AMD_vertex_shader_layer

	-- * GL_AMD_vertex_shader_layer
	, 
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_vertex_shader_layer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_vertex_shader_layer = extGL 30