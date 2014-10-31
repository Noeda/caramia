-- This file was automatically generated.
module Graphics.OpenGL.Extension.KHR.BlendEquationAdvancedCoherent (
	-- * Extension Support
	  gl_KHR_blend_equation_advanced_coherent

	-- * GL_KHR_blend_equation_advanced_coherent
	, gl_BLEND_ADVANCED_COHERENT_KHR
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_KHR_blend_equation_advanced_coherent :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_KHR_blend_equation_advanced_coherent = extGL 414

gl_BLEND_ADVANCED_COHERENT_KHR :: GLenum
gl_BLEND_ADVANCED_COHERENT_KHR = 0x9285