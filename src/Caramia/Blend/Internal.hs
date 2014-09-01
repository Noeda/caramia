{-# LANGUAGE RecordWildCards, NoImplicitPrelude, DeriveDataTypeable #-}

module Caramia.Blend.Internal where

import Caramia.Prelude

import Caramia.Internal.OpenGLCApi
import Caramia.Color
import Control.Exception
import Foreign
import Foreign.C.Types

-- | Describes which equation to use in blending.
--
-- See `glBlendEquation` in OpenGL documentation.
data BlendEquation =
    BEAdd
  | BESubtract
  | BEReverseSubtract
  | BEMin
  | BEMax
  deriving ( Eq, Ord, Show, Read, Typeable )

-- | Describes the arithmetic to use in blending.
--
-- See `glBlendFunc` in OpenGL documentation.
data BlendFunc =
    BFZero
  | BFOne
  | BFSrcColor
  | BFOneMinusSrcColor
  | BFDstColor
  | BFOneMinusDstColor
  | BFSrcAlpha
  | BFOneMinusSrcAlpha
  | BFDstAlpha
  | BFOneMinusDstAlpha
  | BFConstantColor
  | BFOneMinusConstantColor
  | BFConstantAlpha
  | BFOneMinusConstantAlpha
  | BFSrcAlphaSaturate
  deriving ( Eq, Ord, Show, Read, Typeable )

toConstantBE :: BlendEquation -> GLenum
toConstantBE BEAdd = gl_FUNC_ADD
toConstantBE BESubtract = gl_FUNC_SUBTRACT
toConstantBE BEReverseSubtract = gl_FUNC_REVERSE_SUBTRACT
toConstantBE BEMin = gl_MIN
toConstantBE BEMax = gl_MAX

toConstantBF :: BlendFunc -> GLenum
toConstantBF BFZero = gl_ZERO
toConstantBF BFOne = gl_ONE
toConstantBF BFSrcColor = gl_SRC_COLOR
toConstantBF BFOneMinusSrcColor = gl_ONE_MINUS_SRC_COLOR
toConstantBF BFDstColor = gl_DST_COLOR
toConstantBF BFOneMinusDstColor = gl_ONE_MINUS_DST_COLOR
toConstantBF BFSrcAlpha = gl_SRC_ALPHA
toConstantBF BFOneMinusSrcAlpha = gl_ONE_MINUS_SRC_ALPHA
toConstantBF BFDstAlpha = gl_DST_ALPHA
toConstantBF BFOneMinusDstAlpha = gl_ONE_MINUS_DST_ALPHA
toConstantBF BFConstantColor = gl_CONSTANT_COLOR
toConstantBF BFOneMinusConstantColor = gl_ONE_MINUS_CONSTANT_COLOR
toConstantBF BFConstantAlpha = gl_CONSTANT_ALPHA
toConstantBF BFOneMinusConstantAlpha = gl_ONE_MINUS_CONSTANT_ALPHA
toConstantBF BFSrcAlphaSaturate = gl_SRC_ALPHA_SATURATE

-- | Captures the blending parameters.
data BlendSpec = BlendSpec
    { alphaEquation :: !BlendEquation
    , colorEquation :: !BlendEquation
    , srcColorFunc  :: !BlendFunc
    , srcAlphaFunc  :: !BlendFunc
    , dstColorFunc  :: !BlendFunc
    , dstAlphaFunc  :: !BlendFunc
    , blendColor    :: !Color }
    deriving ( Eq, Ord, Show, Read, Typeable )

setBlendings :: BlendSpec -> IO ()
setBlendings (BlendSpec{..}) = do
    glBlendFuncSeparate (toConstantBF srcColorFunc)
                        (toConstantBF dstColorFunc)
                        (toConstantBF srcAlphaFunc)
                        (toConstantBF dstAlphaFunc)
    glBlendEquationSeparate (toConstantBE colorEquation)
                            (toConstantBE alphaEquation)
    glBlendColor (CFloat $ viewRed blendColor)
                 (CFloat $ viewGreen blendColor)
                 (CFloat $ viewBlue blendColor)
                 (CFloat $ viewAlpha blendColor)

withBlendings :: BlendSpec
              -> IO a
              -> IO a
withBlendings spec@(BlendSpec {..}) action = do
    old_be_color <- gi gl_BLEND_EQUATION_RGB
    old_be_alpha <- gi gl_BLEND_EQUATION_ALPHA
    old_src_color <- gi gl_BLEND_SRC_RGB
    old_src_alpha <- gi gl_BLEND_SRC_ALPHA
    old_dst_color <- gi gl_BLEND_DST_RGB
    old_dst_alpha <- gi gl_BLEND_DST_ALPHA
    allocaArray 4 $ \color_ptr -> do
        glGetFloatv gl_BLEND_COLOR color_ptr
        r <- peekElemOff color_ptr 0
        g <- peekElemOff color_ptr 1
        b <- peekElemOff color_ptr 2
        a <- peekElemOff color_ptr 3
        finally (setBlendings spec >> action) $ do
            glBlendColor r g b a
            glBlendFuncSeparate old_src_color
                                old_dst_color
                                old_src_alpha
                                old_dst_alpha
            glBlendEquationSeparate old_be_color
                                    old_be_alpha


