-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Resample (
	-- * Extension Support
	  gl_SGIX_resample

	-- * GL_SGIX_resample
	, gl_PACK_RESAMPLE_SGIX
	, gl_RESAMPLE_DECIMATE_SGIX
	, gl_RESAMPLE_REPLICATE_SGIX
	, gl_RESAMPLE_ZERO_FILL_SGIX
	, gl_UNPACK_RESAMPLE_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_resample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_resample = extGL 650

gl_PACK_RESAMPLE_SGIX :: GLenum
gl_PACK_RESAMPLE_SGIX = 0x842C

gl_RESAMPLE_DECIMATE_SGIX :: GLenum
gl_RESAMPLE_DECIMATE_SGIX = 0x8430

gl_RESAMPLE_REPLICATE_SGIX :: GLenum
gl_RESAMPLE_REPLICATE_SGIX = 0x842E

gl_RESAMPLE_ZERO_FILL_SGIX :: GLenum
gl_RESAMPLE_ZERO_FILL_SGIX = 0x842F

gl_UNPACK_RESAMPLE_SGIX :: GLenum
gl_UNPACK_RESAMPLE_SGIX = 0x842D