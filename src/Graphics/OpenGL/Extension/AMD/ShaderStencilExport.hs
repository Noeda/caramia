-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.ShaderStencilExport (
	-- * Extension Support
	  gl_AMD_shader_stencil_export

	-- * GL_AMD_shader_stencil_export
	, 
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_shader_stencil_export :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_shader_stencil_export = extGL 23