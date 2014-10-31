-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.BlendEquationAdvancedCoherent (
	-- * Extension Support
	  gl_NV_blend_equation_advanced_coherent

	-- * GL_NV_blend_equation_advanced_coherent
	, gl_BLEND_ADVANCED_COHERENT_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_blend_equation_advanced_coherent :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_blend_equation_advanced_coherent = extGL 432

gl_BLEND_ADVANCED_COHERENT_NV :: GLenum
gl_BLEND_ADVANCED_COHERENT_NV = 0x9285