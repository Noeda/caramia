module Main ( main ) where

import Caramia
import Graphics.UI.SDL
import qualified Graphics.UI.SDL as SDL
import Foreign.C.String
import Control.Exception
import Data.Foldable
import Data.Bits

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
            return ()

