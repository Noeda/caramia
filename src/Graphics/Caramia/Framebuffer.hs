-- | Framebuffers. You can render on them.
--
-- If you come from the OpenGL world, for simplicity, we have combined the
-- concept of draw buffers and color attachments. Nth color attachment is bound
-- exactly to Nth draw buffer. Caramia only talks about draw buffers.
--
-- <https://www.opengl.org/wiki/Framebuffer_Object>
--

{-# LANGUAGE NoImplicitPrelude, ViewPatterns, DeriveDataTypeable #-}

module Graphics.Caramia.Framebuffer
    (
    -- * Creating framebuffers
      newFramebuffer
    , Framebuffer()
    -- * Specifying texture targets
    , frontTextureTarget
    , mipmapTextureTarget
    , layerTextureTarget
    , TextureTarget()
    , Attachment(..)
    -- * Size query
    , getDimensions
    -- * Clearing framebuffers
    , clear
    , Clearing(..)
    , clearing
    -- * Special framebuffers
    , screenFramebuffer
    -- * Hardware limits
    , getMaximumDrawBuffers
    -- * Views
    , viewTargets )
    where

import Control.Monad.Catch
import Control.Monad.IO.Class
import Control.Monad.Reader
import Data.Bits
import qualified Data.IntSet as IS
import Data.List ( nub )
import Foreign.C.Types
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.Storable
import GHC.Float
import Graphics.Caramia.Color
import Graphics.Caramia.Context.Internal
import Graphics.Caramia.Framebuffer.Internal
import Graphics.Caramia.ImageFormats
import qualified Graphics.Caramia.Internal.FlextGLFlipped as F
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource
import Graphics.Caramia.Texture
import qualified Graphics.Caramia.Texture.Internal as Tex
import System.IO.Unsafe

-- | Returns the screen framebuffer.
--
-- Note that all `screenFramebuffer`s are equal to each other with `Eq`, even
-- those in unrelated Caramia contexts.
--
-- This makes it easy to check if any framebuffer happens to be the screen
-- framebuffer.
screenFramebuffer :: Framebuffer s
screenFramebuffer = ScreenFramebuffer

-- | Make a texture target that is the \"front\" of the given texture.
--
-- This is the most common use case. \"front\" means the first texture in a
-- texture array and the base layer mipmap level.
frontTextureTarget :: Tex.Texture s -> TextureTarget s
frontTextureTarget tex = TextureTarget {
    attacher = \attachment ->
        withResource (Tex.resource tex) $ \(Tex.Texture_ texname) ->
            glFramebufferTexture
                gl_DRAW_FRAMEBUFFER
                attachment
                texname
                0
  , texture = tex }

-- | Map a specific mipmlayer from a texture.
mipmapTextureTarget :: Tex.Texture s
                    -> Int            -- ^ Which mipmap layer?
                    -> TextureTarget s
mipmapTextureTarget tex mipmap_layer = TextureTarget {
    attacher = \attachment ->
        withResource (Tex.resource tex) $ \(Tex.Texture_ texname) ->
            glFramebufferTexture
                gl_DRAW_FRAMEBUFFER
                attachment
                texname
                (safeFromIntegral mipmap_layer)
  , texture = tex }

-- | Map a specific mipmap layer of a specific layer in a 3D or array texture.
layerTextureTarget :: Tex.Texture s
                   -> Int            -- ^ Which mipmap layer?
                   -> Int            -- ^ Which topological layer?
                   -> TextureTarget s
layerTextureTarget tex mipmap_layer topo_layer = TextureTarget {
    attacher = \attachment ->
        withResource (Tex.resource tex) $ \(Tex.Texture_ texname) ->
            glFramebufferTextureLayer
                gl_DRAW_FRAMEBUFFER
                attachment
                texname
                (safeFromIntegral mipmap_layer)
                (safeFromIntegral topo_layer)
  , texture = tex }

runningIndices :: IORef Int
runningIndices = unsafePerformIO $ newIORef 0
{-# NOINLINE runningIndices #-}

toConstantA :: Attachment -> GLenum
toConstantA (ColorAttachment x) = gl_COLOR_ATTACHMENT0 + fromIntegral x
toConstantA DepthAttachment = gl_DEPTH_ATTACHMENT
toConstantA StencilAttachment = gl_STENCIL_ATTACHMENT

-- | Creates a new framebuffer.
newFramebuffer :: [(Attachment, TextureTarget s)]
               -> Context s (Framebuffer s)
newFramebuffer targets
    | null targets =
        error "newFramebuffer: no texture targets specified."
    | nub (fmap fst targets) /= fmap fst targets =
        error "newFramebuffer: there are duplicate attachments."
    | otherwise = mask_ $ do
        max_bufs <- getMaximumDrawBuffers
        targetsSanityCheck max_bufs

        gl <- ask
        res <- newResource (creator max_bufs)
                           (deleter gl)
                           (return ())
        index <- liftIO $ atomicModifyIORef' runningIndices $ \old ->
            ( old+1, old )
        return Framebuffer { resource = res
                           , ordIndex = index
                           , viewTargets = targets
                           , dimensions = calculatedDimensions
                           , binder = withThisFramebuffer res
                           , setter = setThisFramebuffer res }
  where
    calculatedDimensions@(fw, fh) =
        foldl' (\(lowest_w, lowest_h) (w, h) ->
                   (min lowest_w w, min lowest_h h))
               (maxBound, maxBound)
               (fmap (\(snd -> tex) ->
                         (viewWidth $ texture tex, viewHeight $ texture tex))
                     targets)

    creator max_bufs =
        bracketOnError mglGenFramebuffer
                       mglDeleteFramebuffer $ \fbuf_name -> do
            withBoundDrawFramebuffer fbuf_name $ do
                for_ targets $ \(index, tex) ->
                    attacher tex (toConstantA index)

                gl <- ask
                liftIO $ allocaArray max_bufs $ \buf_ptr -> do
                    for_ [0..max_bufs-1] $ \bufnum ->
                        pokeElemOff buf_ptr bufnum $
                            if IS.member bufnum color_attachments
                                then gl_COLOR_ATTACHMENT0 +
                                     fromIntegral bufnum
                                else gl_NONE
                    F.glDrawBuffers (fromIntegral max_bufs) buf_ptr gl

            return $ Framebuffer_ fbuf_name

    color_attachments :: IS.IntSet
    color_attachments =
        foldl' folder IS.empty (fmap fst targets)
      where
        folder :: IS.IntSet -> Attachment -> IS.IntSet
        folder accum (ColorAttachment x) = IS.insert x accum
        folder accum _ = accum

    deleter gl (Framebuffer_ fbuf_name) =
        runFlextGLM gl $ mglDeleteFramebuffer fbuf_name

    targetsSanityCheck max_bufs = for_ targets $ \(attachment, target) -> do
        let format = Tex.imageFormat $ Tex.viewSpecification $ texture target
        unless (isRenderTargettable format) $
            error $ "newFramebuffer: cannot render to " <> show format
        case attachment of
            ColorAttachment x | x < 0 || x >= max_bufs ->
                error $ "newFramebuffer: color attachment " <> show x <>
                        " is out of range. Valid range is [0.." <>
                        show (max_bufs-1) <> "]."
            ColorAttachment _ | not (isColorFormat format) ->
                error $ "newFramebuffer: " <> show format <> " is not a " <>
                        "color format but was attempted to be attached to " <>
                        "attachment " <> show attachment <> "."
            DepthAttachment | not (hasDepthComponent format) ->
                error $ "newFramebuffer: " <> show format <> " has no " <>
                        "depth component but was attempted to be attached " <>
                        "to depth attachment."
            StencilAttachment | not (hasStencilComponent format) ->
                error $ "newFramebuffer: " <> show format <> " has no " <>
                        "stencil component but was attempted to be " <>
                        "attached to stencil attachment."
            _ -> return ()

    setThisFramebuffer res = do
        withResource res $ \(Framebuffer_ fbuf_name) ->
            glBindFramebuffer gl_FRAMEBUFFER fbuf_name
        glViewport 0 0 (fromIntegral fw) (fromIntegral fh)

    withThisFramebuffer res action = mask $ \restore -> do
        old_draw_framebuffer <- gi gl_DRAW_FRAMEBUFFER_BINDING
        old_read_framebuffer <- gi gl_READ_FRAMEBUFFER_BINDING
        st <- contextState
        liftIO $ allocaArray 4 $ \viewport_ptr -> unsafeResumeContext st $ do
            glGetIntegerv gl_VIEWPORT viewport_ptr
            withResource res $ \(Framebuffer_ fbuf_name) -> do
                glBindFramebuffer gl_FRAMEBUFFER fbuf_name
                x <- liftIO $ peekElemOff viewport_ptr 0
                y <- liftIO $ peekElemOff viewport_ptr 1
                w <- liftIO $ peekElemOff viewport_ptr 2
                h <- liftIO $ peekElemOff viewport_ptr 3
                glViewport 0 0 (fromIntegral fw) (fromIntegral fh)
                finally (restore action) $ do
                    glViewport x y w h
                    glBindFramebuffer gl_DRAW_FRAMEBUFFER old_draw_framebuffer
                    glBindFramebuffer gl_READ_FRAMEBUFFER old_read_framebuffer

-- | Returns the maximum number of draw buffers in the current context.
--
-- Almost all GPUs in the last few years have at least 8.
getMaximumDrawBuffers :: Context s Int
getMaximumDrawBuffers = liftFlextGLM $ do
    -- number of draw buffers
    num_drawbuffers <- gi gl_MAX_DRAW_BUFFERS
    -- number of attachments
    num_attachments <- gi gl_MAX_COLOR_ATTACHMENTS
    return (fromIntegral $ min num_drawbuffers num_attachments)

-- | Specifies what to clear in a `clear` invocation.
--
-- Use `clearing` smart constructor instead for forward-compatibility.
--
-- Each member of this data type is a `Maybe` value; if any value is `Just`
-- then that value is cleared, otherwise it is not touched.
data Clearing = Clearing
    { clearDepth :: !(Maybe Float)
    -- ^ Clear depth buffer to this value.
    , clearStencil :: !(Maybe Int32)
    -- ^ Clear stencil buffer to this value.
    , clearColor :: !(Maybe Color)
    -- ^ Clear (all) color buffers to some color.
    }
    deriving ( Eq, Ord, Show, Read, Typeable )

-- TODO: selective clearing for different color buffers.

-- | Smart constructor for `Clearing`. All members are `Nothing`.
clearing :: Clearing
clearing = Clearing { clearDepth = Nothing
                    , clearStencil = Nothing
                    , clearColor = Nothing }

-- | Clears values in a framebuffer.
clear :: Clearing -> Framebuffer s -> Context s ()
clear clearing fbuf = withBinding fbuf $ mask_ $
    recColor (clearColor clearing)
  where
    bits = maybe 0 (const gl_COLOR_BUFFER_BIT) (clearColor clearing) .|.
           maybe 0 (const gl_DEPTH_BUFFER_BIT) (clearDepth clearing) .|.
           maybe 0 (const gl_STENCIL_BUFFER_BIT) (clearStencil clearing)

    recColor Nothing = recDepth (clearDepth clearing)
    recColor (Just (viewRgba -> (r, g, b, a))) = do
        st <- contextState
        liftIO $ allocaArray 4 $ \ptr -> unsafeResumeContext st $ do
            glGetFloatv gl_COLOR_CLEAR_VALUE ptr
            glClearColor (CFloat r)
                         (CFloat g)
                         (CFloat b)
                         (CFloat a)
            recDepth (clearDepth clearing)
            nr <- liftIO $ peekElemOff ptr 0
            ng <- liftIO $ peekElemOff ptr 1
            nb <- liftIO $ peekElemOff ptr 2
            na <- liftIO $ peekElemOff ptr 3
            glClearColor (nr :: CFloat) ng nb na

    recDepth Nothing = recStencil (clearStencil clearing)
    recDepth (Just depth) = do
        gl <- ask
        old_depth <- liftIO $ alloca $ \ptr ->
            F.glGetDoublev gl_DEPTH_CLEAR_VALUE ptr gl *> peek ptr
        glClearDepth (CDouble $ float2Double depth)
        recStencil (clearStencil clearing)
        glClearDepth old_depth

    recStencil Nothing = glClear bits
    recStencil (Just stencil) = do
        old_stencil <- fromIntegral <$> gi gl_STENCIL_CLEAR_VALUE
        glClearStencil (safeFromIntegral stencil)
        glClear bits
        glClearStencil old_stencil

