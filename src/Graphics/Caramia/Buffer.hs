-- | Buffer objects.
--
-- These are chunks of memory (typically) kept on the GPU.
--
-- <https://www.opengl.org/wiki/Buffer_Object>
--

{-# LANGUAGE DeriveDataTypeable, NoImplicitPrelude #-}

module Graphics.Caramia.Buffer
    ( -- * Creation
      newBuffer
    , newBufferFromBS
    , newBufferFromList
    , newBufferFromVector
    -- ** Types
    , Buffer()
    , AccessFrequency(..)
    , AccessNature(..)
    , AccessFlags(..)
    , MapFlag(..)
    , BufferCreation(..)
    , defaultBufferCreation
      -- * Invalidation
    , invalidateBuffer
      -- * Manipulation
    , bufferMap
    , bufferMap2
    , bufferUnmap
    , copy
    , withMapping
    , withMapping2
    , uploadVector
      -- * Views
    , viewSize
    , viewAllowedMappings
      -- * Exceptions
    , BufferCorruption(..)
    )
    where

import Control.Monad.Catch
import Control.Monad.IO.Class
import Data.Bits
import qualified Data.ByteString as B
import qualified Data.ByteString.Unsafe as B
import qualified Data.Set as S
import qualified Data.Vector.Storable as V
import Foreign
import Graphics.Caramia.Buffer.Internal
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude hiding ( map )
import Graphics.Caramia.Resource
import Graphics.GL.Ext.ARB.BufferStorage
import Graphics.GL.Ext.ARB.InvalidateSubdata

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

canMapWith :: AccessFlags -> AccessFlags -> Bool
canMapWith ReadWriteAccess _ = True
canMapWith WriteAccess WriteAccess = True
canMapWith WriteAccess _ = False
canMapWith ReadAccess ReadAccess = True
canMapWith ReadAccess _ = False
canMapWith NoAccess NoAccess = True
canMapWith NoAccess _ = False

toConstant :: AccessFrequency -> AccessNature -> GLuint
toConstant Stream Draw = GL_STREAM_DRAW
toConstant Stream Read = GL_STREAM_READ
toConstant Stream Copy = GL_STREAM_COPY
toConstant Static Draw = GL_STATIC_DRAW
toConstant Static Read = GL_STATIC_READ
toConstant Static Copy = GL_STATIC_COPY
toConstant Dynamic Draw = GL_DYNAMIC_DRAW
toConstant Dynamic Read = GL_DYNAMIC_READ
toConstant Dynamic Copy = GL_DYNAMIC_COPY

toConstantF :: AccessFlags -> GLbitfield
toConstantF ReadAccess      = GL_MAP_READ_BIT
toConstantF WriteAccess     = GL_MAP_WRITE_BIT
toConstantF ReadWriteAccess = GL_MAP_READ_BIT .|. GL_MAP_WRITE_BIT
toConstantF NoAccess        = 0

toConstantMF :: S.Set MapFlag -> GLbitfield
toConstantMF ss
    | S.null ss = 0
    | otherwise =
        if UnSynchronized `S.member` ss
          then GL_MAP_UNSYNCHRONIZED_BIT
          else 0

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

-- | Creates a new buffer according to `BufferCreation` specification.
newBuffer :: MonadIO m
          => BufferCreation
          -> m Buffer
newBuffer creation
    | size creation <= 0 =
        fail "newBuffer: size must be positive."
    | otherwise = liftIO $ mask_ $ do
        resource <-
            newResource createBuffer
                        (\(Buffer_ bufname) -> mglDeleteBuffer bufname)
                        (return ())
        initial_status <- newIORef BufferStatus { mapped = False }
        oi <- newUnique
        return Buffer { resource = resource
                      , status = initial_status
                      , viewAllowedMappings = accessFlags creation
                      , viewSize = size creation
                      , ordIndex = oi }
  where
    initial_data = fromMaybe nullPtr (assertNotNull <$> initialData creation)
    safe_size = safeFromIntegral $ size creation
    (usage, access) = accessHints creation

    createBuffer = do
        if gl_ARB_buffer_storage
          then createBufferByBufferStorage
          else createBufferOldWay

    createBufferByBufferStorage = do
        buf <- mglGenBuffer
        mglNamedBufferStorage buf
                              safe_size
                              (castPtr initial_data)
                              (toConstantF $ accessFlags creation)
        return (Buffer_ buf)

    createBufferOldWay = do
        buf <- mglGenBuffer
        mglNamedBufferData buf
                           safe_size
                           (castPtr initial_data)
                           (toConstant usage access)
        return (Buffer_ buf)

    assertNotNull ptr
        | ptr == nullPtr = error "newBuffer: initial data is a null pointer."
        | otherwise = ptr

-- | Creates a buffer from a storable vector.
--
-- This is a convenience function.
newBufferFromVector :: (Storable a, MonadIO m)
                    => V.Vector a
                    -> (BufferCreation -> BufferCreation)
                    -- ^ A hook to modify `BufferCreation`. You can use `id`.
                    -- By default all access is forbidden and buffer usage is
                    -- static, draw. Don't shrink buffer size or this may
                    -- crash.
                    -> m Buffer
newBufferFromVector vec modifier = liftIO $
    V.unsafeWith vec $ \src_ptr ->
        newBuffer (modifier defaultBufferCreation {
            accessHints = (Static, Draw)
          , size = byte_size
          , initialData = Just $ castPtr src_ptr
          , accessFlags = NoAccess })
  where
    byte_size = V.length vec * sizeOf (undefined `asTypeOf` (vec V.! 0))

-- | Creates a buffer from a list.
--
-- The principle is the same as in `newBufferFromVector`.
newBufferFromList :: (Storable a, MonadIO m)
                  => [a]
                  -> (BufferCreation -> BufferCreation)
                  -> m Buffer
newBufferFromList lst modifier = liftIO $
    withArrayLen lst $ \num_items ptr ->
        let byte_size = num_items*sizeOf (undefined `asTypeOf` (lst !! 0))
         in newBuffer (modifier defaultBufferCreation {
             accessHints = (Static, Draw)
           , size = byte_size
           , initialData = Just $ castPtr ptr
           , accessFlags = NoAccess })

-- | Creates a buffer from a strict bytestring.
--
-- The principle is the same as in `newBufferFromVector`.
newBufferFromBS :: MonadIO m
                => B.ByteString
                -> (BufferCreation -> BufferCreation)
                -> m Buffer
newBufferFromBS bs modifier = liftIO $
    B.unsafeUseAsCStringLen bs $ \(ptr, size) ->
        newBuffer (modifier defaultBufferCreation {
            accessHints = (Static, Draw)
          , size = size
          , initialData = Just $ castPtr ptr
          , accessFlags = NoAccess })

-- | Same as `bufferMap` but allows more control over mapping.
--
-- @ bufferMap = bufferMap2 [] @
bufferMap2 :: MonadIO m
           => S.Set MapFlag
           -> Int
           -> Int
           -> AccessFlags
           -> Buffer
           -> m (Ptr ())
bufferMap2 map_flags offset num_bytes access_flags buffer
    -- a lot of this implementation is just error checking...

    -- check that offset/num_bytes makes sense
    | offset < 0 || offset >= viewSize buffer ||
      num_bytes <= 0 ||
      offset + num_bytes > viewSize buffer =
          error $ "bufferMap2: requested mapping has invalid offset " <>
                  "and/or range. " <>
                  "Buffer size is " <> show (viewSize buffer) <> ", " <>
                  "requested mapping was [" <> show offset <> ".." <>
                  show (offset + num_bytes - 1) <> "]."
    | access_flags == NoAccess =
          error "bufferMap2: cannot map with NoAccess access flags."
    | S.member UnSynchronized map_flags &&
      (access_flags == ReadWriteAccess ||
       access_flags == ReadAccess) =
          error "bufferMap2: cannot map for reading with unsynchronized flag."
    | otherwise =
    liftIO $ withResource (resource buffer) $ \(Buffer_ buf) -> mask_ $ do
        bufstatus <- readIORef (status buffer)
        -- make sure buffer has not been already mapped
        when (mapped bufstatus) $
            error "bufferMap2: buffer is already mapped."
        -- can we really map with these access flags
        unless (canMapWith (viewAllowedMappings buffer) access_flags) $
            error $ "bufferMap2: attempted to map buffer with " <> show access_flags
                 <> ", allowed mappings are: " <>
                 show (viewAllowedMappings buffer)

        ptr <- mglMapNamedBufferRange
            buf
            (safeFromIntegral offset)
            (safeFromIntegral num_bytes)
            (toConstantF access_flags .|. toConstantMF map_flags)

        -- what if it just mysteriously fails? I think we caught most, if not
        -- all user errors so any other error should be some rare condition
        -- depending on external factors. I hope.
        when (ptr == nullPtr) $
            -- I am so sorry for any user who sees this error message.
            error $ "bufferMap2: for some reason, mapping a buffer failed. " <>
                    "You might want to check OpenGL debug log."

        atomicModifyIORef' (status buffer) $ \old ->
            ( old { mapped = True }, () )

        return ptr

-- | Maps (part) of a buffer to system memory space.
--
-- The mapping is valid until the buffer is garbage collected (in which case
-- the mapping is automatically unmapped) or when `bufferUnmap` is called on the
-- buffer.
--
-- You can not have two mappings going on at the same time.
bufferMap :: MonadIO m
          => Int         -- ^ Offset, in bytes, from start of the buffer from where
                        --   to map.
          -> Int         -- ^ How many bytes to map.
          -> AccessFlags -- ^ What access is allowed in the mapping.
          -> Buffer
          -> m (Ptr ())
bufferMap = bufferMap2 S.empty

-- | Exception that is thrown from `bufferUnmap` when buffer corruption is detected.
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
--
-- Corruption means that the contents of the buffer are now undefined.
bufferUnmap :: MonadIO m => Buffer -> m ()
bufferUnmap buffer = liftIO $ do
    bufstatus <- readIORef (status buffer)
    when (mapped bufstatus) $
        withResource (resource buffer) $ \(Buffer_ buf) -> mask_ $ do
            result <- mglUnmapNamedBuffer buf
            when (result == GL_FALSE) $
                throwM $ BufferCorruption buffer
            atomicModifyIORef' (status buffer) $ \old ->
                ( old { mapped = False }, () )

-- | Same as `withMapping` but with map flags.
--
-- See `bufferMap2`.
withMapping2 :: (MonadIO m, MonadMask m)
             => S.Set MapFlag
             -> Int
             -> Int
             -> AccessFlags
             -> Buffer
             -> (Ptr () -> m a)
             -> m a
withMapping2 map_flags offset num_bytes access_flags buffer action =
    mask $ \restore -> do
        ptr <- bufferMap2 map_flags offset num_bytes access_flags buffer
        did_it_work <- try $ restore $ action ptr
        did_unmapping_work <- try $ bufferUnmap buffer
        case did_it_work of
            Left exc -> throwM (exc :: SomeException)
            Right result ->
                case did_unmapping_work of
                    Left no -> throwM (no :: BufferCorruption)
                    Right () -> return result

-- | A convenience function over map/unmap that automatically unmaps the buffer
-- when done (even in the case of exceptions).
--
-- The arguments to this function are the same as for `bufferMap`, except for extra
-- action argument.
--
-- This calls `bufferUnmap` which means it can throw `BufferCorruption` when the
-- action is done.
--
-- There is a rare case that can happen if your action throws an exception AND
-- the unmapping throws an exception. Which exception is propagated upwards?
-- If this happens, this call silences `BufferCorruption` exception and
-- re-throws the user exception. This unfortunately means there is no way to
-- know if the buffer was corrupted if you threw an exception inside the
-- action.
withMapping :: (MonadIO m, MonadMask m)
            => Int
            -> Int
            -> AccessFlags
            -> Buffer
            -> (Ptr () -> m a)   -- ^ The pointer is valid during this action.
            -> m a
withMapping = withMapping2 S.empty

-- | A convenience function to upload a storable vector to a buffer.
--
-- The buffer must be in an unmapped state and must be write-mappable.
uploadVector :: (MonadIO m, MonadMask m, V.Storable a)
             => V.Vector a    -- ^ The vector from which to pull data.
             -> Int           -- ^ Offset, in bytes, to which point in the
                              --   buffer to copy the data.
             -> Buffer
             -> m ()
uploadVector vec offset buffer =
    liftIO $ V.unsafeWith vec $ \src_ptr ->
        withMapping offset byte_size WriteAccess buffer $ \tgt_ptr ->
            copyBytes tgt_ptr (castPtr src_ptr) byte_size
  where
    byte_size = V.length vec * sizeOf (undefined `asTypeOf` (vec V.! 0))

-- | Copies bytes from one buffer to another.
--
-- The buffers must not be mapped; however this call can bypass the access
-- flags set in `newBuffer`. That is, you can copy data even to a buffer that
-- was set as not writable or copy from a buffer that was set as not readable.
--
-- This is faster than mapping both buffers and then doing a memcpy() style
-- copying in system memory because this call does not require a round-trip to
-- the driver.
--
-- You can use the same buffer for both destination and source but the copying
-- area may not overlap.
--
-- Requires either OpenGL 3.1 or @ GL_ARB_copy_buffer @.
copy :: MonadIO m
     => Buffer      -- ^ Destination buffer.
     -> Int         -- ^ Offset in destination buffer.
     -> Buffer      -- ^ Source buffer.
     -> Int         -- ^ Offset in source buffer.
     -> Int         -- ^ How many bytes to copy.
     -> m ()
copy dst_buffer dst_offset src_buffer src_offset num_bytes
    | dst_offset < 0 ||
      src_offset < 0 ||
      dst_offset + num_bytes > viewSize dst_buffer ||
      src_offset + num_bytes > viewSize src_buffer ||
      num_bytes < 0 =
          error "copy: invalid offsets/byte sizes to make a buffer copy."
    | overlaps = error "copy: copying area overlaps."
    | otherwise =
        liftIO $ withResource (resource dst_buffer) $ \(Buffer_ dst) ->
            withResource (resource src_buffer) $ \(Buffer_ src) -> do
                dst_status <- readIORef (status dst_buffer)
                when (mapped dst_status) $
                    error "copy: destination buffer is mapped."
                src_status <- readIORef (status src_buffer)
                when (mapped src_status) $
                    error "copy: source buffer is mapped."

                when (num_bytes > 0) $
                    mglNamedCopyBufferSubData
                        src
                        dst
                        (safeFromIntegral src_offset)
                        (safeFromIntegral dst_offset)
                        (safeFromIntegral num_bytes)

  where
    overlaps
        | dst_buffer /= src_buffer = False
        | dst_offset + num_bytes - 1 < src_offset ||
          dst_offset > src_offset + num_bytes - 1 = False
        | otherwise = True

-- | Invalidates the contents of a buffer.
--
-- This is you saying: \"I don't care what's in this buffer anymore. You can do
-- whatever you want with it.\".
--
-- The data may be gone or it may not be gone. Use this as a hint to the
-- implementation that you will not use the _current_ contents of the buffer
-- anymore.
--
-- This requires the OpenGL extension \"GL_ARB_invalidate_subdata\" but if this
-- extension is not present, then this simply does nothing.
--
-- See <https://www.opengl.org/wiki/Buffer_Object#Invalidation>.
invalidateBuffer :: MonadIO m => Buffer -> m ()
invalidateBuffer buf =
    when gl_ARB_invalidate_subdata $
        withResource (resource buf) $ \(Buffer_ name) ->
            glInvalidateBufferData name

