{-# LANGUAGE NoImplicitPrelude #-}

module Main ( main ) where

import Graphics.UI.SDL
import Graphics.Rendering.OpenGL.Raw
import Data.Bits
import Graphics.Caramia.Prelude hiding ( init )
import Foreign.C.String
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Ptr

main :: IO ()
main =
    withCString "gl-test" $ \cstr -> do
        let errCheck s x = unless (x == 0) $ error s
        errCheck "Can't initialize SDL" =<< init SDL_INIT_VIDEO
        errCheck "Can't set major version" =<< glSetAttribute SDL_GL_CONTEXT_MAJOR_VERSION 3
        errCheck "Can't set minor version" =<< glSetAttribute SDL_GL_CONTEXT_MINOR_VERSION 3
        errCheck "Can't set profile mask" =<< glSetAttribute SDL_GL_CONTEXT_PROFILE_MASK SDL_GL_CONTEXT_PROFILE_CORE
        window <- createWindow cstr SDL_WINDOWPOS_UNDEFINED SDL_WINDOWPOS_UNDEFINED
                                    500 500
                                    (SDL_WINDOW_OPENGL .|.
                                     SDL_WINDOW_SHOWN)
        c <- glCreateContext window
        _ <- glMakeCurrent window c
        (major1, minor1) <- alloca $ \major_ptr -> alloca $ \minor_ptr -> do
            -- in case glGetIntegerv is completely broken, set initial values for
            -- major and minor pointers
            poke major_ptr 0
            poke minor_ptr 0
            glGetIntegerv gl_MAJOR_VERSION major_ptr
            glGetIntegerv gl_MINOR_VERSION minor_ptr
            (,) <$> peek major_ptr <*> peek minor_ptr
        putStrLn $ "glGetIntegerv gl_*_VERSION: " ++ show major1 ++ "." ++ show minor1
        ver_raw <- castPtr `fmap` glGetString gl_VERSION
        ver_cptr <- peekCString ver_raw
        putStrLn $ "glGetString gl_VERSION: " ++ ver_cptr
