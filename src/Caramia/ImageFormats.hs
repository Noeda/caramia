module Caramia.ImageFormats
    (
    -- * Image formats
      ImageFormat(..)
    , isRenderTargettable
    , isCompressed
    , isSRGBFormat
    , hasDepthComponent
    , hasStencilComponent
    -- * Specification formats
    , SpecificationFormat(..)
    , sizeOfSpecificationFormat
    , SpecificationFormattable(..) )
    where

import Caramia.ImageFormats.Internal

