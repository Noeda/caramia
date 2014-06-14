module Main ( main ) where

import Caramia.Prelude
import Caramia
import Caramia.Math

import Graphics.UI.SDL
import qualified Graphics.UI.SDL as SDL
import Foreign.C.String
import Control.Exception
import Data.Bits
import qualified Data.Text as T
import System.Mem

main :: IO ()
main = do
    putStrLn $ "This will run the smoke test. The smoke test merely tests " <>
               "that " <>
               "things don't crash and burn when trying to heavily draw " <>
               "something."
    putStrLn $ "However with some drivers it can drive the computer to " <>
               "become unresponsive and difficult to recover without a " <>
               "reboot."
    putStrLn "Press enter to start the smoke test."
    _ <- getLine
    putStrLn "Running the smoke test..."
    bracket_ (SDL.init initFlagVideo)
             quit
             program

program :: IO ()
program =
    withCString "smoke-test" $ \cstr -> do
        _ <- glSetAttribute glAttrContextMajorVersion 3
        _ <- glSetAttribute glAttrContextMinorVersion 2
        _ <- glSetAttribute glAttrContextProfileMask glProfileCore
        _ <- glSetAttribute glAttrContextFlags glContextFlagDebug
        window <- createWindow cstr windowPosUndefined windowPosUndefined
                                    500 500
                                    (windowFlagOpenGL .|.
                                     windowFlagShown)
        _ <- glCreateContext window
        giveContext $ do
            -- Make some buffers.
            for_ [1..100 :: Integer] $ \idx -> do
                buf <- newBuffer defaultBufferCreation { size = 1024
                                                       , accessFlags =
                                                           WriteAccess }
                withMapping 0 500 WriteAccess buf $ \_ -> return ()
                runPendingFinalizers
                putStrLn $ "Buffer creation: " <> show idx <> "/100"

            -- Make some buffers but with much larger size and ReadAccess
            for_ [1..100 :: Integer] $ \idx -> do
                buf <- newBuffer defaultBufferCreation { size = 102400
                                                       , accessFlags =
                                                           ReadAccess }
                withMapping 23 50000 ReadAccess buf $ \_ -> return ()
                copy buf 100 buf 500 400
                runPendingFinalizers

                -- Compile a gazillion shaders
                sh1 <- newShader fragmentShaderSrc Fragment
                pipeline <- newPipeline [sh1]
                loc <- getUniformLocation "tutturuu" pipeline
                setUniform (transpose44 identity44)
                           loc
                           pipeline
                setUniform identity44
                           loc
                           pipeline
                setUniform identity33
                           loc
                           pipeline
                setUniform (transpose33 identity33)
                           loc
                           pipeline

                tex <- newTexture
                    textureSpecification
                    { topology = TexCube { widthCube = 299 }
                    , mipmapLevels = 5
                    , imageFormat = SRGB8_ALPHA8 }

                uploadToTexture
                    (uploading2D buf 28 28 FWord32 UBGRA)
                    {
                        cubeSide = NegativeX
                    }
                    tex

                -- Make some stupid VAOs
                vao <- newVAO
                vao2 <- newVAO
                sourceVertexData buf
                                 ((defaultSourcingType (5 :: Word16))
                                  { offset = 123
                                  , components = 3
                                  , stride = 19
                                  , attributeIndex = 3
                                  , integerMapping = True })
                                 vao2
                sourceVertexData buf
                                 ((defaultSourcingType (5 :: Word16))
                                  { offset = 123
                                  , components = 3
                                  , stride = 19
                                  , instancingDivisor = 19
                                  , attributeIndex = 3
                                  , normalize = True
                                  , integerMapping = False })
                                 vao
                draw drawCommand {
                     primitiveType = LineLoop
                   , primitivesVAO = vao2
                   , numIndices = 8
                   , numInstances = 213
                   , sourceData = PrimitivesWithIndices {
                       indexBuffer = buf
                     , indexOffset = 17
                     , indexType = IWord16 } }
                     defaultDrawParams {
                     pipeline = pipeline
                     }

                fbuf <- newFramebuffer [ (ColorAttachment 3
                                       , frontTextureTarget tex) ]
                draw drawCommand {
                     primitiveType = LineLoop
                   , primitivesVAO = vao2
                   , numIndices = 8
                   , numInstances = 999
                   , sourceData = Primitives {
                       firstIndex = 3 } }
                     defaultDrawParams {
                     pipeline = pipeline
                   , targetFramebuffer = fbuf
                     }
                putStrLn $ "Drawing: " <> show idx <> "/100"

            performGC
            runPendingFinalizers
            return ()

fragmentShaderSrc :: T.Text
fragmentShaderSrc = "" <>
    "#version 140\n" <>
    "uniform mat3 tutturuu;\n" <>
    "void main() {\n" <>
    "    gl_FragColor = vec4(tutturuu[0][0]);\n" <>
    "}\n"

