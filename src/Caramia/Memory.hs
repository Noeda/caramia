-- | Retrieve video memory information.
--

{-# LANGUAGE MultiWayIf, NoImplicitPrelude, DeriveDataTypeable #-}

module Caramia.Memory
    ( getMemoryInfo
    , MemoryInfo(..) )
    where

import Caramia.Prelude
import Caramia.Context
import Caramia.Internal.OpenGLCApi
import Foreign.Marshal.Alloc
import Foreign.Storable

data MemoryInfo = MemoryInfo
    { availableVideoMemory :: !(Maybe Int)
    , totalVideoMemory     :: !(Maybe Int) }
    deriving ( Eq, Ord, Show, Read, Typeable )

-- | Returns information about current state of video memory.
--
-- There is no guarantee that all, or even any information is actually
-- returned. You need either \'GL_ATI_meminfo\' or \'GL_NVX_gpu_memory_info\'
-- extension to get any results.
--
-- No guarantees for accuracy either. Seriously, don't rely on this for
-- anything but rough estimation.
getMemoryInfo :: IO MemoryInfo
getMemoryInfo = do
    _ <- currentContextID  -- Just checking that OpenGL context is active.
    has_meminfo <- has_GL_ATI_meminfo
    has_gpu_memory_info <- has_GL_NVX_gpu_memory_info
    if | has_meminfo -> atiGetMem
       | has_gpu_memory_info -> nvidiaGetMem
       | otherwise -> return noInformation

noInformation :: MemoryInfo
noInformation = MemoryInfo
    { availableVideoMemory = Nothing
    , totalVideoMemory = Nothing }

atiGetMem :: IO MemoryInfo
atiGetMem =
    alloca $ \result_ptr -> do
        glGetIntegerv gl_TEXTURE_FREE_MEMORY_ATI result_ptr
        result <- peek result_ptr
        return MemoryInfo { availableVideoMemory = Just $ fromIntegral result
                          , totalVideoMemory = Nothing }

nvidiaGetMem :: IO MemoryInfo
nvidiaGetMem =
    alloca $ \result_ptr -> alloca $ \result2_ptr -> do
        glGetIntegerv gl_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX
                      result_ptr
        glGetIntegerv gl_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX
                      result2_ptr
        result <- peek result_ptr
        result2 <- peek result2_ptr
        return MemoryInfo { availableVideoMemory = Just $ fromIntegral result2
                          , totalVideoMemory = Just $ fromIntegral result }


