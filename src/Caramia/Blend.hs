-- | Blending stuff.
--
-- <https://www.opengl.org/wiki/Blending>
--

module Caramia.Blend
    (
    -- * Data types
      BlendSpec(..)
    , BlendEquation(..)
    , BlendFunc(..)
    -- * Pre-defined blending specs
    , preMultipliedAlpha )
    where

import Caramia.Blend.Internal
import Caramia.Color

preMultipliedAlpha :: BlendSpec
preMultipliedAlpha = BlendSpec
    { srcColorFunc = BFOne
    , srcAlphaFunc = BFOne
    , dstColorFunc = BFOneMinusSrcAlpha
    , dstAlphaFunc = BFOneMinusSrcAlpha
    , colorEquation = BEAdd
    , alphaEquation = BEAdd
    , blendColor = rgba 1 1 1 1 }

