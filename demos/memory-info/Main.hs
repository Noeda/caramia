module Main ( main ) where

import Control.Monad
import Graphics.Caramia
import Graphics.UI.SDL
import Data.Bits
import Foreign.C.String
import Prelude hiding ( init )

main :: IO ()
main = 
    withCString "smoke-test" $ \cstr -> do
        void $ init SDL_INIT_VIDEO
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
            putStrLn "Attempting to retrieve GPU memory information..."
            print =<< getMemoryInfo

