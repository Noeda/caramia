-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.ShadingLanguage100 (
	-- * Extension Support
	  gl_ARB_shading_language_100

	-- * GL_ARB_shading_language_100
	, gl_SHADING_LANGUAGE_VERSION_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_shading_language_100 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_shading_language_100 = extGL 163

gl_SHADING_LANGUAGE_VERSION_ARB :: GLenum
gl_SHADING_LANGUAGE_VERSION_ARB = 0x8B8C