{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main ( main ) where

import Control.Concurrent
import Control.Exception
import Control.Monad.IO.Class ( liftIO )
import qualified Data.IntMap.Strict as IM
import Linear.V2
import Graphics.Caramia
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude
import SDL
import System.IO.Unsafe ( unsafePerformIO )
import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit hiding ( Test )

sdlLock :: MVar ()
sdlLock = unsafePerformIO $ newMVar ()
{-# NOINLINE sdlLock #-}

setup :: IO a -> IO a
setup action = runInBoundThread $ withMVar sdlLock $ \_ -> do
    initialize [InitEverything]
    let glconfig = defaultOpenGL {
                    glProfile = Core Normal 3 3
                    }
    w <- createWindow "texture" defaultWindow {
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
    testCase "Texture bindings don't linger in rendering (ex-bug)"
             textureLingerTest
    ]

textureLingerTest :: IO ()
textureLingerTest = setup $ do
    nop <- nopPipeline
    tex <- newTexture textureSpecification { topology = Tex2D 32 32
                                           , imageFormat = R8 }
    runDraws defaultDrawParams { pipeline = nop } $ do
        glActiveTexture GL_TEXTURE0
        b <- gi GL_TEXTURE_BINDING_2D
        liftIO $ assertEqual "texture is not absurd at texture unit 0" 0 b
        glActiveTexture GL_TEXTURE1
        b <- gi GL_TEXTURE_BINDING_2D
        liftIO $ assertEqual "texture is not absurd at texture unit 0" 0 b
        glActiveTexture GL_TEXTURE0

        setTextureBindings $ IM.fromList [(0, tex), (1, tex)]

        glActiveTexture GL_TEXTURE0
        b <- gi GL_TEXTURE_BINDING_2D
        liftIO $ assertBool "texture is set correctly in texture unit 0" (0 /= b)
        glActiveTexture GL_TEXTURE1
        b <- gi GL_TEXTURE_BINDING_2D
        liftIO $ assertBool "texture is set correctly in texture unit 1" (0 /= b)
        glActiveTexture GL_TEXTURE0

    glActiveTexture GL_TEXTURE0
    b <- gi GL_TEXTURE_BINDING_2D
    assertEqual "texture is not lingering at texture unit 0" 0 b

    glActiveTexture GL_TEXTURE1
    c <- gi GL_TEXTURE_BINDING_2D
    assertEqual "texture is not lingering at texture unit 1" 0 c

