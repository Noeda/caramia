{-# LANGUAGE NoImplicitPrelude, ViewPatterns, DeriveDataTypeable #-}

module Graphics.Caramia.VAO.Internal where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Resource
import Graphics.Caramia.Internal.OpenGLCApi
import qualified Graphics.Caramia.Buffer.Internal as Buf

-- | The vertex array object data type.
data VAO = VAO
    { resource :: !(Resource VAO_)
    , boundBuffers :: !(IORef [Buf.Buffer]) }
    deriving ( Typeable )

instance Eq VAO where
    (resource -> res1) == (resource -> res2) = res1 == res2

newtype VAO_ = VAO_ GLuint

