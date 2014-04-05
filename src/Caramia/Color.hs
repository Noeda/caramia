-- | Color handling.
--

module Caramia.Color
    (
    -- * Types
      Color()
    -- * Constructing colors
    , rgba
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

import Data.Typeable
import Foreign.Storable
import Foreign.Ptr
import Control.Lens

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


