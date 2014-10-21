-- | Rendering things.
--

{-# LANGUAGE RecordWildCards, GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ViewPatterns, NoImplicitPrelude, DeriveDataTypeable #-}

module Graphics.Caramia.Render
    ( 
    -- * The drawing functions
      draw
    , runDraws
    -- * Draw command stream
    , Draw()
    , drawR
    , setPipeline
    , setTextureBindings
    , setBlending
    , setTargetFramebuffer
    , setFragmentPassTests
    , setPolygonOffset
    -- * Specifying what to draw
    , DrawCommand(..)
    , drawCommand
    , DrawParams(..)
    , defaultDrawParams
    , SourceData(..)
    , IndexType(..)
    , Primitive(..)
    , IndexTypeable(..)
    -- * Fragment pass tests
    , FragmentPassTests(..)
    , defaultFragmentPassTests
    , ComparisonFunc(..)
    , StencilOp(..)
    , Culling(..) )
    where

import Graphics.Caramia.Prelude

import qualified Graphics.Caramia.VAO.Internal as VAO
import qualified Graphics.Caramia.Shader.Internal as Shader
import qualified Graphics.Caramia.Framebuffer as FBuf
import qualified Graphics.Caramia.Framebuffer.Internal as FBuf
import qualified Graphics.Caramia.Texture.Internal as Texture
import qualified Data.IntMap.Strict as IM
import Graphics.Caramia.Render.Internal hiding ( setFragmentPassTests )
import qualified Graphics.Caramia.Render.Internal as I
import Graphics.Caramia.Blend
import Graphics.Caramia.Blend.Internal
import Graphics.Caramia.Texture
import Graphics.Caramia.Texture.Internal ( withTextureBinding )
import Graphics.Caramia.Resource
import Graphics.Caramia.Buffer.Internal
import Graphics.Caramia.Internal.OpenGLCApi
import Control.Monad.IO.Class
import Control.Monad.Trans.State.Strict
import Control.Exception
import Foreign
import Foreign.C.Types

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

-- | Contains drawing parameters.
--
-- You can use `defaultDrawParams` to obtain default draw parameters.
data DrawParams = DrawParams
    {
      pipeline      :: Shader.Pipeline
    -- ^ Which shader pipeline to use.
    , fragmentPassTests :: !FragmentPassTests
    -- ^ What kind of fragment pass tests to use.
    , blending      :: BlendSpec  -- ^ Which blending to use.
    , targetFramebuffer :: FBuf.Framebuffer
    -- ^ Where do you want to render?
    , bindTextures  :: IM.IntMap Texture
    -- ^ Which textures do you want to bind? The keys in this integer map are
    -- `TextureUnit`s and tell which texture units you want to bind given
    -- textures.
    , polygonOffset :: !(Float, Float)
    -- ^ Modify the depth values that are being written.
    --
    -- @ (factor, units) @.
    --
    -- By default this is (0, 0) (that is, do nothing). See @ glPolygonOffset @
    -- for the meaning of these values.
    }
    deriving ( Eq, Typeable )

-- | Default drawing parameters.
--
-- `pipeline` is not set (that is, it's undefined). You must set it.
--
-- No textures are bound.
--
-- Blending mode is premultiplied alpha.
--
-- `targetFramebuffer` is the screen framebuffer.
defaultDrawParams :: DrawParams
defaultDrawParams = DrawParams {
    pipeline = error "defaultDrawParams: pipeline is not set."
  , fragmentPassTests = defaultFragmentPassTests
  , blending = preMultipliedAlpha
  , bindTextures = IM.empty
  , targetFramebuffer = FBuf.screenFramebuffer
  , polygonOffset = (0, 0) }

-- | Contains a specification of what to draw.
--
-- It is recommended to use `drawCommand` instead of this constructor.
data DrawCommand = DrawCommand
    { primitiveType :: Primitive
    , primitivesVAO :: VAO.VAO    -- ^ This is the VAO from which attributes
                                  --   are retrieved in the shader pipeline.
    , numIndices    :: Int        -- ^ How many indices to render?
    , numInstances  :: Int        -- ^ How many instances to render.
    , sourceData    :: SourceData
    -- ^ How to select the attribute data from `primitivesVAO`.
    }
    deriving ( Eq, Typeable )

-- | Returns a default draw command.
--
-- Several fields are undefined so you must set them. These are
--
-- * `primitiveType`
-- * `primitivesVAO`
-- * `numIndices`
-- * `sourceData`
--
-- `numInstances` is set to 1. In future (minor) versions if we add any new
-- fields those fields will have a sane default value.
drawCommand :: DrawCommand
drawCommand = DrawCommand
    { primitiveType = error "drawCommand: primitiveType is not set."
    , primitivesVAO = error "drawCommand: primitivesVAO is not set."
    , numIndices    = error "drawCommand: numIndices is not set."
    , sourceData    = error "drawCommand: sourceData is not set."
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
  deriving ( Eq, Ord, Typeable )

-- | Draws according to a `DrawCommand`.
--
-- There is a very large overhead in doing a single `draw` call. You probably
-- want to use `runDraws` and `drawR` instead.
draw :: DrawCommand -> DrawParams -> IO ()
draw cmd params = runDraws params (drawR cmd)

-- | Same as `draw` but in a `Draw` command stream.
drawR :: DrawCommand -> Draw ()
drawR (DrawCommand {..})
    | numIndices == 0 = return ()
    | otherwise = Draw $ do
    old_ebo <- boundEbo <$> get
    liftIO $
        withResource (VAO.resource primitivesVAO) $ \(VAO.VAO_ vao_name) ->
        withBoundVAO vao_name $
            case sourceData of
                Primitives {..} ->
                    glDrawArraysInstanced
                         (toConstant primitiveType)
                         (safeFromIntegral firstIndex)
                         (safeFromIntegral numIndices)
                         (safeFromIntegral numInstances)
                PrimitivesWithIndices {..} ->
                    withResource (resource indexBuffer) $
                            \(Buffer_ buf_name) -> do
                        when (buf_name /= old_ebo) $
                            setBoundElementBuffer buf_name
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

-- We use a state to keep track of what we have bound. Why? For garbage
-- collection! If we don't keep references, it's possible things get garbage
-- collected under our feet because `runDraws` might have bound resources in
-- OpenGL with no Haskell values pointing to them.
data DrawState = DrawState
    { boundPipeline :: !Shader.Pipeline
    , boundEbo :: !GLuint
    , boundTextures :: !(IM.IntMap Texture)
    , boundBlending :: !BlendSpec
    , boundFramebuffer :: !FBuf.Framebuffer
    , boundFragmentPassTests :: !FragmentPassTests
    , activeTexture :: !GLuint }

newtype Draw a = Draw (StateT DrawState IO a)
                 deriving ( Monad, Applicative, Functor, Typeable )

-- | Using `liftIO` is safe inside a `Draw` stream. It is possible to run
-- nested `Draw` streams this way as well.
--
-- One useful thing to do is to set uniforms to pipelines with `setUniform`.
instance MonadIO Draw where
    liftIO = Draw . liftIO

-- | Runs a drawing specification.
--
-- You can think of this as running many `draw` commands with similar draw
-- command specifications. This call is an optimization to `draw` which has a
-- high overhead by itself.
--
-- Another way to think of this is a place where the functional, \"no hidden
-- state\" design of the Caramia API is relaxed inside the `Draw` stream.
runDraws :: DrawParams      -- ^ Initial drawing parameters. These can be
                            --   changed in the `Draw` command stream.
         -> Draw a          -- ^ Draw command stream.
         -> IO a
runDraws params (Draw cmd_stream) =
    withParams params $ do
        (result, st) <-
            runStateT cmd_stream DrawState
                { boundPipeline = pipeline params
                , boundFragmentPassTests = fragmentPassTests params
                , boundEbo = 0
                , boundBlending = blending params
                , boundFramebuffer = targetFramebuffer params
                , boundTextures = bindTextures params
                , activeTexture = 0
                }
        st `seq` return result

withParams :: DrawParams -> IO a -> IO a
withParams (DrawParams {..}) action =
    FBuf.withBinding targetFramebuffer $
    withPipeline pipeline $
    withFragmentPassTests fragmentPassTests $
    withBlendings blending $
    withBoundTextures bindTextures $
    withBoundElementBuffer 0 $
    withPolygonOffset polygonOffset $ do
        old_active <- gi gl_ACTIVE_TEXTURE
        -- Framebuffer may not restore the viewport so we have to do it here.
        allocaArray 4 $ \viewport_ptr -> do
            glGetIntegerv gl_VIEWPORT viewport_ptr
            ox <- peekElemOff viewport_ptr 0
            oy <- peekElemOff viewport_ptr 1
            ow <- peekElemOff viewport_ptr 2
            oh <- peekElemOff viewport_ptr 3
            finally (glActiveTexture gl_TEXTURE0 *>
                    action)
                    (glActiveTexture old_active *>
                     glViewport ox oy ow oh)

withPolygonOffset :: (Float, Float) -> IO a -> IO a
withPolygonOffset (factor, units) action = do
    old_factor <- gf gl_POLYGON_OFFSET_FACTOR
    old_units <- gf gl_POLYGON_OFFSET_UNITS
    finally (do glPolygonOffset (CFloat factor) (CFloat units)
                action) $
        glPolygonOffset old_factor old_units

-- | Sets the active texture (not public API! What would they use this for
-- anyway?).
setActiveTexture :: GLuint -> Draw ()
setActiveTexture unit = Draw $ do
    old_active <- activeTexture <$> get
    when (old_active /= unit) $
        liftIO (glActiveTexture $ gl_TEXTURE0 + unit) *>
        modify (\old -> old { activeTexture = unit })

-- | Sets new texture bindings.
setTextureBindings :: IM.IntMap Texture -> Draw ()
setTextureBindings texes = do
    old_texes <- Draw $ boundTextures <$> get
    -- Iterate over the old bindings.
    for_ (IM.assocs old_texes) $ \(index, tex) ->
        case IM.lookup index texes of
            -- A texture was bound previously, new bindings don't bind the
            -- texture at this unit.
            Nothing -> setActiveTexture (safeFromIntegral index) *>
                let (bind_target, _) =
                        Texture.getTopologyBindPoints $
                        topology $ viewSpecification tex
                 in liftIO $ glBindTexture bind_target 0
            -- A texture was bound previously, new bindings also bind some
            -- texture here.
            Just new_tex -> do
                old_name <-
                    liftIO $ withResource (Texture.resource tex) $
                        \(Texture.Texture_ old_name) -> return old_name
                name <-
                    liftIO $ withResource (Texture.resource new_tex) $
                        \(Texture.Texture_ name) -> return name
                -- Only bind if the texture changed.
                when (name /= old_name) $ do
                    setActiveTexture (safeFromIntegral index)
                    let (bind_target, _) =
                            Texture.getTopologyBindPoints $
                            topology $ viewSpecification new_tex
                        in liftIO $ glBindTexture bind_target name
    -- Iterate over new bindings. We need to only check those that were not
    -- part of the old bindings.
    for_ (IM.assocs texes) $ \(index, tex) ->
        case IM.lookup index old_texes of
            Just _ -> pure ()   -- already handled in the above for_
            Nothing -> do
                name <- liftIO $ withResource (Texture.resource tex) $
                            \(Texture.Texture_ name) -> return name
                setActiveTexture (safeFromIntegral index)
                let (bind_target, _) =
                        Texture.getTopologyBindPoints $
                        topology $ viewSpecification tex
                 in liftIO $ glBindTexture bind_target name

    Draw $ modify (\old -> old { boundTextures = texes })

-- | Changes the pipeline in a `Draw` command stream.
setPipeline :: Shader.Pipeline -> Draw ()
setPipeline pl = Draw $ do
    old_pl <- boundPipeline <$> get
    when (old_pl /= pl) $ do
        liftIO $ withResource (Shader.resourcePL pl) $
            \(Shader.Pipeline_ program) ->
                setBoundProgram program
        modify (\old -> old { boundPipeline = pl })
{-# INLINE setPipeline #-}

-- | Changes the current blending mode.
setBlending :: BlendSpec -> Draw ()
setBlending blends = Draw $ do
    old_blending <- boundBlending <$> get
    when (blends /= old_blending) $ do
        liftIO $ setBlendings blends
        modify (\old -> old { boundBlending = blends })
{-# INLINE setBlending #-}

-- | Sets the new fragment pass tests.
setFragmentPassTests :: FragmentPassTests -> Draw ()
setFragmentPassTests tests = Draw $ do
    old_tests <- boundFragmentPassTests <$> get
    when (old_tests /= tests) $ do
        liftIO $ I.setFragmentPassTests tests
        modify (\old -> old { boundFragmentPassTests = tests })
{-# INLINE setFragmentPassTests #-}

-- | Sets polygon offset.
setPolygonOffset :: Float -> Float -> Draw ()
setPolygonOffset factor units = Draw $
    liftIO $ glPolygonOffset (CFloat factor) (CFloat units)

-- | Sets the current framebuffer.
setTargetFramebuffer :: FBuf.Framebuffer -> Draw ()
setTargetFramebuffer fbuf = Draw $ do
    old_fbuf <- boundFramebuffer <$> get
    when (old_fbuf /= fbuf) $ do
        liftIO $ FBuf.setBinding fbuf
        modify (\old -> old { boundFramebuffer = fbuf })
{-# INLINE setTargetFramebuffer #-}

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
