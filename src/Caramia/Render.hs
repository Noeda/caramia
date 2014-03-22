-- | Rendering things.
--

{-# LANGUAGE RecordWildCards #-}

module Caramia.Render
    ( 
    -- * The drawing functions
      draw
    -- * Specifying what to draw
    , DrawCommand(..)
    , SourceData(..)
    , IndexType(..)
    , Primitive(..)
    , IndexTypeable(..) )
    where

import qualified Caramia.VAO.Internal as VAO
import qualified Caramia.Shader.Internal as Shader
import Caramia.Resource
import Caramia.Buffer.Internal
import Caramia.Internal.OpenGLCApi
import Caramia.Internal.Safe
import Foreign.Ptr
import Foreign.C.Types
import Data.Word

-- | The different types of primitives you can use for rendering.
--
-- <https://www.opengl.org/wiki/Primitive>
data Primitive =
    Triangles
  | TriangleStrip
  | TriangleFan
  | Points
  | Lines
  | LineStrip
  | LineLoop
  | LinesAdjacency
  | LineStripAdjacency
  | TriangleStripAdjacency
  | TrianglesAdjacency
  deriving ( Eq, Ord, Show, Read )

toConstant :: Primitive -> GLenum
toConstant Triangles = gl_TRIANGLES
toConstant TriangleStrip = gl_TRIANGLE_STRIP
toConstant TriangleFan = gl_TRIANGLE_FAN
toConstant Points = gl_POINTS
toConstant Lines = gl_LINES
toConstant LineStrip = gl_LINE_STRIP
toConstant LineLoop = gl_LINE_LOOP
toConstant LinesAdjacency = gl_LINES_ADJACENCY
toConstant LineStripAdjacency = gl_LINE_STRIP_ADJACENCY
toConstant TriangleStripAdjacency = gl_TRIANGLE_STRIP_ADJACENCY
toConstant TrianglesAdjacency = gl_TRIANGLES_ADJACENCY

-- | The type of indices in an index buffer. See `indexBuffer`.
data IndexType =
    IWord32
  | IWord16
  | IWord8
    deriving ( Eq, Ord, Show, Read )

toConstantIT :: IndexType -> GLenum
toConstantIT IWord32 = gl_UNSIGNED_INT
toConstantIT IWord16 = gl_UNSIGNED_SHORT
toConstantIT IWord8 = gl_UNSIGNED_BYTE

class IndexTypeable a where
    -- | Turns a Haskell type to `IndexType`.
    toIndexType :: a    -- ^ Used to pass the type, not evaluated.
                -> IndexType

instance IndexTypeable Word32 where
    toIndexType _ = IWord32

instance IndexTypeable Word16 where
    toIndexType _ = IWord16

instance IndexTypeable Word8 where
    toIndexType _ = IWord8

instance IndexTypeable CUInt where
    toIndexType _ = IWord32

instance IndexTypeable CUShort where
    toIndexType _ = IWord16

instance IndexTypeable CUChar where
    toIndexType _ = IWord8

-- | Contains a specification of what to draw.
data DrawCommand = DrawCommand
    { primitiveType :: Primitive
    , primitivesVAO :: VAO.VAO    -- ^ This is the VAO from which attributes
                                  --   are retrieved in the shader pipeline.
    , numIndices    :: Int        -- ^ How many indices to render?
    , pipeline      :: Shader.Pipeline
                                  -- ^ Which shader pipeline to use.
    , sourceData    :: SourceData
    -- ^ How to select the attribute data from `primitivesVAO`.
    }

-- | Values of this type tell how to select attribute data from
-- `primitivesVAO`.
data SourceData =
    -- | Simply start from some index and continue from there, 0, 1, 2, etc.
    --
    -- OpenGL equivalent is @ glDrawArrays() @.
    Primitives
    { firstIndex :: Int }
    -- | Use an index buffer.
    --
    -- OpenGL equivalent is @ glDrawElements() @. Index buffer contains indices
    -- that point to offsets in the vertex arrays.
  | PrimitivesWithIndices
    { indexBuffer :: Buffer
    , indexOffset :: Int
    , indexType   :: IndexType }

-- | Draws according to a `DrawCommand`.
draw :: DrawCommand -> IO ()
draw (DrawCommand {..})
    | numIndices == 0 = return ()
    | otherwise = withPipeline pipeline $
    withResource (VAO.resource primitivesVAO) $ \(VAO.VAO_ vao_name) ->
        withBoundVAO vao_name $
            case sourceData of
                Primitives {..} -> do
                    glDrawArrays (toConstant primitiveType)
                                 (safeFromIntegral firstIndex)
                                 (safeFromIntegral numIndices)
                PrimitivesWithIndices {..} -> do
                    withResource (resource indexBuffer) $
                            \(Buffer_ buf_name) ->
                        withBoundElementBuffer buf_name $
                            glDrawElements (toConstant primitiveType)
                                           (safeFromIntegral numIndices)
                                           (toConstantIT indexType)
                                           (intPtrToPtr $
                                            fromIntegral indexOffset)
-- inline `draw` because it's probably quite common to directly construct
-- `DrawCommand` right there, so we can avoid all sorts of boxing and checking
-- that happens.
{-# INLINE draw #-}

withPipeline :: Shader.Pipeline -> IO a -> IO a
withPipeline pipeline action =
    withResource (Shader.resourcePL pipeline) $ \(Shader.Pipeline_ program) ->
        withBoundProgram program action
{-# INLINE withPipeline #-}

