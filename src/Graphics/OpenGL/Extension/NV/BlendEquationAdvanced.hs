-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.BlendEquationAdvanced (
	-- * Extension Support
	  gl_NV_blend_equation_advanced

	-- * GL_NV_blend_equation_advanced
	, glBlendBarrierNV
	, glBlendParameteriNV
	, gl_BLEND_OVERLAP_NV
	, gl_BLEND_PREMULTIPLIED_SRC_NV
	, gl_BLUE_NV
	, gl_COLORBURN_NV
	, gl_COLORDODGE_NV
	, gl_CONJOINT_NV
	, gl_CONTRAST_NV
	, gl_DARKEN_NV
	, gl_DIFFERENCE_NV
	, gl_DISJOINT_NV
	, gl_DST_ATOP_NV
	, gl_DST_IN_NV
	, gl_DST_NV
	, gl_DST_OUT_NV
	, gl_DST_OVER_NV
	, gl_EXCLUSION_NV
	, gl_GREEN_NV
	, gl_HARDLIGHT_NV
	, gl_HARDMIX_NV
	, gl_HSL_COLOR_NV
	, gl_HSL_HUE_NV
	, gl_HSL_LUMINOSITY_NV
	, gl_HSL_SATURATION_NV
	, gl_INVERT
	, gl_INVERT_OVG_NV
	, gl_INVERT_RGB_NV
	, gl_LIGHTEN_NV
	, gl_LINEARBURN_NV
	, gl_LINEARDODGE_NV
	, gl_LINEARLIGHT_NV
	, gl_MINUS_CLAMPED_NV
	, gl_MINUS_NV
	, gl_MULTIPLY_NV
	, gl_OVERLAY_NV
	, gl_PINLIGHT_NV
	, gl_PLUS_CLAMPED_ALPHA_NV
	, gl_PLUS_CLAMPED_NV
	, gl_PLUS_DARKER_NV
	, gl_PLUS_NV
	, gl_RED_NV
	, gl_SCREEN_NV
	, gl_SOFTLIGHT_NV
	, gl_SRC_ATOP_NV
	, gl_SRC_IN_NV
	, gl_SRC_NV
	, gl_SRC_OUT_NV
	, gl_SRC_OVER_NV
	, gl_UNCORRELATED_NV
	, gl_VIVIDLIGHT_NV
	, gl_XOR_NV
	, gl_ZERO
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_blend_equation_advanced :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_blend_equation_advanced = extGL 431

glBlendBarrierNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glBlendBarrierNV = funGL 1578 >>= \f -> liftIO $ f

glBlendParameteriNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glBlendParameteriNV v0 v1 = funGL 1579 >>= \f -> liftIO $ f v0 v1

gl_BLEND_OVERLAP_NV :: GLenum
gl_BLEND_OVERLAP_NV = 0x9281

gl_BLEND_PREMULTIPLIED_SRC_NV :: GLenum
gl_BLEND_PREMULTIPLIED_SRC_NV = 0x9280

gl_BLUE_NV :: GLenum
gl_BLUE_NV = 0x1905

gl_COLORBURN_NV :: GLenum
gl_COLORBURN_NV = 0x929A

gl_COLORDODGE_NV :: GLenum
gl_COLORDODGE_NV = 0x9299

gl_CONJOINT_NV :: GLenum
gl_CONJOINT_NV = 0x9284

gl_CONTRAST_NV :: GLenum
gl_CONTRAST_NV = 0x92A1

gl_DARKEN_NV :: GLenum
gl_DARKEN_NV = 0x9297

gl_DIFFERENCE_NV :: GLenum
gl_DIFFERENCE_NV = 0x929E

gl_DISJOINT_NV :: GLenum
gl_DISJOINT_NV = 0x9283

gl_DST_ATOP_NV :: GLenum
gl_DST_ATOP_NV = 0x928F

gl_DST_IN_NV :: GLenum
gl_DST_IN_NV = 0x928B

gl_DST_NV :: GLenum
gl_DST_NV = 0x9287

gl_DST_OUT_NV :: GLenum
gl_DST_OUT_NV = 0x928D

gl_DST_OVER_NV :: GLenum
gl_DST_OVER_NV = 0x9289

gl_EXCLUSION_NV :: GLenum
gl_EXCLUSION_NV = 0x92A0

gl_GREEN_NV :: GLenum
gl_GREEN_NV = 0x1904

gl_HARDLIGHT_NV :: GLenum
gl_HARDLIGHT_NV = 0x929B

gl_HARDMIX_NV :: GLenum
gl_HARDMIX_NV = 0x92A9

gl_HSL_COLOR_NV :: GLenum
gl_HSL_COLOR_NV = 0x92AF

gl_HSL_HUE_NV :: GLenum
gl_HSL_HUE_NV = 0x92AD

gl_HSL_LUMINOSITY_NV :: GLenum
gl_HSL_LUMINOSITY_NV = 0x92B0

gl_HSL_SATURATION_NV :: GLenum
gl_HSL_SATURATION_NV = 0x92AE

gl_INVERT_OVG_NV :: GLenum
gl_INVERT_OVG_NV = 0x92B4

gl_INVERT_RGB_NV :: GLenum
gl_INVERT_RGB_NV = 0x92A3

gl_LIGHTEN_NV :: GLenum
gl_LIGHTEN_NV = 0x9298

gl_LINEARBURN_NV :: GLenum
gl_LINEARBURN_NV = 0x92A5

gl_LINEARDODGE_NV :: GLenum
gl_LINEARDODGE_NV = 0x92A4

gl_LINEARLIGHT_NV :: GLenum
gl_LINEARLIGHT_NV = 0x92A7

gl_MINUS_CLAMPED_NV :: GLenum
gl_MINUS_CLAMPED_NV = 0x92B3

gl_MINUS_NV :: GLenum
gl_MINUS_NV = 0x929F

gl_MULTIPLY_NV :: GLenum
gl_MULTIPLY_NV = 0x9294

gl_OVERLAY_NV :: GLenum
gl_OVERLAY_NV = 0x9296

gl_PINLIGHT_NV :: GLenum
gl_PINLIGHT_NV = 0x92A8

gl_PLUS_CLAMPED_ALPHA_NV :: GLenum
gl_PLUS_CLAMPED_ALPHA_NV = 0x92B2

gl_PLUS_CLAMPED_NV :: GLenum
gl_PLUS_CLAMPED_NV = 0x92B1

gl_PLUS_DARKER_NV :: GLenum
gl_PLUS_DARKER_NV = 0x9292

gl_PLUS_NV :: GLenum
gl_PLUS_NV = 0x9291

gl_RED_NV :: GLenum
gl_RED_NV = 0x1903

gl_SCREEN_NV :: GLenum
gl_SCREEN_NV = 0x9295

gl_SOFTLIGHT_NV :: GLenum
gl_SOFTLIGHT_NV = 0x929C

gl_SRC_ATOP_NV :: GLenum
gl_SRC_ATOP_NV = 0x928E

gl_SRC_IN_NV :: GLenum
gl_SRC_IN_NV = 0x928A

gl_SRC_NV :: GLenum
gl_SRC_NV = 0x9286

gl_SRC_OUT_NV :: GLenum
gl_SRC_OUT_NV = 0x928C

gl_SRC_OVER_NV :: GLenum
gl_SRC_OVER_NV = 0x9288

gl_UNCORRELATED_NV :: GLenum
gl_UNCORRELATED_NV = 0x9282

gl_VIVIDLIGHT_NV :: GLenum
gl_VIVIDLIGHT_NV = 0x92A6

gl_XOR_NV :: GLenum
gl_XOR_NV = 0x1506