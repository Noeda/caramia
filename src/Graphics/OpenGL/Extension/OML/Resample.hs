-- This file was automatically generated.
module Graphics.OpenGL.Extension.OML.Resample (
	-- * Extension Support
	  gl_OML_resample

	-- * GL_OML_resample
	, gl_PACK_RESAMPLE_OML
	, gl_RESAMPLE_AVERAGE_OML
	, gl_RESAMPLE_DECIMATE_OML
	, gl_RESAMPLE_REPLICATE_OML
	, gl_RESAMPLE_ZERO_FILL_OML
	, gl_UNPACK_RESAMPLE_OML
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OML_resample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OML_resample = extGL 599

gl_PACK_RESAMPLE_OML :: GLenum
gl_PACK_RESAMPLE_OML = 0x8984

gl_RESAMPLE_AVERAGE_OML :: GLenum
gl_RESAMPLE_AVERAGE_OML = 0x8988

gl_RESAMPLE_DECIMATE_OML :: GLenum
gl_RESAMPLE_DECIMATE_OML = 0x8989

gl_RESAMPLE_REPLICATE_OML :: GLenum
gl_RESAMPLE_REPLICATE_OML = 0x8986

gl_RESAMPLE_ZERO_FILL_OML :: GLenum
gl_RESAMPLE_ZERO_FILL_OML = 0x8987

gl_UNPACK_RESAMPLE_OML :: GLenum
gl_UNPACK_RESAMPLE_OML = 0x8985