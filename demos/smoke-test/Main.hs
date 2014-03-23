module Main ( main ) where

import Caramia
import Caramia.Math

import Graphics.UI.SDL
import qualified Graphics.UI.SDL as SDL
import Foreign.C.String
import Control.Exception
import Data.Foldable
import Data.Bits
import Data.Word
import Data.Monoid
import qualified Data.Text as T
import System.Mem

main :: IO ()
main =
    bracket (SDL.init initFlagVideo)
            (\_ -> quit)
            (\_ -> program)

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
            for_ [1..10000 :: Integer] $ \_ -> do
                buf <- newBuffer defaultBufferCreation { size = 1024
                                                       , accessFlags =
                                                           WriteAccess }
                withMapping 0 500 WriteAccess buf $ \_ -> return ()
                runPendingFinalizers
            -- Make some buffers but with much larger size and ReadAccess
            for_ [1..10000 :: Integer] $ \_ -> do
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
                   , pipeline = pipeline
                   , sourceData = PrimitivesWithIndices {
                       indexBuffer = buf
                     , indexOffset = 17
                     , indexType = IWord16 } }
                draw drawCommand {
                     primitiveType = LineLoop
                   , primitivesVAO = vao2
                   , pipeline = pipeline
                   , numIndices = 8
                   , numInstances = 999
                   , sourceData = Primitives {
                       firstIndex = 3 } }

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

