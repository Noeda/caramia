-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureSnorm (
	-- * Extension Support
	  gl_EXT_texture_snorm

	-- * GL_EXT_texture_snorm
	, gl_ALPHA16_SNORM
	, gl_ALPHA8_SNORM
	, gl_ALPHA_SNORM
	, gl_INTENSITY16_SNORM
	, gl_INTENSITY8_SNORM
	, gl_INTENSITY_SNORM
	, gl_LUMINANCE16_ALPHA16_SNORM
	, gl_LUMINANCE16_SNORM
	, gl_LUMINANCE8_ALPHA8_SNORM
	, gl_LUMINANCE8_SNORM
	, gl_LUMINANCE_ALPHA_SNORM
	, gl_LUMINANCE_SNORM
	, gl_R16_SNORM
	, gl_R8_SNORM
	, gl_RED_SNORM
	, gl_RG16_SNORM
	, gl_RG8_SNORM
	, gl_RGB16_SNORM
	, gl_RGB8_SNORM
	, gl_RGBA16_SNORM
	, gl_RGBA8_SNORM
	, gl_RGBA_SNORM
	, gl_RGB_SNORM
	, gl_RG_SNORM
	, gl_SIGNED_NORMALIZED
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_snorm :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_snorm = extGL 371

gl_ALPHA16_SNORM :: GLenum
gl_ALPHA16_SNORM = 0x9018

gl_ALPHA8_SNORM :: GLenum
gl_ALPHA8_SNORM = 0x9014

gl_ALPHA_SNORM :: GLenum
gl_ALPHA_SNORM = 0x9010

gl_INTENSITY16_SNORM :: GLenum
gl_INTENSITY16_SNORM = 0x901B

gl_INTENSITY8_SNORM :: GLenum
gl_INTENSITY8_SNORM = 0x9017

gl_INTENSITY_SNORM :: GLenum
gl_INTENSITY_SNORM = 0x9013

gl_LUMINANCE16_ALPHA16_SNORM :: GLenum
gl_LUMINANCE16_ALPHA16_SNORM = 0x901A

gl_LUMINANCE16_SNORM :: GLenum
gl_LUMINANCE16_SNORM = 0x9019

gl_LUMINANCE8_ALPHA8_SNORM :: GLenum
gl_LUMINANCE8_ALPHA8_SNORM = 0x9016

gl_LUMINANCE8_SNORM :: GLenum
gl_LUMINANCE8_SNORM = 0x9015

gl_LUMINANCE_ALPHA_SNORM :: GLenum
gl_LUMINANCE_ALPHA_SNORM = 0x9012

gl_LUMINANCE_SNORM :: GLenum
gl_LUMINANCE_SNORM = 0x9011

gl_RED_SNORM :: GLenum
gl_RED_SNORM = 0x8F90

gl_RGBA_SNORM :: GLenum
gl_RGBA_SNORM = 0x8F93

gl_RGB_SNORM :: GLenum
gl_RGB_SNORM = 0x8F92

gl_RG_SNORM :: GLenum
gl_RG_SNORM = 0x8F91