{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main ( main ) where

import Control.Monad.IO.Class
import Control.Monad.Trans.State.Strict
import Control.Monad.Trans.Class ( lift )
import Data.Bits
import Data.Text ( Text )
import qualified Data.Vector.Storable as V
import Foreign.C.String
import Foreign.Ptr
import Foreign.Storable
import Graphics.Caramia.Prelude hiding ( init )
import Graphics.Caramia
import Graphics.UI.SDL

main :: IO ()
main =
    withCString "query-objects" $ \cstr -> do
        _ <- init SDL_INIT_VIDEO
        _ <- glSetAttribute SDL_GL_CONTEXT_MAJOR_VERSION 3
        _ <- glSetAttribute SDL_GL_CONTEXT_MINOR_VERSION 3
        _ <- glSetAttribute SDL_GL_CONTEXT_PROFILE_MASK SDL_GL_CONTEXT_PROFILE_CORE
        _ <- glSetAttribute  SDL_GL_CONTEXT_FLAGS SDL_GL_CONTEXT_DEBUG_FLAG
        window <- createWindow cstr SDL_WINDOWPOS_UNDEFINED SDL_WINDOWPOS_UNDEFINED
                                    500 500
                                    (SDL_WINDOW_OPENGL .|.
                                     SDL_WINDOW_SHOWN)
        _ <- glCreateContext window
        giveContext $ do
            color_program <- newPipelineVF passThroughVertex2DShader
                                           coloredFragmentProgram
                                           mempty
            color_loc <- getUniformLocation "color" color_program
            offset_loc <- getUniformLocation "offset" color_program
            vao <- newVAO
            vao2 <- newVAO
            pos_vec <- newImmutableBufferFromVector $ V.fromList
                            [ -0.3, -0.3, 0.0
                            , 0.3, -0.3, 0.0
                            , -0.3, 0.3, 0.0
                            , 0.3, 0.3, 0.0 ]
            pos2_vec <- newImmutableBufferFromVector $ V.fromList
                            [ -0.2, -0.2, 0.1
                            , 0.2, -0.2, 0.1
                            , -0.2, 0.2, 0.1
                            , 0.2, 0.2, 0.1 ]
            sourceVertexData pos_vec
                             defaultSourcing {
                                 components = 3
                               , attributeIndex = 0
                               , sourceType = SFloat
                             }
                             vao
            sourceVertexData pos2_vec
                             defaultSourcing {
                                 components = 3
                               , attributeIndex = 0
                               , sourceType = SFloat
                             }
                             vao2

            flip evalStateT (False, -1.0 :: Float) $ forever $ do
                clear clearing { clearDepth = Just 1.0
                               , clearColor = Just $ rgba 0.1 0.1 0.1 1.0 }
                      screenFramebuffer

                samples <- newNumericQuery SamplesPassed
                any_samples <- newBooleanQuery AnySamplesPassed
                elapsed <- newNumericQuery TimeElapsed
                go_right <- fst <$> get

                runDraws defaultDrawParams { pipeline = color_program
                                        , fragmentPassTests =
                                            defaultFragmentPassTests {
                                                depthTest = Just Less } } $ do
                    x <- lift $ snd <$> get
                    setUniform (rgba 1 0 0 1) color_loc color_program
                    setUniform (x, 0.0 :: Float) offset_loc color_program
                    drawR drawCommand {
                        primitiveType = TriangleStrip
                      , primitivesVAO = vao
                      , numIndices = 4
                      , sourceData = Primitives { firstIndex = 0 } }
                    if go_right
                      then beginQuery samples
                      else beginQuery any_samples
                    beginQuery elapsed
                    setUniform (0 :: Float, 0 :: Float) offset_loc color_program
                    setUniform (rgba 0 1 1 1) color_loc color_program
                    drawR drawCommand {
                        primitiveType = TriangleStrip
                      , primitivesVAO = vao2
                      , numIndices = 4
                      , sourceData = Primitives { firstIndex = 0 } }
                    if go_right
                      then endQuery samples
                      else endQuery any_samples
                    endQuery elapsed

                elapsed_result <- getResults elapsed
                liftIO $ do
                    if go_right
                      then do
                          samples_result <- getResults samples
                          putStr $ "samples: " <> show samples_result <> " "
                      else do
                          any_samples_result <- getResults any_samples
                          putStr $ "any samples: " <> show any_samples_result <> " "
                    putStrLn $ "elapsed: " <> show elapsed_result

                modify (\(x, y) -> (x, if go_right then y+0.003 else y-0.003))
                y <- snd <$> get
                when (y > 1.0) $ modify (\(_, y) -> (False, y))
                when (y < -1.0) $ modify (\(_, y) -> (True, y))

                liftIO $ glSwapWindow window
                runPendingFinalizers

newImmutableBufferFromVector :: V.Vector Float -> IO Buffer
newImmutableBufferFromVector vec =
    V.unsafeWith vec $ \ptr -> do
        let byte_size = sizeOf (undefined :: Float) * V.length vec
        newBuffer defaultBufferCreation {
                 size = byte_size
               , initialData = Just $ castPtr ptr
               , accessHints = (Static, Draw)
               , accessFlags = NoAccess }

passThroughVertex2DShader :: Text
passThroughVertex2DShader =
    "#version 330\n" <>
    "uniform vec2 offset;\n" <>
    "layout (location=0) in vec2 pos;\n" <>
    "void main() {\n" <>
    "    gl_Position = vec4(pos+offset, 0, 1);\n" <>
    "}\n"

coloredFragmentProgram :: Text
coloredFragmentProgram =
    "#version 330\n" <>
    "uniform vec4 color;\n" <>
    "layout (location=0) out vec4 fcolor;\n" <>
    "void main() {\n" <>
    "    fcolor = color;\n" <>
    "}\n"

