-- | Retrieve video memory information.
--

{-# LANGUAGE MultiWayIf, NoImplicitPrelude, DeriveDataTypeable #-}

module Graphics.Caramia.Memory
    ( getMemoryInfo
    , MemoryInfo(..) )
    where

import Graphics.Caramia.Prelude
import Graphics.Caramia.Context
import Graphics.Caramia.Context.Internal
import Graphics.Caramia.Internal.OpenGLCApi

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
getMemoryInfo :: Context s MemoryInfo
getMemoryInfo = liftFlextGLM $ do
    gl <- askGL
    if | has_GL_ATI_meminfo gl -> atiGetMem
       | has_GL_NVX_gpu_memory_info gl -> nvidiaGetMem
       | otherwise -> return noInformation

noInformation :: MemoryInfo
noInformation = MemoryInfo
    { availableVideoMemory = Nothing
    , totalVideoMemory = Nothing }

atiGetMem :: FlextGLM MemoryInfo
atiGetMem = do
    result <- gi gl_TEXTURE_FREE_MEMORY_ATI
    return MemoryInfo { availableVideoMemory = Just $ fromIntegral result
                      , totalVideoMemory = Nothing }

nvidiaGetMem :: FlextGLM MemoryInfo
nvidiaGetMem = do
    result <- gi gl_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX
    result2 <- gi gl_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX
    return MemoryInfo { availableVideoMemory = Just $ fromIntegral result2
                      , totalVideoMemory = Just $ fromIntegral result }


