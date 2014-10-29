{-# LANGUAGE RankNTypes, NoImplicitPrelude, DeriveDataTypeable #-}

module Graphics.Caramia.Framebuffer.Internal where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Resource
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Internal.FlextGLReader
import qualified Graphics.Caramia.Internal.FlextGLFlipped as F
import Graphics.Caramia.Context.Internal
import qualified Graphics.Caramia.Texture.Internal as Tex
import Control.Monad.Catch
import Control.Monad.Reader
import Control.Monad.IO.Class
import Foreign

data Framebuffer s =
    ScreenFramebuffer
  | Framebuffer {
        resource :: !(Resource s Framebuffer_)
      , ordIndex :: !Int
      , viewTargets :: [(Attachment, TextureTarget s)]
      , dimensions :: !(Int, Int)
      , binder :: forall a. Context s a -> Context s a
      , setter :: Context s ()
    }
    deriving ( Typeable )

data Attachment = ColorAttachment !Int
                | DepthAttachment
                | StencilAttachment
                deriving ( Eq, Ord, Show, Read, Typeable )

instance Eq (Framebuffer s) where
    ScreenFramebuffer == ScreenFramebuffer = True
    ScreenFramebuffer == _ = False
    _ == ScreenFramebuffer = False
    fbuf1 == fbuf2 = resource fbuf1 == resource fbuf2

instance Ord (Framebuffer s) where
    ScreenFramebuffer `compare` ScreenFramebuffer = EQ
    ScreenFramebuffer `compare` _ = LT
    _ `compare` ScreenFramebuffer = GT
    fbuf1 `compare` fbuf2 = ordIndex fbuf1 `compare` ordIndex fbuf2

newtype Framebuffer_ = Framebuffer_ GLuint

data TextureTarget s = TextureTarget
    { attacher :: GLuint -> Context s ()
    , texture :: (Tex.Texture s) }

setBinding :: Framebuffer s -> Context s ()
setBinding ScreenFramebuffer = do
    (w, h) <- getDimensions ScreenFramebuffer
    glBindFramebuffer gl_FRAMEBUFFER 0
    glViewport 0 0 (fromIntegral w) (fromIntegral h)
setBinding fbuf = setter fbuf

withBinding :: Framebuffer s -> Context s a -> Context s a
withBinding ScreenFramebuffer action = do
    st <- contextState
    gl <- askFlextGL
    liftIO $ allocaArray 4 $ \viewport_ptr -> do
        F.glGetIntegerv gl_VIEWPORT viewport_ptr gl
        ox <- peekElemOff viewport_ptr 0
        oy <- peekElemOff viewport_ptr 1
        ow <- peekElemOff viewport_ptr 2
        oh <- peekElemOff viewport_ptr 3
        unsafeResumeContext st $ do
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
getDimensions :: Framebuffer s -> Context s (Int, Int)
getDimensions ScreenFramebuffer = do
    gl <- ask
    liftIO $ allocaArray 4 $ \vptr -> do
        F.glGetIntegerv gl_VIEWPORT vptr gl
        w <- peekElemOff vptr 2
        h <- peekElemOff vptr 3
        return (fromIntegral w, fromIntegral h)
getDimensions fbuf = return $ dimensions fbuf
{-# INLINE getDimensions #-}


