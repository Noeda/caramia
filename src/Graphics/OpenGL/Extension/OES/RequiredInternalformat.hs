-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.RequiredInternalformat (
	-- * Extension Support
	  gl_OES_required_internalformat

	-- * GL_OES_required_internalformat
	, gl_ALPHA8_OES
	, gl_DEPTH24_STENCIL8_OES
	, gl_DEPTH_COMPONENT16_OES
	, gl_DEPTH_COMPONENT24_OES
	, gl_DEPTH_COMPONENT32_OES
	, gl_LUMINANCE4_ALPHA4_OES
	, gl_LUMINANCE8_ALPHA8_OES
	, gl_LUMINANCE8_OES
	, gl_RGB10_A2_EXT
	, gl_RGB10_EXT
	, gl_RGB565_OES
	, gl_RGB5_A1_OES
	, gl_RGB8_OES
	, gl_RGBA4_OES
	, gl_RGBA8_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_OES_required_internalformat :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_required_internalformat = extGL 570

gl_ALPHA8_OES :: GLenum
gl_ALPHA8_OES = 0x803C

gl_LUMINANCE4_ALPHA4_OES :: GLenum
gl_LUMINANCE4_ALPHA4_OES = 0x8043

gl_LUMINANCE8_ALPHA8_OES :: GLenum
gl_LUMINANCE8_ALPHA8_OES = 0x8045

gl_LUMINANCE8_OES :: GLenum
gl_LUMINANCE8_OES = 0x8040