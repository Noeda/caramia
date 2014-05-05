module Caramia.Buffer.Internal
    ( Buffer(..)
    , Buffer_(..)
    , BufferStatus(..)
    , AccessFlags(..)
    , bufferOrdIndex )
    where

import Caramia.Prelude

import Caramia.Resource
import Caramia.Internal.OpenGLCApi
import System.IO.Unsafe

-- | Buffer data type.
data Buffer = Buffer
    { resource   :: !(Resource Buffer_)
    , status     :: !(IORef BufferStatus)
    , viewAllowedMappings :: !AccessFlags -- ^ Returns the allowed mappings.
    , viewSize   :: !Int -- ^ Returns the size of the buffer, in bytes.
    , ordIndex   :: !Int
    }

bufferOrdIndex :: IORef Int
bufferOrdIndex = unsafePerformIO $ newIORef 0
{-# NOINLINE bufferOrdIndex #-}

instance Ord Buffer where
    (ordIndex -> o1) `compare` (ordIndex -> o2) = o1 `compare` o2

data BufferStatus = BufferStatus
    { mapped :: !Bool }

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
  deriving ( Eq, Ord, Show, Read )

