{-# LANGUAGE RankNTypes, NoImplicitPrelude, DeriveDataTypeable #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Graphics.Caramia.Framebuffer.Internal where

import Control.Monad.IO.Class
import Control.Monad.Catch
import Data.Unique
import Foreign
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.OpenGLResource
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource
import qualified Graphics.Caramia.Texture.Internal as Tex
import Graphics.GL.Ext.ARB.FramebufferObject

data Framebuffer =
    ScreenFramebuffer
  | Framebuffer {
        resource :: !(Resource Framebuffer_)
      , ordIndex :: !Unique
      , viewTargets :: [(Attachment, TextureTarget)]
      , dimensions :: !(Int, Int)
      , binder :: forall m a. (MonadIO m, MonadMask m) => m a -> m a
      , setter :: IO ()
    }
    deriving ( Typeable )

instance OpenGLResource GLuint Framebuffer where
    getRaw fbuf = do
        Framebuffer_ name <- getRaw (WrappedOpenGLResource $ resource fbuf)
        return name
    touch fbuf = touch (WrappedOpenGLResource $ resource fbuf)
    finalize fbuf = finalize (WrappedOpenGLResource $ resource fbuf)

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
    glBindFramebuffer GL_FRAMEBUFFER 0
    glViewport 0 0 (fromIntegral w) (fromIntegral h)
setBinding fbuf = liftIO $ setter fbuf

withBinding :: (MonadIO m, MonadMask m) => Framebuffer -> m a -> m a
withBinding ScreenFramebuffer action = do
    (ox, oy, ow, oh) <- liftIO $ allocaArray 4 $ \viewport_ptr -> do
        glGetIntegerv GL_VIEWPORT viewport_ptr
        ox <- peekElemOff viewport_ptr 0
        oy <- peekElemOff viewport_ptr 1
        ow <- peekElemOff viewport_ptr 2
        oh <- peekElemOff viewport_ptr 3
        return (ox, oy, ow, oh)
    (w, h) <- getDimensions ScreenFramebuffer
    old_draw <- gi GL_DRAW_FRAMEBUFFER_BINDING
    old_read <- gi GL_READ_FRAMEBUFFER_BINDING
    finally (extcheck (glBindFramebuffer GL_FRAMEBUFFER 0) >>
             glViewport 0 0 (fromIntegral w) (fromIntegral h) >>
             action) $ do
            glViewport ox oy ow oh
            extcheck $ do
                glBindFramebuffer GL_DRAW_FRAMEBUFFER old_draw
                glBindFramebuffer GL_READ_FRAMEBUFFER old_read
  where
    extcheck = when (openGLVersion >= OpenGLVersion 3 0 ||
                     gl_ARB_framebuffer_object)
withBinding fbuf action = binder fbuf action

-- | Returns the size of a framebuffer.
--
-- This is an `IO` action because it can change for the screen framebuffer.
getDimensions :: MonadIO m => Framebuffer -> m (Int, Int)
getDimensions ScreenFramebuffer =
    liftIO $ allocaArray 4 $ \vptr -> do
        glGetIntegerv GL_VIEWPORT vptr
        w <- peekElemOff vptr 2
        h <- peekElemOff vptr 3
        return (fromIntegral w, fromIntegral h)
getDimensions fbuf = return $ dimensions fbuf
{-# INLINE getDimensions #-}


