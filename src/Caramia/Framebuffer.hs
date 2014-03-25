-- | Framebuffers. You can render on them.
--
-- If you come from the OpenGL world, for simplicity, we have combined the
-- concept of draw buffers and color attachments. Nth color attachment is bound
-- exactly to Nth draw buffer. Caramia only talks about draw buffers.
--
-- <https://www.opengl.org/wiki/Framebuffer_Object>
--

{-# LANGUAGE RankNTypes #-}

module Caramia.Framebuffer
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
    -- * Special framebuffers
    , screenFramebuffer
    -- * Hardware limits
    , getMaximumDrawBuffers )
    where

import Caramia.Resource
import qualified Caramia.Texture.Internal as Tex
import Caramia.Internal.Safe
import Caramia.Internal.OpenGLCApi
import Control.Exception
import Data.List ( nub )
import Data.Foldable
import Data.Typeable
import Data.IORef
import System.IO.Unsafe

data Framebuffer =
    ScreenFramebuffer
  | Framebuffer {
        resource :: !(Resource Framebuffer_)
      , ordIndex :: !Int
      , viewTargets :: [(Attachment, TextureTarget)]
      , binder :: forall a. IO a -> IO a
    }
    deriving ( Typeable )

instance Eq Framebuffer where
    ScreenFramebuffer == ScreenFramebuffer = True
    ScreenFramebuffer == _ = False
    _ == ScreenFramebuffer = False
    fbuf1 == fbuf2 = resource fbuf1 == resource fbuf2

instance Ord Framebuffer where
    ScreenFramebuffer `compare` ScreenFramebuffer = EQ
    ScreenFramebuffer `compare` _ = LT
    _ `compare` ScreenFramebuffer = GT
    fbuf1 `compare` fbuf2 = ordIndex fbuf1 `compare` ordIndex fbuf2

newtype Framebuffer_ = Framebuffer_ GLuint

-- | Returns the screen framebuffer.
--
-- Note that all `screenFramebuffer`s are equal to each other with `Eq`, even
-- those in unrelated Caramia contexts.
--
-- This makes it easy to check if any framebuffer happens to be the screen
-- framebuffer.
screenFramebuffer :: Framebuffer
screenFramebuffer = ScreenFramebuffer

data TextureTarget = TextureTarget
    { attacher :: GLuint -> IO () }

-- | Make a texture target that is the \"front\" of the given texture.
--
-- This is the most common use case. \"front\" means the first texture in a
-- texture array and the base layer mipmap level.
frontTextureTarget :: Tex.Texture -> TextureTarget
frontTextureTarget tex = TextureTarget {
    attacher = \attachment -> do
        withResource (Tex.resource tex) $ \(Tex.Texture_ texname) ->
            glFramebufferTexture
                gl_DRAW_FRAMEBUFFER
                attachment
                texname
                0
    }

-- | Map a specific mipmlayer from a texture.
mipmapTextureTarget :: Tex.Texture
                    -> Int            -- ^ Which mipmap layer?
                    -> TextureTarget
mipmapTextureTarget tex mipmap_layer = TextureTarget {
    attacher = \attachment -> do
        withResource (Tex.resource tex) $ \(Tex.Texture_ texname) ->
            glFramebufferTexture
                gl_DRAW_FRAMEBUFFER
                attachment
                texname
                (safeFromIntegral mipmap_layer)
    }

-- | Map a specific mipmap layer of a specific layer in a 3D or array texture.
layerTextureTarget :: Tex.Texture
                   -> Int            -- ^ Which mipmap layer?
                   -> Int            -- ^ Which topological layer?
                   -> TextureTarget
layerTextureTarget tex mipmap_layer topo_layer = TextureTarget {
    attacher = \attachment -> do
        withResource (Tex.resource tex) $ \(Tex.Texture_ texname) ->
            glFramebufferTextureLayer
                gl_DRAW_FRAMEBUFFER
                attachment
                texname
                (safeFromIntegral mipmap_layer)
                (safeFromIntegral topo_layer)
    }

data Attachment = ColorAttachment !Int
                | DepthAttachment
                | StencilAttachment
                deriving ( Eq, Ord, Show, Read, Typeable )

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
    | nub (fmap fst targets) /= fmap fst targets =
        error "newFramebuffer: there are duplicate attachments."
    | otherwise = mask_ $ do
        res <- newResource creator
                           deleter
                           (return ())
        index <- atomicModifyIORef' runningIndices $ \old ->
            ( old+1, old )
        return Framebuffer { resource = res
                           , ordIndex = index
                           , viewTargets = targets
                           , binder = withThisFramebuffer res }
  where
    creator =
        bracketOnError mglGenFramebuffer
                       mglDeleteFramebuffer $ \fbuf_name -> do
            withBoundDrawFramebuffer fbuf_name $
                for_ targets $ \(index, tex) ->
                    attacher tex (toConstantA index)
            return $ Framebuffer_ fbuf_name

    deleter (Framebuffer_ fbuf_name) =
        mglDeleteFramebuffer fbuf_name

    withThisFramebuffer res action = mask $ \restore -> do
        old_draw_framebuffer <- gi gl_DRAW_FRAMEBUFFER_BINDING
        old_read_framebuffer <- gi gl_READ_FRAMEBUFFER_BINDING
        withResource res $ \(Framebuffer_ fbuf_name) -> do
            glBindFramebuffer gl_FRAMEBUFFER fbuf_name
            finally (restore action) $ do
                glBindFramebuffer gl_DRAW_FRAMEBUFFER old_draw_framebuffer
                glBindFramebuffer gl_READ_FRAMEBUFFER old_read_framebuffer

-- | Returns the maximum number of draw buffers in the current context.
--
-- Almost all GPUs in the last few years have at least 8.
getMaximumDrawBuffers :: IO Int
getMaximumDrawBuffers = do
    -- number of draw buffers
    num_drawbuffers <- gi gl_MAX_DRAW_BUFFERS
    -- number of attachments
    num_attachments <- gi gl_MAX_COLOR_ATTACHMENTS
    return (fromIntegral $ min num_drawbuffers num_attachments)

