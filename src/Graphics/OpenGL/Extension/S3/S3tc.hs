-- This file was automatically generated.
module Graphics.OpenGL.Extension.S3.S3tc (
	-- * Extension Support
	  gl_S3_s3tc

	-- * GL_S3_s3tc
	, gl_RGB4_S3TC
	, gl_RGBA4_DXT5_S3TC
	, gl_RGBA4_S3TC
	, gl_RGBA_DXT5_S3TC
	, gl_RGBA_S3TC
	, gl_RGB_S3TC
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_S3_s3tc :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_S3_s3tc = extGL 612

gl_RGB4_S3TC :: GLenum
gl_RGB4_S3TC = 0x83A1

gl_RGBA4_DXT5_S3TC :: GLenum
gl_RGBA4_DXT5_S3TC = 0x83A5

gl_RGBA4_S3TC :: GLenum
gl_RGBA4_S3TC = 0x83A3

gl_RGBA_DXT5_S3TC :: GLenum
gl_RGBA_DXT5_S3TC = 0x83A4

gl_RGBA_S3TC :: GLenum
gl_RGBA_S3TC = 0x83A2

gl_RGB_S3TC :: GLenum
gl_RGB_S3TC = 0x83A0