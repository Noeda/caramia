-- | Color handling.
--

{-# LANGUAGE DeriveDataTypeable, NoImplicitPrelude #-}

module Graphics.Caramia.Color
    (
    -- * Types
      Color()
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
import Foreign.Ptr

-- | The color data type.
--
-- This data type says nothing about the color space these values are in. The
-- color space depends on the usage; for example, a framebuffer with sRGB
-- textures attached uses sRGB color space in these color values.
data Color = Color
    { viewRed   :: !Float
    , viewGreen :: !Float
    , viewBlue  :: !Float
    , viewAlpha :: !Float
    }
    deriving ( Eq, Ord, Show, Read, Typeable )

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
rgba = Color
{-# INLINE rgba #-}

-- | View rgba in a tuple.
viewRgba :: Color -> (Float, Float, Float, Float)
viewRgba (Color r g b a) = (r, g, b, a)
{-# INLINE viewRgba #-}

-- | Lens to all components.
rgbaL :: Lens' Color (Float, Float, Float, Float)
rgbaL = lens viewRgba (\old (r, g, b, a) ->
    old { viewRed = r
        , viewGreen = g
        , viewBlue = b
        , viewAlpha = a })

-- | Lens to red component.
redL :: Lens' Color Float
redL = lens viewRed (\old new -> old { viewRed = new })

-- | Lens to green component.
greenL :: Lens' Color Float
greenL = lens viewGreen (\old new -> old { viewGreen = new })

-- | Lens to blue component.
blueL :: Lens' Color Float
blueL = lens viewBlue (\old new -> old { viewBlue = new })

-- | Lens to alpha component.
alphaL :: Lens' Color Float
alphaL = lens viewAlpha (\old new -> old { viewAlpha = new })

instance Storable Color where
    sizeOf _ = sizeOf (undefined :: Float) * 4
    alignment _ = alignment (undefined :: Float) * 4
    peek ptr = do
        r <- peekElemOff cptr 0 :: IO Float
        g <- peekElemOff cptr 1 :: IO Float
        b <- peekElemOff cptr 2 :: IO Float
        a <- peekElemOff cptr 3 :: IO Float
        return $ Color r g b a
      where
        cptr = castPtr ptr :: Ptr Float
    {-# INLINE peek #-}

    poke ptr (Color r g b a) = do
        pokeElemOff cptr 0 r
        pokeElemOff cptr 1 g
        pokeElemOff cptr 2 b
        pokeElemOff cptr 3 a
      where
        cptr = castPtr ptr :: Ptr Float
    {-# INLINE poke #-}


