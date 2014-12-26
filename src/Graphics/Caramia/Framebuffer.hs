-- | Framebuffers. You can render on them.
--
-- If you come from the OpenGL world, for simplicity, we have combined the
-- concept of draw buffers and color attachments. Nth color attachment is bound
-- exactly to Nth draw buffer. Caramia only talks about draw buffers.
--
-- <https://www.opengl.org/wiki/Framebuffer_Object>
--
-- Either OpenGL 3.0 or @ GL_ARB_framebuffer_object @ is required for this
-- module.
--

{-# LANGUAGE NoImplicitPrelude, ViewPatterns, DeriveDataTypeable #-}
{-# LANGUAGE OverloadedStrings #-}

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
import Data.Bits
import qualified Data.IntSet as IS
import Data.List ( nub )
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.Storable
import GHC.Float
import Graphics.Caramia.Color
import Graphics.Caramia.Context
import Graphics.Caramia.Framebuffer.Internal
import Graphics.Caramia.ImageFormats
import Graphics.Caramia.Internal.Exception
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource
import Graphics.Caramia.Texture
import qualified Graphics.Caramia.Texture.Internal as Tex
import Graphics.GL.Ext.ARB.FramebufferObject

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
                GL_DRAW_FRAMEBUFFER
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
                GL_DRAW_FRAMEBUFFER
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
                GL_DRAW_FRAMEBUFFER
                attachment
                texname
                (safeFromIntegral mipmap_layer)
                (safeFromIntegral topo_layer)
  , texture = tex }

toConstantA :: Attachment -> GLenum
toConstantA (ColorAttachment x) = GL_COLOR_ATTACHMENT0 + fromIntegral x
toConstantA DepthAttachment = GL_DEPTH_ATTACHMENT
toConstantA StencilAttachment = GL_STENCIL_ATTACHMENT

-- | Creates a new framebuffer.
newFramebuffer :: MonadIO m
               => [(Attachment, TextureTarget)]
               -> m Framebuffer
newFramebuffer targets
    | null targets =
        error "newFramebuffer: no texture targets specified."
    | nub (fmap fst targets) /= fmap fst targets =
        error "newFramebuffer: there are duplicate attachments."
    | otherwise = liftIO $ mask_ $
        checkOpenGLOrExtensionM (OpenGLVersion 3 0)
                                "GL_ARB_framebuffer_object"
                                gl_ARB_framebuffer_object $ do
            max_bufs <- getMaximumDrawBuffers
            targetsSanityCheck max_bufs

            res <- newResource (creator max_bufs)
                               deleter
                               (return ())
            index <- newUnique
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
                                then GL_COLOR_ATTACHMENT0 +
                                     fromIntegral bufnum
                                else GL_NONE
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
            glBindFramebuffer GL_FRAMEBUFFER fbuf_name
        glViewport 0 0 (fromIntegral fw) (fromIntegral fh)

    withThisFramebuffer res action = mask $ \restore -> do
        old_draw_framebuffer <- gi GL_DRAW_FRAMEBUFFER_BINDING
        old_read_framebuffer <- gi GL_READ_FRAMEBUFFER_BINDING
        (x, y, w, h) <- liftIO $ allocaArray 4 $ \viewport_ptr -> do
            glGetIntegerv GL_VIEWPORT viewport_ptr
            x <- peekElemOff viewport_ptr 0
            y <- peekElemOff viewport_ptr 1
            w <- peekElemOff viewport_ptr 2
            h <- peekElemOff viewport_ptr 3
            return (x, y, w, h)
        withResource res $ \(Framebuffer_ fbuf_name) -> do
            glBindFramebuffer GL_FRAMEBUFFER fbuf_name
            glViewport 0 0 (fromIntegral fw) (fromIntegral fh)
            finally (restore action) $ do
                glViewport x y w h
                glBindFramebuffer GL_DRAW_FRAMEBUFFER old_draw_framebuffer
                glBindFramebuffer GL_READ_FRAMEBUFFER old_read_framebuffer

-- | Returns the maximum number of draw buffers in the current context.
--
-- Almost all GPUs in the last few years have at least 8.
getMaximumDrawBuffers :: MonadIO m => m Int
getMaximumDrawBuffers = do
    _ <- currentContextID
    -- number of draw buffers
    num_drawbuffers <- gi GL_MAX_DRAW_BUFFERS
    -- number of attachments
    num_attachments <- gi GL_MAX_COLOR_ATTACHMENTS
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
clear :: MonadIO m => Clearing -> Framebuffer -> m ()
clear clearing fbuf = liftIO $ withBinding fbuf $ mask_ $
    recColor (clearColor clearing)
  where
    bits = maybe 0 (const GL_COLOR_BUFFER_BIT) (clearColor clearing) .|.
           maybe 0 (const GL_DEPTH_BUFFER_BIT) (clearDepth clearing) .|.
           maybe 0 (const GL_STENCIL_BUFFER_BIT) (clearStencil clearing)

    recColor Nothing = recDepth (clearDepth clearing)
    recColor (Just (viewRgba -> (r, g, b, a))) =
        allocaArray 4 $ \ptr -> do
            glGetFloatv GL_COLOR_CLEAR_VALUE ptr
            glClearColor r g b a
            recDepth (clearDepth clearing)
            nr <- peekElemOff ptr 0
            ng <- peekElemOff ptr 1
            nb <- peekElemOff ptr 2
            na <- peekElemOff ptr 3
            glClearColor nr ng nb na

    recDepth Nothing = recStencil (clearStencil clearing)
    recDepth (Just depth) = do
        old_depth <- alloca $ \ptr ->
            glGetDoublev GL_DEPTH_CLEAR_VALUE ptr *> peek ptr
        glClearDepth $ float2Double depth
        recStencil (clearStencil clearing)
        glClearDepth old_depth

    recStencil Nothing = glClear bits
    recStencil (Just stencil) = do
        old_stencil <- alloca $ \ptr ->
            glGetIntegerv GL_STENCIL_CLEAR_VALUE ptr *> peek ptr
        glClearStencil (safeFromIntegral stencil)
        glClear bits
        glClearStencil old_stencil

