{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main ( main ) where

import Control.Concurrent
import Control.Exception
import qualified Data.Set as S
import Foreign.C.Types
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable
import Graphics.Caramia
import Graphics.Caramia.Prelude
import Linear.V2
import SDL
import System.IO.Unsafe ( unsafePerformIO )
import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit hiding ( Test )

foreign import ccall unsafe "memset" c_memset
    :: Ptr a -> CInt -> CSize -> IO (Ptr b)

sdlLock :: MVar ()
sdlLock = unsafePerformIO $ newMVar ()
{-# NOINLINE sdlLock #-}

setup :: IO a -> IO a
setup action = runInBoundThread $ withMVar sdlLock $ \_ -> do
    initialize [InitEverything]
    let glconfig = defaultOpenGL {
                    glProfile = Core Normal 3 3
                    }
    w <- createWindow "buffer" defaultWindow {
            windowOpenGL = Just glconfig
        , windowSize = V2 1500 1000
        }
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
    ]

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

