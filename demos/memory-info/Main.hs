module Main ( main ) where

import Graphics.Caramia
import Graphics.UI.SDL
import Data.Bits
import Foreign.C.String

main :: IO ()
main = 
    withCString "smoke-test" $ \cstr -> do
        _ <- glSetAttribute glAttrContextMajorVersion 3
        _ <- glSetAttribute glAttrContextMinorVersion 3
        _ <- glSetAttribute glAttrContextProfileMask glProfileCore
        _ <- glSetAttribute glAttrContextFlags glContextFlagDebug
        window <- createWindow cstr windowPosUndefined windowPosUndefined
                                    500 500
                                    (windowFlagOpenGL .|.
                                     windowFlagShown)
        _ <- glCreateContext window
        giveContext $ do
            putStrLn "Attempting to retrieve GPU memory information..."
            print =<< getMemoryInfo

