-- | Textures.
--

{-# LANGUAGE RecordWildCards #-}

module Caramia.Texture
    (
    -- * Creating textures
      newTexture
    , TextureSpecification(..)
    , textureSpecification
    , Topology(..) )
    where

import Caramia.Internal.OpenGLCApi
import Caramia.Internal.Safe
import Caramia.ImageFormats.Internal
import Caramia.Resource
import Data.Typeable
import Data.IORef
import Data.Monoid
import Control.Monad
import Control.Exception
import Control.Applicative
import Foreign.Marshal.Alloc
import Foreign.Marshal.Utils
import Foreign.Storable
import Foreign.Ptr
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

textureSpecification :: TextureSpecification
textureSpecification = TextureSpecification {
    topology = error "textureSpecification: topology is not set."
  , imageFormat = error "textureSpecification: image format is not set."
  , mipmapLevels = 1 }

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

isMultisamplingTopology :: Topology -> Bool
isMultisamplingTopology (Tex2DMultisample {..}) = True
isMultisamplingTopology (Tex2DMultisampleArray {..}) = True
isMultisamplingTopology _ = False

-- | Creates a new texture.
--
-- Initially the contents of the texture are undefined.
--
-- Texture dimensions must be positive.
newTexture :: TextureSpecification
           -> IO Texture
newTexture spec = mask_ $ do
    topologySanityCheck (topology spec)
    when (not (isMultisamplingTopology (topology spec)) &&
          mipmapLevels spec < 1) $
        error "newTexture: mipmapLevels is not positive."

    res <- newResource creator
                       deleter
                       (return ())

    index <- atomicModifyIORef' ordIndices $ \old -> ( old+1, old )
    return Texture { resource = res
                   , ordIndex = index
                   , viewSpecification = spec }
  where
    num_mipmaps = mipmapLevels spec

    -- a lot of code just to check that all the dimensions are positive...
    topologySanityCheck t@(Tex1D {..})
        | width1D <= 0 = badTopology t
        | otherwise = return ()
    topologySanityCheck t@(Tex2D {..})
        | width2D <= 0 || height2D <= 0 = badTopology t
        | otherwise = return ()
    topologySanityCheck t@(Tex3D {..})
        | width3D <= 0 || height3D <= 0 || depth3D <= 0 = badTopology t
        | otherwise = return ()
    topologySanityCheck t@(Tex1DArray {..})
        | width1DArray <= 0 || layers1D <= 0 = badTopology t
        | otherwise = return ()
    topologySanityCheck t@(Tex2DArray {..})
        | width2DArray <= 0 || height2DArray <= 0 ||
          layers2D <= 0 = badTopology t
        | otherwise = return ()
    topologySanityCheck t@(Tex2DMultisample {..})
        | width2DMS <= 0 || height2DMS <= 0 = badTopology t
        | otherwise = return ()
    topologySanityCheck t@(Tex2DMultisampleArray {..})
        | width2DMSArray <= 0 || height2DMSArray <= 0 ||
          layers2DMS <= 0 = badTopology t
        | otherwise = return ()
    topologySanityCheck t@(TexCube {..})
        | widthCube <= 0 = badTopology t
        | otherwise = return ()

    badTopology topology =
        error $ "newTexture: bad topology " <> show topology

    deleter (Texture_ name) =
        with name $ glDeleteTextures 1

    creator = do
        name <- bracketOnError
            (alloca $ \name_ptr ->
                glGenTextures 1 name_ptr *> peek name_ptr)
            (\name -> deleter (Texture_ name))
            (\name -> do
                createByTopology name (topology spec)
                return name)
        return (Texture_ name)

    -- TODO: use DSA when available, perhaps add mglTextureStorage* functions
    -- to Caramia.Internal.OpenGLCApi?
    createByTopology :: GLuint -> Topology -> IO ()
    createByTopology name (Tex1D {..}) = do
        withBinding gl_TEXTURE_1D gl_TEXTURE_BINDING_1D name $
            glTexStorage1D gl_TEXTURE_1D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width1D)
    createByTopology name (Tex2D {..}) = do
        withBinding gl_TEXTURE_2D gl_TEXTURE_BINDING_2D name $
            glTexStorage2D gl_TEXTURE_2D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width2D)
                           (safeFromIntegral height2D)
    createByTopology name (Tex3D {..}) = do
        withBinding gl_TEXTURE_3D gl_TEXTURE_BINDING_3D name $
            glTexStorage3D gl_TEXTURE_3D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width3D)
                           (safeFromIntegral height3D)
                           (safeFromIntegral depth3D)
    createByTopology name (Tex1DArray {..}) = do
        withBinding gl_TEXTURE_1D_ARRAY gl_TEXTURE_BINDING_1D_ARRAY name $
            glTexStorage2D gl_TEXTURE_1D_ARRAY
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width1DArray)
                           (safeFromIntegral layers1D)
    createByTopology name (Tex2DArray {..}) = do
        withBinding gl_TEXTURE_2D_ARRAY gl_TEXTURE_BINDING_2D_ARRAY name $
            glTexStorage3D gl_TEXTURE_2D_ARRAY
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width2DArray)
                           (safeFromIntegral height2DArray)
                           (safeFromIntegral layers2D)
    createByTopology name (Tex2DMultisample {..}) = do
        withBinding gl_TEXTURE_2D_MULTISAMPLE
                    gl_TEXTURE_BINDING_2D_MULTISAMPLE
                    name $
            glTexImage2DMultisample
                           gl_TEXTURE_2D_MULTISAMPLE
                           (safeFromIntegral samples2DMS)
                           (fromIntegral $ toConstantIF (imageFormat spec))
                           (safeFromIntegral width2DMS)
                           (safeFromIntegral height2DMS)
                           (if fixedSampleLocations2DMS
                             then 1 else 0)
    createByTopology name (Tex2DMultisampleArray {..}) = do
        withBinding gl_TEXTURE_2D_MULTISAMPLE_ARRAY
                    gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
                    name $
            glTexImage3DMultisample
                           gl_TEXTURE_2D_MULTISAMPLE_ARRAY
                           (safeFromIntegral samples2DMSArray)
                           (fromIntegral $ toConstantIF (imageFormat spec))
                           (safeFromIntegral width2DMSArray)
                           (safeFromIntegral height2DMSArray)
                           (safeFromIntegral layers2DMS)
                           (if fixedSampleLocations2DMSArray
                             then 1 else 0)
    createByTopology name (TexCube {..}) = do
        withBinding gl_TEXTURE_CUBE_MAP
                    gl_TEXTURE_BINDING_CUBE_MAP
                    name $
            glTexStorage2D gl_TEXTURE_CUBE_MAP
                           (safeFromIntegral num_mipmaps)
                           (fromIntegral $ toConstantIF (imageFormat spec))
                           (safeFromIntegral widthCube)
                           (safeFromIntegral widthCube)

withBinding :: GLenum -> GLenum -> GLuint -> IO a -> IO a
withBinding tex tex_binding tex_name action = do
    old <- gi tex_binding
    finally
        (glBindTexture tex tex_name *>
         action)
        (glBindTexture tex old)

gi :: GLenum -> IO GLuint
gi x = alloca $ \get_ptr -> glGetIntegerv x (castPtr get_ptr) *>
                            peek get_ptr

{-
nextMipmapLevel :: Int -> Int
nextMipmapLevel 0 = 0
nextMipmapLevel 1 = 1
nextMipmapLevel x = max 1 (x `div` 2)

nthMipmapLevel :: Int -> Int -> Int
nthMipmapLevel x 0 = x
nthMipmapLevel x n = nthMipmapLevel (nextMipmapLevel x) (n-1)
-}

