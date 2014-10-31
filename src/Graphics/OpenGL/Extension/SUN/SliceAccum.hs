-- This file was automatically generated.
module Graphics.OpenGL.Extension.SUN.SliceAccum (
	-- * Extension Support
	  gl_SUN_slice_accum

	-- * GL_SUN_slice_accum
	, gl_SLICE_ACCUM_SUN
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SUN_slice_accum :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SUN_slice_accum = extGL 673

gl_SLICE_ACCUM_SUN :: GLenum
gl_SLICE_ACCUM_SUN = 0x85CC