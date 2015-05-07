{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main ( main ) where

import Foreign.C.String
import Data.Bits
import Control.Concurrent
import Control.Exception
import Control.Monad.IO.Class ( liftIO )
import qualified Data.IntMap.Strict as IM
import Graphics.Caramia
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude hiding ( init )
import Graphics.UI.SDL
import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit hiding ( Test )

setup :: IO a -> IO a
setup action = runInBoundThread $ withCString "texture" $ \cstr -> do
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

