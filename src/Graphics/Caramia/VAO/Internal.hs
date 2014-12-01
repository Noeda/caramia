{-# LANGUAGE NoImplicitPrelude, ViewPatterns, DeriveDataTypeable #-}

module Graphics.Caramia.VAO.Internal where

import Data.Unique
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource
import Graphics.Caramia.Internal.OpenGLCApi
import qualified Graphics.Caramia.Buffer.Internal as Buf

-- | The vertex array object data type.
data VAO = VAO
    { resource :: !(Resource VAO_)
    , boundBuffers :: !(IORef [Buf.Buffer])
    , vaoIndex :: !Unique }
    deriving ( Typeable )

instance Eq VAO where
    (resource -> res1) == (resource -> res2) = res1 == res2

instance Ord VAO where
    (vaoIndex -> v1) `compare` (vaoIndex -> v2) = v1 `compare` v2

newtype VAO_ = VAO_ GLuint

