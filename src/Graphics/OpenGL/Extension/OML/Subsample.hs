-- This file was automatically generated.
module Graphics.OpenGL.Extension.OML.Subsample (
	-- * Extension Support
	  gl_OML_subsample

	-- * GL_OML_subsample
	, gl_FORMAT_SUBSAMPLE_244_244_OML
	, gl_FORMAT_SUBSAMPLE_24_24_OML
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OML_subsample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OML_subsample = extGL 600

gl_FORMAT_SUBSAMPLE_244_244_OML :: GLenum
gl_FORMAT_SUBSAMPLE_244_244_OML = 0x8983

gl_FORMAT_SUBSAMPLE_24_24_OML :: GLenum
gl_FORMAT_SUBSAMPLE_24_24_OML = 0x8982