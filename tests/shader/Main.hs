{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main ( main ) where

import Foreign.C.String
import Data.Bits
import Control.Concurrent
import Control.Exception
import Graphics.Caramia
import Graphics.Caramia.Prelude hiding ( init )
import Graphics.UI.SDL
import System.IO.Unsafe ( unsafePerformIO )
import Test.Framework
import Test.Framework.Providers.HUnit

sdlLock :: MVar ()
sdlLock = unsafePerformIO $ newMVar ()
{-# NOINLINE sdlLock #-}

setup :: IO a -> IO a
setup action = runInBoundThread $ withMVar sdlLock $ \_ -> withCString "shader" $ \cstr -> do
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
    testCase "I can create the nop shader pipeline" nopPipelineTest
    ]

nopPipelineTest :: IO ()
nopPipelineTest = setup $ do
    x <- nopPipeline
    x `seq` return ()

