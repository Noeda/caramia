{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main ( main ) where

import Control.Concurrent
import Control.Exception
import Linear.V2
import Graphics.Caramia
import Graphics.Caramia.Prelude
import SDL
import System.IO.Unsafe ( unsafePerformIO )
import Test.Framework
import Test.Framework.Providers.HUnit

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
    testCase "I can create the nop shader pipeline" nopPipelineTest
    ]

nopPipelineTest :: IO ()
nopPipelineTest = setup $ do
    x <- nopPipeline
    x `seq` return ()

