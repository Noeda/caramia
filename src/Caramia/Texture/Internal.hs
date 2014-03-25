module Caramia.Texture.Internal where

import Caramia.Resource
import Caramia.Internal.OpenGLCApi
import Caramia.ImageFormats
import Data.IORef
import Data.Typeable
import System.IO.Unsafe

data Texture = Texture
    { resource :: !(Resource (Texture_))
    , ordIndex :: !Int
    , viewSpecification :: !TextureSpecification }
    deriving ( Typeable )

newtype Texture_ = Texture_ GLuint

ordIndices :: IORef Int
ordIndices = unsafePerformIO $ newIORef 0
{-# NOINLINE ordIndices #-}

instance Eq Texture where
    tex1 == tex2 = resource tex1 == resource tex2

instance Ord Texture where
    tex1 `compare` tex2 = ordIndex tex1 `compare` ordIndex tex2

-- | Specification on what the texture should be like.
--
-- Use `textureSpecification` and set at least `topology` and `imageFormat`.
-- Future minor versions remain compatible if you use `textureSpecification`
-- instead of the constructor directly.
data TextureSpecification = TextureSpecification
    { topology     :: Topology
    , imageFormat  :: ImageFormat
    , mipmapLevels :: Int -- ^ How many mipmap levels including the base
                          --  level? Must be at least 1.
                          --
                          --  Ignored and not evaluated for multisampling
                          --  textures.
    }
    deriving ( Eq, Ord, Show, Read, Typeable )

-- | Specifies a topology of a texture.
data Topology =
    Tex1D { width1D  :: !Int }
  | Tex2D { width2D  :: !Int
          , height2D :: !Int }
  | Tex3D { width3D  :: !Int
          , height3D :: !Int
          , depth3D  :: !Int }
  | Tex1DArray
          { width1DArray :: !Int
          , layers1D :: !Int }
  | Tex2DArray
          { width2DArray :: !Int
          , height2DArray :: !Int
          , layers2D :: !Int }
  | Tex2DMultisample
          { width2DMS :: !Int
          , height2DMS :: !Int
          , samples2DMS :: !Int
          , fixedSampleLocations2DMS :: !Bool }
  | Tex2DMultisampleArray
          { width2DMSArray :: !Int
          , height2DMSArray :: !Int
          , layers2DMS :: !Int
          , samples2DMSArray :: !Int
          , fixedSampleLocations2DMSArray :: !Bool }
  | TexCube { widthCube  :: Int }
  deriving ( Eq, Ord, Show, Read, Typeable )

