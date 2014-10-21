module Graphics.Caramia.ImageFormats
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

import Graphics.Caramia.ImageFormats.Internal

