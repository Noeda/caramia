-- | Color handling.
--

{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable, NoImplicitPrelude #-}

module Graphics.Caramia.Color
    (
    -- * Types
      Color()
    , v4
    -- * Constructing colors
    , rgba
    -- * Conversion to `Word8` colors.
    , floatToWord8
    , word8ToFloat
    -- * Lenses
    , rgbaL
    , redL
    , greenL
    , blueL
    , alphaL
    -- * Views
    , viewRgba
    , viewRed
    , viewGreen
    , viewBlue
    , viewAlpha )
    where

import Control.Lens
import Graphics.Caramia.Prelude
import Foreign.Storable
import Linear.V4

-- | The color data type.
--
-- This data type says nothing about the color space these values are in. The
-- color space depends on the usage; for example, a framebuffer with sRGB
-- textures attached uses sRGB color space in these color values.
newtype Color = Color { toV4 :: (V4 Float) }
                deriving ( Eq, Ord, Show, Read, Typeable, Storable )

v4 :: Lens' Color (V4 Float)
v4 = lens toV4 (\_ new -> Color new)

viewRed :: Color -> Float
viewRed (Color (V4 r _ _ _)) = r

viewGreen :: Color -> Float
viewGreen (Color (V4 _ g _ _)) = g

viewBlue :: Color -> Float
viewBlue (Color (V4 _ _ b _)) = b

viewAlpha :: Color -> Float
viewAlpha (Color (V4 _ _ _ a)) = a

-- | A convenience function to turn a `Float` color value to a `Word8`.
--
-- The value is clamped between 0 and 255.
floatToWord8 :: Float -> Word8
floatToWord8 f = round $ max 0 $ min 255 $ f * 255.0
{-# INLINE floatToWord8 #-}

-- | Maps a `Word8` to a `Float`, so that 255 is mapped to 1.0 and 0 is mapped
-- to 0.
word8ToFloat :: Word8 -> Float
word8ToFloat w = fromIntegral w / 255.0
{-# INLINE word8ToFloat #-}

-- | Construct a color from rgba values.
rgba :: Float -> Float -> Float -> Float -> Color
rgba r g b a = Color $ V4 r g b a
{-# INLINE rgba #-}

-- | View rgba in a tuple.
viewRgba :: Color -> (Float, Float, Float, Float)
viewRgba (Color (V4 r g b a)) = (r, g, b, a)
{-# INLINE viewRgba #-}

-- | Lens to all components.
rgbaL :: Lens' Color (Float, Float, Float, Float)
rgbaL = lens viewRgba (\_ (r, g, b, a) -> Color $ V4 r g b a)

-- | Lens to red component.
redL :: Lens' Color Float
redL = v4._x

-- | Lens to green component.
greenL :: Lens' Color Float
greenL = v4._y

-- | Lens to blue component.
blueL :: Lens' Color Float
blueL = v4._z

-- | Lens to alpha component.
alphaL :: Lens' Color Float
alphaL = v4._w

