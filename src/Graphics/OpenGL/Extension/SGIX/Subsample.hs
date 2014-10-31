-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Subsample (
	-- * Extension Support
	  gl_SGIX_subsample

	-- * GL_SGIX_subsample
	, gl_PACK_SUBSAMPLE_RATE_SGIX
	, gl_PIXEL_SUBSAMPLE_2424_SGIX
	, gl_PIXEL_SUBSAMPLE_4242_SGIX
	, gl_PIXEL_SUBSAMPLE_4444_SGIX
	, gl_UNPACK_SUBSAMPLE_RATE_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_subsample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_subsample = extGL 655

gl_PACK_SUBSAMPLE_RATE_SGIX :: GLenum
gl_PACK_SUBSAMPLE_RATE_SGIX = 0x85A0

gl_PIXEL_SUBSAMPLE_2424_SGIX :: GLenum
gl_PIXEL_SUBSAMPLE_2424_SGIX = 0x85A3

gl_PIXEL_SUBSAMPLE_4242_SGIX :: GLenum
gl_PIXEL_SUBSAMPLE_4242_SGIX = 0x85A4

gl_PIXEL_SUBSAMPLE_4444_SGIX :: GLenum
gl_PIXEL_SUBSAMPLE_4444_SGIX = 0x85A2

gl_UNPACK_SUBSAMPLE_RATE_SGIX :: GLenum
gl_UNPACK_SUBSAMPLE_RATE_SGIX = 0x85A1