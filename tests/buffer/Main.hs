{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main ( main ) where

import Foreign.C.String
import Data.Bits
import Control.Concurrent
import Control.Exception
import qualified Data.Set as S
import Foreign.C.Types
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable
import Graphics.Caramia
import Graphics.Caramia.Prelude hiding ( init )
import Graphics.UI.SDL
import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit hiding ( Test )

foreign import ccall unsafe "memset" c_memset
    :: Ptr a -> CInt -> CSize -> IO (Ptr b)

setup :: IO a -> IO a
setup action = runInBoundThread $ withCString "buffer" $ \cstr -> do
    _ <- init SDL_INIT_VIDEO
    _ <- glSetAttribute SDL_GL_CONTEXT_MAJOR_VERSION 3
    _ <- glSetAttribute SDL_GL_CONTEXT_MINOR_VERSION 3
    _ <- glSetAttribute SDL_GL_CONTEXT_PROFILE_MASK SDL_GL_CONTEXT_PROFILE_CORE
    _ <- glSetAttribute SDL_GL_CONTEXT_FLAGS SDL_GL_CONTEXT_DEBUG_FLAG
    w <- createWindow cstr SDL_WINDOWPOS_UNDEFINED SDL_WINDOWPOS_UNDEFINED
                           1500 1000
                           (SDL_WINDOW_OPENGL .|.
                            SDL_WINDOW_SHOWN)
    ctx <- glCreateContext w
    finally (giveContext action) $ do
        glDeleteContext ctx
        destroyWindow w
        quit

main :: IO ()
main = defaultMain tests

tests :: [Test]
tests = [
    testCase "Invalidation does not crash and burn" invalidateSomeBuffers
  , testCase "I can create various types of buffers" createSomeBuffers
  , testCase "I cannot map write-only buffers for reading" writeOnlyTest
  , testCase "I cannot map read-only buffers for writing" readOnlyTest
  , testCase "I cannot map no-access buffers for anything" noAccessTest
  , testCase "I can map readwrite buffers for anything" readWriteTest
  , testCase "What I write I can get back" writeReadBackTest
  , testCase "Mapping with offset works" offsetMappingTest
  , testCase "Mapping with unsynchronized flag set doesn't crash" unsyncTest
  , testCase "Buffer copying works" copyBuffersTest
  , testCase "Explicit flushing tentatively works" explicitFlushTest
  , testCase ("I cannot invoke `explicitFlush` on a mapping without " <>
              "`ExplicitFlush` flag.") incorrectExplicitFlushTest
  , testCase "I cannot map with `ExplicitFlush` and no writing access."
             noWriteExplicitFlushTest
  , testCase "I cannot invoke `explicitFlush` without a mapping."
             explicitFlushNoMapTest
    ]

explicitFlushNoMapTest :: IO ()
explicitFlushNoMapTest = setup $ do
    buf <- newBufferFromList (take 10000 $ repeat (12 :: Word8))
                             (\old -> old { accessFlags = ReadWriteAccess })
    expectException $ explicitFlush buf 10 10

noWriteExplicitFlushTest :: IO ()
noWriteExplicitFlushTest = setup $ do
    buf <- newBufferFromList (take 10000 $ repeat (12 :: Word8))
                             (\old -> old { accessFlags = ReadWriteAccess })
    expectException $ withMapping2 (S.singleton ExplicitFlush)
                      100 100 ReadAccess buf $ const $ return ()
    expectException $ withMapping2 (S.singleton ExplicitFlush)
                      100 100 NoAccess buf $ const $ return ()

incorrectExplicitFlushTest :: IO ()
incorrectExplicitFlushTest = setup $ do
    buf <- newBufferFromList (take 10000 $ repeat (12 :: Word8))
                             (\old -> old { accessFlags = ReadWriteAccess })
    withMapping 100 100 WriteAccess buf $ \_ -> do
        expectException $ explicitFlush buf 10 10


explicitFlushTest :: IO ()
explicitFlushTest = setup $ do
    buf <- newBufferFromList (take 10000 $ repeat (12 :: Word8))
                             (\old -> old { accessFlags = ReadWriteAccess })
    withMapping2 (S.singleton ExplicitFlush) 7800 1000 WriteAccess buf $ \ptr -> do
        pokeElemOff (ptr :: Ptr Word8) 10 8
        pokeElemOff (ptr :: Ptr Word8) 11 9
        pokeElemOff (ptr :: Ptr Word8) 12 10
        explicitFlush buf 8 3
    withMapping 7800 100 ReadAccess buf $ \ptr -> do
        let assM x y = do z <- peekElemOff (ptr :: Ptr Word8) x
                          assertEqual "explicitly flushed bytes are the same"
                                      y z
        assM 10 8
        assM 11 9
        assM 12 10

copyBuffersTest :: IO ()
copyBuffersTest = setup $ do
    buf <- newBufferFromList (take 10000 $ repeat (77 :: Word8))
                             (\old -> old { accessFlags = ReadWriteAccess })
    buf2 <- newBufferFromList (take 20000 $ repeat (99 :: Word8))
                              (\old -> old { accessFlags = ReadWriteAccess })
    buf3 <- newBufferFromList (replicate 300 111 ++ replicate 300 222 :: [Word8])
                              (\old -> old { accessFlags = ReadWriteAccess })
    -- copy from another to another
    copy buf 11 buf2 13 5
    -- copying inside the same buffer
    copy buf3 3 buf3 311 5

    withMapping 0 100 ReadAccess buf $ \ptr -> do
        let cptr = castPtr ptr :: Ptr Word8
            ass = assertEqual "bytes copied look correct"
            assM x off = do v <- peekElemOff cptr off
                            ass x v
        assM 77 0
        assM 77 1
        assM 77 2
        assM 77 3
        assM 77 4
        assM 77 10
        assM 99 11
        assM 99 12
        assM 99 13
        assM 99 14
        assM 99 15
        assM 77 16
    withMapping 0 600 ReadAccess buf3 $ \ptr -> do
        let cptr = castPtr ptr :: Ptr Word8
            ass = assertEqual "bytes copied look correct"
            assM x off = do v <- peekElemOff cptr off
                            ass x v
        assM 111 0
        assM 111 1
        assM 111 2
        assM 222 3
        assM 222 4
        assM 222 5
        assM 222 6
        assM 222 7
        assM 111 8
        assM 111 9
        assM 111 10

offsetMappingTest :: IO ()
offsetMappingTest = setup $ do
    buf <- newBufferFromList (take 10000 $ cycle [(0 :: Word8)..])
                             (\old -> old { accessFlags = ReadWriteAccess })
    for_ offsets $ \off -> withMapping off 32 ReadAccess buf $ \ptr -> do
        let cptr = castPtr ptr :: Ptr Word8
            expect m v = assertEqual "a byte read from a buffer should be the same that was written"
                                   (fromIntegral $ (off+m) `mod` 256)
                                   v
        v1 <- peekElemOff cptr 0
        v2 <- peekElemOff cptr 1
        v3 <- peekElemOff cptr 2
        v4 <- peekElemOff cptr 3
        expect 0 v1
        expect 1 v2
        expect 2 v3
        expect 3 v4
  where
    offsets = [ 0, 16, 1024, 2048, 2040, 8000 ]

writeReadBackTest :: IO ()
writeReadBackTest = setup $ do
    buf <- newBuffer defaultBufferCreation
               { size = 1000000
               , accessFlags = ReadWriteAccess }
    withMapping 0 1000000 WriteAccess buf $ \ptr -> do
        void $ c_memset ptr 33 1000000
        pokeElemOff (castPtr ptr :: Ptr Word8) 12371 177
    withMapping 0 1000000 ReadAccess buf $ \ptr -> do
        let cptr = castPtr ptr :: Ptr Word8
        v <- peekElemOff cptr 12371
        assertEqual "a byte read from a buffer should be the same that was written"
                    177
                    v
        v_prec <- peekElemOff cptr 12370
        v_succ <- peekElemOff cptr 12372
        assertEqual "a byte read from a buffer should be the same that was written"
                    33
                    v_prec
        assertEqual "a byte read from a buffer should be the same that was written"
                    33
                    v_succ

writeOnlyTest :: IO ()
writeOnlyTest = setup $ do
    buf <- newBuffer defaultBufferCreation
               { size = 1024
               , accessFlags = WriteAccess }
    expectException $ bufferMap 0 1024 ReadAccess buf
    expectException $ bufferMap 0 1024 ReadWriteAccess buf
    withMapping 0 1024 WriteAccess buf (const $ return ())

readOnlyTest :: IO ()
readOnlyTest = setup $ do
    buf <- newBuffer defaultBufferCreation
               { size = 1024
               , accessFlags = ReadAccess }
    expectException $ bufferMap 0 1024 WriteAccess buf
    expectException $ bufferMap 0 1024 ReadWriteAccess buf
    withMapping 0 1024 ReadAccess buf (const $ return ())

noAccessTest :: IO ()
noAccessTest = setup $ do
    buf <- newBuffer defaultBufferCreation
               { size = 1024
               , accessFlags = NoAccess }
    for_ allAccessFlags $ \flags ->
        expectException $ bufferMap 0 1024 flags buf

readWriteTest :: IO ()
readWriteTest = setup $ do
    buf <- newBuffer defaultBufferCreation
               { size = 1024
               , accessFlags = ReadWriteAccess }
    for_ allAccessFlags $ \flags ->
        when (flags /= NoAccess) $
            withMapping 0 1024 flags buf (const $ return ())

expectException :: IO a -> IO ()
expectException action = do
    result <- try action
    case result of
        Left (_ :: SomeException) -> return ()
        Right _ -> error "expected exception"

withSomeBuffers :: (BufferCreation -> Buffer -> IO ()) -> IO ()
withSomeBuffers action =
    for_ allAccessHints $ \hints ->
    for_ allAccessFlags $ \flags ->
    for_ sizes $ \size -> do
        let c = defaultBufferCreation {
                    size = size
                  , initialData = Nothing
                  , accessFlags = flags
                  , accessHints = hints }
        newBuffer c >>= action c
        allocaBytes size $ \ptr -> do
            let c' = c { initialData = Just ptr }
            newBuffer c' >>= action c'
        runPendingFinalizers

unsyncTest :: IO ()
unsyncTest = setup $ withSomeBuffers $ \cr buf -> do
    when (accessFlags cr == WriteAccess ||
          accessFlags cr == ReadWriteAccess) $
        withMapping2 (S.singleton UnSynchronized)
                     0
                     (size cr)
                     WriteAccess
                     buf $ const $ return ()

invalidateSomeBuffers :: IO ()
invalidateSomeBuffers = setup $ withSomeBuffers $ \_ -> invalidateBuffer

createSomeBuffers :: IO ()
createSomeBuffers = setup $ withSomeBuffers (\_ _ -> return ())

sizes :: [Int]
sizes = [ 1, 2, 3, 4, 8, 11, 12, 512, 1024, 1023, 1025, 1000000 ]

allAccessFlags :: [AccessFlags]
allAccessFlags = [ReadAccess, WriteAccess, ReadWriteAccess, NoAccess]

allAccessHints :: [(AccessFrequency, AccessNature)]
allAccessHints = [ (f, n) | f <- [Stream, Static, Dynamic]
                          , n <- [Draw, Read, Copy] ]

