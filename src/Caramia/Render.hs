-- | Rendering things.
--

{-# LANGUAGE RecordWildCards #-}

module Caramia.Render
    ( 
    -- * The drawing functions
      draw
    -- * Specifying what to draw
    , DrawCommand(..)
    , drawCommand
    , SourceData(..)
    , IndexType(..)
    , Primitive(..)
    , IndexTypeable(..) )
    where

import qualified Caramia.VAO.Internal as VAO
import qualified Caramia.Shader.Internal as Shader
import qualified Caramia.Framebuffer as FBuf
import qualified Caramia.Framebuffer.Internal as FBuf
import qualified Data.IntMap.Strict as IM
import Caramia.Blend
import Caramia.Blend.Internal
import Caramia.Texture
import Caramia.Texture.Internal ( withTextureBinding )
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
--
-- It is recommended to use `drawCommand` instead of this constructor.
data DrawCommand = DrawCommand
    { primitiveType :: Primitive
    , primitivesVAO :: VAO.VAO    -- ^ This is the VAO from which attributes
                                  --   are retrieved in the shader pipeline.
    , numIndices    :: Int        -- ^ How many indices to render?
    , pipeline      :: Shader.Pipeline
                                  -- ^ Which shader pipeline to use.
    , numInstances  :: Int        -- ^ How many instances to render.
    , sourceData    :: SourceData
    , blending      :: BlendSpec  -- ^ Which blending to use.
    -- ^ How to select the attribute data from `primitivesVAO`.
    , targetFramebuffer :: FBuf.Framebuffer
    -- ^ Where do you want to render?
    , bindTextures  :: IM.IntMap Texture
    -- ^ Which textures do you want to bind? The keys in this integer map are
    -- `TextureUnit`s and tell which texture units you want to bind given
    -- textures.
    }

-- | Returns a default draw command.
--
-- Several fields are undefined so you must set them. These are
--
-- * `primitiveType`
-- * `primitivesVAO`
-- * `numIndices`
-- * `pipeline`
-- * `sourceData`
--
-- `numInstances` is set to 1. In future versions if we add any new fields
-- those fields will have a sane default value.
--
-- No textures are bound by default.
--
-- Blending mode is premultiplied alpha by default.
--
-- `targetFramebuffer` is the screen framebuffer by default.
drawCommand :: DrawCommand
drawCommand = DrawCommand
    { primitiveType = error "drawCommand: primitiveType is not set."
    , primitivesVAO = error "drawCommand: primitivesVAO is not set."
    , numIndices    = error "drawCommand: numIndices is not set."
    , pipeline      = error "drawCommand: pipeline is not set."
    , sourceData    = error "drawCommand: sourceData is not set."
    , targetFramebuffer = FBuf.screenFramebuffer
    , blending      = preMultipliedAlpha
    , bindTextures  = IM.empty
    , numInstances  = 1 }
{-# INLINE drawCommand #-}

-- | Values of this type tell how to select attribute data from
-- `primitivesVAO`.
--
-- Future minor versions will not add any new fields or remove any fields from
-- these values. Instead, new constructors are introduced.
data SourceData =
    -- | Simply start from some index and continue from there, 0, 1, 2, etc.
    --
    -- OpenGL equivalent is @ glDrawArrays() @ or @ glDrawArraysInstanced() @.
    Primitives
    { firstIndex :: Int }
    -- | Use an index buffer.
    --
    -- OpenGL equivalent is @ glDrawElements() @ or @ glDrawElementsInstanced()
    -- @. Index buffer contains indices that point to offsets in the vertex
    -- arrays.
  | PrimitivesWithIndices
    { indexBuffer :: Buffer
    , indexOffset :: Int
    , indexType   :: IndexType }

-- | Draws according to a `DrawCommand`.
draw :: DrawCommand -> IO ()
draw (DrawCommand {..})
    -- TODO:
    -- this call has super high overhead. Just look at all these withX
    -- functions and all the OpenGL bindings they do! We could do better if we
    -- used a special structure for tracking state changes that can be
    -- unwrapped to the IO monad to contain those state changes.
    | numIndices == 0 = return ()
    | otherwise = withPipeline pipeline $
    withBlendings blending $
    withBoundTextures bindTextures $
    withResource (VAO.resource primitivesVAO) $ \(VAO.VAO_ vao_name) ->
        withBoundVAO vao_name $
            FBuf.withBinding targetFramebuffer $
            case sourceData of
                Primitives {..} -> do
                    glDrawArraysInstanced
                         (toConstant primitiveType)
                         (safeFromIntegral firstIndex)
                         (safeFromIntegral numIndices)
                         (safeFromIntegral numInstances)
                PrimitivesWithIndices {..} -> do
                    withResource (resource indexBuffer) $
                            \(Buffer_ buf_name) ->
                        withBoundElementBuffer buf_name $
                            glDrawElementsInstanced
                                   (toConstant primitiveType)
                                   (safeFromIntegral numIndices)
                                   (toConstantIT indexType)
                                   (intPtrToPtr $
                                    fromIntegral indexOffset)
                                   (safeFromIntegral numInstances)
-- inline `draw` because it's probably quite common to directly construct
-- `DrawCommand` right there, so we can avoid all sorts of boxing and checking
-- that happens.
{-# INLINE draw #-}

withBoundTextures :: IM.IntMap Texture -> IO a -> IO a
withBoundTextures (IM.assocs -> bindings) action = rec bindings
  where
    rec [] = action
    rec ((unit, tex):rest) =
        withTextureBinding tex unit $ rec rest

withPipeline :: Shader.Pipeline -> IO a -> IO a
withPipeline pipeline action =
    withResource (Shader.resourcePL pipeline) $ \(Shader.Pipeline_ program) ->
        withBoundProgram program action
{-# INLINE withPipeline #-}

