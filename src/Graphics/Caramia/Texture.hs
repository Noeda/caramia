-- | Textures.
--

{-# LANGUAGE RecordWildCards, ScopedTypeVariables, NoImplicitPrelude #-}
{-# LANGUAGE MultiWayIf, ViewPatterns, DeriveDataTypeable #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Graphics.Caramia.Texture
    (
    -- * Creating textures
      newTexture
    , Texture()
    , TextureSpecification(..)
    , textureSpecification
    , Topology(..)
    -- * Uploading to textures
    , uploadToTexture
    , Uploading(..)
    , uploading1D
    , uploading2D
    , uploading3D
    , UploadFormat(..)
    , CubeSide(..)
    -- * Texture units
    , TextureUnit
    -- * Mipmapping
    , generateMipmaps
    -- * Texture parameters
    , setWrapping
    , getWrapping
    , setMinFilter
    , setMagFilter
    , getMinFilter
    , getMagFilter
    , setAnisotropy
    , getAnisotropy
    , setCompareMode
    , getCompareMode
    , MinFilter(..)
    , MagFilter(..)
    , Wrapping(..)
    , CompareMode(..)
    -- * Views
    , viewSpecification
    , viewWidth
    , viewHeight
    , viewDepth
    , viewMipmapLevels
    , viewSize2D
    , viewSize3D
    -- * Utilities
    , maxMipmapLevels )
    where


import Control.Monad.IO.Class
import Control.Monad.Catch
import Data.Data ( Data )
import GHC.Generics
import qualified Graphics.Caramia.Buffer.Internal as Buf
import Graphics.Caramia.ImageFormats.Internal
import Graphics.Caramia.Internal.Exception
import Graphics.Caramia.Internal.TexStorage
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource
import Graphics.Caramia.Texture.Internal
import Graphics.GL.Ext.ARB.TextureBufferObject
import Graphics.GL.Ext.EXT.TextureFilterAnisotropic
import Graphics.GL.Ext.ARB.TextureMultisample
import Graphics.GL.Ext.ARB.TextureStorage
import Foreign
import Linear.V2 ( V2(..) )
import Linear.V3 ( V3(..) )

textureSpecification :: TextureSpecification
textureSpecification = TextureSpecification {
    topology = error "textureSpecification: topology is not set."
  , imageFormat = error "textureSpecification: image format is not set."
  , mipmapLevels = 1 }

-- | Returns the width of a texture.
viewWidth :: Texture -> Int
viewWidth (viewSpecification -> spec) = viewWidth' (topology spec)
  where
    viewWidth' (Tex1D {..}) = width1D
    viewWidth' (Tex2D {..}) = width2D
    viewWidth' (Tex3D {..}) = width3D
    viewWidth' (Tex1DArray {..}) = width1DArray
    viewWidth' (Tex2DArray {..}) = width2DArray
    viewWidth' (Tex2DMultisample {..}) = width2DMS
    viewWidth' (Tex2DMultisampleArray {..}) = width2DMSArray
    viewWidth' (TexCube {..}) = widthCube
    viewWidth' (TexBuffer {}) =
        error "viewWidth: buffer texture has no meaningful width."
        -- TODO: you can actually infer that from the buffer size
        -- so implement it

-- | Returns the size of a texture, as a `V2`. Width and height.
--
-- @
-- viewSize2D tex = V2 (viewWidth tex) (viewHeight tex)
-- @
viewSize2D :: Texture -> V2 Int
viewSize2D tex = V2 (viewWidth tex) (viewHeight tex)

-- | Returns the size of a texture, as a `V3`. Width, height and depth.
--
-- @
-- viewSize3D tex = V3 (viewWidth tex) (viewHeight tex) (viewDepth tex)
-- @
viewSize3D :: Texture -> V3 Int
viewSize3D tex = V3 (viewWidth tex) (viewHeight tex) (viewDepth tex)

-- | Returns the height of a texture.
--
-- This is 1 for one-dimensional textures.
viewHeight :: Texture -> Int
viewHeight (viewSpecification -> spec) = viewHeight' (topology spec)
  where
    viewHeight' (Tex1D {..}) = 1
    viewHeight' (Tex2D {..}) = height2D
    viewHeight' (Tex3D {..}) = height3D
    viewHeight' (Tex1DArray {..}) = 1
    viewHeight' (Tex2DArray {..}) = height2DArray
    viewHeight' (Tex2DMultisample {..}) = height2DMS
    viewHeight' (Tex2DMultisampleArray {..}) = height2DMSArray
    viewHeight' (TexCube {..}) = widthCube
    viewHeight' (TexBuffer {}) = 1

-- | Returns the depth of a 3D texture or number of layers in array textures.
--
-- This is 1 for any other type of texture.
viewDepth :: Texture -> Int
viewDepth (viewSpecification -> spec) = viewDepth' (topology spec)
  where
    viewDepth' (Tex1D {..}) = 1
    viewDepth' (Tex2D {..}) = 1
    viewDepth' (Tex3D {..}) = depth3D
    viewDepth' (Tex1DArray {..}) = layers1D
    viewDepth' (Tex2DArray {..}) = layers2D
    viewDepth' (Tex2DMultisample {..}) = 1
    viewDepth' (Tex2DMultisampleArray {..}) = layers2DMS
    viewDepth' (TexCube {..}) = 1
    viewDepth' (TexBuffer {}) = 1

viewMipmapLevels :: Texture -> Int
viewMipmapLevels = mipmapLevels . viewSpecification

isMultisamplingTopology :: Topology -> Bool
isMultisamplingTopology (Tex2DMultisample {..}) = True
isMultisamplingTopology (Tex2DMultisampleArray {..}) = True
isMultisamplingTopology _ = False

-- | Creates a new texture.
--
-- Initially the contents of the texture are undefined.
--
-- Texture dimensions must be positive.
newTexture :: MonadIO m
           => TextureSpecification
           -> m Texture
newTexture spec = liftIO $ mask_ $ do
    topologySanityCheck (topology spec)
    when (not (isMultisamplingTopology (topology spec)) &&
          mipmapLevels spec < 1) $
        error "newTexture: mipmapLevels is not positive."

    res <- newResource creator
                       deleter
                       (return ())

    index <- newUnique
    return Texture { resource = res
                   , ordIndex = index
                   , viewSpecification = spec }
  where
    num_mipmaps = mipmapLevels spec

    -- a lot of code just to check that all the dimensions are positive...
    topologySanityCheck t@(Tex1D {..})
        | width1D <= 0 = badTopology t
        | not (isValidMipmap width1D num_mipmaps) = badMipmaps
        | otherwise = return ()
    topologySanityCheck t@(Tex2D {..})
        | width2D <= 0 || height2D <= 0 = badTopology t
        | not (isValidMipmap (max width2D height2D) num_mipmaps) = badMipmaps
        | otherwise = return ()
    topologySanityCheck t@(Tex3D {..})
        | width3D <= 0 || height3D <= 0 || depth3D <= 0 = badTopology t
        | not (isValidMipmap (max width3D $ max height3D depth3D) num_mipmaps) =
              badMipmaps
        | otherwise = return ()
    topologySanityCheck t@(Tex1DArray {..})
        | width1DArray <= 0 || layers1D <= 0 = badTopology t
        | not (isValidMipmap width1DArray num_mipmaps) =
              badMipmaps
        | otherwise = return ()
    topologySanityCheck t@(Tex2DArray {..})
        | width2DArray <= 0 || height2DArray <= 0 ||
          layers2D <= 0 = badTopology t
        | not (isValidMipmap (max width2DArray height2DArray) num_mipmaps) =
              badMipmaps
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
        | not (isValidMipmap widthCube num_mipmaps) =
              badMipmaps
        | otherwise = return ()
    topologySanityCheck (TexBuffer {}) = return ()

    badTopology _ = error "newTexture: bad topology."

    badMipmaps =
        error $ "newTexture: bad number of mipmap levels: " <> show num_mipmaps

    deleter (Texture_ name) =
        with name $ glDeleteTextures 1

    creator = do
        name <- bracketOnError
            (alloca $ \name_ptr ->
                glGenTextures 1 name_ptr *> peek name_ptr)
            (deleter . Texture_ )
            (\name -> do
                if gl_ARB_texture_storage
                  then createByTopologyTexStorage name (topology spec)
                  else createByTopologyFakeTextureStorage name (topology spec)
                return name)
        return (Texture_ name)

    createByTopologyFakeTextureStorage :: GLuint -> Topology -> IO ()
    createByTopologyFakeTextureStorage name (Tex1D {..}) =
        fakeTextureStorage1D name
                             GL_TEXTURE_1D
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width1D)
    createByTopologyFakeTextureStorage name (Tex2D {..}) =
        fakeTextureStorage2D name
                             GL_TEXTURE_2D
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width2D)
                             (safeFromIntegral height2D)
    createByTopologyFakeTextureStorage name (Tex3D {..}) =
        fakeTextureStorage3D name
                             GL_TEXTURE_3D
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width3D)
                             (safeFromIntegral height3D)
                             (safeFromIntegral depth3D)
    createByTopologyFakeTextureStorage name (Tex1DArray {..}) =
        fakeTextureStorage2D name
                             GL_TEXTURE_1D_ARRAY
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width1DArray)
                             (safeFromIntegral layers1D)
    createByTopologyFakeTextureStorage name (Tex2DArray {..}) =
        fakeTextureStorage3D name
                             GL_TEXTURE_2D_ARRAY
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width2DArray)
                             (safeFromIntegral height2DArray)
                             (safeFromIntegral layers2D)
    createByTopologyFakeTextureStorage name tex@(Tex2DMultisample {..}) =
        createByTopologyTexStorage name tex
    createByTopologyFakeTextureStorage name tex@(Tex2DMultisampleArray {..}) =
        createByTopologyTexStorage name tex
    createByTopologyFakeTextureStorage name (TexCube {..}) =
        fakeTextureStorage2D name
                             GL_TEXTURE_CUBE_MAP
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral widthCube)
                             (safeFromIntegral widthCube)
    createByTopologyFakeTextureStorage name tex@(TexBuffer {..}) =
        createByTopologyTexStorage name tex

    -- TODO: use DSA when available, perhaps add mglTextureStorage* functions
    -- to Caramia.Internal.OpenGLCApi?
    createByTopologyTexStorage :: GLuint -> Topology -> IO ()
    createByTopologyTexStorage name (Tex1D {..}) =
        withBinding GL_TEXTURE_1D GL_TEXTURE_BINDING_1D name $
            glTexStorage1D GL_TEXTURE_1D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width1D)
    createByTopologyTexStorage name (Tex2D {..}) =
        withBinding GL_TEXTURE_2D GL_TEXTURE_BINDING_2D name $
            glTexStorage2D GL_TEXTURE_2D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width2D)
                           (safeFromIntegral height2D)
    createByTopologyTexStorage name (Tex3D {..}) =
        withBinding GL_TEXTURE_3D GL_TEXTURE_BINDING_3D name $
            glTexStorage3D GL_TEXTURE_3D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width3D)
                           (safeFromIntegral height3D)
                           (safeFromIntegral depth3D)
    createByTopologyTexStorage name (Tex1DArray {..}) =
        withBinding GL_TEXTURE_1D_ARRAY GL_TEXTURE_BINDING_1D_ARRAY name $
            glTexStorage2D GL_TEXTURE_1D_ARRAY
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width1DArray)
                           (safeFromIntegral layers1D)
    createByTopologyTexStorage name (Tex2DArray {..}) =
        withBinding GL_TEXTURE_2D_ARRAY GL_TEXTURE_BINDING_2D_ARRAY name $
            glTexStorage3D GL_TEXTURE_2D_ARRAY
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width2DArray)
                           (safeFromIntegral height2DArray)
                           (safeFromIntegral layers2D)
    createByTopologyTexStorage name (Tex2DMultisample {..}) =
        checkOpenGLOrExtensionM (OpenGLVersion 3 2)
                                "GL_ARB_texture_multisample"
                                gl_ARB_texture_multisample $
        withBinding GL_TEXTURE_2D_MULTISAMPLE
                    GL_TEXTURE_BINDING_2D_MULTISAMPLE
                    name $
            glTexImage2DMultisample
                           GL_TEXTURE_2D_MULTISAMPLE
                           (safeFromIntegral samples2DMS)
                           (fromIntegral $ toConstantIF (imageFormat spec))
                           (safeFromIntegral width2DMS)
                           (safeFromIntegral height2DMS)
                           (if fixedSampleLocations2DMS
                             then 1 else 0)
    createByTopologyTexStorage name (Tex2DMultisampleArray {..}) =
        checkOpenGLOrExtensionM (OpenGLVersion 3 2)
                                "GL_ARB_texture_multisample"
                                gl_ARB_texture_multisample $
        withBinding GL_TEXTURE_2D_MULTISAMPLE_ARRAY
                    GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
                    name $
            glTexImage3DMultisample
                           GL_TEXTURE_2D_MULTISAMPLE_ARRAY
                           (safeFromIntegral samples2DMSArray)
                           (fromIntegral $ toConstantIF (imageFormat spec))
                           (safeFromIntegral width2DMSArray)
                           (safeFromIntegral height2DMSArray)
                           (safeFromIntegral layers2DMS)
                           (if fixedSampleLocations2DMSArray
                             then 1 else 0)
    createByTopologyTexStorage name (TexCube {..}) =
        withBinding GL_TEXTURE_CUBE_MAP
                    GL_TEXTURE_BINDING_CUBE_MAP
                    name $
            glTexStorage2D GL_TEXTURE_CUBE_MAP
                           (safeFromIntegral num_mipmaps)
                           (fromIntegral $ toConstantIF (imageFormat spec))
                           (safeFromIntegral widthCube)
                           (safeFromIntegral widthCube)
    createByTopologyTexStorage name (TexBuffer {..}) =
        checkOpenGLOrExtensionM (OpenGLVersion 3 1)
                                "GL_ARB_texture_buffer_object"
                                gl_ARB_texture_buffer_object $
        withBinding GL_TEXTURE_BUFFER
                    GL_TEXTURE_BINDING_BUFFER
                    name $
            withResource (Buf.resource texBuffer) $ \(Buf.Buffer_ bufname) ->
                glTexBuffer GL_TEXTURE_BUFFER
                            (fromIntegral $ toConstantIF (imageFormat spec))
                            bufname

-- | Generate all mipmaps for a texture. If mipmap levels were specified, that
-- is.
generateMipmaps :: (MonadIO m, MonadMask m) => Texture -> m ()
generateMipmaps = flip withBindingByTopology glGenerateMipmap

-- | Specifies the format in which buffer data is for the purposes of uploading
-- said data to a texture.
data UploadFormat =
    UR    -- ^ Just red.
  | URG   -- ^ Red and green.
  | URGB  -- ^ You know the drill.
  | URGBA
  | UBGR
  | UBGRA
  | UDEPTH_COMPONENT   -- ^ Depth values.
  | USTENCIL_INDEX     -- ^ Stencil values.
  deriving ( Eq, Ord, Show, Read, Typeable, Data, Generic )

-- TODO: add UDEPTH_STENCIL when `SpecificationType` has special interpretation
-- formats.

toConstantUF :: UploadFormat -> GLenum
toConstantUF UR = GL_RED
toConstantUF URG = GL_RG
toConstantUF URGB = GL_RGB
toConstantUF URGBA = GL_RGBA
toConstantUF UBGR = GL_BGR
toConstantUF UBGRA = GL_BGRA
toConstantUF UDEPTH_COMPONENT = GL_DEPTH_COMPONENT
toConstantUF USTENCIL_INDEX = GL_STENCIL_INDEX

-- | Used to specify how to move the data from a `Buffer` to a `Texture` in
-- `uploadToTexture`.
--
-- This is common for all texture topologies. However, some fields are ignored
-- depending on the topology.
--
-- For example, if you upload into a 1D texture, then all fields that deal with
-- higher dimensions (`yOffset`, `zOffset`, `uHeight` etc.) are ignored.
--
-- It is recommended that you use one of the smart constructors as they
-- implement the common use cases so you don't have to fill all these fields by
-- yourself.
data Uploading = Uploading
    { fromBuffer    :: !Buf.Buffer  -- ^ From which buffer to upload.
    , bufferOffset  :: !Int     -- ^ Offset in the buffer, in bytes,
                                --   from where to start uploading.
    , toMipmapLevel :: !Int     -- ^ To which mipmap level to upload.
                                --   (0 = base level).
    , specificationType :: !SpecificationType
    -- ^ What data type is used for each component value in a pixel.
    , uploadFormat  :: !UploadFormat
    -- ^ What format is the source data in.
    , xOffset       :: !Int     -- ^ X offset where to put the data.
    , yOffset       :: !Int     -- ^ Y offset where to put the data.
    , zOffset       :: !Int     -- ^ Z offset where to put the data.
    , uWidth        :: !Int     -- ^ Width of the data to put.
    , uHeight       :: !Int     -- ^ Height of the data to put.
    , uDepth        :: !Int     -- ^ Number of 2D images to put.
    , cubeSide      :: CubeSide  -- ^ Only used for cube map textures.
                                 -- Specifies which side of the cube to upload.
                                 -- Not evaluated if the texture is not a cube
                                 -- texture.
    , numColumns    :: !Int
    -- ^ Number of columns in the image in the source buffer. This value is
    -- also sometimes known as \'pitch\'. It is the same as `uWidth` except in
    -- cases where the next row in source data does not come immediately after
    -- the current row but after `numColumns` from the first pixel in the row.
    , numRows       :: !Int
    -- ^ Same as `numColumns` but for images in 3D uploading.
    , pixelAlignment     :: !Int
    -- ^ Alignment in which the source texture data is. Every row is aligned to
    -- this value. Allowed values are 1, 2, 4 and 8. The default value in smart
    -- constructors is 1.
    }
    deriving ( Eq, Typeable )

-- | Values of this type refer to sides of a cube.
data CubeSide =
    PositiveY
  | NegativeY
  | PositiveX
  | NegativeX
  | PositiveZ
  | NegativeZ
    deriving ( Eq, Ord, Show, Read, Typeable, Data, Generic )

toConstantCS :: CubeSide -> GLenum
toConstantCS PositiveX = GL_TEXTURE_CUBE_MAP_POSITIVE_X
toConstantCS NegativeX = GL_TEXTURE_CUBE_MAP_NEGATIVE_X
toConstantCS PositiveY = GL_TEXTURE_CUBE_MAP_POSITIVE_Y
toConstantCS NegativeY = GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
toConstantCS PositiveZ = GL_TEXTURE_CUBE_MAP_POSITIVE_Z
toConstantCS NegativeZ = GL_TEXTURE_CUBE_MAP_NEGATIVE_Z

-- | Constructs a common 1D uploading.
uploading1D :: Buf.Buffer
            -> Int     -- ^ How many pixels to upload.
            -> SpecificationType
            -> UploadFormat
            -> Uploading
uploading1D buffer pixels stype uf =
    Uploading {
         fromBuffer = buffer
       , bufferOffset = 0
       , specificationType = stype
       , uploadFormat = uf
       , toMipmapLevel = 0
       , xOffset = 0
       , yOffset = 0
       , zOffset = 0
       , uWidth = pixels
       , uHeight = 1
       , uDepth = 1
       , numColumns = pixels
       , cubeSide = PositiveY
       , numRows = 1
       , pixelAlignment = 1 }

-- | Constructs a common 2D uploading.
--
-- This can also be used for uploading into 1D texture arrays.
uploading2D :: Buf.Buffer
            -> Int     -- ^ Width of the image to upload.
            -> Int     -- ^ Height of the image to upload.
            -> SpecificationType
            -> UploadFormat
            -> Uploading
uploading2D buffer width height stype uf =
    Uploading {
         fromBuffer = buffer
       , bufferOffset = 0
       , specificationType = stype
       , uploadFormat = uf
       , toMipmapLevel = 0
       , xOffset = 0
       , yOffset = 0
       , zOffset = 0
       , uWidth = width
       , uHeight = height
       , uDepth = 1
       , numColumns = width
       , cubeSide = PositiveY
       , numRows = height
       , pixelAlignment = 1 }

-- | Constructs a common 3D uploading.
--
-- This can also be used for uploading into 2D texture arrays.
uploading3D :: Buf.Buffer
            -> Int     -- ^ Width of the image to upload.
            -> Int     -- ^ Height of the image to upload.
            -> Int     -- ^ Number of images to upload.
            -> SpecificationType
            -> UploadFormat
            -> Uploading
uploading3D buffer width height depth stype uf =
    Uploading {
         fromBuffer = buffer
       , bufferOffset = 0
       , specificationType = stype
       , uploadFormat = uf
       , toMipmapLevel = 0
       , xOffset = 0
       , yOffset = 0
       , zOffset = 0
       , uWidth = width
       , uHeight = height
       , uDepth = depth
       , numColumns = width
       , cubeSide = PositiveY
       , numRows = height
       , pixelAlignment = 1 }

-- | Uploads an image to a texture.
uploadToTexture :: MonadIO m
                => Uploading
                -> Texture
                -> m ()
uploadToTexture uploading tex = liftIO $ mask_ $
    withResource (Buf.resource (fromBuffer uploading)) $ \(Buf.Buffer_ buf) ->
    withBoundPixelUnpackBuffer buf $ do
        old_num_cols  <- fromIntegral <$> gi GL_UNPACK_ROW_LENGTH
        old_num_rows  <- fromIntegral <$> gi GL_UNPACK_IMAGE_HEIGHT
        old_alignment <- fromIntegral <$> gi GL_UNPACK_ALIGNMENT
        glPixelStorei GL_UNPACK_ROW_LENGTH
                      (safeFromIntegral $ numColumns uploading)
        flip finally (glPixelStorei GL_UNPACK_ROW_LENGTH old_num_cols) $ do
         glPixelStorei GL_UNPACK_IMAGE_HEIGHT
                       (safeFromIntegral $ numRows uploading)
         flip finally (glPixelStorei GL_UNPACK_IMAGE_HEIGHT old_num_rows) $ do
          glPixelStorei GL_UNPACK_ALIGNMENT
                        (safeFromIntegral $ pixelAlignment uploading)
          flip finally (glPixelStorei GL_UNPACK_ALIGNMENT old_alignment) $
           withResource (resource tex) $ \(Texture_ texname) ->
            case topology $ viewSpecification tex of
                Tex1D {..} ->
                    upload1D GL_TEXTURE_1D GL_TEXTURE_BINDING_1D
                             texname uploading
                Tex2D {..} ->
                    upload2D GL_TEXTURE_2D GL_TEXTURE_BINDING_2D
                             texname uploading
                Tex3D {..} ->
                    upload3D GL_TEXTURE_3D GL_TEXTURE_BINDING_3D
                             texname uploading
                Tex1DArray {..} ->
                    upload2D GL_TEXTURE_1D_ARRAY GL_TEXTURE_BINDING_1D_ARRAY
                             texname uploading
                Tex2DArray {..} ->
                    upload3D GL_TEXTURE_2D_ARRAY GL_TEXTURE_BINDING_2D_ARRAY
                             texname uploading
                Tex2DMultisample {..} ->
                    error $ "uploadToTexture: cannot upload to " <>
                            "multisampling textures."
                Tex2DMultisampleArray {..} ->
                    error $ "uploadToTexture: cannot upload to " <>
                            "multisampling array textures."
                TexCube {..} ->
                    uploadCube GL_TEXTURE_CUBE_MAP
                               GL_TEXTURE_BINDING_CUBE_MAP
                               texname uploading
                TexBuffer {..} ->
                    error $ "uploadToTexture: cannot upload to " <>
                            "buffer textures. (please upload directly to the " <>
                            "associated buffer instead.)"

upload1D :: GLenum -> GLenum -> GLuint -> Uploading -> IO ()
upload1D target binding tex (Uploading {..}) =
    withBinding target binding tex $
        glTexSubImage1D target
                        (safeFromIntegral toMipmapLevel)
                        (safeFromIntegral xOffset)
                        (safeFromIntegral uWidth)
                        (toConstantUF uploadFormat)
                        (toConstantST specificationType)
                        (intPtrToPtr $
                         fromIntegral bufferOffset)

upload2D :: GLenum -> GLenum -> GLuint -> Uploading -> IO ()
upload2D target binding tex (Uploading {..}) =
    withBinding target binding tex $
        glTexSubImage2D target
                        (safeFromIntegral toMipmapLevel)
                        (safeFromIntegral xOffset)
                        (safeFromIntegral yOffset)
                        (safeFromIntegral uWidth)
                        (safeFromIntegral uHeight)
                        (toConstantUF uploadFormat)
                        (toConstantST specificationType)
                        (intPtrToPtr $
                         fromIntegral bufferOffset)

upload3D :: GLenum -> GLenum -> GLuint -> Uploading -> IO ()
upload3D target binding tex (Uploading {..}) =
    withBinding target binding tex $
        glTexSubImage3D target
                        (safeFromIntegral toMipmapLevel)
                        (safeFromIntegral xOffset)
                        (safeFromIntegral yOffset)
                        (safeFromIntegral zOffset)
                        (safeFromIntegral uWidth)
                        (safeFromIntegral uHeight)
                        (safeFromIntegral uDepth)
                        (toConstantUF uploadFormat)
                        (toConstantST specificationType)
                        (intPtrToPtr $
                         fromIntegral bufferOffset)

uploadCube :: GLenum -> GLenum -> GLuint -> Uploading -> IO ()
uploadCube target binding tex (Uploading {..}) =
    withBinding target binding tex $
        glTexSubImage2D (toConstantCS cubeSide)
                        (safeFromIntegral toMipmapLevel)
                        (safeFromIntegral xOffset)
                        (safeFromIntegral yOffset)
                        (safeFromIntegral uWidth)
                        (safeFromIntegral uHeight)
                        (toConstantUF uploadFormat)
                        (toConstantST specificationType)
                        (intPtrToPtr $
                         fromIntegral bufferOffset)

isValidMipmap :: Int -> Int -> Bool
isValidMipmap w level
    | w <= 0 = False
    | level < 0 = False
    | level > floor (logBase (2 :: Double) (fromIntegral w)) + 1 = False
    | otherwise = True

-- | Returns the maximal number of mipmap levels when given a side length.
maxMipmapLevels :: Int -> Int
maxMipmapLevels width
    | width <= 0 = 0
    | otherwise = floor (logBase (2 :: Double) (fromIntegral width)) + 1

class TexParam a where
    tpEnum :: a -> GLenum
    tpToConstant :: a -> GLenum
    tpFromConstant :: GLenum -> a

data MinFilter =
    MiNearest
  | MiLinear
  | MiNearestMipmapNearest
  | MiLinearMipmapNearest
  | MiNearestMipmapLinear
  | MiLinearMipmapLinear
  deriving ( Eq, Ord, Show, Read, Typeable, Data, Generic, Enum )

data MagFilter =
   MaNearest
 | MaLinear
 deriving ( Eq, Ord, Show, Read, Typeable, Data, Generic, Enum )

data Wrapping =
   Clamp
 | Repeat
 deriving ( Eq, Ord, Show, Read, Typeable, Data, Generic, Enum )

-- | Texture comparison modes.
--
-- See @ glTexParameteri @ documentation in OpenGL.
data CompareMode
 = NoCompare
 | CompareRefToTexture
 deriving ( Eq, Ord, Show, Read, Typeable, Data, Generic, Enum )

toConstantC :: CompareMode -> GLenum
toConstantC NoCompare = GL_NONE
toConstantC CompareRefToTexture = GL_COMPARE_REF_TO_TEXTURE

toConstantW :: Wrapping -> GLenum
toConstantW Clamp = GL_CLAMP_TO_EDGE
toConstantW Repeat = GL_REPEAT

instance TexParam MinFilter where
    tpEnum _ = GL_TEXTURE_MIN_FILTER
    tpToConstant MiNearest = GL_NEAREST
    tpToConstant MiLinear  = GL_LINEAR
    tpToConstant MiNearestMipmapNearest = GL_NEAREST_MIPMAP_NEAREST
    tpToConstant MiLinearMipmapNearest = GL_LINEAR_MIPMAP_NEAREST
    tpToConstant MiNearestMipmapLinear = GL_NEAREST_MIPMAP_LINEAR
    tpToConstant MiLinearMipmapLinear = GL_LINEAR_MIPMAP_LINEAR
    tpFromConstant c
        | c == GL_NEAREST = MiNearest
        | c == GL_LINEAR  = MiLinear
        | c == GL_NEAREST_MIPMAP_NEAREST = MiNearestMipmapNearest
        | c == GL_LINEAR_MIPMAP_NEAREST = MiLinearMipmapNearest
        | c == GL_NEAREST_MIPMAP_LINEAR = MiNearestMipmapLinear
        | c == GL_LINEAR_MIPMAP_LINEAR = MiLinearMipmapLinear
        | otherwise = error "MinFilter: unexpected filtering value."

instance TexParam MagFilter where
    tpEnum _ = GL_TEXTURE_MAG_FILTER
    tpToConstant MaNearest = GL_NEAREST
    tpToConstant MaLinear = GL_LINEAR

    tpFromConstant c
        | c == GL_NEAREST = MaNearest
        | c == GL_LINEAR  = MaLinear
        | otherwise = error "MagFilter: unexpected filtering value."

setMinFilter :: (MonadIO m, MonadMask m) => MinFilter -> Texture -> m ()
setMinFilter = setTexParam

setMagFilter :: (MonadIO m, MonadMask m) => MagFilter -> Texture -> m ()
setMagFilter = setTexParam

getMinFilter :: MonadIO m => Texture -> m MinFilter
getMinFilter = getTexParam

getMagFilter :: MonadIO m => Texture -> m MagFilter
getMagFilter = getTexParam

setTexParam :: (MonadIO m, MonadMask m, TexParam a) => a -> Texture -> m ()
setTexParam param tex = withBindingByTopology tex $ \target ->
    glTexParameteri target (tpEnum param) (fromIntegral $ tpToConstant param)

getTexParam :: forall m a. (MonadIO m, TexParam a) => Texture -> m a
getTexParam tex = liftIO $ withBindingByTopology tex $ \target ->
    alloca $ \result_ptr -> do
        glGetTexParameteriv target (tpEnum (undefined :: a)) result_ptr
        tpFromConstant . fromIntegral <$> peek result_ptr

setWrapping :: (MonadIO m, MonadMask m) => Wrapping -> Texture -> m ()
setWrapping wrapping tex = withBindingByTopology tex $ \target -> do
    glTexParameteri target GL_TEXTURE_WRAP_S
                           (fromIntegral $ toConstantW wrapping)
    glTexParameteri target GL_TEXTURE_WRAP_T
                           (fromIntegral $ toConstantW wrapping)
    glTexParameteri target GL_TEXTURE_WRAP_R
                           (fromIntegral $ toConstantW wrapping)

setCompareMode :: (MonadIO m, MonadMask m) => CompareMode -> Texture -> m ()
setCompareMode cmp_mode tex = withBindingByTopology tex $ \target ->
    glTexParameteri target GL_TEXTURE_COMPARE_MODE
                    (fromIntegral $ toConstantC cmp_mode)

getCompareMode :: (MonadIO m, MonadMask m) => Texture -> m CompareMode
getCompareMode tex = liftIO $ withBindingByTopology tex $ \target ->
    alloca $ \result_ptr -> do
        glGetTexParameteriv target GL_TEXTURE_COMPARE_MODE result_ptr
        result <- peek result_ptr
        return $ if
            | result == GL_NONE -> NoCompare
            | result == GL_COMPARE_REF_TO_TEXTURE -> CompareRefToTexture
            | otherwise -> error "getCompareMode: unexpected comparing mode."

getWrapping :: (MonadIO m, MonadMask m) => Texture -> m Wrapping
getWrapping tex = liftIO $ withBindingByTopology tex $ \target ->
    alloca $ \result_ptr -> do
        glGetTexParameteriv target GL_TEXTURE_WRAP_S result_ptr
        result <- peek result_ptr
        return $ if
            | result == GL_CLAMP_TO_EDGE -> Clamp
            | result == GL_REPEAT -> Repeat
            | otherwise -> error "getWrapping: unexpected wrapping mode."

setAnisotropy :: (MonadIO m, MonadMask m) => Float -> Texture -> m ()
setAnisotropy ani tex = withBindingByTopology tex $ \target ->
    glTexParameterf target GL_TEXTURE_MAX_ANISOTROPY_EXT ani

getAnisotropy :: (MonadIO m, MonadMask m) => Texture -> m Float
getAnisotropy tex = liftIO $ withBindingByTopology tex $ \target ->
    alloca $ \ani_ptr -> do
        glGetTexParameterfv target GL_TEXTURE_MAX_ANISOTROPY_EXT ani_ptr
        peek ani_ptr

{-
nextMipmapLevel :: Int -> Int
nextMipmapLevel 0 = 0
nextMipmapLevel 1 = 1
nextMipmapLevel x = max 1 (x `div` 2)

nthMipmapLevel :: Int -> Int -> Int
nthMipmapLevel x 0 = x
nthMipmapLevel x n = nthMipmapLevel (nextMipmapLevel x) (n-1)
-}

