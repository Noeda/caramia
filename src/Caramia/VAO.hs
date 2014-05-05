-- | Vertex array objects, or VAOs as we abbreviate them.
--
-- These are used to specify how data in a `Caramia.Buffer.Buffer` is made
-- available in a shader program.
--
-- <https://www.opengl.org/wiki/Vertex_Array_Object>
--

module Caramia.VAO
    ( -- * Creation
      newVAO
    , VAO()
      -- * Sourcing
    , sourceVertexData
    , Sourcing(..)
    , defaultSourcing
    , defaultSourcingType
      -- * Sourceable types
    , SourceableType(..)
    , SourceType(..)
    , sourceTypeSize )
    where

import Caramia.Prelude

import Caramia.VAO.Internal
import Caramia.Resource
import qualified Caramia.Buffer.Internal as Buf
import Caramia.Internal.OpenGLCApi
import Control.Exception

-- | Creates a vertex array object.
--
-- Initially, the vertex array object makes no data available to a shader
-- program.
newVAO :: IO VAO
newVAO = mask_ $ do
    res <- newResource create
                       (\(VAO_ vao) -> mglDeleteVertexArray vao)
                       (return ())
    ref <- newIORef []
    return VAO { resource = res
               , boundBuffers = ref }
  where
    create = VAO_ <$> mglGenVertexArray

-- | Types allowed for sourcing.
--
-- These are mostly Haskell types except for `SHalfFloat` which has no Haskell
-- equivalent.
data SourceType =
     SWord8
   | SWord16
   | SWord32
   | SInt8
   | SInt16
   | SInt32
   | SHalfFloat   -- ^ 16-bit floating point value.
   | SFloat
   | SDouble
   deriving ( Eq, Ord, Show, Read )

-- | This returns the size of a `SourceType`, in bytes.
sourceTypeSize :: SourceType -> Int
sourceTypeSize SWord8 = 1
sourceTypeSize SWord16 = 2
sourceTypeSize SWord32 = 4
sourceTypeSize SInt8 = 1
sourceTypeSize SInt16 = 2
sourceTypeSize SInt32 = 4
sourceTypeSize SHalfFloat = 2
sourceTypeSize SFloat = 4
sourceTypeSize SDouble = 8

isIntegerType :: SourceType -> Bool
isIntegerType SWord8 = True
isIntegerType SWord16 = True
isIntegerType SWord32 = True
isIntegerType SInt8 = True
isIntegerType SInt16 = True
isIntegerType SInt32 = True
isIntegerType SHalfFloat = False
isIntegerType SFloat = False
isIntegerType SDouble = False

toConstant :: SourceType -> GLenum
toConstant SWord8 = gl_UNSIGNED_BYTE
toConstant SWord16 = gl_UNSIGNED_SHORT
toConstant SWord32 = gl_UNSIGNED_INT
toConstant SInt8 = gl_BYTE
toConstant SInt16 = gl_SHORT
toConstant SInt32 = gl_INT
toConstant SHalfFloat = gl_HALF_FLOAT
toConstant SFloat = gl_FLOAT
toConstant SDouble = gl_DOUBLE

-- | Class of types that are valid for sourcing data.
--
-- This is a convenience class to turn Haskell types to `SourceType`.
class SourceableType a where
    -- ^ Reify the type to a compatible `SourceType`.
    reifyType :: a -> SourceType

instance SourceableType Word8 where
    reifyType _ = SWord8

instance SourceableType Word16 where
    reifyType _ = SWord16

instance SourceableType Word32 where
    reifyType _ = SWord32

instance SourceableType Int8 where
    reifyType _ = SInt8

instance SourceableType Int16 where
    reifyType _ = SInt16

instance SourceableType Int32 where
    reifyType _ = SInt32

instance SourceableType Float where
    reifyType _ = SFloat

instance SourceableType Double where
    reifyType _ = SDouble

-- | Specifies how to source data.
--
-- For forward compatibility, you might want to use `defaultSourcing` or
-- `defaultSourcingType` and then set the fields that are of interest to you.
data Sourcing = Sourcing
    { offset :: Int
    -- ^ Offset, in bytes, at which point from buffer to start sourcing.
    , attributeIndex :: Int
    -- ^ Which attribute index in a shader program to source this data. See
    -- `Caramia.Shader` on attributes.
    , components :: Int
    -- ^ Number of components in one piece of data (that is, per vertex).
    -- This must be an integer between 1 and 4.
    , stride :: Int
    -- ^ How many bytes there are between pieces of data. Because of OpenGL
    -- inconsistencies behind the scenes, 0 means the data is tightly packed,
    -- that is, @ stride = components * sizeOf sourceType @
    , normalize :: Bool
    -- ^ This only applies when an integer type is used in `sourceType` and
    -- `integerMapping` is false.  It determines whether integer values should
    -- be normalized.
    --
    -- Normalization maps the integer value to [-1..1] or [0..1] range. For
    -- example, if you use `Word16` as the type parameter, then 0 is mapped to
    -- 0.0 and 65535 is mapped to 1.0. Signed types (for example, `Int16`) are
    -- mapped to [-1..1] instead so for `Int16` 32767 is mapped to 1 and -32768
    -- is mapped to -1.
    --
    -- This value is ignored and unevaluated for types that are one of the
    -- floating point types.
    , integerMapping :: Bool
    -- ^ Don't convert integers to floats in any way. Normally integers are
    -- converted to floating point. If this is set, then `normalize` is ignored
    -- and not evalutated.
    , instancingDivisor :: Int
    -- ^ When doing instanced rendering (`Caramia.Render.numInstances` > 1),
    -- this value tells how many instances must be rendered before the
    -- attribute from this source advances.
    --
    -- If zero (the default) then the attribute is advanced after every vertex.
    --
    -- You can look up @ glVertexAttribDivisor @ from OpenGL to find more
    -- information about this.
    , sourceType :: SourceType
    -- ^ The data type of values in the buffer. It tells the type of a single
    -- component.
    }

-- | The default sourcing.
--
-- Offset and stride are set to 0.
--
-- At the very least you must set `components` and `attributeIndex`.
--
-- You must also set `normalize`, `integerMapping` and `sourceType` in a
-- consistent way. See `Sourcing`.
defaultSourcing :: Sourcing
defaultSourcing = Sourcing
    { offset = 0
    , components =
        error "defaultSourcing: number of components is not set."
    , stride = 0
    , instancingDivisor = 0
    , attributeIndex =
        error "defaultSourcing: attribute index is not set."
    , integerMapping =
        error "defaultSourcing: whether to do integer mapping is not set."
    , normalize =
        error "defaultSourcing: normalize is not set for an integer type."
    , sourceType =
        error "defaultSourcing: source type is not set." }

-- | Same as `defaultSourcing` but sets `sourceType` according to a Haskell
-- type.
defaultSourcingType :: SourceableType a
                    => a   -- ^ Used to pass the type; not evaluated.
                    -> Sourcing
defaultSourcingType x =
    defaultSourcing { sourceType = reifyType x }

-- | Specifies that some data from a buffer should be sourced for each vertex.
--
-- The vertex array object retains a reference to the buffer which means it
-- will not be garbage collected as long as the VAO remains active.
--
-- Consequences are undefined if your `Sourcing` does not make sense. There is
-- some error checking but it can only detect obviously invalid values in the
-- sourcing.
sourceVertexData :: Buf.Buffer   -- ^ From which buffer to source the data.
                 -> Sourcing     -- ^ Specifies how the sourcing is done.
                 -> VAO
                 -> IO ()
sourceVertexData buffer sourcing vao = mask_ $
    withResource (resource vao) $ \(VAO_ name) -> do
        withResource (Buf.resource buffer) $ \(Buf.Buffer_ bufname) -> do
            errorChecking

            if isIntegerType stype && integerMapping sourcing
              then doIntegerMapping name bufname
              else doOrdinaryMapping name bufname

            glVertexAttribDivisor
                (safeFromIntegral $ attributeIndex sourcing)
                (safeFromIntegral $ instancingDivisor sourcing)

            atomicModifyIORef' (boundBuffers vao) $ \old ->
                ( addIfNotUnique buffer old, () )
  where
    addIfNotUnique new old =
        maybe (new:old)
              (\_ -> old)
              (find ((==) new) old)

    stype = sourceType sourcing
    ncomponents = components sourcing

    doIntegerMapping name bufname =
        mglVertexArrayVertexAttribIOffsetAndEnable
            name
            bufname
            (safeFromIntegral $ attributeIndex sourcing)
            (safeFromIntegral ncomponents)
            (toConstant stype)
            (safeFromIntegral $ stride sourcing)
            (safeFromIntegral $ offset sourcing)

    doOrdinaryMapping name bufname =
        mglVertexArrayVertexAttribOffsetAndEnable
            name
            bufname
            (safeFromIntegral $ attributeIndex sourcing)
            (safeFromIntegral ncomponents)
            (toConstant stype)
            (fromIntegral $ if isIntegerType stype && normalize sourcing
                              then gl_TRUE
                              else gl_FALSE)
            (safeFromIntegral $ stride sourcing)
            (safeFromIntegral $ offset sourcing)

    errorChecking = do
        when (isIntegerType stype) $
            unless (integerMapping sourcing) $
                let x = normalize sourcing
                 in x `seq` return ()

        attributeIndex sourcing `seq` return ()
        when (stride sourcing < 0) $
            error "sourceVertexData: stride is negative."
        when (offset sourcing < 0) $
            error "sourceVertexData: offset is negative."
        when (ncomponents < 1 ||
              ncomponents > 4) $ error $
            "sourceVertexData: number of components must be between " <>
            "1 and 4. I was given " <> show ncomponents

