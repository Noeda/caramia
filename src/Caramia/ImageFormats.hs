module Caramia.ImageFormats
    (
    -- * Image formats
      ImageFormat(..)
    , isRenderTargettable
    , isCompressed
    , isColorFormat
    , isSRGBFormat
    , hasDepthComponent
    , hasStencilComponent
    -- * Specification types
    , SpecificationType(..)
    , sizeOfSpecificationType
    , SpecificationTypeable(..) )
    where

import Caramia.ImageFormats.Internal

