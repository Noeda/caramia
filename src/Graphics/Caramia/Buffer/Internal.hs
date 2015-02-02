{-# LANGUAGE NoImplicitPrelude, ViewPatterns, DeriveDataTypeable #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE DeriveGeneric #-}

module Graphics.Caramia.Buffer.Internal where

import Data.Data
import qualified Data.Set as S
import GHC.Generics
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.OpenGLResource
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource

-- | Buffer data type.
data Buffer = Buffer
    { resource   :: !(Resource Buffer_)
    , status     :: !(IORef BufferStatus)
    , viewAllowedMappings :: !AccessFlags -- ^ Returns the allowed mappings.
    , viewSize   :: !Int -- ^ Returns the size of the buffer, in bytes.
    , ordIndex   :: !Unique
    }
    deriving ( Typeable )

instance OpenGLResource GLuint Buffer where
    getRaw buf = do
        Buffer_ name <- getRaw (WrappedOpenGLResource $ resource buf)
        return name
    touch buf = touch (WrappedOpenGLResource $ resource buf)
    finalize buf = finalize (WrappedOpenGLResource $ resource buf)

instance Ord Buffer where
    (ordIndex -> o1) `compare` (ordIndex -> o2) = o1 `compare` o2

data BufferStatus = BufferStatus
    { mapped :: !(Maybe (S.Set MapFlag)) }

instance Show Buffer where
    show (Buffer{..}) = "<Buffer bytesize(" <> show viewSize <> ")>"

instance Eq Buffer where
    (resource -> res1) == (resource -> res2) = res1 == res2

newtype Buffer_ = Buffer_ GLuint

-- | Describes a style of mapping.
data AccessFlags =
    ReadAccess      -- ^ The mapping can be read from.
  | WriteAccess     -- ^ The mapping can be written to.
  | ReadWriteAccess -- ^ Both reading and writing can be done.
  | NoAccess        -- ^ No access; you cannot map the buffer at all after
                    --   creation.
  deriving ( Eq, Ord, Show, Read, Typeable, Enum, Data, Generic )

-- | Additional mapping flags.
data MapFlag =
    UnSynchronized        -- ^ Map the buffer without synchronization.
                          --   You will have to use synchronization primitives
                          --   to make sure you and OpenGL won't be using
                          --   the buffer at the same time.
  | ExplicitFlush         -- ^ If set, you need to explicitly flush ranges of
                          --   the mapping after you have modified them, with
                          --   `explicitFlush`. The mapping must allow writes.
                          --   Requires OpenGL 3.0 or greater or
                          --   \"GL_ARB_map_buffer_range\", but if neither of
                          --   these are available, then this flag is no-op and
                          --   so is `explicitFlush`.
                          --
                          --   Explicit flushing can be useful when you map a
                          --   large buffer but don't know beforehand how much
                          --   of that buffer you are going to modify.
  deriving ( Eq, Ord, Show, Read, Typeable, Enum, Data, Generic )

