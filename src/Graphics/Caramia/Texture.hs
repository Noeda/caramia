-- | Textures.
--

{-# LANGUAGE RecordWildCards, ScopedTypeVariables, NoImplicitPrelude #-}
{-# LANGUAGE MultiWayIf, ViewPatterns, DeriveDataTypeable #-}

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
    , setAnisotropy
    , getAnisotropy
    , getCompareMode
    , setCompareMode
    , getMinFilter
    , setMinFilter
    , getMagFilter
    , setMagFilter
    , setWrapping
    , getWrapping
    , CompareMode(..)
    , MinFilter(..)
    , MagFilter(..)
    , Wrapping(..)
    -- * Views
    , viewWidth
    , viewHeight
    , viewDepth
    , viewSpecification
    , viewMipmapLevels
    -- * Utilities
    , maxMipmapLevels
    -- * Escape hatches
    , newTextureRaw
    , viewTextureRaw )
    where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Texture.Internal
import Graphics.Caramia.Internal.TexStorage
import Graphics.Caramia.Internal.OpenGLCApi
import qualified Graphics.Caramia.Internal.FlextGLFlipped as F
import qualified Graphics.Caramia.Buffer.Internal as Buf
import Graphics.Caramia.ImageFormats.Internal
import Graphics.Caramia.Resource
import Graphics.Caramia.Context.Internal
import Control.Monad.Catch
import Control.Monad.Reader
import Foreign
import Foreign.C.Types

textureSpecification :: TextureSpecification s
textureSpecification = TextureSpecification {
    topology = error "textureSpecification: topology is not set."
  , imageFormat = error "textureSpecification: image format is not set."
  , mipmapLevels = 1 }

-- | Returns the width of a texture.
viewWidth :: Texture s -> Int
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

-- | Returns the height of a texture.
--
-- This is 1 for one-dimensional textures.
viewHeight :: Texture s -> Int
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
viewDepth :: Texture s -> Int
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

viewMipmapLevels :: Texture s -> Int
viewMipmapLevels = mipmapLevels . viewSpecification

isMultisamplingTopology :: Topology s -> Bool
isMultisamplingTopology (Tex2DMultisample {..}) = True
isMultisamplingTopology (Tex2DMultisampleArray {..}) = True
isMultisamplingTopology _ = False

-- | Returns the underlying OpenGL texture name.
--
-- Be aware that the name will only be valid as long as a reference to the
-- `Texture` exists because garbage collection might delete the name.
viewTextureRaw :: Texture s -> Context s GLuint
viewTextureRaw tex =
    withResource (resource tex) $ \(Texture_ texname) -> return texname

-- | Creates a new texture from an OpenGL name.
newTextureRaw :: GLuint    -- ^ The raw texture name.
              -> Bool      -- ^ Attach a finalizer to the texture?
                           --   If `False`, you become responsible for freeing
                           --   the texture.
              -> TextureSpecification s
                           -- ^ Texture specification. This argument is not
                           --   checked for any validity. It will be the source
                           --   of information for all the view functions.
              -> Context s (Texture s)
newTextureRaw name attach_finalizer spec = do
    gl <- askFlextGL
    res <- newResource (return $ Texture_ name)
                       (\_ -> if attach_finalizer
                         then with name $ \ptr -> F.glDeleteTextures 1 ptr gl
                         else return ())
                       (return ())
    index <- liftIO $ atomicModifyIORef' ordIndices $ \old -> ( old+1, old )
    return Texture { resource = res
                   , ordIndex = index
                   , viewSpecification =  spec }

-- | Creates a new texture.
--
-- Initially the contents of the texture are undefined.
--
-- Texture dimensions must be positive.
newTexture :: forall s. TextureSpecification s
           -> Context s (Texture s)
newTexture spec = mask_ $ do
    topologySanityCheck (topology spec)
    when (not (isMultisamplingTopology (topology spec)) &&
          mipmapLevels spec < 1) $
        error "newTexture: mipmapLevels is not positive."

    gl <- askFlextGL
    res <- newResource creator
                       (deleter gl)
                       (return ())

    index <- liftIO $ atomicModifyIORef' ordIndices $ \old -> ( old+1, old )
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

    deleter gl (Texture_ name) =
        with name $ \ptr -> F.glDeleteTextures 1 ptr gl

    creator = do
        gl <- ask
        name <- bracketOnError
            (liftIO $ alloca $ \name_ptr ->
                F.glGenTextures 1 name_ptr gl *> peek name_ptr)
            (liftIO . deleter gl . Texture_)
            (\name -> do
                if has_GL_ARB_texture_storage gl
                  then createByTopologyTexStorage name (topology spec)
                  else createByTopologyFakeTextureStorage name (topology spec)
                return name)
        return (Texture_ name)

    createByTopologyFakeTextureStorage :: GLuint -> Topology s -> Context s ()
    createByTopologyFakeTextureStorage name (Tex1D {..}) = liftFlextGLM $
        fakeTextureStorage1D name
                             gl_TEXTURE_1D
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width1D)
    createByTopologyFakeTextureStorage name (Tex2D {..}) = liftFlextGLM $
        fakeTextureStorage2D name
                             gl_TEXTURE_2D
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width2D)
                             (safeFromIntegral height2D)
    createByTopologyFakeTextureStorage name (Tex3D {..}) = liftFlextGLM $
        fakeTextureStorage3D name
                             gl_TEXTURE_3D
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width3D)
                             (safeFromIntegral height3D)
                             (safeFromIntegral depth3D)
    createByTopologyFakeTextureStorage name (Tex1DArray {..}) = liftFlextGLM $
        fakeTextureStorage2D name
                             gl_TEXTURE_1D_ARRAY
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width1DArray)
                             (safeFromIntegral layers1D)
    createByTopologyFakeTextureStorage name (Tex2DArray {..}) = liftFlextGLM $
        fakeTextureStorage3D name
                             gl_TEXTURE_2D_ARRAY
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral width2DArray)
                             (safeFromIntegral height2DArray)
                             (safeFromIntegral layers2D)
    createByTopologyFakeTextureStorage name tex@(Tex2DMultisample {..}) =
        createByTopologyTexStorage name tex
    createByTopologyFakeTextureStorage name tex@(Tex2DMultisampleArray {..}) =
        createByTopologyTexStorage name tex
    createByTopologyFakeTextureStorage name (TexCube {..}) = liftFlextGLM $
        fakeTextureStorage2D name
                             gl_TEXTURE_CUBE_MAP
                             (safeFromIntegral num_mipmaps)
                             (toConstantIF (imageFormat spec))
                             (safeFromIntegral widthCube)
                             (safeFromIntegral widthCube)
    createByTopologyFakeTextureStorage name tex@(TexBuffer {..}) =
        createByTopologyTexStorage name tex

    -- TODO: use DSA when available, perhaps add mglTextureStorage* functions
    -- to Caramia.Internal.OpenGLCApi?
    createByTopologyTexStorage :: GLuint -> Topology s -> Context s ()
    createByTopologyTexStorage name (Tex1D {..}) =
        withBinding gl_TEXTURE_1D gl_TEXTURE_BINDING_1D name $
            glTexStorage1D gl_TEXTURE_1D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width1D)
    createByTopologyTexStorage name (Tex2D {..}) =
        withBinding gl_TEXTURE_2D gl_TEXTURE_BINDING_2D name $
            glTexStorage2D gl_TEXTURE_2D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width2D)
                           (safeFromIntegral height2D)
    createByTopologyTexStorage name (Tex3D {..}) =
        withBinding gl_TEXTURE_3D gl_TEXTURE_BINDING_3D name $
            glTexStorage3D gl_TEXTURE_3D
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width3D)
                           (safeFromIntegral height3D)
                           (safeFromIntegral depth3D)
    createByTopologyTexStorage name (Tex1DArray {..}) =
        withBinding gl_TEXTURE_1D_ARRAY gl_TEXTURE_BINDING_1D_ARRAY name $
            glTexStorage2D gl_TEXTURE_1D_ARRAY
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width1DArray)
                           (safeFromIntegral layers1D)
    createByTopologyTexStorage name (Tex2DArray {..}) =
        withBinding gl_TEXTURE_2D_ARRAY gl_TEXTURE_BINDING_2D_ARRAY name $
            glTexStorage3D gl_TEXTURE_2D_ARRAY
                           (safeFromIntegral num_mipmaps)
                           (toConstantIF (imageFormat spec))
                           (safeFromIntegral width2DArray)
                           (safeFromIntegral height2DArray)
                           (safeFromIntegral layers2D)
    createByTopologyTexStorage name (Tex2DMultisample {..}) =
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
    createByTopologyTexStorage name (Tex2DMultisampleArray {..}) =
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
    createByTopologyTexStorage name (TexCube {..}) =
        withBinding gl_TEXTURE_CUBE_MAP
                    gl_TEXTURE_BINDING_CUBE_MAP
                    name $
            glTexStorage2D gl_TEXTURE_CUBE_MAP
                           (safeFromIntegral num_mipmaps)
                           (fromIntegral $ toConstantIF (imageFormat spec))
                           (safeFromIntegral widthCube)
                           (safeFromIntegral widthCube)
    createByTopologyTexStorage name (TexBuffer {..}) =
        withBinding gl_TEXTURE_BUFFER
                    gl_TEXTURE_BINDING_BUFFER
                    name $
            withResource (Buf.resource texBuffer) $ \(Buf.Buffer_ bufname) ->
                glTexBuffer gl_TEXTURE_BUFFER
                            (fromIntegral $ toConstantIF (imageFormat spec))
                            bufname

-- | Generate all mipmaps for a texture. If mipmap levels were specified, that
-- is.
generateMipmaps :: Texture s -> Context s ()
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
  deriving ( Eq, Ord, Show, Read, Typeable )

-- TODO: add UDEPTH_STENCIL when `SpecificationType` has special interpretation
-- formats.

toConstantUF :: UploadFormat -> GLenum
toConstantUF UR = gl_RED
toConstantUF URG = gl_RG
toConstantUF URGB = gl_RGB
toConstantUF URGBA = gl_RGBA
toConstantUF UBGR = gl_BGR
toConstantUF UBGRA = gl_BGRA
toConstantUF UDEPTH_COMPONENT = gl_DEPTH_COMPONENT
toConstantUF USTENCIL_INDEX = gl_STENCIL_INDEX

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
data Uploading s = Uploading
    { fromBuffer    :: !(Buf.Buffer s) -- ^ From which buffer to upload.
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
    deriving ( Eq, Ord, Show, Read, Typeable )

toConstantCS :: CubeSide -> GLenum
toConstantCS PositiveX = gl_TEXTURE_CUBE_MAP_POSITIVE_X
toConstantCS NegativeX = gl_TEXTURE_CUBE_MAP_NEGATIVE_X
toConstantCS PositiveY = gl_TEXTURE_CUBE_MAP_POSITIVE_Y
toConstantCS NegativeY = gl_TEXTURE_CUBE_MAP_NEGATIVE_Y
toConstantCS PositiveZ = gl_TEXTURE_CUBE_MAP_POSITIVE_Z
toConstantCS NegativeZ = gl_TEXTURE_CUBE_MAP_NEGATIVE_Z

-- | Constructs a common 1D uploading.
uploading1D :: Buf.Buffer s
            -> Int     -- ^ How many pixels to upload.
            -> SpecificationType
            -> UploadFormat
            -> Uploading s
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
uploading2D :: Buf.Buffer s
            -> Int     -- ^ Width of the image to upload.
            -> Int     -- ^ Height of the image to upload.
            -> SpecificationType
            -> UploadFormat
            -> Uploading s
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
uploading3D :: Buf.Buffer s
            -> Int     -- ^ Width of the image to upload.
            -> Int     -- ^ Height of the image to upload.
            -> Int     -- ^ Number of images to upload.
            -> SpecificationType
            -> UploadFormat
            -> Uploading s
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
uploadToTexture :: Uploading s
                -> Texture s
                -> Context s ()
uploadToTexture uploading tex = mask_ $ do
    st <- contextState
    withResource (Buf.resource (fromBuffer uploading)) $ \(Buf.Buffer_ buf) ->
     liftFlextGLM $ withBoundPixelUnpackBuffer buf $ liftIO $ unsafeResumeContext st $ do
        old_num_cols  <- fromIntegral <$> gi gl_UNPACK_ROW_LENGTH
        old_num_rows  <- fromIntegral <$> gi gl_UNPACK_IMAGE_HEIGHT
        old_alignment <- fromIntegral <$> gi gl_UNPACK_ALIGNMENT
        glPixelStorei gl_UNPACK_ROW_LENGTH
                      (safeFromIntegral $ numColumns uploading)
        flip finally (glPixelStorei gl_UNPACK_ROW_LENGTH old_num_cols) $ do
         glPixelStorei gl_UNPACK_IMAGE_HEIGHT
                       (safeFromIntegral $ numRows uploading)
         flip finally (glPixelStorei gl_UNPACK_IMAGE_HEIGHT old_num_rows) $ do
          glPixelStorei gl_UNPACK_ALIGNMENT
                        (safeFromIntegral $ pixelAlignment uploading)
          flip finally (glPixelStorei gl_UNPACK_ALIGNMENT old_alignment) $
           withResource (resource tex) $ \(Texture_ texname) ->
            case topology $ viewSpecification tex of
                Tex1D {..} ->
                    upload1D gl_TEXTURE_1D gl_TEXTURE_BINDING_1D
                             texname uploading
                Tex2D {..} ->
                    upload2D gl_TEXTURE_2D gl_TEXTURE_BINDING_2D
                             texname uploading
                Tex3D {..} ->
                    upload3D gl_TEXTURE_3D gl_TEXTURE_BINDING_3D
                             texname uploading
                Tex1DArray {..} ->
                    upload2D gl_TEXTURE_1D_ARRAY gl_TEXTURE_BINDING_1D_ARRAY
                             texname uploading
                Tex2DArray {..} ->
                    upload3D gl_TEXTURE_2D_ARRAY gl_TEXTURE_BINDING_2D_ARRAY
                             texname uploading
                Tex2DMultisample {..} ->
                    error $ "uploadToTexture: cannot upload to " <>
                            "multisampling textures."
                Tex2DMultisampleArray {..} ->
                    error $ "uploadToTexture: cannot upload to " <>
                            "multisampling array textures."
                TexCube {..} ->
                    uploadCube gl_TEXTURE_CUBE_MAP
                               gl_TEXTURE_BINDING_CUBE_MAP
                               texname uploading
                TexBuffer {..} ->
                    error $ "uploadToTexture: cannot upload to " <>
                            "buffer textures. (please upload directly to the " <>
                            "associated buffer instead.)"

upload1D :: GLenum -> GLenum -> GLuint -> Uploading s -> Context s ()
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

upload2D :: GLenum -> GLenum -> GLuint -> Uploading s -> Context s ()
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

upload3D :: GLenum -> GLenum -> GLuint -> Uploading s -> Context s ()
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

uploadCube :: GLenum -> GLenum -> GLuint -> Uploading s -> Context s ()
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
  deriving ( Eq, Ord, Show, Read, Typeable )

data MagFilter =
   MaNearest
 | MaLinear
 deriving ( Eq, Ord, Show, Read, Typeable )

data Wrapping =
   Clamp
 | Repeat
 deriving ( Eq, Ord, Show, Read, Typeable )

-- | Texture comparison modes.
--
-- See @ glTexParameteri @ documentation in OpenGL.
data CompareMode
 = NoCompare
 | CompareRefToTexture
 deriving ( Eq, Ord, Show, Read, Typeable )

toConstantC :: CompareMode -> GLenum
toConstantC NoCompare = gl_NONE
toConstantC CompareRefToTexture = gl_COMPARE_REF_TO_TEXTURE

toConstantW :: Wrapping -> GLenum
toConstantW Clamp = gl_CLAMP_TO_EDGE
toConstantW Repeat = gl_REPEAT

instance TexParam MinFilter where
    tpEnum _ = gl_TEXTURE_MIN_FILTER
    tpToConstant MiNearest = gl_NEAREST
    tpToConstant MiLinear  = gl_LINEAR
    tpToConstant MiNearestMipmapNearest = gl_NEAREST_MIPMAP_NEAREST
    tpToConstant MiLinearMipmapNearest = gl_LINEAR_MIPMAP_NEAREST
    tpToConstant MiNearestMipmapLinear = gl_NEAREST_MIPMAP_LINEAR
    tpToConstant MiLinearMipmapLinear = gl_LINEAR_MIPMAP_LINEAR
    tpFromConstant c
        | c == gl_NEAREST = MiNearest
        | c == gl_LINEAR  = MiLinear
        | c == gl_NEAREST_MIPMAP_NEAREST = MiNearestMipmapNearest
        | c == gl_LINEAR_MIPMAP_NEAREST = MiLinearMipmapNearest
        | c == gl_NEAREST_MIPMAP_LINEAR = MiNearestMipmapLinear
        | c == gl_LINEAR_MIPMAP_LINEAR = MiLinearMipmapLinear
        | otherwise = error "MinFilter: unexpected filtering value."

instance TexParam MagFilter where
    tpEnum _ = gl_TEXTURE_MAG_FILTER
    tpToConstant MaNearest = gl_NEAREST
    tpToConstant MaLinear = gl_LINEAR

    tpFromConstant c
        | c == gl_NEAREST = MaNearest
        | c == gl_LINEAR  = MaLinear
        | otherwise = error "MagFilter: unexpected filtering value."

setMinFilter :: MinFilter -> Texture s -> Context s ()
setMinFilter = setTexParam

setMagFilter :: MagFilter -> Texture s -> Context s ()
setMagFilter = setTexParam

getMinFilter :: Texture s -> Context s MinFilter
getMinFilter = getTexParam

getMagFilter :: Texture s -> Context s MagFilter
getMagFilter = getTexParam

setTexParam :: TexParam a => a -> Texture s -> Context s ()
setTexParam param tex = withBindingByTopology tex $ \target ->
    glTexParameteri target (tpEnum param) (fromIntegral $ tpToConstant param)

getTexParam :: forall s a. TexParam a => Texture s -> Context s a
getTexParam tex = withBindingByTopology tex $ \target ->
    ask >>= \gl -> liftIO $ alloca $ \result_ptr -> do
        F.glGetTexParameteriv target (tpEnum (undefined :: a)) result_ptr gl
        tpFromConstant . fromIntegral <$> peek result_ptr

setWrapping :: Wrapping -> Texture s -> Context s ()
setWrapping wrapping tex = withBindingByTopology tex $ \target -> do
    glTexParameteri target gl_TEXTURE_WRAP_S
                        (fromIntegral $ toConstantW wrapping)
    glTexParameteri target gl_TEXTURE_WRAP_T
                        (fromIntegral $ toConstantW wrapping)
    glTexParameteri target gl_TEXTURE_WRAP_R
                        (fromIntegral $ toConstantW wrapping)

setCompareMode :: CompareMode -> Texture s -> Context s ()
setCompareMode cmp_mode tex = withBindingByTopology tex $ \target ->
    glTexParameteri target gl_TEXTURE_COMPARE_MODE
                    (fromIntegral $ toConstantC cmp_mode)

getCompareMode :: Texture s -> Context s CompareMode
getCompareMode tex = withBindingByTopology tex $ \target ->
    ask >>= \gl -> liftIO $ alloca $ \result_ptr -> do
        F.glGetTexParameteriv target gl_TEXTURE_COMPARE_MODE result_ptr gl
        result <- fromIntegral <$> peek result_ptr
        return $ if
            | result == gl_NONE -> NoCompare
            | result == gl_COMPARE_REF_TO_TEXTURE -> CompareRefToTexture
            | otherwise -> error "getCompareMode: unexpected comparing mode."

getWrapping :: Texture s -> Context s Wrapping
getWrapping tex = withBindingByTopology tex $ \target -> do
    ask >>= \gl -> liftIO $ alloca $ \result_ptr -> do
        F.glGetTexParameteriv target gl_TEXTURE_WRAP_S result_ptr gl
        result <- fromIntegral <$> peek result_ptr
        return $ if
            | result == gl_CLAMP_TO_EDGE -> Clamp
            | result == gl_REPEAT -> Repeat
            | otherwise -> error "getWrapping: unexpected wrapping mode."

setAnisotropy :: Float -> Texture s -> Context s ()
setAnisotropy ani tex = withBindingByTopology tex $ \target ->
    glTexParameterf target gl_TEXTURE_MAX_ANISOTROPY_EXT (CFloat ani)

getAnisotropy :: Texture s -> Context s Float
getAnisotropy tex = withBindingByTopology tex $ \target -> do
    gl <- ask
    liftIO $ alloca $ \ani_ptr -> do
        F.glGetTexParameterfv target gl_TEXTURE_MAX_ANISOTROPY_EXT ani_ptr gl
        unwrap <$> peek ani_ptr
  where
    unwrap (CFloat f) = f

{-
nextMipmapLevel :: Int -> Int
nextMipmapLevel 0 = 0
nextMipmapLevel 1 = 1
nextMipmapLevel x = max 1 (x `div` 2)

nthMipmapLevel :: Int -> Int -> Int
nthMipmapLevel x 0 = x
nthMipmapLevel x n = nthMipmapLevel (nextMipmapLevel x) (n-1)
-}

