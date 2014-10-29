{-# LANGUAGE NoImplicitPrelude, ViewPatterns, DeriveDataTypeable #-}

module Graphics.Caramia.VAO.Internal where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Resource
import Graphics.Caramia.Internal.OpenGLCApi
import qualified Graphics.Caramia.Buffer.Internal as Buf

-- | The vertex array object data type.
data VAO s = VAO
    { resource :: !(Resource s VAO_)
    , boundBuffers :: !(IORef [Buf.Buffer s]) }
    deriving ( Typeable )

instance Eq (VAO s) where
    (resource -> res1) == (resource -> res2) = res1 == res2

newtype VAO_ = VAO_ GLuint

