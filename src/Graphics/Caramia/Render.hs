-- | Rendering things.
--

{-# LANGUAGE RecordWildCards, GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ViewPatterns, NoImplicitPrelude, DeriveDataTypeable #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE CPP #-}

module Graphics.Caramia.Render
    ( 
    -- * The drawing functions
      draw
    , runDraws
    -- * Draw command stream
    , DrawT()
    , Draw
    , drawR
    , setBlending
    , setFragmentPassTests
    , setPipeline
    , setPolygonOffset
    , setPrimitiveRestart
    , setTargetFramebuffer
    , setTextureBindings
    -- ** Hoisting
    , hoistDrawT
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

import Control.Monad.Cont.Class
import Control.Monad.Error.Class
import Control.Monad.Reader.Class
import Control.Monad.RWS.Class

import Control.Monad.Trans.Class
import Control.Monad.IO.Class
import Control.Monad.Catch
import Control.Monad.State.Strict hiding ( forM_, sequence_ )
import qualified Data.IntMap.Strict as IM
import Foreign
import Foreign.C.Types
import Graphics.Caramia.Blend
import Graphics.Caramia.Blend.Internal
import Graphics.Caramia.Buffer.Internal
import qualified Graphics.Caramia.Framebuffer as FBuf
import qualified Graphics.Caramia.Framebuffer.Internal as FBuf
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Internal.Exception
import Graphics.Caramia.OpenGLResource ( touch )
import Graphics.Caramia.Prelude
import Graphics.Caramia.Render.Internal hiding ( setFragmentPassTests )
import qualified Graphics.Caramia.Render.Internal as I
import Graphics.Caramia.Resource
import qualified Graphics.Caramia.Shader.Internal as Shader
import Graphics.Caramia.Texture
import qualified Graphics.Caramia.Texture.Internal as Texture
import Graphics.Caramia.Texture.Internal ( withTextureBinding )
import qualified Graphics.Caramia.VAO.Internal as VAO
import Graphics.GL.Ext.NV.PrimitiveRestart
import Graphics.GL.Ext.ARB.DrawInstanced

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
  deriving ( Eq, Ord, Show, Read, Typeable, Enum )

toConstant :: Primitive -> GLenum
toConstant Triangles = GL_TRIANGLES
toConstant TriangleStrip = GL_TRIANGLE_STRIP
toConstant TriangleFan = GL_TRIANGLE_FAN
toConstant Points = GL_POINTS
toConstant Lines = GL_LINES
toConstant LineStrip = GL_LINE_STRIP
toConstant LineLoop = GL_LINE_LOOP
toConstant LinesAdjacency = GL_LINES_ADJACENCY
toConstant LineStripAdjacency = GL_LINE_STRIP_ADJACENCY
toConstant TriangleStripAdjacency = GL_TRIANGLE_STRIP_ADJACENCY
toConstant TrianglesAdjacency = GL_TRIANGLES_ADJACENCY

-- | The type of indices in an index buffer. See `indexBuffer`.
data IndexType =
    IWord32
  | IWord16
  | IWord8
    deriving ( Eq, Ord, Show, Read, Typeable, Enum )

toConstantIT :: IndexType -> GLenum
toConstantIT IWord32 = GL_UNSIGNED_INT
toConstantIT IWord16 = GL_UNSIGNED_SHORT
toConstantIT IWord8 = GL_UNSIGNED_BYTE

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
    , primitiveRestart :: !(Maybe Word32)
    -- ^ Use primitive restart?
    --
    -- <https://www.opengl.org/wiki/Vertex_Rendering#Primitive_Restart>
    --
    -- Is this is `Nothing` (the default) then primitive restart will not be
    -- used.
    }
    deriving ( Eq, Ord, Typeable )

-- | Default drawing parameters.
--
-- `pipeline` is not set (that is, it's undefined). You must set it.
--
-- No textures are bound.
--
-- Blending mode is premultiplied alpha.
--
-- No primitive restart is used.
--
-- `targetFramebuffer` is the screen framebuffer.
defaultDrawParams :: DrawParams
defaultDrawParams = DrawParams {
    pipeline = error "defaultDrawParams: pipeline is not set."
  , fragmentPassTests = defaultFragmentPassTests
  , blending = preMultipliedAlpha
  , bindTextures = IM.empty
  , targetFramebuffer = FBuf.screenFramebuffer
  , polygonOffset = (0, 0)
  , primitiveRestart = Nothing }

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
    deriving ( Eq, Ord, Typeable )

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
draw :: (MonadIO m, MonadMask m) => DrawCommand -> DrawParams -> m ()
draw cmd params = runDraws params (drawR cmd)

-- | Same as `draw` but in a `Draw` command stream.
drawR :: (MonadIO m, MonadMask m) => DrawCommand -> DrawT m ()
drawR (DrawCommand {..})
    | numIndices == 0 = return ()
    | otherwise = DrawT $ do
    state <- get
    liftIO $
        withResource (VAO.resource primitivesVAO) $ \(VAO.VAO_ vao_name) ->
        withBoundVAO vao_name $
            case sourceData of
                Primitives {..} ->
                    if gl_ARB_draw_instanced
                     then glDrawArraysInstancedARB
                           (toConstant primitiveType)
                           (safeFromIntegral firstIndex)
                           (safeFromIntegral numIndices)
                           (safeFromIntegral numInstances)
                     else if numInstances == 1
                            then glDrawArrays
                                 (toConstant primitiveType)
                                 (safeFromIntegral firstIndex)
                                 (safeFromIntegral numIndices)
                            else nosupport
                PrimitivesWithIndices {..} ->
                    withResource (resource indexBuffer) $
                            \(Buffer_ buf_name) -> do
                        when (buf_name /= boundEbo state) $
                            setBoundElementBuffer buf_name
                        if gl_ARB_draw_instanced
                          then glDrawElementsInstanced
                                (toConstant primitiveType)
                                (safeFromIntegral numIndices)
                                (toConstantIT indexType)
                                (intPtrToPtr $
                                fromIntegral indexOffset)
                                (safeFromIntegral numInstances)
                          else if numInstances == 1
                                 then glDrawElements
                                        (toConstant primitiveType)
                                        (safeFromIntegral numIndices)
                                        (toConstantIT indexType)
                                        (intPtrToPtr $
                                        fromIntegral indexOffset)
                                 else nosupport
  where
    nosupport = throwM $ NoSupport $
                "Instanced rendering requires GL_ARB_draw_instanced."

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
    , restoreTextures :: !(IM.IntMap (DrawT IO ()))
    , boundBlending :: !BlendSpec
    , boundFramebuffer :: !FBuf.Framebuffer
    , boundFragmentPassTests :: !FragmentPassTests
    , boundPrimitiveRestart :: !(Maybe Word32)
    , activeTexture :: !GLuint }
    deriving ( Typeable )

newtype DrawT m a = DrawT (StateT DrawState m a)
                    deriving ( Monad, Applicative, Functor, Typeable )

deriving instance MonadCont m => MonadCont (DrawT m)
deriving instance MonadError e m => MonadError e (DrawT m)
deriving instance MonadReader r m => MonadReader r (DrawT m)
deriving instance MonadRWS r w s m => MonadRWS r w s (DrawT m)
deriving instance MonadWriter w m => MonadWriter w (DrawT m)

type Draw = DrawT IO

-- | Using `liftIO` is safe inside a `DrawT` stream. It is possible to run
-- nested `DrawT` streams this way as well.
instance MonadIO m => MonadIO (DrawT m) where
  liftIO = DrawT . liftIO

instance MonadTrans DrawT where
  lift = DrawT . lift

-- State looks like it cannot be derived automatically...maybe the `StateT`
-- inside `DrawT` interferes with it? Whatever, let's just manually do it.
instance MonadState s m => MonadState s (DrawT m) where
    get = DrawT $ lift get
    put = DrawT . lift . put
    state = DrawT . lift . state

-- | Use to hoist the base monad in a `DrawT`.
hoistDrawT :: Monad n => (forall a. m a -> n a) -> DrawT m a -> DrawT n a
hoistDrawT changer (DrawT action) = DrawT $ do
    old_st <- get
    (result, new_st) <- lift $ changer $ runStateT action old_st
    put new_st
    return result
{-# INLINEABLE hoistDrawT #-}

-- | Runs a drawing specification.
--
-- You can think of this as running many `draw` commands with similar draw
-- command specifications. This call is an optimization to `draw` which has a
-- high overhead by itself.
--
-- Another way to think of this is a place where the functional, \"no hidden
-- state\" design of the Caramia API is relaxed inside the `Draw` stream.
runDraws :: (MonadIO m, MonadMask m)
         => DrawParams      -- ^ Initial drawing parameters. These can be
                            --   changed in the `Draw` command stream.
         -> DrawT m a          -- ^ Draw command stream.
         -> m a
runDraws params (DrawT cmd_stream) =
    withParams params $ do
        (result, st) <-
            runStateT commands DrawState
                { boundPipeline = pipeline params
                , boundFragmentPassTests = fragmentPassTests params
                , boundEbo = 0
                , boundBlending = blending params
                , boundFramebuffer = targetFramebuffer params
                , boundTextures = bind_textures
                , restoreTextures = fmap (const (return ())) bind_textures
                , boundPrimitiveRestart = primitiveRestart params
                , activeTexture = 0
                }
        st `seq` return result
  where
    bind_textures = bindTextures params

    commands = finally cmd_stream $ do
        st <- get
        sequence_ $ fmap (unwrapDrawT . hoistDrawT liftIO) $ restoreTextures st

    unwrapDrawT (DrawT ac) = ac

withParams :: (MonadIO m, MonadMask m) => DrawParams -> m a -> m a
withParams (DrawParams {..}) action =
    FBuf.withBinding targetFramebuffer $
    withPipeline pipeline $
    withFragmentPassTests fragmentPassTests $
    withBlendings blending $
    withBoundTextures bindTextures $
    withBoundElementBuffer 0 $
    withPrimitiveRestart primitiveRestart $
    withPolygonOffset polygonOffset $ do
        old_active <- gi GL_ACTIVE_TEXTURE
        -- Framebuffer may not restore the viewport so we have to do it here.
        (ox, oy, ow, oh) <- liftIO $ allocaArray 4 $ \viewport_ptr -> do
            glGetIntegerv GL_VIEWPORT viewport_ptr
            ox <- peekElemOff viewport_ptr 0
            oy <- peekElemOff viewport_ptr 1
            ow <- peekElemOff viewport_ptr 2
            oh <- peekElemOff viewport_ptr 3
            return (ox, oy, ow, oh)
        finally (glActiveTexture GL_TEXTURE0 >>
                 action)
                $ do
                    glActiveTexture old_active
                    glViewport ox oy ow oh

data PrimitiveRestartFuns = PrimitiveRestartFuns {
    prIndex :: !GLenum
  , prRestart :: !GLenum
  , prPrimitiveRestartIndex :: !(GLuint -> IO ())
  , prEnable :: !(GLenum -> IO ())
  , prDisable :: !(GLenum -> IO ()) }

withPrimitiveRestartFuns :: (Monad m, MonadIO m)
                         => Bool -> m a -> (PrimitiveRestartFuns -> m a) -> m a
withPrimitiveRestartFuns do_backup backup_action action =
    if | openGLVersion >= OpenGLVersion 3 1 -> action o31funs
       | gl_NV_primitive_restart -> action nvfuns
       | do_backup -> backup_action
       | otherwise ->
           liftIO $ throwM $ NoSupport "Primitive restart requires OpenGL 3.1 or GL_NV_primitive_restart."
  where
    nvfuns = PrimitiveRestartFuns GL_PRIMITIVE_RESTART_INDEX_NV
                                  GL_PRIMITIVE_RESTART_NV
                                  glPrimitiveRestartIndexNV
                                  glEnableClientState
                                  glDisableClientState

    o31funs = PrimitiveRestartFuns GL_PRIMITIVE_RESTART_INDEX
                                   GL_PRIMITIVE_RESTART
                                   glPrimitiveRestartIndex
                                   glEnable
                                   glDisable

withPrimitiveRestart :: (MonadIO m, MonadMask m) => Maybe Word32 -> m a -> m a
withPrimitiveRestart pr action =
    withPrimitiveRestartFuns (isNothing pr) action $ \funs@(PrimitiveRestartFuns{..}) -> do
        old_primitive_restart_enabled <- liftIO $ glIsEnabled prRestart
        old_i <- gi prIndex
        finally (activate funs >> action)
                (liftIO $ do if old_primitive_restart_enabled /= 0
                                 then prEnable prRestart
                                 else prDisable prRestart
                             prPrimitiveRestartIndex old_i)
  where
    activate (PrimitiveRestartFuns{..}) = liftIO $ case pr of
        Nothing -> prDisable prRestart
        Just value -> do
            prEnable prRestart
            prPrimitiveRestartIndex (fromIntegral value)

withPolygonOffset :: (MonadIO m, MonadMask m) => (Float, Float) -> m a -> m a
withPolygonOffset (factor, units) action = do
    old_factor <- gf GL_POLYGON_OFFSET_FACTOR
    old_units <- gf GL_POLYGON_OFFSET_UNITS
    finally (glPolygonOffset factor units >>
             action) $
        glPolygonOffset old_factor old_units

-- | Sets the active texture (not public API! What would they use this for
-- anyway?).
setActiveTexture :: MonadIO m => GLuint -> DrawT m ()
setActiveTexture unit = DrawT $ do
    state <- get
    when (activeTexture state /= unit) $
        glActiveTexture (GL_TEXTURE0 + unit) >>
        modify (\old -> old { activeTexture = unit })

-- | Sets new primitive restart mode.
setPrimitiveRestart :: MonadIO m => Maybe Word32 -> DrawT m ()
setPrimitiveRestart restart = DrawT $
    withPrimitiveRestartFuns (isNothing restart) (return ()) $ \PrimitiveRestartFuns{..} -> do
        pr <- return . boundPrimitiveRestart =<< get
        liftIO $ case (pr, restart) of
            (Nothing, Just x) -> do
                prEnable prRestart
                prPrimitiveRestartIndex (fromIntegral x)
            (Just _, Nothing) -> do
                prDisable prRestart
            (Just y, Just x) | y /= x ->
                prPrimitiveRestartIndex (fromIntegral x)
            _ -> return ()
        modify (\old -> old { boundPrimitiveRestart = restart })

-- | Sets new texture bindings.
setTextureBindings :: MonadIO m => IM.IntMap Texture -> DrawT m ()
setTextureBindings texes = do
    state <- DrawT get
    let old_texes = boundTextures state
        old_restorations = restoreTextures state

    -- Iterate over the old bindings.
    forM_ (IM.assocs old_texes) $ \(index, tex) ->
        case IM.lookup index texes of
            -- A texture was bound previously, new bindings don't bind the
            -- texture at this unit.
            Nothing -> setActiveTexture (safeFromIntegral index) >>
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
    new_restorations <-
        flip execStateT old_restorations $
        forM_ (IM.assocs texes) $ \(index, tex) -> do
            -- Do we need to restore texture binding afterwards?
            restorations <- get
            case IM.lookup index restorations of
                Just _ -> return () -- nope, handled already
                Nothing -> do
                    -- messily make sure that texture binding is restored when
                    -- we return from runDrawT
                    lift $ setActiveTexture (safeFromIntegral index)
                    let (bind_point, bind_point_get) =
                            Texture.getTopologyBindPoints $
                            topology $ viewSpecification tex
                    old_tex <- gi bind_point_get
                    modify $ IM.insert index $ do
                        setActiveTexture (safeFromIntegral index)
                        glBindTexture bind_point old_tex
                        touch tex

            case IM.lookup index old_texes of
                Just _ -> return ()   -- already handled in the above forM_
                Nothing -> do
                    name <- liftIO $ withResource (Texture.resource tex) $
                                \(Texture.Texture_ name) -> return name
                    lift $ setActiveTexture (safeFromIntegral index)
                    let (bind_target, _) =
                            Texture.getTopologyBindPoints $
                            topology $ viewSpecification tex
                     in liftIO $ glBindTexture bind_target name

    DrawT $ modify (\old -> old { boundTextures = texes
                                , restoreTextures = new_restorations })

-- | Changes the pipeline in a `Draw` command stream.
setPipeline :: MonadIO m => Shader.Pipeline -> DrawT m ()
setPipeline pl = DrawT $ do
    state <- get
    when (boundPipeline state /= pl) $ do
        liftIO $ withResource (Shader.resourcePL pl) $
            \(Shader.Pipeline_ program) ->
                setBoundProgram program
        modify (\old -> old { boundPipeline = pl })
{-# INLINE setPipeline #-}

-- | Changes the current blending mode.
setBlending :: MonadIO m => BlendSpec -> DrawT m ()
setBlending blends = DrawT $ do
    state <- get
    when (boundBlending state /= blends) $ do
        setBlendings blends
        modify (\old -> old { boundBlending = blends })
{-# INLINE setBlending #-}

-- | Sets the new fragment pass tests.
setFragmentPassTests :: MonadIO m => FragmentPassTests -> DrawT m ()
setFragmentPassTests tests = DrawT $ do
    state <- get
    when (boundFragmentPassTests state /= tests) $ do
        liftIO $ I.setFragmentPassTests tests
        modify (\old -> old { boundFragmentPassTests = tests })
{-# INLINE setFragmentPassTests #-}

-- | Sets polygon offset.
setPolygonOffset :: MonadIO m => Float -> Float -> DrawT m ()
setPolygonOffset factor units = glPolygonOffset factor units

-- | Sets the current framebuffer.
setTargetFramebuffer :: MonadIO m => FBuf.Framebuffer -> DrawT m ()
setTargetFramebuffer fbuf = DrawT $ do
    state <- get
    when (boundFramebuffer state /= fbuf) $ do
        liftIO $ FBuf.setBinding fbuf
        modify (\old -> old { boundFramebuffer = fbuf })
{-# INLINE setTargetFramebuffer #-}

withBoundTextures :: (MonadIO m, MonadMask m) => IM.IntMap Texture -> m a -> m a
withBoundTextures (IM.assocs -> bindings) action = rec bindings
  where
    rec [] = action
    rec ((unit, tex):rest) =
        withTextureBinding tex unit $ rec rest

withPipeline :: (MonadIO m, MonadMask m) => Shader.Pipeline -> m a -> m a
withPipeline pipeline action =
    withResource (Shader.resourcePL pipeline) $ \(Shader.Pipeline_ program) ->
        withBoundProgram program action
{-# INLINE withPipeline #-}

