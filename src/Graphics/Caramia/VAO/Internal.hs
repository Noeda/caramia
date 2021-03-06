{-# LANGUAGE NoImplicitPrelude, ViewPatterns, DeriveDataTypeable #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Graphics.Caramia.VAO.Internal where

import Data.Unique
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource
import Graphics.Caramia.Internal.OpenGLCApi
import qualified Graphics.Caramia.Buffer.Internal as Buf
import Graphics.Caramia.OpenGLResource

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

instance OpenGLResource GLuint VAO where
    getRaw vao = do
        VAO_ name <- getRaw (WrappedOpenGLResource $ resource vao)
        return name
    touch vao = touch (WrappedOpenGLResource $ resource vao)
    finalize vao = finalize (WrappedOpenGLResource $ resource vao)

