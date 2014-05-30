{-# LANGUAGE RankNTypes #-}

module Caramia.Framebuffer.Internal where

import Caramia.Prelude

import Caramia.Resource
import Caramia.Internal.OpenGLCApi
import qualified Caramia.Texture.Internal as Tex
import Control.Exception
import Foreign

data Framebuffer =
    ScreenFramebuffer
  | Framebuffer {
        resource :: !(Resource Framebuffer_)
      , ordIndex :: !Int
      , viewTargets :: [(Attachment, TextureTarget)]
      , dimensions :: !(Int, Int)
      , binder :: forall a. IO a -> IO a
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

setBinding :: Framebuffer -> IO ()
setBinding ScreenFramebuffer = do
    (w, h) <- getDimensions ScreenFramebuffer
    glBindFramebuffer gl_FRAMEBUFFER 0
    glViewport 0 0 (fromIntegral w) (fromIntegral h)
setBinding fbuf = setter fbuf

withBinding :: Framebuffer -> IO a -> IO a
withBinding ScreenFramebuffer action = do
    allocaArray 4 $ \viewport_ptr -> do
        glGetIntegerv gl_VIEWPORT viewport_ptr
        ox <- peekElemOff viewport_ptr 0
        oy <- peekElemOff viewport_ptr 1
        ow <- peekElemOff viewport_ptr 2
        oh <- peekElemOff viewport_ptr 3
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
getDimensions :: Framebuffer -> IO (Int, Int)
getDimensions ScreenFramebuffer = do
    allocaArray 4 $ \vptr -> do
        glGetIntegerv gl_VIEWPORT vptr
        w <- peekElemOff vptr 2
        h <- peekElemOff vptr 3
        return (fromIntegral w, fromIntegral h)
getDimensions fbuf = return $ dimensions fbuf
{-# INLINE getDimensions #-}


