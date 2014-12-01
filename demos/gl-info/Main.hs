module Main ( main ) where

import Prelude hiding (init )
import Graphics.UI.SDL
import Graphics.Rendering.OpenGL.Raw
import Data.Bits
import Control.Applicative
import Control.Monad
import Foreign.C.String
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Ptr

main :: IO ()
main =
    withCString "gl-test" $ \cstr -> do
        let errCheck s x = unless (x == 0) $ error s
        errCheck "Can't initialize SDL" =<< init initFlagVideo
        errCheck "Can't set major version" =<< glSetAttribute glAttrContextMajorVersion 3
        errCheck "Can't set minor version" =<< glSetAttribute glAttrContextMinorVersion 3
        errCheck "Can't set profile mask" =<< glSetAttribute glAttrContextProfileMask glProfileCore
        window <- createWindow cstr windowPosUndefined windowPosUndefined
                                    500 500
                                    (windowFlagOpenGL .|.
                                     windowFlagShown)
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
