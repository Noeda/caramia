-- This file was automatically generated.
module Graphics.OpenGL.Extension.KHR.BlendEquationAdvanced (
	-- * Extension Support
	  gl_KHR_blend_equation_advanced

	-- * GL_KHR_blend_equation_advanced
	, glBlendBarrierKHR
	, gl_COLORBURN_KHR
	, gl_COLORDODGE_KHR
	, gl_DARKEN_KHR
	, gl_DIFFERENCE_KHR
	, gl_EXCLUSION_KHR
	, gl_HARDLIGHT_KHR
	, gl_HSL_COLOR_KHR
	, gl_HSL_HUE_KHR
	, gl_HSL_LUMINOSITY_KHR
	, gl_HSL_SATURATION_KHR
	, gl_LIGHTEN_KHR
	, gl_MULTIPLY_KHR
	, gl_OVERLAY_KHR
	, gl_SCREEN_KHR
	, gl_SOFTLIGHT_KHR
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_KHR_blend_equation_advanced :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_KHR_blend_equation_advanced = extGL 413

glBlendBarrierKHR :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glBlendBarrierKHR = funGL 1503 >>= \f -> liftIO $ f

gl_COLORBURN_KHR :: GLenum
gl_COLORBURN_KHR = 0x929A

gl_COLORDODGE_KHR :: GLenum
gl_COLORDODGE_KHR = 0x9299

gl_DARKEN_KHR :: GLenum
gl_DARKEN_KHR = 0x9297

gl_DIFFERENCE_KHR :: GLenum
gl_DIFFERENCE_KHR = 0x929E

gl_EXCLUSION_KHR :: GLenum
gl_EXCLUSION_KHR = 0x92A0

gl_HARDLIGHT_KHR :: GLenum
gl_HARDLIGHT_KHR = 0x929B

gl_HSL_COLOR_KHR :: GLenum
gl_HSL_COLOR_KHR = 0x92AF

gl_HSL_HUE_KHR :: GLenum
gl_HSL_HUE_KHR = 0x92AD

gl_HSL_LUMINOSITY_KHR :: GLenum
gl_HSL_LUMINOSITY_KHR = 0x92B0

gl_HSL_SATURATION_KHR :: GLenum
gl_HSL_SATURATION_KHR = 0x92AE

gl_LIGHTEN_KHR :: GLenum
gl_LIGHTEN_KHR = 0x9298

gl_MULTIPLY_KHR :: GLenum
gl_MULTIPLY_KHR = 0x9294

gl_OVERLAY_KHR :: GLenum
gl_OVERLAY_KHR = 0x9296

gl_SCREEN_KHR :: GLenum
gl_SCREEN_KHR = 0x9295

gl_SOFTLIGHT_KHR :: GLenum
gl_SOFTLIGHT_KHR = 0x929C