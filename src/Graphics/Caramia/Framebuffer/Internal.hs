{-# LANGUAGE RankNTypes, NoImplicitPrelude, DeriveDataTypeable #-}

module Graphics.Caramia.Framebuffer.Internal where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Resource
import Graphics.Caramia.Internal.OpenGLCApi
import qualified Graphics.Caramia.Texture.Internal as Tex
import Control.Monad.IO.Class
import Control.Monad.Catch
import Foreign

data Framebuffer =
    ScreenFramebuffer
  | Framebuffer {
        resource :: !(Resource Framebuffer_)
      , ordIndex :: !Int
      , viewTargets :: [(Attachment, TextureTarget)]
      , dimensions :: !(Int, Int)
      , binder :: forall m a. (MonadIO m, MonadMask m) => m a -> m a
      , setter :: IO ()
    }
    deriving ( Typeable )

data Attachment = ColorAttachment !Int
                | DepthAttachment
                | StencilAttachment
                deriving ( Eq, Ord, Show, Read, Typeable )

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

data TextureTarget = TextureTarget
    { attacher :: GLuint -> IO ()
    , texture :: Tex.Texture }

setBinding :: MonadIO m => Framebuffer -> m ()
setBinding ScreenFramebuffer = do
    (w, h) <- getDimensions ScreenFramebuffer
    glBindFramebuffer gl_FRAMEBUFFER 0
    glViewport 0 0 (fromIntegral w) (fromIntegral h)
setBinding fbuf = liftIO $ setter fbuf

withBinding :: (MonadIO m, MonadMask m) => Framebuffer -> m a -> m a
withBinding ScreenFramebuffer action = do
    (ox, oy, ow, oh) <- liftIO $ allocaArray 4 $ \viewport_ptr -> do
        glGetIntegerv gl_VIEWPORT viewport_ptr
        ox <- peekElemOff viewport_ptr 0
        oy <- peekElemOff viewport_ptr 1
        ow <- peekElemOff viewport_ptr 2
        oh <- peekElemOff viewport_ptr 3
        return (ox, oy, ow, oh)
    (w, h) <- getDimensions ScreenFramebuffer
    old_draw <- gi gl_DRAW_FRAMEBUFFER_BINDING
    old_read <- gi gl_READ_FRAMEBUFFER_BINDING
    finally (glBindFramebuffer gl_FRAMEBUFFER 0 >>
             glViewport 0 0 (fromIntegral w) (fromIntegral h) >>
             action) $ do
            glViewport ox oy ow oh
            glBindFramebuffer gl_DRAW_FRAMEBUFFER old_draw
            glBindFramebuffer gl_READ_FRAMEBUFFER old_read
withBinding fbuf action = binder fbuf action

-- | Returns the size of a framebuffer.
--
-- This is an `IO` action because it can change for the screen framebuffer.
getDimensions :: MonadIO m => Framebuffer -> m (Int, Int)
getDimensions ScreenFramebuffer =
    liftIO $ allocaArray 4 $ \vptr -> do
        glGetIntegerv gl_VIEWPORT vptr
        w <- peekElemOff vptr 2
        h <- peekElemOff vptr 3
        return (fromIntegral w, fromIntegral h)
getDimensions fbuf = return $ dimensions fbuf
{-# INLINE getDimensions #-}


