{-# LANGUAGE NoImplicitPrelude #-}

module Main ( main ) where

import Graphics.Caramia
import Graphics.Caramia.Prelude hiding ( init )
import Graphics.UI.SDL
import Data.Bits
import Foreign.C.String

main :: IO ()
main = 
    withCString "smoke-test" $ \cstr -> do
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
            putStrLn "Attempting to create all sorts of textures..."
            putStrLn "(check OpenGL debug log to see that everything works)"
            for_ [(topo, format) |
                  topo <- topologies, format <- formats] $ \(topo, format) -> do
                print (topo, format)
                void $ newTexture textureSpecification { topology = topo
                                                       , imageFormat = format
                                                       , mipmapLevels = 4 }
                runPendingFinalizers

topologies :: [Topology]
topologies =
    [Tex1D { width1D = 256 }
    ,Tex2D { height2D = 512, width2D = 512 }
    ,Tex3D { width3D = 256, height3D = 256, depth3D = 4 }
    ,Tex1DArray { width1DArray = 64, layers1D = 100 }
    ,Tex2DArray { width2DArray = 32, height2DArray = 64, layers2D = 19 }
    ,Tex2DMultisample { width2DMS = 1024, height2DMS = 64
                      , samples2DMS = 4
                      , fixedSampleLocations2DMS = False }
    ,Tex2DMultisample { width2DMS = 1024, height2DMS = 64
                      , samples2DMS = 4
                      , fixedSampleLocations2DMS = True }
    ,Tex2DMultisampleArray { width2DMSArray = 1024, height2DMSArray = 64
                           , layers2DMS = 2
                           , samples2DMSArray = 4
                           , fixedSampleLocations2DMSArray = False }
    ,Tex2DMultisampleArray { width2DMSArray = 1024, height2DMSArray = 64
                           , layers2DMS = 2
                           , samples2DMSArray = 4
                           , fixedSampleLocations2DMSArray = True }
    ,TexCube { widthCube = 512 }]

formats :: [ImageFormat]
formats =
    [
    R8
  , R8I
  , R8UI
  , R16
  , R16I
  , R16UI
  , R16F
  , R32F
  , R32I
  , R32UI
  , RG8
  , RG8I
  , RG8UI
  , RG16
  , RG16I
  , RG16UI
  , RG16F
  , RG32F
  , RG32I
  , RG32UI
  , R11F_G11F_B10F
  , RGBA32F
  , RGBA32I
  , RGBA32UI
  , RGBA16
  , RGBA16F
  , RGBA16I
  , RGBA16UI
  , RGBA8
  , RGBA8UI
  , SRGB8_ALPHA8
  , RGB10_A2
  , RGB32F
  , RGB32I
  , RGB32UI
  , RGB16F
  , RGB16I
  , RGB16UI
  , RGB16
  , RGB8
  , RGB8I
  , RGB8UI
  , SRGB8
  , RGB9_E5
  , COMPRESSED_RG_RGTC2
  , COMPRESSED_SIGNED_RG_RGTC2
  , COMPRESSED_RED_RGTC1
  , COMPRESSED_SIGNED_RED_RGTC1
  , COMPRESSED_RGB_S3TC_DXT1
  , COMPRESSED_RGBA_S3TC_DXT1
  , COMPRESSED_RGBA_S3TC_DXT3
  , COMPRESSED_RGBA_S3TC_DXT5
  , COMPRESSED_SRGB_S3TC_DXT1
  , COMPRESSED_SRGB_ALPHA_S3TC_DXT1
  , COMPRESSED_SRGB_ALPHA_S3TC_DXT3
  , COMPRESSED_SRGB_ALPHA_S3TC_DXT5
  , DEPTH_COMPONENT32
  , DEPTH_COMPONENT32F
  , DEPTH_COMPONENT24
  , DEPTH_COMPONENT16
  , DEPTH32F_STENCIL8
  , DEPTH24_STENCIL8]

