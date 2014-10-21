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

import Graphics.Caramia.Prelude
import Graphics.Caramia.Context
import Graphics.Caramia.Color
import Graphics.Caramia.Resource
import Graphics.Caramia.Texture
import Graphics.Caramia.Framebuffer.Internal
import qualified Graphics.Caramia.Texture.Internal as Tex
import Graphics.Caramia.ImageFormats
import Graphics.Caramia.Internal.OpenGLCApi
import Control.Exception
import Data.List ( nub )
import Data.Bits
import System.IO.Unsafe
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.C.Types
import GHC.Float
import qualified Data.IntSet as IS

-- | Returns the screen framebuffer.
--
-- Note that all `screenFramebuffer`s are equal to each other with `Eq`, even
-- those in unrelated Caramia contexts.
--
-- This makes it easy to check if any framebuffer happens to be the screen
-- framebuffer.
screenFramebuffer :: Framebuffer
screenFramebuffer = ScreenFramebuffer

-- | Make a texture target that is the \"front\" of the given texture.
--
-- This is the most common use case. \"front\" means the first texture in a
-- texture array and the base layer mipmap level.
frontTextureTarget :: Tex.Texture -> TextureTarget
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
mipmapTextureTarget :: Tex.Texture
                    -> Int            -- ^ Which mipmap layer?
                    -> TextureTarget
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
layerTextureTarget :: Tex.Texture
                   -> Int            -- ^ Which mipmap layer?
                   -> Int            -- ^ Which topological layer?
                   -> TextureTarget
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
newFramebuffer :: [(Attachment, TextureTarget)]
               -> IO Framebuffer
newFramebuffer targets
    | null targets =
        error "newFramebuffer: no texture targets specified."
    | nub (fmap fst targets) /= fmap fst targets =
        error "newFramebuffer: there are duplicate attachments."
    | otherwise = mask_ $ do
        max_bufs <- getMaximumDrawBuffers
        targetsSanityCheck max_bufs

        res <- newResource (creator max_bufs)
                           deleter
                           (return ())
        index <- atomicModifyIORef' runningIndices $ \old ->
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
                forM_ targets $ \(index, tex) ->
                    attacher tex (toConstantA index)

                allocaArray max_bufs $ \buf_ptr -> do
                    forM_ [0..max_bufs-1] $ \bufnum ->
                        pokeElemOff buf_ptr bufnum $
                            if IS.member bufnum color_attachments
                                then gl_COLOR_ATTACHMENT0 +
                                     fromIntegral bufnum
                                else gl_NONE
                    glDrawBuffers (fromIntegral max_bufs) buf_ptr

            return $ Framebuffer_ fbuf_name

    color_attachments :: IS.IntSet
    color_attachments =
        foldl' folder IS.empty (fmap fst targets)
      where
        folder :: IS.IntSet -> Attachment -> IS.IntSet
        folder accum (ColorAttachment x) = IS.insert x accum
        folder accum _ = accum

    deleter (Framebuffer_ fbuf_name) =
        mglDeleteFramebuffer fbuf_name

    targetsSanityCheck max_bufs = forM_ targets $ \(attachment, target) -> do
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
        allocaArray 4 $ \viewport_ptr -> do
            glGetIntegerv gl_VIEWPORT viewport_ptr
            withResource res $ \(Framebuffer_ fbuf_name) -> do
                glBindFramebuffer gl_FRAMEBUFFER fbuf_name
                x <- peekElemOff viewport_ptr 0
                y <- peekElemOff viewport_ptr 1
                w <- peekElemOff viewport_ptr 2
                h <- peekElemOff viewport_ptr 3
                glViewport 0 0 (fromIntegral fw) (fromIntegral fh)
                finally (restore action) $ do
                    glViewport x y w h
                    glBindFramebuffer gl_DRAW_FRAMEBUFFER old_draw_framebuffer
                    glBindFramebuffer gl_READ_FRAMEBUFFER old_read_framebuffer

-- | Returns the maximum number of draw buffers in the current context.
--
-- Almost all GPUs in the last few years have at least 8.
getMaximumDrawBuffers :: IO Int
getMaximumDrawBuffers = do
    _ <- currentContextID
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
clear :: Clearing -> Framebuffer -> IO ()
clear clearing fbuf = withBinding fbuf $ mask_ $
    recColor (clearColor clearing)
  where
    bits = maybe 0 (const gl_COLOR_BUFFER_BIT) (clearColor clearing) .|.
           maybe 0 (const gl_DEPTH_BUFFER_BIT) (clearDepth clearing) .|.
           maybe 0 (const gl_STENCIL_BUFFER_BIT) (clearStencil clearing)

    recColor Nothing = recDepth (clearDepth clearing)
    recColor (Just (viewRgba -> (r, g, b, a))) =
        allocaArray 4 $ \ptr -> do
            glGetFloatv gl_COLOR_CLEAR_VALUE ptr
            glClearColor (CFloat r)
                         (CFloat g)
                         (CFloat b)
                         (CFloat a)
            recDepth (clearDepth clearing)
            nr <- peekElemOff ptr 0
            ng <- peekElemOff ptr 1
            nb <- peekElemOff ptr 2
            na <- peekElemOff ptr 3
            glClearColor (nr :: CFloat) ng nb na

    recDepth Nothing = recStencil (clearStencil clearing)
    recDepth (Just depth) = do
        old_depth <- alloca $ \ptr ->
            glGetDoublev gl_DEPTH_CLEAR_VALUE ptr *> peek ptr
        glClearDepth (CDouble $ float2Double depth)
        recStencil (clearStencil clearing)
        glClearDepth old_depth

    recStencil Nothing = glClear bits
    recStencil (Just stencil) = do
        old_stencil <- alloca $ \ptr ->
            glGetIntegerv gl_STENCIL_CLEAR_VALUE ptr *> peek ptr
        glClearStencil (safeFromIntegral stencil)
        glClear bits
        glClearStencil old_stencil

