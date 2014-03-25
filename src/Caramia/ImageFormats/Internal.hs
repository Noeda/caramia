-- | This module contains data types that describe the data formats of images.
--
-- <https://www.opengl.org/wiki/Image_Format>
--

module Caramia.ImageFormats.Internal where

import Caramia.Internal.OpenGLCApi
import Data.Typeable
import Data.Word
import Data.Int
import Foreign.C.Types

-- | Given a format, returns `True` if that format can be rendered to. That is,
-- if it can be one of the targets in a framebuffer.
--
-- This is conservative. Sometimes you may be able to render anyway; however
-- this is not guaranteed by the OpenGL specification.
isRenderTargettable :: ImageFormat -> Bool
isRenderTargettable R8 = True
isRenderTargettable R8I = True
isRenderTargettable R8UI = True
isRenderTargettable R16 = True
isRenderTargettable R16I = True
isRenderTargettable R16UI = True
isRenderTargettable R16F = True
isRenderTargettable R32F = True
isRenderTargettable R32I = True
isRenderTargettable R32UI = True
isRenderTargettable RG8 = True
isRenderTargettable RG8I = True
isRenderTargettable RG8UI = True
isRenderTargettable RG16 = True
isRenderTargettable RG16I = True
isRenderTargettable RG16UI = True
isRenderTargettable RG16F = True
isRenderTargettable RG32F = True
isRenderTargettable RG32I = True
isRenderTargettable RG32UI = True
isRenderTargettable R11F_G11F_B10F = True
isRenderTargettable RGBA32F = True
isRenderTargettable RGBA32I = True
isRenderTargettable RGBA32UI = True
isRenderTargettable RGBA16 = True
isRenderTargettable RGBA16F = True
isRenderTargettable RGBA16I = True
isRenderTargettable RGBA16UI = True
isRenderTargettable RGBA8 = True
isRenderTargettable RGBA8UI = True
isRenderTargettable SRGB8_ALPHA8 = True
isRenderTargettable RGB10_A2 = True
isRenderTargettable DEPTH_COMPONENT32F = True
isRenderTargettable DEPTH_COMPONENT24 = True
isRenderTargettable DEPTH_COMPONENT16 = True
isRenderTargettable DEPTH32F_STENCIL8 = True
isRenderTargettable DEPTH24_STENCIL8 = True
isRenderTargettable _ = False

-- | Returns true if the given format is a compressed format.
isCompressed :: ImageFormat -> Bool
isCompressed COMPRESSED_RG_RGTC2 = True
isCompressed COMPRESSED_SIGNED_RG_RGTC2 = True
isCompressed COMPRESSED_RED_RGTC1 = True
isCompressed COMPRESSED_SIGNED_RED_RGTC1 = True
isCompressed COMPRESSED_RGB_S3TC_DXT1 = True
isCompressed COMPRESSED_RGBA_S3TC_DXT1 = True
isCompressed COMPRESSED_RGBA_S3TC_DXT3 = True
isCompressed COMPRESSED_RGBA_S3TC_DXT5 = True
isCompressed COMPRESSED_SRGB_S3TC_DXT1 = True
isCompressed COMPRESSED_SRGB_ALPHA_S3TC_DXT1 = True
isCompressed COMPRESSED_SRGB_ALPHA_S3TC_DXT3 = True
isCompressed COMPRESSED_SRGB_ALPHA_S3TC_DXT5 = True
isCompressed _ = False

-- | Returns true if the given format is a color format.
isColorFormat :: ImageFormat -> Bool
isColorFormat DEPTH_COMPONENT32F = False
isColorFormat DEPTH_COMPONENT24 = False
isColorFormat DEPTH_COMPONENT16 = False
isColorFormat DEPTH32F_STENCIL8 = False
isColorFormat DEPTH24_STENCIL8 = False
isColorFormat _ = True

-- | Returns true if the given format has a depth component.
hasDepthComponent :: ImageFormat -> Bool
hasDepthComponent DEPTH_COMPONENT32F = True
hasDepthComponent DEPTH_COMPONENT24 = True
hasDepthComponent DEPTH_COMPONENT16 = True
hasDepthComponent DEPTH32F_STENCIL8 = True
hasDepthComponent DEPTH24_STENCIL8 = True
hasDepthComponent _ = False

-- | Returns true if the given format has a stencil component.
hasStencilComponent :: ImageFormat -> Bool
hasStencilComponent DEPTH32F_STENCIL8 = True
hasStencilComponent DEPTH24_STENCIL8 = True
hasStencilComponent _ = False

-- | Returns true if the given format uses the sRGB color space.
--
-- If the format is not a color format, returns `False`.
isSRGBFormat :: ImageFormat -> Bool
isSRGBFormat SRGB8_ALPHA8 = True
isSRGBFormat SRGB8 = True
isSRGBFormat COMPRESSED_SRGB_S3TC_DXT1 = True
isSRGBFormat COMPRESSED_SRGB_ALPHA_S3TC_DXT1 = True
isSRGBFormat COMPRESSED_SRGB_ALPHA_S3TC_DXT3 = True
isSRGBFormat COMPRESSED_SRGB_ALPHA_S3TC_DXT5 = True
isSRGBFormat _ = False

-- | All the various internal formats.
--
-- This list corresponds to the OpenGL specification of 3.3, required texture
-- formats (+ S3TC compressed formats). Check the OpenGL specification for
-- explanations on how these formats work.
data ImageFormat =
    R8
  | R8I
  | R8UI
  | R16
  | R16I
  | R16UI
  | R16F
  | R32F
  | R32I
  | R32UI
  | RG8
  | RG8I
  | RG8UI
  | RG16
  | RG16I
  | RG16UI
  | RG16F
  | RG32F
  | RG32I
  | RG32UI
  | R11F_G11F_B10F
  | RGBA32F
  | RGBA32I
  | RGBA32UI
  | RGBA16
  | RGBA16F
  | RGBA16I
  | RGBA16UI
  | RGBA8
  | RGBA8UI
  | SRGB8_ALPHA8
  | RGB10_A2
  | RGB32F
  | RGB32I
  | RGB32UI
  | RGB16F
  | RGB16I
  | RGB16UI
  | RGB16
  | RGB8
  | RGB8I
  | RGB8UI
  | SRGB8
  | RGB9_E5
  | COMPRESSED_RG_RGTC2
  | COMPRESSED_SIGNED_RG_RGTC2
  | COMPRESSED_RED_RGTC1
  | COMPRESSED_SIGNED_RED_RGTC1
  | COMPRESSED_RGB_S3TC_DXT1
  | COMPRESSED_RGBA_S3TC_DXT1
  | COMPRESSED_RGBA_S3TC_DXT3
  | COMPRESSED_RGBA_S3TC_DXT5
  | COMPRESSED_SRGB_S3TC_DXT1
  | COMPRESSED_SRGB_ALPHA_S3TC_DXT1
  | COMPRESSED_SRGB_ALPHA_S3TC_DXT3
  | COMPRESSED_SRGB_ALPHA_S3TC_DXT5
  | DEPTH_COMPONENT32F
  | DEPTH_COMPONENT24
  | DEPTH_COMPONENT16
  | DEPTH32F_STENCIL8
  | DEPTH24_STENCIL8
  deriving ( Eq, Ord, Show, Read, Typeable )

toConstantIF :: ImageFormat -> GLenum
toConstantIF R8 = gl_R8
toConstantIF R8I = gl_R8I
toConstantIF R8UI = gl_R8UI
toConstantIF R16 = gl_R16
toConstantIF R16I = gl_R16I
toConstantIF R16UI = gl_R16UI
toConstantIF R16F = gl_R16F
toConstantIF R32F = gl_R32F
toConstantIF R32I = gl_R32I
toConstantIF R32UI = gl_R32UI
toConstantIF RG8 = gl_RG8
toConstantIF RG8I = gl_RG8I
toConstantIF RG8UI = gl_RG8UI
toConstantIF RG16 = gl_RG16
toConstantIF RG16I = gl_RG16I
toConstantIF RG16UI = gl_RG16UI
toConstantIF RG16F = gl_RG16F
toConstantIF RG32F = gl_RG32F
toConstantIF RG32I = gl_RG32I
toConstantIF RG32UI = gl_RG32UI
toConstantIF R11F_G11F_B10F = gl_R11F_G11F_B10F
toConstantIF RGBA32F = gl_RGBA32F
toConstantIF RGBA32I = gl_RGBA32I
toConstantIF RGBA32UI = gl_RGBA32UI
toConstantIF RGBA16 = gl_RGBA16
toConstantIF RGBA16F = gl_RGBA16F
toConstantIF RGBA16I = gl_RGBA16I
toConstantIF RGBA16UI = gl_RGBA16UI
toConstantIF RGBA8 = gl_RGBA8
toConstantIF RGBA8UI = gl_RGBA8UI
toConstantIF SRGB8_ALPHA8 = gl_SRGB8_ALPHA8
toConstantIF RGB10_A2 = gl_RGB10_A2
toConstantIF RGB32F = gl_RGB32F
toConstantIF RGB32I = gl_RGB32I
toConstantIF RGB32UI = gl_RGB32UI
toConstantIF RGB16F = gl_RGB16F
toConstantIF RGB16I = gl_RGB16I
toConstantIF RGB16UI = gl_RGB16UI
toConstantIF RGB16 = gl_RGB16
toConstantIF RGB8 = gl_RGB8
toConstantIF RGB8I = gl_RGB8I
toConstantIF RGB8UI = gl_RGB8UI
toConstantIF SRGB8 = gl_SRGB8
toConstantIF RGB9_E5 = gl_RGB9_E5
toConstantIF COMPRESSED_RG_RGTC2 = gl_COMPRESSED_RG_RGTC2
toConstantIF COMPRESSED_SIGNED_RG_RGTC2 = gl_COMPRESSED_SIGNED_RG_RGTC2
toConstantIF COMPRESSED_RED_RGTC1 = gl_COMPRESSED_RED_RGTC1
toConstantIF COMPRESSED_SIGNED_RED_RGTC1 = gl_COMPRESSED_SIGNED_RED_RGTC1
toConstantIF COMPRESSED_RGB_S3TC_DXT1 = gl_COMPRESSED_RGB_S3TC_DXT1
toConstantIF COMPRESSED_RGBA_S3TC_DXT1 = gl_COMPRESSED_RGBA_S3TC_DXT1
toConstantIF COMPRESSED_RGBA_S3TC_DXT3 = gl_COMPRESSED_RGBA_S3TC_DXT3
toConstantIF COMPRESSED_RGBA_S3TC_DXT5 = gl_COMPRESSED_RGBA_S3TC_DXT5
toConstantIF COMPRESSED_SRGB_S3TC_DXT1 = gl_COMPRESSED_SRGB_S3TC_DXT1
toConstantIF COMPRESSED_SRGB_ALPHA_S3TC_DXT1 =
    gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT1
toConstantIF COMPRESSED_SRGB_ALPHA_S3TC_DXT3 =
    gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT3
toConstantIF COMPRESSED_SRGB_ALPHA_S3TC_DXT5 =
    gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT5
toConstantIF DEPTH_COMPONENT32F = gl_DEPTH_COMPONENT32F
toConstantIF DEPTH_COMPONENT24 = gl_DEPTH_COMPONENT24
toConstantIF DEPTH_COMPONENT16 = gl_DEPTH_COMPONENT16
toConstantIF DEPTH32F_STENCIL8 = gl_DEPTH32F_STENCIL8
toConstantIF DEPTH24_STENCIL8 = gl_DEPTH24_STENCIL8

-- | Specification formats.
--
-- These formats specify the type of the data passed from Haskell to GPU.
data SpecificationType =
    FWord8
  | FWord16
  | FWord32
  | FInt8
  | FInt16
  | FInt32
  | FFloat
  | FHalfFloat
  deriving ( Eq, Ord, Show, Read, Typeable )

toConstantST :: SpecificationType -> GLenum
toConstantST FWord8 = gl_UNSIGNED_BYTE
toConstantST FWord16 = gl_UNSIGNED_SHORT
toConstantST FWord32 = gl_UNSIGNED_INT
toConstantST FInt8 = gl_BYTE
toConstantST FInt16 = gl_SHORT
toConstantST FInt32 = gl_INT
toConstantST FFloat = gl_FLOAT
toConstantST FHalfFloat = gl_HALF_FLOAT

-- TODO: add special interpretation formats to `SpecificationType`.
--

-- | Given a specification format, returns the number of bytes one element
-- uses.
sizeOfSpecificationType :: SpecificationType -> Int
sizeOfSpecificationType FWord8 = 1
sizeOfSpecificationType FWord16 = 2
sizeOfSpecificationType FWord32 = 2
sizeOfSpecificationType FInt8 = 1
sizeOfSpecificationType FInt16 = 2
sizeOfSpecificationType FInt32 = 4
sizeOfSpecificationType FFloat = 4
sizeOfSpecificationType FHalfFloat = 2

-- | Class that turns Haskell types into `SpecificationType`.
class SpecificationTypeable a where
    -- | Returns the corresponding `SpecificationType` for a Haskell type.
    toSpecificationType :: a  -- ^ Used to pass the type; not evaluated.
                        -> SpecificationType

instance SpecificationTypeable Word8 where
    toSpecificationType _ = FWord8

instance SpecificationTypeable Word16 where
    toSpecificationType _ = FWord16

instance SpecificationTypeable Word32 where
    toSpecificationType _ = FWord32

instance SpecificationTypeable Int8 where
    toSpecificationType _ = FInt8

instance SpecificationTypeable Int16 where
    toSpecificationType _ = FInt16

instance SpecificationTypeable Int32 where
    toSpecificationType _ = FInt32

instance SpecificationTypeable CInt where
    toSpecificationType _ = FInt32

instance SpecificationTypeable CUInt where
    toSpecificationType _ = FWord32

instance SpecificationTypeable Float where
    toSpecificationType _ = FFloat

instance SpecificationTypeable CFloat where
    toSpecificationType _ = FFloat


