-- | Buffer objects.
--
-- These are chunks of memory (typically) kept on the GPU.
--

module Caramia.Buffer
    ( -- * Creation
      newBuffer
    , Buffer()
    , AccessFrequency(..)
    , AccessNature(..)
    , AccessFlags(..)
    , BufferCreation(..)
    , defaultBufferCreation
      -- * Manipulation
    , map
    , unmap
    , withMapping
      -- * Views
    , viewSize
    , viewAllowedMappings
      -- * Exceptions
    , BufferCorruption(..)
    )
    where

import Prelude hiding ( map )

import Caramia.Resource
import Caramia.Internal.OpenGLCApi
import Caramia.Internal.Safe

import Data.Typeable
import Data.IORef
import Data.Bits
import Data.Monoid
import Data.Maybe
import Foreign.Ptr
import Control.Monad
import Control.Exception
import Control.Applicative

-- | Buffer data type.
data Buffer = Buffer
    { resource   :: !(Resource Buffer_)
    , status     :: !(IORef BufferStatus)
    , viewAllowedMappings :: !AccessFlags -- ^ Returns the allowed mappings.
    , viewSize   :: !Int -- ^ Returns the size of the buffer, in bytes.
    }

data BufferStatus = BufferStatus
    { mapped :: !Bool }

instance Eq Buffer where
    (resource -> res1) == (resource -> res2) = res1 == res2

newtype Buffer_ = Buffer_ GLuint

-- | The frequency of access to a buffer.
--
-- These correspond to the OpenGL access frequency hints. You can look for them
-- in the OpenGL specification or check this link:
--
-- <https://www.opengl.org/wiki/GLAPI/glBufferData>
data AccessFrequency =
    Stream
  | Static
  | Dynamic
  deriving ( Eq, Ord, Show, Read )

-- | The nature of access to a buffer.
--
-- These correspond to the OpenGL access nature hints. You can look for them
-- in the OpenGL specification or check this link:
--
-- <https://www.opengl.org/wiki/GLAPI/glBufferData>
data AccessNature =
    Draw
  | Read
  | Copy
  deriving ( Eq, Ord, Show, Read )

-- | Describes a style of mapping.
data AccessFlags =
    ReadAccess      -- ^ The mapping can be read from.
  | WriteAccess     -- ^ The mapping can be written to.
  | ReadWriteAccess -- ^ Both reading and writing can be done.
  deriving ( Eq, Ord, Show, Read )

canMapWith :: AccessFlags -> AccessFlags -> Bool
canMapWith ReadWriteAccess _ = True
canMapWith WriteAccess WriteAccess = True
canMapWith WriteAccess _ = False
canMapWith ReadAccess ReadAccess = True
canMapWith ReadAccess _ = False

toConstant :: AccessFrequency -> AccessNature -> GLuint
toConstant Stream Draw = gl_STREAM_DRAW
toConstant Stream Read = gl_STREAM_READ
toConstant Stream Copy = gl_STREAM_COPY
toConstant Static Draw = gl_STATIC_DRAW
toConstant Static Read = gl_STATIC_READ
toConstant Static Copy = gl_STATIC_COPY
toConstant Dynamic Draw = gl_DYNAMIC_DRAW
toConstant Dynamic Read = gl_DYNAMIC_READ
toConstant Dynamic Copy = gl_DYNAMIC_COPY

toConstantF :: AccessFlags -> GLbitfield
toConstantF ReadAccess      = gl_MAP_READ_BIT
toConstantF WriteAccess     = gl_MAP_WRITE_BIT
toConstantF ReadWriteAccess = gl_MAP_READ_BIT .|. gl_MAP_WRITE_BIT

-- | This data describes how a buffer should behave and what operations can be
-- done with it.
--
-- Accurate description can improve performance.
--
-- For forwards compatibility, it is recommended to use
-- `defaultBufferCreation` and then set the fields you want to change.
data BufferCreation = BufferCreation
    { accessHints :: !(AccessFrequency, AccessNature) -- ^ Hints on how the
                                                      --   buffer will be used.

    , size        :: !Int               -- ^ How large the buffer should be, in
                                        --   bytes.
    , initialData ::
        !(Maybe (Ptr ()))               -- ^ The initial data to be copied to
                                        -- the buffer. Can be `Nothing` in
                                        -- which case the initial contents are
                                        -- undefined.

    , accessFlags :: !AccessFlags       -- ^ What kind of mapping access is
                                        --   allowed. See `map`.
    }

-- | The default buffer creation flags.
--
-- The default attempts to give you the most general (and possibly slowest)
-- buffer. Both read and write access are allowed.
--
-- Default size is 0 which will make `newBuffer` fail if you don't set it.
defaultBufferCreation :: BufferCreation
defaultBufferCreation = BufferCreation {
    accessHints = (Dynamic, Draw)
  , size        = 0
  , initialData = Nothing
  , accessFlags = ReadWriteAccess }

-- | Creates a new buffer. Initially, the buffer contents are undefined.
newBuffer :: BufferCreation
          -> IO Buffer
newBuffer creation
    | size creation <= 0 =
        error "newBuffer: size must be positive."
    | otherwise = mask_ $ do
        resource <-
            newResource createBuffer
                        (\(Buffer_ bufname) -> mglDeleteBuffer bufname)
                        (return ())
        initial_status <- newIORef BufferStatus { mapped = False }
        return Buffer { resource = resource
                      , status = initial_status
                      , viewAllowedMappings = accessFlags creation
                      , viewSize = size creation }
  where
    initial_data = fromMaybe nullPtr (assertNotNull <$> initialData creation)
    safe_size = safeFromIntegral $ size creation
    (usage, access) = accessHints creation

    createBuffer = do
        buf <- mglGenBuffer
        if has_GL_ARB_buffer_storage
          then mglNamedBufferStorage
                   buf
                   safe_size
                   (castPtr initial_data)
                   (toConstantF $ accessFlags creation)
          else mglNamedBufferData buf
                                  safe_size
                                  (castPtr initial_data)
                                  (toConstant usage access)
        return (Buffer_ buf)

    assertNotNull ptr
        | ptr == nullPtr = error "newBuffer: initial data is a null pointer."
        | otherwise = ptr

-- | Maps (part) of a buffer to system memory space.
--
-- The mapping is valid until the buffer is garbage collected (in which case
-- the mapping is automatically unmapped) or when `unmap` is called on the
-- buffer.
--
-- You can not have two mappings going on at the same time.
map :: Buffer
    -> Int         -- ^ Offset, in bytes, from start of the buffer from where
                   --   to map.
    -> Int         -- ^ How many bytes to map.
    -> AccessFlags -- ^ What access is allowed in the mapping.
    -> IO (Ptr ())
map buffer offset num_bytes access_flags
    -- a lot of this implementation is just error checking...

    -- check that offset/num_bytes makes sense
    | offset < 0 || offset >= viewSize buffer ||
      num_bytes <= 0 ||
      offset + num_bytes >= viewSize buffer =
          error "map: requested mapping has invalid offset and/or range."
    | otherwise =
    withResource (resource buffer) $ \(Buffer_ buf) -> mask_ $ do
        bufstatus <- readIORef (status buffer)
        -- make sure buffer has not been alreayd mapped
        when (mapped bufstatus) $
            error "map: buffer is already mapped."
        -- can we really map with these access flags
        unless (canMapWith (viewAllowedMappings buffer) access_flags) $
            error $ "map: attempted to map buffer with " <> show access_flags
                 <> ", allowed mappings are: " <>
                 show (viewAllowedMappings buffer)

        ptr <- mglMapNamedBufferRange
            buf
            (safeFromIntegral offset)
            (safeFromIntegral num_bytes)
            (toConstantF access_flags)

        -- what if it just mysteriously fails? I think we caught most, if not
        -- all user errors so any other error should be some rare condition
        -- depending on external factors. I hope.
        when (ptr == nullPtr) $
            -- I am so sorry for any user who sees this error message.
            error $ "map: for some reason, mapping a buffer failed. " <>
                    "You might want to check OpenGL debug log."

        atomicModifyIORef' (status buffer) $ \old ->
            ( old { mapped = True }, () )

        return ptr

-- | Exception that is thrown from `unmap` when buffer corruption is detected.
--
-- Corruption can happen due to external factors and is system-specific.
data BufferCorruption = BufferCorruption Buffer
                        deriving ( Eq, Typeable )

instance Show BufferCorruption where
    show _ = "BufferCorruption <#Buffer>"

instance Exception BufferCorruption

-- | Unmaps a buffer.
--
-- Does nothing if the buffer was not mapped.
--
-- It is possible that the mapping become corrupt during the time it was
-- mapped. If there was corruption, `BufferCorruption` is thrown in this call.
unmap :: Buffer -> IO ()
unmap buffer = do
    bufstatus <- readIORef (status buffer)
    when (mapped bufstatus) $
        withResource (resource buffer) $ \(Buffer_ buf) -> mask_ $ do
            result <- mglUnmapNamedBuffer buf
            when (fromIntegral result == gl_FALSE) $
                throwIO $ BufferCorruption buffer
            atomicModifyIORef' (status buffer) $ \old ->
                ( old { mapped = False }, () )

-- | A convenience function over map/unmap that automatically unmaps the buffer
-- when done (even in the case of exceptions).
--
-- The arguments to this function are the same as for `map`, except for extra
-- action argument.
--
-- This calls `unmap` which means it can throw `BufferCorruption` when the
-- action is done.
--
-- There is a rare case that can happen if your action throws an exception AND
-- the unmapping throws an exception. Which exception is propagated upwards?
-- If this happens, this call silences `BufferCorruption` exception and
-- re-throws the user exception. This unfortunately means there is no way to
-- know if the buffer was corrupted if you threw an exception inside the
-- action.
withMapping :: Buffer
            -> Int
            -> Int
            -> AccessFlags
            -> (Ptr () -> IO a)   -- ^ The pointer is valid during this action.
            -> IO a
withMapping buffer offset num_bytes access_flags action =
    mask $ \restore -> do
        ptr <- map buffer offset num_bytes access_flags
        did_it_work <- try $ restore $ action ptr
        did_unmapping_work <- try $ unmap buffer
        case did_it_work of
            Left exc -> throwIO (exc :: SomeException)
            Right result -> do
                case did_unmapping_work of
                    Left no -> throwIO (no :: BufferCorruption)
                    Right () -> return result

