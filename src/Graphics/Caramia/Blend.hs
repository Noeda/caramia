-- | Blending stuff.
--
-- <https://www.opengl.org/wiki/Blending>
--

module Graphics.Caramia.Blend
    (
    -- * Data types
      BlendSpec(..)
    , BlendEquation(..)
    , BlendFunc(..)
    -- * Pre-defined blending specs
    , preMultipliedAlpha
    , nopBlend )
    where

--import Graphics.Caramia.Prelude
import Graphics.Caramia.Blend.Internal
import Graphics.Caramia.Color

preMultipliedAlpha :: BlendSpec
preMultipliedAlpha = BlendSpec
    { srcColorFunc = BFOne
    , srcAlphaFunc = BFOne
    , dstColorFunc = BFOneMinusSrcAlpha
    , dstAlphaFunc = BFOneMinusSrcAlpha
    , colorEquation = BEAdd
    , alphaEquation = BEAdd
    , blendColor = rgba 1 1 1 1 }

-- | Blending that doesn't do anything special; just copies the source pixel to
-- destination.
nopBlend :: BlendSpec
nopBlend = BlendSpec
    { srcColorFunc = BFOne
    , srcAlphaFunc = BFOne
    , dstColorFunc = BFZero
    , dstAlphaFunc = BFZero
    , colorEquation = BEAdd
    , alphaEquation = BEAdd
    , blendColor = rgba 1 1 1 1 }

