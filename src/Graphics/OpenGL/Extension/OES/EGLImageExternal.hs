-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.EGLImageExternal (
	-- * Extension Support
	  gl_OES_EGL_image_external

	-- * GL_OES_EGL_image_external
	, gl_REQUIRED_TEXTURE_IMAGE_UNITS_OES
	, gl_SAMPLER_EXTERNAL_OES
	, gl_TEXTURE_BINDING_EXTERNAL_OES
	, gl_TEXTURE_EXTERNAL_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_EGL_image_external :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_EGL_image_external = extGL 543

gl_REQUIRED_TEXTURE_IMAGE_UNITS_OES :: GLenum
gl_REQUIRED_TEXTURE_IMAGE_UNITS_OES = 0x8D68

gl_SAMPLER_EXTERNAL_OES :: GLenum
gl_SAMPLER_EXTERNAL_OES = 0x8D66

gl_TEXTURE_BINDING_EXTERNAL_OES :: GLenum
gl_TEXTURE_BINDING_EXTERNAL_OES = 0x8D67

gl_TEXTURE_EXTERNAL_OES :: GLenum
gl_TEXTURE_EXTERNAL_OES = 0x8D65