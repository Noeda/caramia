{-# LANGUAGE RankNTypes #-}

module Caramia.Framebuffer.Internal where

import Caramia.Resource
import Caramia.Internal.OpenGLCApi
import qualified Caramia.Texture.Internal as Tex
import Data.Typeable
import Control.Exception

data Framebuffer =
    ScreenFramebuffer
  | Framebuffer {
        resource :: !(Resource Framebuffer_)
      , ordIndex :: !Int
      , viewTargets :: [(Attachment, TextureTarget)]
      , binder :: forall a. IO a -> IO a
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

withBinding :: Framebuffer -> IO a -> IO a
withBinding ScreenFramebuffer action = do
    old_draw <- gi gl_DRAW_FRAMEBUFFER_BINDING
    old_read <- gi gl_READ_FRAMEBUFFER_BINDING
    finally (glBindFramebuffer gl_FRAMEBUFFER 0 >> action) $ do
        glBindFramebuffer gl_DRAW_FRAMEBUFFER old_draw
        glBindFramebuffer gl_READ_FRAMEBUFFER old_read
withBinding fbuf action = binder fbuf action

